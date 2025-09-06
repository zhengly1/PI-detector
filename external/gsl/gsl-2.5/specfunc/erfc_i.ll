; ModuleID = 'erfc.ll'
source_filename = "erfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"erfc.c\00", align 1, !dbg !7
@.str.5 = private unnamed_addr constant [27 x i8] c"gsl_sf_erf_Z_e(x, &result)\00", align 1, !dbg !12
@.str.7 = private unnamed_addr constant [28 x i8] c"gsl_sf_hazard_e(x, &result)\00", align 1, !dbg !17
@erfc_xlt1_data = internal unnamed_addr constant [20 x double] [double 0x3FF0F8C4631109E3, double 0xBFDB40B53A48A550, double 0x3FA95EF63F0A8AE4, double 0x3F72672F067D94C9, double 0xBF552ACB22C7C2DF, double 0xBEF341851CC64FD9, double 0x3EF72F6A74668F7E, double 0xBEA18F6F4CEFAE30, double 0xBE92AB2DA3D52CD5, double 0x3E4E503F8B1F83FD, double 0x3E2769E7FC58FB7D, double 0xBDEC5C14AA8B09E2, double 0xBDB78F46D533A139, double 0x3D839D4B4DFD3F8A, double 0x3D432CED20E8D32E, double 0xBD15F8A4A69AD905, double 0xBCC8B3CB61C1BA41, double 0x3CA4D3593CAA0DEF, double 0x3C46AEFBB5AD4103, double 0xBC3125E8E9559186], align 16, !dbg !22
@erfc_x15_data = internal unnamed_addr constant [25 x double] [double 0x3FDC3078182C9217, double 0xBFC26D3E3FEE8E3B, double 0x3FA6EE41900A6C82, double 0xBF8B53A3D08875D6, double 0x3F6F54F0E91D1D2B, double 0xBF515881A3A7959E, double 0x3F329A5EEC13417F, double 0xBF135FC25807AC75, double 0x3EF3A289AD9E2CBC, double 0xBED366637AE0DD9B, double 0x3EB2B768687F5B5F, double 0xBE91A80027C4DCBB, double 0x3E704E72AAF45371, double 0xBE4D84FDB2423994, double 0x3E2A36797B47C292, double 0xBE06DAF077B2087A, double 0x3DE3952FE3EEF698, double 0xBDC0801C60271E8A, double 0x3D9B5D0819270339, double 0xBD765754815D58DE, double 0x3D51F89F818EFF27, double 0xBD2C7FF33A7EF88B, double 0x3D064943644A7314, double 0xBCE12CEB57FEF51A, double 0x3CB9479C0104005F], align 16, !dbg !98
@erfc_x510_data = internal unnamed_addr constant [20 x double] [double 0x3FF1DE9E00858DCB, double 0x3F6E9B76C4E9CEC1, double 0xBF4E0932F096439F, double 0x3F2A187F3AD27F3B, double 0xBF051DCE0C57BB48, double 0x3EE048E2740EBE65, double 0xBEB83CB735D92F1E, double 0x3E91894E0607D396, double 0xBE68CB628154FEE7, double 0x3E412F70212F5859, double 0xBE176A258907C7A1, double 0x3DEF6A1BE28BC98F, double 0xBDC4C831AB780227, double 0x3D9B25A89D664688, double 0xBD7185AC0F3E6236, double 0x3D465EE3FB18244F, double 0xBD1C43E84FBBA814, double 0x3CF1AE75C867A5DA, double 0xBCC5E78A09AB991A, double 0x3C9A4DCDCED8EC98], align 16, !dbg !103

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_erfc_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !132 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !143, metadata !DIExpression()), !dbg !163
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !144, metadata !DIExpression()), !dbg !163
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !164
  tail call void @llvm.dbg.value(metadata double %3, metadata !145, metadata !DIExpression()), !dbg !163
  %4 = fcmp ugt double %3, 1.000000e+00, !dbg !165
  br i1 %4, label %28, label %5, !dbg !166

5:                                                ; preds = %2
  %6 = fmul double %3, 2.000000e+00, !dbg !167
  %handler_result = call double @fAddHandlerDouble(double %6, double -1.000000e+00), !dbg !168
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !149, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata !193, metadata !176, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double %handler_result, metadata !177, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata ptr undef, metadata !178, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !180, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !181, metadata !DIExpression()), !dbg !194
  %7 = fmul double %handler_result, 2.000000e+00, !dbg !168
  %handler_result1 = call double @fAddHandlerDouble(double %7, double 1.000000e+00), !dbg !195
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !196
  %8 = fmul double %handler_result2, 5.000000e-01, !dbg !196
  call void @llvm.dbg.value(metadata double %8, metadata !182, metadata !DIExpression()), !dbg !194
  %9 = fmul double %8, 2.000000e+00, !dbg !197
  call void @llvm.dbg.value(metadata double %9, metadata !183, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i32 19, metadata !179, metadata !DIExpression()), !dbg !194
  br label %10, !dbg !198

10:                                               ; preds = %10, %5
  %11 = phi i64 [ 19, %5 ], [ %21, %10 ]
  %12 = phi double [ 0.000000e+00, %5 ], [ %handler_result4, %10 ]
  %13 = phi double [ 0.000000e+00, %5 ], [ %handler_result7, %10 ]
  %14 = phi double [ 0.000000e+00, %5 ], [ %12, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !179, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double %12, metadata !180, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double %13, metadata !184, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double %14, metadata !181, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double %12, metadata !185, metadata !DIExpression()), !dbg !199
  %15 = fmul double %9, %12, !dbg !200
  %handler_result3 = call double @fSubHandlerDouble(double %15, double %14), !dbg !201
  %16 = getelementptr inbounds double, ptr @erfc_xlt1_data, i64 %11, !dbg !201
  %17 = load double, ptr %16, align 8, !dbg !201, !tbaa !202
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %17), !dbg !206
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !180, metadata !DIExpression()), !dbg !194
  %18 = tail call double @llvm.fabs.f64(double %15), !dbg !206
  %19 = tail call double @llvm.fabs.f64(double %14), !dbg !207
  %handler_result5 = call double @fAddHandlerDouble(double %18, double %19), !dbg !208
  %20 = tail call double @llvm.fabs.f64(double %17), !dbg !208
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %20), !dbg !209
  %handler_result7 = call double @fAddHandlerDouble(double %13, double %handler_result6), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !184, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double %12, metadata !181, metadata !DIExpression()), !dbg !194
  %21 = add nsw i64 %11, -1, !dbg !210
  call void @llvm.dbg.value(metadata i64 %21, metadata !179, metadata !DIExpression()), !dbg !194
  %22 = icmp ugt i64 %11, 1, !dbg !211
  br i1 %22, label %10, label %23, !dbg !198, !llvm.loop !212

23:                                               ; preds = %10
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !189, metadata !DIExpression()), !dbg !215
  %24 = fmul double %8, %handler_result4, !dbg !216
  %handler_result8 = call double @fSubHandlerDouble(double %24, double %12), !dbg !217
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3FE0F8C4631109E3), !dbg !218
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !180, metadata !DIExpression()), !dbg !194
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !218
  %26 = tail call double @llvm.fabs.f64(double %12), !dbg !219
  %handler_result10 = call double @fAddHandlerDouble(double %26, double %25), !dbg !220
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FE0F8C4631109E3), !dbg !221
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !222
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !184, metadata !DIExpression()), !dbg !194
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !192
  %27 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !222
  %handler_result13 = call double @fAddHandlerDouble(double %27, double 0x3C3125E8E9559186), !dbg !223
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !192
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !147, metadata !DIExpression()), !dbg !163
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !148, metadata !DIExpression()), !dbg !163
  br label %113, !dbg !223

28:                                               ; preds = %2
  %29 = fcmp ugt double %3, 5.000000e+00, !dbg !224
  br i1 %29, label %60, label %30, !dbg !225

30:                                               ; preds = %28
  %31 = fneg double %0, !dbg !226
  %32 = fmul double %31, %0, !dbg !227
  %33 = tail call double @exp(double noundef %32) #6, !dbg !228
  tail call void @llvm.dbg.value(metadata double %33, metadata !153, metadata !DIExpression()), !dbg !229
  %handler_result14 = call double @fAddHandlerDouble(double %3, double -3.000000e+00), !dbg !230
  %34 = fmul double %handler_result14, 5.000000e-01, !dbg !230
  tail call void @llvm.dbg.value(metadata double %34, metadata !156, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata !193, metadata !176, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double %34, metadata !177, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata ptr undef, metadata !178, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !180, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !181, metadata !DIExpression()), !dbg !231
  %35 = fmul double %34, 2.000000e+00, !dbg !233
  %handler_result15 = call double @fAddHandlerDouble(double %35, double 1.000000e+00), !dbg !234
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double -1.000000e+00), !dbg !235
  %36 = fmul double %handler_result16, 5.000000e-01, !dbg !235
  call void @llvm.dbg.value(metadata double %36, metadata !182, metadata !DIExpression()), !dbg !231
  %37 = fmul double %36, 2.000000e+00, !dbg !236
  call void @llvm.dbg.value(metadata double %37, metadata !183, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i32 24, metadata !179, metadata !DIExpression()), !dbg !231
  br label %38, !dbg !237

38:                                               ; preds = %38, %30
  %39 = phi i64 [ 24, %30 ], [ %49, %38 ]
  %40 = phi double [ 0.000000e+00, %30 ], [ %handler_result18, %38 ]
  %41 = phi double [ 0.000000e+00, %30 ], [ %handler_result21, %38 ]
  %42 = phi double [ 0.000000e+00, %30 ], [ %40, %38 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !179, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double %40, metadata !180, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double %41, metadata !184, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double %42, metadata !181, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double %40, metadata !185, metadata !DIExpression()), !dbg !238
  %43 = fmul double %37, %40, !dbg !239
  %handler_result17 = call double @fSubHandlerDouble(double %43, double %42), !dbg !240
  %44 = getelementptr inbounds double, ptr @erfc_x15_data, i64 %39, !dbg !240
  %45 = load double, ptr %44, align 8, !dbg !240, !tbaa !202
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double %45), !dbg !241
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !180, metadata !DIExpression()), !dbg !231
  %46 = tail call double @llvm.fabs.f64(double %43), !dbg !241
  %47 = tail call double @llvm.fabs.f64(double %42), !dbg !242
  %handler_result19 = call double @fAddHandlerDouble(double %46, double %47), !dbg !243
  %48 = tail call double @llvm.fabs.f64(double %45), !dbg !243
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %48), !dbg !244
  %handler_result21 = call double @fAddHandlerDouble(double %41, double %handler_result20), !dbg !245
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !184, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double %40, metadata !181, metadata !DIExpression()), !dbg !231
  %49 = add nsw i64 %39, -1, !dbg !245
  call void @llvm.dbg.value(metadata i64 %49, metadata !179, metadata !DIExpression()), !dbg !231
  %50 = icmp ugt i64 %39, 1, !dbg !246
  br i1 %50, label %38, label %51, !dbg !237, !llvm.loop !247

51:                                               ; preds = %38
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !189, metadata !DIExpression()), !dbg !249
  %52 = fmul double %36, %handler_result18, !dbg !250
  %handler_result22 = call double @fSubHandlerDouble(double %52, double %40), !dbg !251
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double 0x3FCC3078182C9217), !dbg !252
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !180, metadata !DIExpression()), !dbg !231
  %53 = tail call double @llvm.fabs.f64(double %52), !dbg !252
  %54 = tail call double @llvm.fabs.f64(double %40), !dbg !253
  %handler_result24 = call double @fAddHandlerDouble(double %54, double %53), !dbg !254
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 0x3FCC3078182C9217), !dbg !255
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result21, double %handler_result25), !dbg !256
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !184, metadata !DIExpression()), !dbg !231
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !157, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !229
  %55 = fmul double %handler_result26, 0x3CB0000000000000, !dbg !256
  %handler_result27 = call double @fAddHandlerDouble(double %55, double 0x3CB9479C0104005F), !dbg !257
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !157, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !229
  %56 = fmul double %33, %handler_result23, !dbg !257
  tail call void @llvm.dbg.value(metadata double %56, metadata !147, metadata !DIExpression()), !dbg !163
  %57 = fmul double %3, 2.000000e+00, !dbg !258
  %58 = fmul double %57, 0x3CB0000000000000, !dbg !259
  %handler_result28 = call double @fAddHandlerDouble(double %58, double %handler_result27), !dbg !260
  %59 = fmul double %33, %handler_result28, !dbg !260
  tail call void @llvm.dbg.value(metadata double %59, metadata !148, metadata !DIExpression()), !dbg !163
  br label %113, !dbg !261

60:                                               ; preds = %28
  %61 = fcmp olt double %3, 1.000000e+01, !dbg !262
  br i1 %61, label %62, label %93, !dbg !263

62:                                               ; preds = %60
  %63 = fneg double %0, !dbg !264
  %64 = fmul double %63, %0, !dbg !265
  %65 = tail call double @exp(double noundef %64) #6, !dbg !266
  %66 = fdiv double %65, %3, !dbg !267
  tail call void @llvm.dbg.value(metadata double %66, metadata !158, metadata !DIExpression()), !dbg !268
  %67 = fmul double %3, 2.000000e+00, !dbg !269
  %handler_result29 = call double @fAddHandlerDouble(double %67, double -1.500000e+01), !dbg !270
  %68 = fdiv double %handler_result29, 5.000000e+00, !dbg !270
  tail call void @llvm.dbg.value(metadata double %68, metadata !161, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata !193, metadata !176, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double %68, metadata !177, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata ptr undef, metadata !178, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !180, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !181, metadata !DIExpression()), !dbg !271
  %69 = fmul double %68, 2.000000e+00, !dbg !273
  %handler_result30 = call double @fAddHandlerDouble(double %69, double 1.000000e+00), !dbg !274
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result30, double -1.000000e+00), !dbg !275
  %70 = fmul double %handler_result31, 5.000000e-01, !dbg !275
  call void @llvm.dbg.value(metadata double %70, metadata !182, metadata !DIExpression()), !dbg !271
  %71 = fmul double %70, 2.000000e+00, !dbg !276
  call void @llvm.dbg.value(metadata double %71, metadata !183, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i32 19, metadata !179, metadata !DIExpression()), !dbg !271
  br label %72, !dbg !277

72:                                               ; preds = %72, %62
  %73 = phi i64 [ 19, %62 ], [ %83, %72 ]
  %74 = phi double [ 0.000000e+00, %62 ], [ %handler_result33, %72 ]
  %75 = phi double [ 0.000000e+00, %62 ], [ %handler_result36, %72 ]
  %76 = phi double [ 0.000000e+00, %62 ], [ %74, %72 ]
  call void @llvm.dbg.value(metadata i64 %73, metadata !179, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double %74, metadata !180, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double %75, metadata !184, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double %76, metadata !181, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double %74, metadata !185, metadata !DIExpression()), !dbg !278
  %77 = fmul double %71, %74, !dbg !279
  %handler_result32 = call double @fSubHandlerDouble(double %77, double %76), !dbg !280
  %78 = getelementptr inbounds double, ptr @erfc_x510_data, i64 %73, !dbg !280
  %79 = load double, ptr %78, align 8, !dbg !280, !tbaa !202
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double %79), !dbg !281
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !180, metadata !DIExpression()), !dbg !271
  %80 = tail call double @llvm.fabs.f64(double %77), !dbg !281
  %81 = tail call double @llvm.fabs.f64(double %76), !dbg !282
  %handler_result34 = call double @fAddHandlerDouble(double %80, double %81), !dbg !283
  %82 = tail call double @llvm.fabs.f64(double %79), !dbg !283
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double %82), !dbg !284
  %handler_result36 = call double @fAddHandlerDouble(double %75, double %handler_result35), !dbg !285
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !184, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double %74, metadata !181, metadata !DIExpression()), !dbg !271
  %83 = add nsw i64 %73, -1, !dbg !285
  call void @llvm.dbg.value(metadata i64 %83, metadata !179, metadata !DIExpression()), !dbg !271
  %84 = icmp ugt i64 %73, 1, !dbg !286
  br i1 %84, label %72, label %85, !dbg !277, !llvm.loop !287

85:                                               ; preds = %72
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !189, metadata !DIExpression()), !dbg !289
  %86 = fmul double %70, %handler_result33, !dbg !290
  %handler_result37 = call double @fSubHandlerDouble(double %86, double %74), !dbg !291
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double 0x3FE1DE9E00858DCB), !dbg !292
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !180, metadata !DIExpression()), !dbg !271
  %87 = tail call double @llvm.fabs.f64(double %86), !dbg !292
  %88 = tail call double @llvm.fabs.f64(double %74), !dbg !293
  %handler_result39 = call double @fAddHandlerDouble(double %88, double %87), !dbg !294
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 0x3FE1DE9E00858DCB), !dbg !295
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result36, double %handler_result40), !dbg !296
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !184, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %handler_result38, metadata !162, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !268
  %89 = fmul double %handler_result41, 0x3CB0000000000000, !dbg !296
  %handler_result42 = call double @fAddHandlerDouble(double %89, double 0x3C9A4DCDCED8EC98), !dbg !297
  tail call void @llvm.dbg.value(metadata double %handler_result42, metadata !162, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !268
  %90 = fmul double %66, %handler_result38, !dbg !297
  tail call void @llvm.dbg.value(metadata double %90, metadata !147, metadata !DIExpression()), !dbg !163
  %91 = fmul double %67, 0x3CB0000000000000, !dbg !298
  %handler_result43 = call double @fAddHandlerDouble(double %91, double %handler_result42), !dbg !299
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 0x3CB0000000000000), !dbg !300
  %92 = fmul double %66, %handler_result44, !dbg !300
  tail call void @llvm.dbg.value(metadata double %92, metadata !148, metadata !DIExpression()), !dbg !163
  br label %113, !dbg !301

93:                                               ; preds = %60
  call void @llvm.dbg.value(metadata double %3, metadata !302, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata double %3, metadata !114, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !116, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i64 4, metadata !117, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double 0x3FE20DD750429B62, metadata !115, metadata !DIExpression()), !dbg !309
  %94 = fmul double %3, 0x3FE20DD750429B62, !dbg !311
  %handler_result45 = call double @fAddHandlerDouble(double %94, double 0x3FF467E6DAD8642A), !dbg !311
  call void @llvm.dbg.value(metadata i64 3, metadata !117, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !115, metadata !DIExpression()), !dbg !309
  %95 = fmul double %3, %handler_result45, !dbg !311
  %handler_result46 = call double @fAddHandlerDouble(double %95, double 0x40141381C5862508), !dbg !311
  call void @llvm.dbg.value(metadata i64 2, metadata !117, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !115, metadata !DIExpression()), !dbg !309
  %96 = fmul double %3, %handler_result46, !dbg !311
  %handler_result47 = call double @fAddHandlerDouble(double %96, double 0x4018A40E0D3E694C), !dbg !311
  call void @llvm.dbg.value(metadata i64 1, metadata !117, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !115, metadata !DIExpression()), !dbg !309
  %97 = fmul double %3, %handler_result47, !dbg !311
  %handler_result48 = call double @fAddHandlerDouble(double %97, double 0x401DA3930A99D8DF), !dbg !311
  call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !115, metadata !DIExpression()), !dbg !309
  %98 = fmul double %3, %handler_result48, !dbg !311
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !115, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i64 5, metadata !117, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !116, metadata !DIExpression()), !dbg !309
  %handler_result49 = call double @fAddHandlerDouble(double %3, double 0x4002158FFA22F7A8), !dbg !315
  call void @llvm.dbg.value(metadata i64 4, metadata !117, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !116, metadata !DIExpression()), !dbg !309
  %99 = fmul double %3, %handler_result49, !dbg !315
  %handler_result50 = call double @fAddHandlerDouble(double %99, double 0x4022CAC4F877AA8B), !dbg !315
  call void @llvm.dbg.value(metadata i64 3, metadata !117, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !116, metadata !DIExpression()), !dbg !309
  %100 = fmul double %3, %handler_result50, !dbg !315
  %handler_result51 = call double @fAddHandlerDouble(double %100, double 0x402819103A226D88), !dbg !315
  call void @llvm.dbg.value(metadata i64 2, metadata !117, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !116, metadata !DIExpression()), !dbg !309
  %101 = fmul double %3, %handler_result51, !dbg !315
  %handler_result52 = call double @fAddHandlerDouble(double %101, double 0x403114D94D02EDA4), !dbg !315
  call void @llvm.dbg.value(metadata i64 1, metadata !117, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !116, metadata !DIExpression()), !dbg !309
  %102 = fmul double %3, %handler_result52, !dbg !315
  %handler_result53 = call double @fAddHandlerDouble(double %102, double 0x402337CA4DA961C6), !dbg !315
  call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !116, metadata !DIExpression()), !dbg !309
  %103 = fmul double %3, %handler_result53, !dbg !315
  %handler_result54 = call double @fAddHandlerDouble(double %103, double 0x400AF3DDB3BE0AF7), !dbg !319
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !116, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i64 -1, metadata !117, metadata !DIExpression()), !dbg !309
  %handler_result55 = call double @fAddHandlerDouble(double %98, double 0x4007D4B780645377), !dbg !320
  %104 = fdiv double %handler_result55, %handler_result54, !dbg !320
  call void @llvm.dbg.value(metadata double %104, metadata !305, metadata !DIExpression()), !dbg !306
  %105 = fneg double %3, !dbg !321
  %106 = fmul double %3, %105, !dbg !322
  %107 = tail call double @exp(double noundef %106) #6, !dbg !323
  %108 = fmul double %104, %107, !dbg !324
  call void @llvm.dbg.value(metadata double %108, metadata !305, metadata !DIExpression()), !dbg !306
  tail call void @llvm.dbg.value(metadata double %108, metadata !147, metadata !DIExpression()), !dbg !163
  %109 = fmul double %0, %0, !dbg !325
  %handler_result56 = call double @fAddHandlerDouble(double %109, double 1.000000e+00), !dbg !326
  %110 = fmul double %handler_result56, 0x3CB0000000000000, !dbg !326
  %111 = tail call double @llvm.fabs.f64(double %108), !dbg !327
  %112 = fmul double %110, %111, !dbg !328
  tail call void @llvm.dbg.value(metadata double %112, metadata !148, metadata !DIExpression()), !dbg !163
  br label %113

113:                                              ; preds = %93, %85, %51, %23
  %114 = phi double [ %handler_result13, %23 ], [ %59, %51 ], [ %92, %85 ], [ %112, %93 ], !dbg !329
  %115 = phi double [ %handler_result9, %23 ], [ %56, %51 ], [ %90, %85 ], [ %108, %93 ], !dbg !329
  tail call void @llvm.dbg.value(metadata double %115, metadata !147, metadata !DIExpression()), !dbg !163
  tail call void @llvm.dbg.value(metadata double %114, metadata !148, metadata !DIExpression()), !dbg !163
  %116 = fcmp olt double %0, 0.000000e+00, !dbg !330
  %handler_result57 = call double @fSubHandlerDouble(double 2.000000e+00, double %115), !dbg !332
  %117 = select i1 %116, double %handler_result57, double %115, !dbg !332
  %118 = tail call double @llvm.fabs.f64(double %117), !dbg !333
  %119 = fmul double %118, 0x3CC0000000000000, !dbg !333
  %handler_result58 = call double @fAddHandlerDouble(double %114, double %119), !dbg !333
  store double %117, ptr %1, align 8, !dbg !333
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !333
  store double %handler_result58, ptr %120, align 8, !dbg !333
  ret i32 0, !dbg !334
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !335 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_log_erfc_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !337 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !360
  call void @llvm.dbg.assign(metadata i1 undef, metadata !357, metadata !DIExpression(), metadata !360, metadata ptr %3, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %0, metadata !339, metadata !DIExpression()), !dbg !362
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !340, metadata !DIExpression()), !dbg !362
  %4 = fmul double %0, %0, !dbg !363
  %5 = fcmp olt double %4, 0x3F9932CBB7F0CF30, !dbg !364
  br i1 %5, label %6, label %26, !dbg !365

6:                                                ; preds = %2
  %7 = fdiv double %0, 0x3FFC5BF891B4EF6B, !dbg !366
  tail call void @llvm.dbg.value(metadata double %7, metadata !341, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double 0x3FD2500C749F87C0, metadata !344, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double 0xBFB82A4705AE6CA0, metadata !345, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double 0xBF5DFA96DCBD2883, metadata !346, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double 0x3F9AED7943500FA5, metadata !347, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double 0xBF909ADCD0CDCABE, metadata !348, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double 0x3F54A491DCF7AFED, metadata !349, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double 0x3F76D032987DFC5C, metadata !350, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double 0xBF72A9A996F42C40, metadata !351, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double 0x3F4F00F4C5E56661, metadata !352, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double 0x3F55A095517B6A89, metadata !353, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double -1.429060e-03, metadata !354, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double 4.820400e-04, metadata !355, metadata !DIExpression()), !dbg !367
  %8 = fmul double %7, 4.820400e-04, !dbg !368
  %handler_result = call double @fAddHandlerDouble(double %8, double -1.429060e-03), !dbg !369
  %9 = fmul double %7, %handler_result, !dbg !369
  %handler_result1 = call double @fAddHandlerDouble(double %9, double 0x3F55A095517B6A89), !dbg !370
  %10 = fmul double %7, %handler_result1, !dbg !370
  %handler_result2 = call double @fAddHandlerDouble(double %10, double 0x3F4F00F4C5E56661), !dbg !371
  %11 = fmul double %7, %handler_result2, !dbg !371
  %handler_result3 = call double @fAddHandlerDouble(double %11, double 0xBF72A9A996F42C40), !dbg !372
  %12 = fmul double %7, %handler_result3, !dbg !372
  %handler_result4 = call double @fAddHandlerDouble(double %12, double 0x3F76D032987DFC5C), !dbg !373
  %13 = fmul double %7, %handler_result4, !dbg !373
  %handler_result5 = call double @fAddHandlerDouble(double %13, double 0x3F54A491DCF7AFED), !dbg !374
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !356, metadata !DIExpression()), !dbg !367
  %14 = fmul double %7, %handler_result5, !dbg !374
  %handler_result6 = call double @fAddHandlerDouble(double %14, double 0xBF909ADCD0CDCABE), !dbg !375
  %15 = fmul double %7, %handler_result6, !dbg !375
  %handler_result7 = call double @fAddHandlerDouble(double %15, double 0x3F9AED7943500FA5), !dbg !376
  %16 = fmul double %7, %handler_result7, !dbg !376
  %handler_result8 = call double @fAddHandlerDouble(double %16, double 0xBF5DFA96DCBD2883), !dbg !377
  %17 = fmul double %7, %handler_result8, !dbg !377
  %handler_result9 = call double @fAddHandlerDouble(double %17, double 0xBFB82A4705AE6CA0), !dbg !378
  %18 = fmul double %7, %handler_result9, !dbg !378
  %handler_result10 = call double @fAddHandlerDouble(double %18, double 0x3FD2500C749F87C0), !dbg !379
  %19 = fmul double %7, %handler_result10, !dbg !379
  %handler_result11 = call double @fAddHandlerDouble(double %19, double 1.000000e+00), !dbg !380
  %20 = fmul double %7, %handler_result11, !dbg !380
  %handler_result12 = call double @fAddHandlerDouble(double %20, double 1.000000e+00), !dbg !381
  %21 = fmul double %7, %handler_result12, !dbg !381
  tail call void @llvm.dbg.value(metadata double %21, metadata !356, metadata !DIExpression()), !dbg !367
  %22 = fmul double %21, -2.000000e+00, !dbg !382
  store double %22, ptr %1, align 8, !dbg !383, !tbaa !384
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !386
  %24 = fmul double %23, 0x3CC0000000000000, !dbg !387
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !388
  store double %24, ptr %25, align 8, !dbg !389, !tbaa !390
  br label %53

26:                                               ; preds = %2
  %27 = fcmp ogt double %0, 8.000000e+00, !dbg !391
  br i1 %27, label %28, label %43, !dbg !392

28:                                               ; preds = %26
  call void @llvm.dbg.value(metadata double %0, metadata !393, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double %0, metadata !114, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !115, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !116, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double 0x3FE20DD750429B62, metadata !115, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 4, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 4, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double 0x3FE20DD750429B62, metadata !115, metadata !DIExpression()), !dbg !400
  %29 = fmul double %0, 0x3FE20DD750429B62, !dbg !402
  %handler_result13 = call double @fAddHandlerDouble(double %29, double 0x3FF467E6DAD8642A), !dbg !402
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !115, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 3, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 3, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !115, metadata !DIExpression()), !dbg !400
  %30 = fmul double %handler_result13, %0, !dbg !402
  %handler_result14 = call double @fAddHandlerDouble(double %30, double 0x40141381C5862508), !dbg !402
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !115, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 2, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 2, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !115, metadata !DIExpression()), !dbg !400
  %31 = fmul double %handler_result14, %0, !dbg !402
  %handler_result15 = call double @fAddHandlerDouble(double %31, double 0x4018A40E0D3E694C), !dbg !402
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !115, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 1, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 1, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !115, metadata !DIExpression()), !dbg !400
  %32 = fmul double %handler_result15, %0, !dbg !402
  %handler_result16 = call double @fAddHandlerDouble(double %32, double 0x401DA3930A99D8DF), !dbg !402
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !115, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !115, metadata !DIExpression()), !dbg !400
  %33 = fmul double %handler_result16, %0, !dbg !402
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !115, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 -1, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 5, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !116, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 5, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !116, metadata !DIExpression()), !dbg !400
  %handler_result17 = call double @fAddHandlerDouble(double %0, double 0x4002158FFA22F7A8), !dbg !403
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !116, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 4, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 4, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !116, metadata !DIExpression()), !dbg !400
  %34 = fmul double %handler_result17, %0, !dbg !403
  %handler_result18 = call double @fAddHandlerDouble(double %34, double 0x4022CAC4F877AA8B), !dbg !403
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !116, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 3, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 3, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !116, metadata !DIExpression()), !dbg !400
  %35 = fmul double %handler_result18, %0, !dbg !403
  %handler_result19 = call double @fAddHandlerDouble(double %35, double 0x402819103A226D88), !dbg !403
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !116, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 2, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 2, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !116, metadata !DIExpression()), !dbg !400
  %36 = fmul double %handler_result19, %0, !dbg !403
  %handler_result20 = call double @fAddHandlerDouble(double %36, double 0x403114D94D02EDA4), !dbg !403
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !116, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 1, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 1, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !116, metadata !DIExpression()), !dbg !400
  %37 = fmul double %handler_result20, %0, !dbg !403
  %handler_result21 = call double @fAddHandlerDouble(double %37, double 0x402337CA4DA961C6), !dbg !403
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !116, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !116, metadata !DIExpression()), !dbg !400
  %38 = fmul double %handler_result21, %0, !dbg !403
  %handler_result22 = call double @fAddHandlerDouble(double %38, double 0x400AF3DDB3BE0AF7), !dbg !404
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !116, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 -1, metadata !117, metadata !DIExpression()), !dbg !400
  %handler_result23 = call double @fAddHandlerDouble(double %33, double 0x4007D4B780645377), !dbg !405
  %39 = fdiv double %handler_result23, %handler_result22, !dbg !405
  call void @llvm.dbg.value(metadata double %39, metadata !396, metadata !DIExpression()), !dbg !397
  %handler_result26 = call double @callHandler(i32 12, double %39, double %39), !dbg !406
  %handler_result24 = call double @fSubHandlerDouble(double %handler_result26, double %4), !dbg !406
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !396, metadata !DIExpression()), !dbg !397
  store double %handler_result24, ptr %1, align 8, !dbg !406, !tbaa !384
  %40 = tail call double @llvm.fabs.f64(double %handler_result24), !dbg !407
  %41 = fmul double %40, 0x3CC0000000000000, !dbg !408
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !409
  store double %41, ptr %42, align 8, !dbg !410, !tbaa !390
  br label %53, !dbg !411

43:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !412
  %44 = call i32 @gsl_sf_erfc_e(double noundef %0, ptr noundef nonnull %3), !dbg !413
  %45 = load double, ptr %3, align 8, !dbg !414, !tbaa !384
  %handler_result27 = call double @callHandler(i32 12, double %45, double %45), !dbg !415
  store double %handler_result27, ptr %1, align 8, !dbg !415, !tbaa !384
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !416
  %47 = load double, ptr %46, align 8, !dbg !416, !tbaa !390
  %48 = fdiv double %47, %45, !dbg !417
  %49 = tail call double @llvm.fabs.f64(double %48), !dbg !418
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !419
  %51 = tail call double @llvm.fabs.f64(double %handler_result27), !dbg !420
  %52 = fmul double %51, 0x3CC0000000000000, !dbg !421
  %handler_result25 = call double @fAddHandlerDouble(double %52, double %49), !dbg !422
  store double %handler_result25, ptr %50, align 8, !dbg !422, !tbaa !390
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !423
  br label %53

53:                                               ; preds = %43, %28, %6
  ret i32 0, !dbg !424
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !425 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_erf_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !426 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !433
  call void @llvm.dbg.assign(metadata i1 undef, metadata !430, metadata !DIExpression(), metadata !433, metadata ptr %3, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata double %0, metadata !428, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !429, metadata !DIExpression()), !dbg !435
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !436
  %5 = fcmp olt double %4, 1.000000e+00, !dbg !437
  br i1 %5, label %6, label %32, !dbg !438

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata double %0, metadata !439, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata ptr %1, metadata !442, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata double %0, metadata !443, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata double %0, metadata !444, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata i32 1, metadata !446, metadata !DIExpression()), !dbg !447
  %7 = fneg double %0
  %8 = fmul double %7, %0
  call void @llvm.dbg.value(metadata i32 1, metadata !446, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata double undef, metadata !445, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata double %0, metadata !444, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata double %0, metadata !443, metadata !DIExpression()), !dbg !447
  br label %9, !dbg !450

9:                                                ; preds = %20, %6
  %10 = phi i32 [ 1, %6 ], [ %26, %20 ]
  %11 = phi double [ %0, %6 ], [ %handler_result3, %20 ]
  %12 = phi double [ %0, %6 ], [ %23, %20 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !446, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata double %11, metadata !444, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata double %12, metadata !443, metadata !DIExpression()), !dbg !447
  %13 = sitofp i32 %10 to double, !dbg !452
  %14 = fdiv double %8, %13, !dbg !455
  %15 = fmul double %12, %14, !dbg !456
  call void @llvm.dbg.value(metadata double %15, metadata !443, metadata !DIExpression()), !dbg !447
  %16 = fmul double %13, 2.000000e+00, !dbg !457
  %handler_result = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !458
  %17 = fdiv double %15, %handler_result, !dbg !458
  call void @llvm.dbg.value(metadata double %17, metadata !445, metadata !DIExpression()), !dbg !447
  %handler_result1 = call double @fAddHandlerDouble(double %11, double %17), !dbg !459
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !444, metadata !DIExpression()), !dbg !447
  %18 = add nuw nsw i32 %10, 1, !dbg !459
  call void @llvm.dbg.value(metadata i32 %18, metadata !446, metadata !DIExpression()), !dbg !447
  %19 = icmp eq i32 %18, 30, !dbg !460
  br i1 %19, label %27, label %20, !dbg !450, !llvm.loop !461

20:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 %18, metadata !446, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !444, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata double %15, metadata !443, metadata !DIExpression()), !dbg !447
  %21 = sitofp i32 %18 to double, !dbg !452
  %22 = fdiv double %8, %21, !dbg !455
  %23 = fmul double %15, %22, !dbg !456
  call void @llvm.dbg.value(metadata double %23, metadata !443, metadata !DIExpression()), !dbg !447
  %24 = fmul double %21, 2.000000e+00, !dbg !457
  %handler_result2 = call double @fAddHandlerDouble(double %24, double 1.000000e+00), !dbg !458
  %25 = fdiv double %23, %handler_result2, !dbg !458
  call void @llvm.dbg.value(metadata double %25, metadata !445, metadata !DIExpression()), !dbg !447
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result1, double %25), !dbg !459
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !444, metadata !DIExpression()), !dbg !447
  %26 = add nuw nsw i32 %10, 2, !dbg !459
  call void @llvm.dbg.value(metadata i32 %26, metadata !446, metadata !DIExpression()), !dbg !447
  br label %9

27:                                               ; preds = %9
  %28 = fmul double %handler_result1, 0x3FF20DD750429B6D, !dbg !463
  store double %28, ptr %1, align 8, !dbg !464, !tbaa !384
  %29 = tail call double @llvm.fabs.f64(double %17), !dbg !465
  %handler_result4 = call double @fAddHandlerDouble(double %29, double 0x3CB0000000000000), !dbg !466
  %30 = fmul double %handler_result4, 0x3FF20DD750429B6D, !dbg !466
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !467
  store double %30, ptr %31, align 8, !dbg !468, !tbaa !390
  br label %40, !dbg !469

32:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !470
  %33 = call i32 @gsl_sf_erfc_e(double noundef %0, ptr noundef nonnull %3), !dbg !471
  %34 = load double, ptr %3, align 8, !dbg !472, !tbaa !384
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %34), !dbg !473
  store double %handler_result5, ptr %1, align 8, !dbg !473, !tbaa !384
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !474
  %36 = load double, ptr %35, align 8, !dbg !474, !tbaa !390
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !475
  %38 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !476
  %39 = fmul double %38, 0x3CC0000000000000, !dbg !477
  %handler_result6 = call double @fAddHandlerDouble(double %36, double %39), !dbg !478
  store double %handler_result6, ptr %37, align 8, !dbg !478, !tbaa !390
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !479
  br label %40

40:                                               ; preds = %32, %27
  ret i32 0, !dbg !480
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_erf_Z_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !481 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !483, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !484, metadata !DIExpression()), !dbg !487
  %3 = fneg double %0, !dbg !488
  %4 = fmul double %3, %0, !dbg !489
  %5 = fmul double %4, 5.000000e-01, !dbg !490
  %6 = tail call double @exp(double noundef %5) #6, !dbg !491
  tail call void @llvm.dbg.value(metadata double %6, metadata !485, metadata !DIExpression()), !dbg !492
  %7 = fdiv double %6, 0x40040D931FF62706, !dbg !493
  store double %7, ptr %1, align 8, !dbg !494, !tbaa !384
  %8 = fmul double %7, %0, !dbg !495
  %9 = tail call double @llvm.fabs.f64(double %8), !dbg !496
  %10 = fmul double %9, 0x3CB0000000000000, !dbg !497
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !498
  %12 = tail call double @llvm.fabs.f64(double %7), !dbg !499
  %13 = fmul double %12, 0x3CC0000000000000, !dbg !500
  %handler_result = call double @fAddHandlerDouble(double %13, double %10), !dbg !501
  store double %handler_result, ptr %11, align 8, !dbg !501, !tbaa !390
  %14 = fcmp olt double %12, 0x10000000000000, !dbg !502
  br i1 %14, label %15, label %16, !dbg !504

15:                                               ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 384, i32 noundef 15) #6, !dbg !505
  br label %16, !dbg !505

16:                                               ; preds = %15, %2
  %17 = phi i32 [ 15, %15 ], [ 0, %2 ], !dbg !492
  ret i32 %17, !dbg !507
}

declare !dbg !508 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_erf_Q_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !513 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !520
  call void @llvm.dbg.assign(metadata i1 undef, metadata !517, metadata !DIExpression(), metadata !520, metadata ptr %3, metadata !DIExpression()), !dbg !521
  tail call void @llvm.dbg.value(metadata double %0, metadata !515, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !516, metadata !DIExpression()), !dbg !522
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !523
  %4 = fdiv double %0, 0x3FF6A09E667F3BCD, !dbg !524
  %5 = call i32 @gsl_sf_erfc_e(double noundef %4, ptr noundef nonnull %3), !dbg !525
  tail call void @llvm.dbg.value(metadata i32 0, metadata !519, metadata !DIExpression()), !dbg !521
  %6 = load double, ptr %3, align 8, !dbg !526, !tbaa !384
  %7 = fmul double %6, 5.000000e-01, !dbg !527
  store double %7, ptr %1, align 8, !dbg !528, !tbaa !384
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !529
  %9 = load double, ptr %8, align 8, !dbg !529, !tbaa !390
  %10 = fmul double %9, 5.000000e-01, !dbg !530
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !531
  %12 = tail call double @llvm.fabs.f64(double %7), !dbg !532
  %13 = fmul double %12, 0x3CC0000000000000, !dbg !533
  %handler_result = call double @fAddHandlerDouble(double %10, double %13), !dbg !534
  store double %handler_result, ptr %11, align 8, !dbg !534, !tbaa !390
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !535
  ret i32 0, !dbg !536
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hazard_e(double noundef %0, ptr noundef %1) local_unnamed_addr #4 !dbg !537 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !554
  call void @llvm.dbg.assign(metadata i1 undef, metadata !541, metadata !DIExpression(), metadata !554, metadata ptr %3, metadata !DIExpression()), !dbg !555
  tail call void @llvm.dbg.value(metadata double %0, metadata !539, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !540, metadata !DIExpression()), !dbg !556
  %4 = fcmp olt double %0, 2.500000e+01, !dbg !557
  br i1 %4, label %5, label %24, !dbg !558

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !559
  %6 = fdiv double %0, 0x3FF6A09E667F3BCD, !dbg !560
  %7 = call i32 @gsl_sf_log_erfc_e(double noundef %6, ptr noundef nonnull %3), !dbg !561
  tail call void @llvm.dbg.value(metadata i32 0, metadata !544, metadata !DIExpression()), !dbg !555
  tail call void @llvm.dbg.value(metadata double 0xBFCCE6BB25AA1316, metadata !546, metadata !DIExpression()), !dbg !555
  %8 = fmul double %0, 5.000000e-01, !dbg !562
  %9 = fmul double %8, %0, !dbg !563
  %handler_result = call double @fSubHandlerDouble(double 0xBFCCE6BB25AA1316, double %9), !dbg !564
  %10 = load double, ptr %3, align 8, !dbg !564, !tbaa !384
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %10), !dbg !565
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !547, metadata !DIExpression()), !dbg !555
  %11 = tail call i32 @gsl_sf_exp_e(double noundef %handler_result1, ptr noundef %1) #6, !dbg !565
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !548, metadata !DIExpression()), !dbg !555
  %12 = tail call double @llvm.fabs.f64(double %0), !dbg !566
  %handler_result2 = call double @fAddHandlerDouble(double %12, double 1.000000e+00), !dbg !567
  %13 = fmul double %handler_result2, 3.000000e+00, !dbg !567
  %14 = fmul double %13, 0x3CB0000000000000, !dbg !568
  %15 = load double, ptr %1, align 8, !dbg !569, !tbaa !384
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !570
  %17 = fmul double %14, %16, !dbg !571
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !572
  %19 = load double, ptr %18, align 8, !dbg !573, !tbaa !390
  %handler_result3 = call double @fAddHandlerDouble(double %19, double %17), !dbg !574
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !574
  %21 = load double, ptr %20, align 8, !dbg !574, !tbaa !390
  %22 = fmul double %15, %21, !dbg !575
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !576
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %23), !dbg !577
  store double %handler_result4, ptr %18, align 8, !dbg !577, !tbaa !390
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !578
  br label %41

24:                                               ; preds = %2
  %25 = fmul double %0, %0, !dbg !579
  %26 = fdiv double 1.000000e+00, %25, !dbg !580
  tail call void @llvm.dbg.value(metadata double %26, metadata !549, metadata !DIExpression()), !dbg !581
  %27 = fmul double %26, 9.000000e+00, !dbg !582
  %28 = fmul double %26, 1.100000e+01, !dbg !583
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %28), !dbg !584
  %29 = fmul double %27, %handler_result5, !dbg !584
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %29), !dbg !585
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !551, metadata !DIExpression()), !dbg !581
  %30 = fmul double %26, 5.000000e+00, !dbg !585
  %31 = fmul double %26, 7.000000e+00, !dbg !586
  %32 = fmul double %31, %handler_result6, !dbg !587
  %handler_result7 = call double @fSubHandlerDouble(double 1.000000e+00, double %32), !dbg !588
  %33 = fmul double %30, %handler_result7, !dbg !588
  %handler_result8 = call double @fSubHandlerDouble(double 1.000000e+00, double %33), !dbg !589
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !552, metadata !DIExpression()), !dbg !581
  %34 = fmul double %26, 3.000000e+00, !dbg !589
  %35 = fmul double %34, %handler_result8, !dbg !590
  %handler_result9 = call double @fSubHandlerDouble(double 1.000000e+00, double %35), !dbg !591
  %36 = fmul double %26, %handler_result9, !dbg !591
  %handler_result10 = call double @fSubHandlerDouble(double 1.000000e+00, double %36), !dbg !592
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !553, metadata !DIExpression()), !dbg !581
  %37 = fdiv double %0, %handler_result10, !dbg !592
  store double %37, ptr %1, align 8, !dbg !593, !tbaa !384
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !594
  %39 = fmul double %38, 0x3CC0000000000000, !dbg !595
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !596
  store double %39, ptr %40, align 8, !dbg !597, !tbaa !390
  br label %41

41:                                               ; preds = %24, %5
  %42 = phi i32 [ %11, %5 ], [ 0, %24 ], !dbg !598
  ret i32 %42, !dbg !599
}

declare !dbg !600 i32 @gsl_sf_exp_e(double noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_erfc(double noundef %0) local_unnamed_addr #0 !dbg !604 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !609
  call void @llvm.dbg.assign(metadata i1 undef, metadata !607, metadata !DIExpression(), metadata !609, metadata ptr %2, metadata !DIExpression()), !dbg !610
  tail call void @llvm.dbg.value(metadata double %0, metadata !606, metadata !DIExpression()), !dbg !610
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !611
  %3 = call i32 @gsl_sf_erfc_e(double noundef %0, ptr noundef nonnull %2), !dbg !611
  tail call void @llvm.dbg.value(metadata i32 0, metadata !608, metadata !DIExpression()), !dbg !610
  %4 = load double, ptr %2, align 8, !dbg !611, !tbaa !384
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !612
  ret double %4, !dbg !612
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_log_erfc(double noundef %0) local_unnamed_addr #0 !dbg !613 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !618
  call void @llvm.dbg.assign(metadata i1 undef, metadata !616, metadata !DIExpression(), metadata !618, metadata ptr %2, metadata !DIExpression()), !dbg !619
  tail call void @llvm.dbg.value(metadata double %0, metadata !615, metadata !DIExpression()), !dbg !619
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !620
  %3 = call i32 @gsl_sf_log_erfc_e(double noundef %0, ptr noundef nonnull %2), !dbg !620
  tail call void @llvm.dbg.value(metadata i32 0, metadata !617, metadata !DIExpression()), !dbg !619
  %4 = load double, ptr %2, align 8, !dbg !620, !tbaa !384
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !621
  ret double %4, !dbg !621
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_erf(double noundef %0) local_unnamed_addr #0 !dbg !622 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !627
  tail call void @llvm.dbg.value(metadata double %0, metadata !624, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.assign(metadata i1 undef, metadata !430, metadata !DIExpression(), metadata !627, metadata ptr %2, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata double %0, metadata !428, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata ptr undef, metadata !429, metadata !DIExpression()), !dbg !631
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !632
  %4 = fcmp olt double %3, 1.000000e+00, !dbg !633
  br i1 %4, label %5, label %28, !dbg !634

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata double %0, metadata !439, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata ptr undef, metadata !442, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata double %0, metadata !443, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata double %0, metadata !444, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i32 1, metadata !446, metadata !DIExpression()), !dbg !635
  %6 = fneg double %0
  %7 = fmul double %6, %0
  call void @llvm.dbg.value(metadata double undef, metadata !445, metadata !DIExpression()), !dbg !635
  br label %8, !dbg !637

8:                                                ; preds = %19, %5
  %9 = phi i32 [ 1, %5 ], [ %25, %19 ]
  %10 = phi double [ %0, %5 ], [ %handler_result3, %19 ]
  %11 = phi double [ %0, %5 ], [ %22, %19 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !446, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata double %10, metadata !444, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata double %11, metadata !443, metadata !DIExpression()), !dbg !635
  %12 = sitofp i32 %9 to double, !dbg !638
  %13 = fdiv double %7, %12, !dbg !639
  %14 = fmul double %11, %13, !dbg !640
  call void @llvm.dbg.value(metadata double %14, metadata !443, metadata !DIExpression()), !dbg !635
  %15 = fmul double %12, 2.000000e+00, !dbg !641
  %handler_result = call double @fAddHandlerDouble(double %15, double 1.000000e+00), !dbg !642
  %16 = fdiv double %14, %handler_result, !dbg !642
  call void @llvm.dbg.value(metadata double %16, metadata !445, metadata !DIExpression()), !dbg !635
  %handler_result1 = call double @fAddHandlerDouble(double %10, double %16), !dbg !643
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !444, metadata !DIExpression()), !dbg !635
  %17 = add nuw nsw i32 %9, 1, !dbg !643
  call void @llvm.dbg.value(metadata i32 %17, metadata !446, metadata !DIExpression()), !dbg !635
  %18 = icmp eq i32 %17, 30, !dbg !644
  br i1 %18, label %26, label %19, !dbg !637, !llvm.loop !645

19:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i32 %17, metadata !446, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !444, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata double %14, metadata !443, metadata !DIExpression()), !dbg !635
  %20 = sitofp i32 %17 to double, !dbg !638
  %21 = fdiv double %7, %20, !dbg !639
  %22 = fmul double %14, %21, !dbg !640
  call void @llvm.dbg.value(metadata double %22, metadata !443, metadata !DIExpression()), !dbg !635
  %23 = fmul double %20, 2.000000e+00, !dbg !641
  %handler_result2 = call double @fAddHandlerDouble(double %23, double 1.000000e+00), !dbg !642
  %24 = fdiv double %22, %handler_result2, !dbg !642
  call void @llvm.dbg.value(metadata double %24, metadata !445, metadata !DIExpression()), !dbg !635
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result1, double %24), !dbg !643
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !444, metadata !DIExpression()), !dbg !635
  %25 = add nuw nsw i32 %9, 2, !dbg !643
  call void @llvm.dbg.value(metadata i32 %25, metadata !446, metadata !DIExpression()), !dbg !635
  br label %8

26:                                               ; preds = %8
  %27 = fmul double %handler_result1, 0x3FF20DD750429B6D, !dbg !647
  tail call void @llvm.dbg.value(metadata double %27, metadata !625, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !628
  tail call void @llvm.dbg.value(metadata double poison, metadata !625, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !628
  br label %31, !dbg !648

28:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !649
  %29 = call i32 @gsl_sf_erfc_e(double noundef %0, ptr noundef nonnull %2), !dbg !650
  %30 = load double, ptr %2, align 8, !dbg !651, !tbaa !384
  %handler_result4 = call double @fSubHandlerDouble(double 1.000000e+00, double %30), !dbg !652
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !625, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !628
  tail call void @llvm.dbg.value(metadata double poison, metadata !625, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !628
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !652
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi double [ %27, %26 ], [ %handler_result4, %28 ], !dbg !653
  tail call void @llvm.dbg.value(metadata double %32, metadata !625, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !628
  tail call void @llvm.dbg.value(metadata i32 0, metadata !626, metadata !DIExpression()), !dbg !628
  ret double %32, !dbg !654
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_erf_Z(double noundef %0) local_unnamed_addr #4 !dbg !655 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !657, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata double %0, metadata !483, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata ptr undef, metadata !484, metadata !DIExpression()), !dbg !661
  %2 = fneg double %0, !dbg !663
  %3 = fmul double %2, %0, !dbg !664
  %4 = fmul double %3, 5.000000e-01, !dbg !665
  %5 = tail call double @exp(double noundef %4) #6, !dbg !666
  call void @llvm.dbg.value(metadata double %5, metadata !485, metadata !DIExpression()), !dbg !667
  %6 = fdiv double %5, 0x40040D931FF62706, !dbg !668
  tail call void @llvm.dbg.value(metadata double %6, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !660
  %7 = tail call double @llvm.fabs.f64(double %6), !dbg !669
  tail call void @llvm.dbg.value(metadata double poison, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !660
  %8 = fcmp olt double %7, 0x10000000000000, !dbg !670
  br i1 %8, label %9, label %10, !dbg !671

9:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 384, i32 noundef 15) #6, !dbg !672
  tail call void @llvm.dbg.value(metadata i32 15, metadata !659, metadata !DIExpression()), !dbg !660
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 453, i32 noundef 15) #6, !dbg !673
  br label %10, !dbg !673

10:                                               ; preds = %9, %1
  ret double %6, !dbg !677
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_erf_Q(double noundef %0) local_unnamed_addr #0 !dbg !678 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !683
  tail call void @llvm.dbg.value(metadata double %0, metadata !680, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.assign(metadata i1 undef, metadata !517, metadata !DIExpression(), metadata !683, metadata ptr %2, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata double %0, metadata !515, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata ptr undef, metadata !516, metadata !DIExpression()), !dbg !687
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !688
  %3 = fdiv double %0, 0x3FF6A09E667F3BCD, !dbg !689
  %4 = call i32 @gsl_sf_erfc_e(double noundef %3, ptr noundef nonnull %2), !dbg !690
  call void @llvm.dbg.value(metadata i32 0, metadata !519, metadata !DIExpression()), !dbg !685
  %5 = load double, ptr %2, align 8, !dbg !691, !tbaa !384
  %6 = fmul double %5, 5.000000e-01, !dbg !692
  tail call void @llvm.dbg.value(metadata double %6, metadata !681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !684
  tail call void @llvm.dbg.value(metadata double poison, metadata !681, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !684
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !693
  tail call void @llvm.dbg.value(metadata i32 0, metadata !682, metadata !DIExpression()), !dbg !684
  ret double %6, !dbg !694
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hazard(double noundef %0) local_unnamed_addr #4 !dbg !695 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !700
  call void @llvm.dbg.assign(metadata i1 undef, metadata !698, metadata !DIExpression(), metadata !700, metadata ptr %2, metadata !DIExpression()), !dbg !701
  tail call void @llvm.dbg.value(metadata double %0, metadata !697, metadata !DIExpression()), !dbg !701
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !702
  %3 = call i32 @gsl_sf_hazard_e(double noundef %0, ptr noundef nonnull %2), !dbg !702
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !699, metadata !DIExpression()), !dbg !701
  %4 = icmp eq i32 %3, 0, !dbg !703
  br i1 %4, label %6, label %5, !dbg !702

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 463, i32 noundef %3) #6, !dbg !705
  br label %6, !dbg !705

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !702, !tbaa !384
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !708
  ret double %7, !dbg !708
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 384, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "erfc.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "1890a5cd8680ce008723a735c81e38b6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 384, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 453, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 27)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 463, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 28)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "erfc_xlt1_data", scope: !24, file: !2, line: 142, type: !105, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, globals: !65, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 39, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!30 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!31 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!32 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!33 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!34 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!35 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!36 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!37 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!38 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!39 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!40 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!41 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!42 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!43 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!44 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!45 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!46 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!47 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!48 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!49 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!50 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!51 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!52 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!53 = !DIEnumerator(name: "GSL_ESING", value: 21)
!54 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!55 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!56 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!57 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!58 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!59 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!60 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!61 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!62 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!63 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!64 = !DIEnumerator(name: "GSL_EOF", value: 32)
!65 = !{!0, !7, !66, !71, !76, !12, !81, !17, !83, !22, !96, !98, !101, !103, !108, !121}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 438, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 26)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 443, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 30)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 448, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 25)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 458, type: !14, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "erfc_xlt1_cs", scope: !24, file: !2, line: 164, type: !85, isLocal: true, isDefinition: true)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !86, line: 29, baseType: !87)
!86 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !86, line: 22, size: 320, elements: !88)
!88 = !{!89, !92, !93, !94, !95}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !87, file: !86, line: 23, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !87, file: !86, line: 24, baseType: !28, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !87, file: !86, line: 25, baseType: !91, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !87, file: !86, line: 26, baseType: !91, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !87, file: !86, line: 27, baseType: !28, size: 32, offset: 256)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "erfc_x15_cs", scope: !24, file: !2, line: 200, type: !85, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "erfc_x15_data", scope: !24, file: !2, line: 173, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 1600, elements: !79)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "erfc_x510_cs", scope: !24, file: !2, line: 231, type: !85, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "erfc_x510_data", scope: !24, file: !2, line: 209, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 1280, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "P", scope: !110, file: !2, line: 48, type: !118, isLocal: true, isDefinition: true)
!110 = distinct !DISubprogram(name: "erfc8_sum", scope: !2, file: !2, line: 43, type: !111, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{!91, !91}
!113 = !{!114, !115, !116, !117}
!114 = !DILocalVariable(name: "x", arg: 1, scope: !110, file: !2, line: 43, type: !91)
!115 = !DILocalVariable(name: "num", scope: !110, file: !2, line: 65, type: !91)
!116 = !DILocalVariable(name: "den", scope: !110, file: !2, line: 65, type: !91)
!117 = !DILocalVariable(name: "i", scope: !110, file: !2, line: 66, type: !28)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 384, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 6)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "Q", scope: !110, file: !2, line: 56, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 448, elements: !10)
!124 = !{i32 7, !"Dwarf Version", i32 5}
!125 = !{i32 2, !"Debug Info Version", i32 3}
!126 = !{i32 1, !"wchar_size", i32 4}
!127 = !{i32 8, !"PIC Level", i32 2}
!128 = !{i32 7, !"PIE Level", i32 2}
!129 = !{i32 7, !"uwtable", i32 2}
!130 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!131 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!132 = distinct !DISubprogram(name: "gsl_sf_erfc_e", scope: !2, file: !2, line: 256, type: !133, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !142)
!133 = !DISubroutineType(types: !134)
!134 = !{!28, !91, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !137, line: 41, baseType: !138)
!137 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !137, line: 37, size: 128, elements: !139)
!139 = !{!140, !141}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !138, file: !137, line: 38, baseType: !91, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !138, file: !137, line: 39, baseType: !91, size: 64, offset: 64)
!142 = !{!143, !144, !145, !147, !148, !149, !152, !153, !156, !157, !158, !161, !162}
!143 = !DILocalVariable(name: "x", arg: 1, scope: !132, file: !2, line: 256, type: !91)
!144 = !DILocalVariable(name: "result", arg: 2, scope: !132, file: !2, line: 256, type: !135)
!145 = !DILocalVariable(name: "ax", scope: !132, file: !2, line: 258, type: !146)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!147 = !DILocalVariable(name: "e_val", scope: !132, file: !2, line: 259, type: !91)
!148 = !DILocalVariable(name: "e_err", scope: !132, file: !2, line: 259, type: !91)
!149 = !DILocalVariable(name: "t", scope: !150, file: !2, line: 264, type: !91)
!150 = distinct !DILexicalBlock(scope: !151, file: !2, line: 263, column: 17)
!151 = distinct !DILexicalBlock(scope: !132, file: !2, line: 263, column: 6)
!152 = !DILocalVariable(name: "c", scope: !150, file: !2, line: 265, type: !136)
!153 = !DILocalVariable(name: "ex2", scope: !154, file: !2, line: 271, type: !91)
!154 = distinct !DILexicalBlock(scope: !155, file: !2, line: 270, column: 22)
!155 = distinct !DILexicalBlock(scope: !151, file: !2, line: 270, column: 11)
!156 = !DILocalVariable(name: "t", scope: !154, file: !2, line: 272, type: !91)
!157 = !DILocalVariable(name: "c", scope: !154, file: !2, line: 273, type: !136)
!158 = !DILocalVariable(name: "exterm", scope: !159, file: !2, line: 279, type: !91)
!159 = distinct !DILexicalBlock(scope: !160, file: !2, line: 278, column: 22)
!160 = distinct !DILexicalBlock(scope: !155, file: !2, line: 278, column: 11)
!161 = !DILocalVariable(name: "t", scope: !159, file: !2, line: 280, type: !91)
!162 = !DILocalVariable(name: "c", scope: !159, file: !2, line: 281, type: !136)
!163 = !DILocation(line: 0, scope: !132)
!164 = !DILocation(line: 258, column: 21, scope: !132)
!165 = !DILocation(line: 263, column: 9, scope: !151)
!166 = !DILocation(line: 263, column: 6, scope: !132)
!167 = !DILocation(line: 264, column: 19, scope: !150)
!168 = !DILocation(line: 11, column: 19, scope: !169, inlinedAt: !191)
!169 = distinct !DISubprogram(name: "cheb_eval_e", scope: !170, file: !170, line: 3, type: !171, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !175)
!170 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!171 = !DISubroutineType(types: !172)
!172 = !{!28, !173, !146, !135}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !189}
!176 = !DILocalVariable(name: "cs", arg: 1, scope: !169, file: !170, line: 3, type: !173)
!177 = !DILocalVariable(name: "x", arg: 2, scope: !169, file: !170, line: 4, type: !146)
!178 = !DILocalVariable(name: "result", arg: 3, scope: !169, file: !170, line: 5, type: !135)
!179 = !DILocalVariable(name: "j", scope: !169, file: !170, line: 7, type: !28)
!180 = !DILocalVariable(name: "d", scope: !169, file: !170, line: 8, type: !91)
!181 = !DILocalVariable(name: "dd", scope: !169, file: !170, line: 9, type: !91)
!182 = !DILocalVariable(name: "y", scope: !169, file: !170, line: 11, type: !91)
!183 = !DILocalVariable(name: "y2", scope: !169, file: !170, line: 12, type: !91)
!184 = !DILocalVariable(name: "e", scope: !169, file: !170, line: 14, type: !91)
!185 = !DILocalVariable(name: "temp", scope: !186, file: !170, line: 17, type: !91)
!186 = distinct !DILexicalBlock(scope: !187, file: !170, line: 16, column: 33)
!187 = distinct !DILexicalBlock(scope: !188, file: !170, line: 16, column: 3)
!188 = distinct !DILexicalBlock(scope: !169, file: !170, line: 16, column: 3)
!189 = !DILocalVariable(name: "temp", scope: !190, file: !170, line: 24, type: !91)
!190 = distinct !DILexicalBlock(scope: !169, file: !170, line: 23, column: 3)
!191 = distinct !DILocation(line: 266, column: 5, scope: !150)
!192 = !DILocation(line: 0, scope: !150)
!193 = !{}
!194 = !DILocation(line: 0, scope: !169, inlinedAt: !191)
!195 = !DILocation(line: 11, column: 30, scope: !169, inlinedAt: !191)
!196 = !DILocation(line: 11, column: 39, scope: !169, inlinedAt: !191)
!197 = !DILocation(line: 12, column: 19, scope: !169, inlinedAt: !191)
!198 = !DILocation(line: 16, column: 3, scope: !188, inlinedAt: !191)
!199 = !DILocation(line: 0, scope: !186, inlinedAt: !191)
!200 = !DILocation(line: 18, column: 11, scope: !186, inlinedAt: !191)
!201 = !DILocation(line: 18, column: 21, scope: !186, inlinedAt: !191)
!202 = !{!203, !203, i64 0}
!203 = !{!"double", !204, i64 0}
!204 = !{!"omnipotent char", !205, i64 0}
!205 = !{!"Simple C/C++ TBAA"}
!206 = !DILocation(line: 19, column: 10, scope: !186, inlinedAt: !191)
!207 = !DILocation(line: 19, column: 26, scope: !186, inlinedAt: !191)
!208 = !DILocation(line: 19, column: 37, scope: !186, inlinedAt: !191)
!209 = !DILocation(line: 19, column: 7, scope: !186, inlinedAt: !191)
!210 = !DILocation(line: 16, column: 29, scope: !187, inlinedAt: !191)
!211 = !DILocation(line: 16, column: 23, scope: !187, inlinedAt: !191)
!212 = distinct !{!212, !198, !213, !214}
!213 = !DILocation(line: 21, column: 3, scope: !188, inlinedAt: !191)
!214 = !{!"llvm.loop.mustprogress"}
!215 = !DILocation(line: 0, scope: !190, inlinedAt: !191)
!216 = !DILocation(line: 25, column: 10, scope: !190, inlinedAt: !191)
!217 = !DILocation(line: 25, column: 18, scope: !190, inlinedAt: !191)
!218 = !DILocation(line: 26, column: 10, scope: !190, inlinedAt: !191)
!219 = !DILocation(line: 26, column: 25, scope: !190, inlinedAt: !191)
!220 = !DILocation(line: 26, column: 34, scope: !190, inlinedAt: !191)
!221 = !DILocation(line: 26, column: 7, scope: !190, inlinedAt: !191)
!222 = !DILocation(line: 30, column: 33, scope: !169, inlinedAt: !191)
!223 = !DILocation(line: 269, column: 3, scope: !150)
!224 = !DILocation(line: 270, column: 14, scope: !155)
!225 = !DILocation(line: 270, column: 11, scope: !151)
!226 = !DILocation(line: 271, column: 22, scope: !154)
!227 = !DILocation(line: 271, column: 24, scope: !154)
!228 = !DILocation(line: 271, column: 18, scope: !154)
!229 = !DILocation(line: 0, scope: !154)
!230 = !DILocation(line: 272, column: 19, scope: !154)
!231 = !DILocation(line: 0, scope: !169, inlinedAt: !232)
!232 = distinct !DILocation(line: 274, column: 5, scope: !154)
!233 = !DILocation(line: 11, column: 19, scope: !169, inlinedAt: !232)
!234 = !DILocation(line: 11, column: 30, scope: !169, inlinedAt: !232)
!235 = !DILocation(line: 11, column: 39, scope: !169, inlinedAt: !232)
!236 = !DILocation(line: 12, column: 19, scope: !169, inlinedAt: !232)
!237 = !DILocation(line: 16, column: 3, scope: !188, inlinedAt: !232)
!238 = !DILocation(line: 0, scope: !186, inlinedAt: !232)
!239 = !DILocation(line: 18, column: 11, scope: !186, inlinedAt: !232)
!240 = !DILocation(line: 18, column: 21, scope: !186, inlinedAt: !232)
!241 = !DILocation(line: 19, column: 10, scope: !186, inlinedAt: !232)
!242 = !DILocation(line: 19, column: 26, scope: !186, inlinedAt: !232)
!243 = !DILocation(line: 19, column: 37, scope: !186, inlinedAt: !232)
!244 = !DILocation(line: 19, column: 7, scope: !186, inlinedAt: !232)
!245 = !DILocation(line: 16, column: 29, scope: !187, inlinedAt: !232)
!246 = !DILocation(line: 16, column: 23, scope: !187, inlinedAt: !232)
!247 = distinct !{!247, !237, !248, !214}
!248 = !DILocation(line: 21, column: 3, scope: !188, inlinedAt: !232)
!249 = !DILocation(line: 0, scope: !190, inlinedAt: !232)
!250 = !DILocation(line: 25, column: 10, scope: !190, inlinedAt: !232)
!251 = !DILocation(line: 25, column: 18, scope: !190, inlinedAt: !232)
!252 = !DILocation(line: 26, column: 10, scope: !190, inlinedAt: !232)
!253 = !DILocation(line: 26, column: 25, scope: !190, inlinedAt: !232)
!254 = !DILocation(line: 26, column: 34, scope: !190, inlinedAt: !232)
!255 = !DILocation(line: 26, column: 7, scope: !190, inlinedAt: !232)
!256 = !DILocation(line: 30, column: 33, scope: !169, inlinedAt: !232)
!257 = !DILocation(line: 275, column: 17, scope: !154)
!258 = !DILocation(line: 276, column: 31, scope: !154)
!259 = !DILocation(line: 276, column: 39, scope: !154)
!260 = !DILocation(line: 276, column: 17, scope: !154)
!261 = !DILocation(line: 277, column: 3, scope: !154)
!262 = !DILocation(line: 278, column: 14, scope: !160)
!263 = !DILocation(line: 278, column: 11, scope: !155)
!264 = !DILocation(line: 279, column: 25, scope: !159)
!265 = !DILocation(line: 279, column: 27, scope: !159)
!266 = !DILocation(line: 279, column: 21, scope: !159)
!267 = !DILocation(line: 279, column: 31, scope: !159)
!268 = !DILocation(line: 0, scope: !159)
!269 = !DILocation(line: 280, column: 20, scope: !159)
!270 = !DILocation(line: 280, column: 31, scope: !159)
!271 = !DILocation(line: 0, scope: !169, inlinedAt: !272)
!272 = distinct !DILocation(line: 282, column: 5, scope: !159)
!273 = !DILocation(line: 11, column: 19, scope: !169, inlinedAt: !272)
!274 = !DILocation(line: 11, column: 30, scope: !169, inlinedAt: !272)
!275 = !DILocation(line: 11, column: 39, scope: !169, inlinedAt: !272)
!276 = !DILocation(line: 12, column: 19, scope: !169, inlinedAt: !272)
!277 = !DILocation(line: 16, column: 3, scope: !188, inlinedAt: !272)
!278 = !DILocation(line: 0, scope: !186, inlinedAt: !272)
!279 = !DILocation(line: 18, column: 11, scope: !186, inlinedAt: !272)
!280 = !DILocation(line: 18, column: 21, scope: !186, inlinedAt: !272)
!281 = !DILocation(line: 19, column: 10, scope: !186, inlinedAt: !272)
!282 = !DILocation(line: 19, column: 26, scope: !186, inlinedAt: !272)
!283 = !DILocation(line: 19, column: 37, scope: !186, inlinedAt: !272)
!284 = !DILocation(line: 19, column: 7, scope: !186, inlinedAt: !272)
!285 = !DILocation(line: 16, column: 29, scope: !187, inlinedAt: !272)
!286 = !DILocation(line: 16, column: 23, scope: !187, inlinedAt: !272)
!287 = distinct !{!287, !277, !288, !214}
!288 = !DILocation(line: 21, column: 3, scope: !188, inlinedAt: !272)
!289 = !DILocation(line: 0, scope: !190, inlinedAt: !272)
!290 = !DILocation(line: 25, column: 10, scope: !190, inlinedAt: !272)
!291 = !DILocation(line: 25, column: 18, scope: !190, inlinedAt: !272)
!292 = !DILocation(line: 26, column: 10, scope: !190, inlinedAt: !272)
!293 = !DILocation(line: 26, column: 25, scope: !190, inlinedAt: !272)
!294 = !DILocation(line: 26, column: 34, scope: !190, inlinedAt: !272)
!295 = !DILocation(line: 26, column: 7, scope: !190, inlinedAt: !272)
!296 = !DILocation(line: 30, column: 33, scope: !169, inlinedAt: !272)
!297 = !DILocation(line: 283, column: 20, scope: !159)
!298 = !DILocation(line: 284, column: 42, scope: !159)
!299 = !DILocation(line: 284, column: 59, scope: !159)
!300 = !DILocation(line: 284, column: 20, scope: !159)
!301 = !DILocation(line: 285, column: 3, scope: !159)
!302 = !DILocalVariable(name: "x", arg: 1, scope: !303, file: !2, line: 81, type: !91)
!303 = distinct !DISubprogram(name: "erfc8", scope: !2, file: !2, line: 81, type: !111, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !304)
!304 = !{!302, !305}
!305 = !DILocalVariable(name: "e", scope: !303, file: !2, line: 83, type: !91)
!306 = !DILocation(line: 0, scope: !303, inlinedAt: !307)
!307 = distinct !DILocation(line: 287, column: 13, scope: !308)
!308 = distinct !DILexicalBlock(scope: !160, file: !2, line: 286, column: 8)
!309 = !DILocation(line: 0, scope: !110, inlinedAt: !310)
!310 = distinct !DILocation(line: 84, column: 7, scope: !303, inlinedAt: !307)
!311 = !DILocation(line: 70, column: 14, scope: !312, inlinedAt: !310)
!312 = distinct !DILexicalBlock(scope: !313, file: !2, line: 69, column: 24)
!313 = distinct !DILexicalBlock(scope: !314, file: !2, line: 69, column: 3)
!314 = distinct !DILexicalBlock(scope: !110, file: !2, line: 69, column: 3)
!315 = !DILocation(line: 74, column: 14, scope: !316, inlinedAt: !310)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 73, column: 24)
!317 = distinct !DILexicalBlock(scope: !318, file: !2, line: 73, column: 3)
!318 = distinct !DILexicalBlock(scope: !110, file: !2, line: 73, column: 3)
!319 = !DILocation(line: 70, column: 19, scope: !312, inlinedAt: !310)
!320 = !DILocation(line: 77, column: 13, scope: !110, inlinedAt: !310)
!321 = !DILocation(line: 85, column: 12, scope: !303, inlinedAt: !307)
!322 = !DILocation(line: 85, column: 14, scope: !303, inlinedAt: !307)
!323 = !DILocation(line: 85, column: 8, scope: !303, inlinedAt: !307)
!324 = !DILocation(line: 85, column: 5, scope: !303, inlinedAt: !307)
!325 = !DILocation(line: 288, column: 15, scope: !308)
!326 = !DILocation(line: 288, column: 25, scope: !308)
!327 = !DILocation(line: 288, column: 45, scope: !308)
!328 = !DILocation(line: 288, column: 43, scope: !308)
!329 = !DILocation(line: 0, scope: !151)
!330 = !DILocation(line: 291, column: 8, scope: !331)
!331 = distinct !DILexicalBlock(scope: !132, file: !2, line: 291, column: 6)
!332 = !DILocation(line: 291, column: 6, scope: !132)
!333 = !DILocation(line: 0, scope: !331)
!334 = !DILocation(line: 302, column: 3, scope: !132)
!335 = !DISubprogram(name: "exp", scope: !336, file: !336, line: 95, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!337 = distinct !DISubprogram(name: "gsl_sf_log_erfc_e", scope: !2, file: !2, line: 306, type: !133, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !338)
!338 = !{!339, !340, !341, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!339 = !DILocalVariable(name: "x", arg: 1, scope: !337, file: !2, line: 306, type: !91)
!340 = !DILocalVariable(name: "result", arg: 2, scope: !337, file: !2, line: 306, type: !135)
!341 = !DILocalVariable(name: "y", scope: !342, file: !2, line: 311, type: !146)
!342 = distinct !DILexicalBlock(scope: !343, file: !2, line: 310, column: 40)
!343 = distinct !DILexicalBlock(scope: !337, file: !2, line: 310, column: 6)
!344 = !DILocalVariable(name: "c3", scope: !342, file: !2, line: 313, type: !146)
!345 = !DILocalVariable(name: "c4", scope: !342, file: !2, line: 314, type: !146)
!346 = !DILocalVariable(name: "c5", scope: !342, file: !2, line: 315, type: !146)
!347 = !DILocalVariable(name: "c6", scope: !342, file: !2, line: 316, type: !146)
!348 = !DILocalVariable(name: "c7", scope: !342, file: !2, line: 317, type: !146)
!349 = !DILocalVariable(name: "c8", scope: !342, file: !2, line: 318, type: !146)
!350 = !DILocalVariable(name: "c9", scope: !342, file: !2, line: 319, type: !146)
!351 = !DILocalVariable(name: "c10", scope: !342, file: !2, line: 320, type: !146)
!352 = !DILocalVariable(name: "c11", scope: !342, file: !2, line: 321, type: !146)
!353 = !DILocalVariable(name: "c12", scope: !342, file: !2, line: 322, type: !146)
!354 = !DILocalVariable(name: "c13", scope: !342, file: !2, line: 323, type: !146)
!355 = !DILocalVariable(name: "c14", scope: !342, file: !2, line: 324, type: !146)
!356 = !DILocalVariable(name: "series", scope: !342, file: !2, line: 325, type: !91)
!357 = !DILocalVariable(name: "result_erfc", scope: !358, file: !2, line: 347, type: !136)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 346, column: 8)
!359 = distinct !DILexicalBlock(scope: !343, file: !2, line: 341, column: 11)
!360 = distinct !DIAssignID()
!361 = !DILocation(line: 0, scope: !358)
!362 = !DILocation(line: 0, scope: !337)
!363 = !DILocation(line: 310, column: 7, scope: !343)
!364 = !DILocation(line: 310, column: 10, scope: !343)
!365 = !DILocation(line: 310, column: 6, scope: !337)
!366 = !DILocation(line: 311, column: 24, scope: !342)
!367 = !DILocation(line: 0, scope: !342)
!368 = !DILocation(line: 325, column: 73, scope: !342)
!369 = !DILocation(line: 325, column: 62, scope: !342)
!370 = !DILocation(line: 325, column: 53, scope: !342)
!371 = !DILocation(line: 325, column: 44, scope: !342)
!372 = !DILocation(line: 325, column: 35, scope: !342)
!373 = !DILocation(line: 325, column: 27, scope: !342)
!374 = !DILocation(line: 326, column: 73, scope: !342)
!375 = !DILocation(line: 326, column: 65, scope: !342)
!376 = !DILocation(line: 326, column: 57, scope: !342)
!377 = !DILocation(line: 326, column: 49, scope: !342)
!378 = !DILocation(line: 326, column: 41, scope: !342)
!379 = !DILocation(line: 326, column: 33, scope: !342)
!380 = !DILocation(line: 326, column: 24, scope: !342)
!381 = !DILocation(line: 326, column: 15, scope: !342)
!382 = !DILocation(line: 327, column: 24, scope: !342)
!383 = !DILocation(line: 327, column: 17, scope: !342)
!384 = !{!385, !203, i64 0}
!385 = !{!"gsl_sf_result_struct", !203, i64 0, !203, i64 8}
!386 = !DILocation(line: 328, column: 43, scope: !342)
!387 = !DILocation(line: 328, column: 41, scope: !342)
!388 = !DILocation(line: 328, column: 13, scope: !342)
!389 = !DILocation(line: 328, column: 17, scope: !342)
!390 = !{!385, !203, i64 8}
!391 = !DILocation(line: 341, column: 13, scope: !359)
!392 = !DILocation(line: 341, column: 11, scope: !343)
!393 = !DILocalVariable(name: "x", arg: 1, scope: !394, file: !2, line: 90, type: !91)
!394 = distinct !DISubprogram(name: "log_erfc8", scope: !2, file: !2, line: 90, type: !111, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !395)
!395 = !{!393, !396}
!396 = !DILocalVariable(name: "e", scope: !394, file: !2, line: 92, type: !91)
!397 = !DILocation(line: 0, scope: !394, inlinedAt: !398)
!398 = distinct !DILocation(line: 342, column: 19, scope: !399)
!399 = distinct !DILexicalBlock(scope: !359, file: !2, line: 341, column: 20)
!400 = !DILocation(line: 0, scope: !110, inlinedAt: !401)
!401 = distinct !DILocation(line: 93, column: 7, scope: !394, inlinedAt: !398)
!402 = !DILocation(line: 70, column: 14, scope: !312, inlinedAt: !401)
!403 = !DILocation(line: 74, column: 14, scope: !316, inlinedAt: !401)
!404 = !DILocation(line: 70, column: 19, scope: !312, inlinedAt: !401)
!405 = !DILocation(line: 77, column: 13, scope: !110, inlinedAt: !401)
!406 = !DILocation(line: 342, column: 17, scope: !399)
!407 = !DILocation(line: 343, column: 43, scope: !399)
!408 = !DILocation(line: 343, column: 41, scope: !399)
!409 = !DILocation(line: 343, column: 13, scope: !399)
!410 = !DILocation(line: 343, column: 17, scope: !399)
!411 = !DILocation(line: 344, column: 5, scope: !399)
!412 = !DILocation(line: 347, column: 5, scope: !358)
!413 = !DILocation(line: 348, column: 5, scope: !358)
!414 = !DILocation(line: 349, column: 36, scope: !358)
!415 = !DILocation(line: 349, column: 18, scope: !358)
!416 = !DILocation(line: 350, column: 37, scope: !358)
!417 = !DILocation(line: 350, column: 41, scope: !358)
!418 = !DILocation(line: 350, column: 20, scope: !358)
!419 = !DILocation(line: 350, column: 13, scope: !358)
!420 = !DILocation(line: 351, column: 44, scope: !358)
!421 = !DILocation(line: 351, column: 42, scope: !358)
!422 = !DILocation(line: 351, column: 17, scope: !358)
!423 = !DILocation(line: 353, column: 3, scope: !359)
!424 = !DILocation(line: 354, column: 1, scope: !337)
!425 = !DISubprogram(name: "log", scope: !336, file: !336, line: 104, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = distinct !DISubprogram(name: "gsl_sf_erf_e", scope: !2, file: !2, line: 357, type: !133, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !427)
!427 = !{!428, !429, !430}
!428 = !DILocalVariable(name: "x", arg: 1, scope: !426, file: !2, line: 357, type: !91)
!429 = !DILocalVariable(name: "result", arg: 2, scope: !426, file: !2, line: 357, type: !135)
!430 = !DILocalVariable(name: "result_erfc", scope: !431, file: !2, line: 365, type: !136)
!431 = distinct !DILexicalBlock(scope: !432, file: !2, line: 364, column: 8)
!432 = distinct !DILexicalBlock(scope: !426, file: !2, line: 361, column: 6)
!433 = distinct !DIAssignID()
!434 = !DILocation(line: 0, scope: !431)
!435 = !DILocation(line: 0, scope: !426)
!436 = !DILocation(line: 361, column: 6, scope: !432)
!437 = !DILocation(line: 361, column: 14, scope: !432)
!438 = !DILocation(line: 361, column: 6, scope: !426)
!439 = !DILocalVariable(name: "x", arg: 1, scope: !440, file: !2, line: 123, type: !91)
!440 = distinct !DISubprogram(name: "erfseries", scope: !2, file: !2, line: 123, type: !133, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !441)
!441 = !{!439, !442, !443, !444, !445, !446}
!442 = !DILocalVariable(name: "result", arg: 2, scope: !440, file: !2, line: 123, type: !135)
!443 = !DILocalVariable(name: "coef", scope: !440, file: !2, line: 125, type: !91)
!444 = !DILocalVariable(name: "e", scope: !440, file: !2, line: 126, type: !91)
!445 = !DILocalVariable(name: "del", scope: !440, file: !2, line: 127, type: !91)
!446 = !DILocalVariable(name: "k", scope: !440, file: !2, line: 128, type: !28)
!447 = !DILocation(line: 0, scope: !440, inlinedAt: !448)
!448 = distinct !DILocation(line: 362, column: 12, scope: !449)
!449 = distinct !DILexicalBlock(scope: !432, file: !2, line: 361, column: 21)
!450 = !DILocation(line: 129, column: 3, scope: !451, inlinedAt: !448)
!451 = distinct !DILexicalBlock(scope: !440, file: !2, line: 129, column: 3)
!452 = !DILocation(line: 130, column: 18, scope: !453, inlinedAt: !448)
!453 = distinct !DILexicalBlock(scope: !454, file: !2, line: 129, column: 24)
!454 = distinct !DILexicalBlock(scope: !451, file: !2, line: 129, column: 3)
!455 = !DILocation(line: 130, column: 17, scope: !453, inlinedAt: !448)
!456 = !DILocation(line: 130, column: 10, scope: !453, inlinedAt: !448)
!457 = !DILocation(line: 131, column: 22, scope: !453, inlinedAt: !448)
!458 = !DILocation(line: 131, column: 17, scope: !453, inlinedAt: !448)
!459 = !DILocation(line: 129, column: 19, scope: !454, inlinedAt: !448)
!460 = !DILocation(line: 129, column: 14, scope: !454, inlinedAt: !448)
!461 = distinct !{!461, !450, !462, !214}
!462 = !DILocation(line: 133, column: 3, scope: !451, inlinedAt: !448)
!463 = !DILocation(line: 134, column: 32, scope: !440, inlinedAt: !448)
!464 = !DILocation(line: 134, column: 15, scope: !440, inlinedAt: !448)
!465 = !DILocation(line: 135, column: 35, scope: !440, inlinedAt: !448)
!466 = !DILocation(line: 135, column: 32, scope: !440, inlinedAt: !448)
!467 = !DILocation(line: 135, column: 11, scope: !440, inlinedAt: !448)
!468 = !DILocation(line: 135, column: 15, scope: !440, inlinedAt: !448)
!469 = !DILocation(line: 362, column: 5, scope: !449)
!470 = !DILocation(line: 365, column: 5, scope: !431)
!471 = !DILocation(line: 366, column: 5, scope: !431)
!472 = !DILocation(line: 367, column: 38, scope: !431)
!473 = !DILocation(line: 367, column: 18, scope: !431)
!474 = !DILocation(line: 368, column: 32, scope: !431)
!475 = !DILocation(line: 368, column: 13, scope: !431)
!476 = !DILocation(line: 369, column: 44, scope: !431)
!477 = !DILocation(line: 369, column: 42, scope: !431)
!478 = !DILocation(line: 369, column: 17, scope: !431)
!479 = !DILocation(line: 371, column: 3, scope: !432)
!480 = !DILocation(line: 372, column: 1, scope: !426)
!481 = distinct !DISubprogram(name: "gsl_sf_erf_Z_e", scope: !2, file: !2, line: 375, type: !133, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !482)
!482 = !{!483, !484, !485}
!483 = !DILocalVariable(name: "x", arg: 1, scope: !481, file: !2, line: 375, type: !91)
!484 = !DILocalVariable(name: "result", arg: 2, scope: !481, file: !2, line: 375, type: !135)
!485 = !DILocalVariable(name: "ex2", scope: !486, file: !2, line: 380, type: !146)
!486 = distinct !DILexicalBlock(scope: !481, file: !2, line: 379, column: 3)
!487 = !DILocation(line: 0, scope: !481)
!488 = !DILocation(line: 380, column: 28, scope: !486)
!489 = !DILocation(line: 380, column: 30, scope: !486)
!490 = !DILocation(line: 380, column: 32, scope: !486)
!491 = !DILocation(line: 380, column: 24, scope: !486)
!492 = !DILocation(line: 0, scope: !486)
!493 = !DILocation(line: 381, column: 24, scope: !486)
!494 = !DILocation(line: 381, column: 18, scope: !486)
!495 = !DILocation(line: 382, column: 27, scope: !486)
!496 = !DILocation(line: 382, column: 20, scope: !486)
!497 = !DILocation(line: 382, column: 42, scope: !486)
!498 = !DILocation(line: 382, column: 13, scope: !486)
!499 = !DILocation(line: 383, column: 44, scope: !486)
!500 = !DILocation(line: 383, column: 42, scope: !486)
!501 = !DILocation(line: 383, column: 17, scope: !486)
!502 = !DILocation(line: 384, column: 5, scope: !503)
!503 = distinct !DILexicalBlock(scope: !486, file: !2, line: 384, column: 5)
!504 = !DILocation(line: 384, column: 5, scope: !486)
!505 = !DILocation(line: 384, column: 5, scope: !506)
!506 = distinct !DILexicalBlock(scope: !503, file: !2, line: 384, column: 5)
!507 = !DILocation(line: 387, column: 1, scope: !481)
!508 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !511, !511, !28, !28}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!513 = distinct !DISubprogram(name: "gsl_sf_erf_Q_e", scope: !2, file: !2, line: 390, type: !133, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !514)
!514 = !{!515, !516, !517, !519}
!515 = !DILocalVariable(name: "x", arg: 1, scope: !513, file: !2, line: 390, type: !91)
!516 = !DILocalVariable(name: "result", arg: 2, scope: !513, file: !2, line: 390, type: !135)
!517 = !DILocalVariable(name: "result_erfc", scope: !518, file: !2, line: 395, type: !136)
!518 = distinct !DILexicalBlock(scope: !513, file: !2, line: 394, column: 3)
!519 = !DILocalVariable(name: "stat", scope: !518, file: !2, line: 396, type: !28)
!520 = distinct !DIAssignID()
!521 = !DILocation(line: 0, scope: !518)
!522 = !DILocation(line: 0, scope: !513)
!523 = !DILocation(line: 395, column: 5, scope: !518)
!524 = !DILocation(line: 396, column: 31, scope: !518)
!525 = !DILocation(line: 396, column: 16, scope: !518)
!526 = !DILocation(line: 397, column: 38, scope: !518)
!527 = !DILocation(line: 397, column: 24, scope: !518)
!528 = !DILocation(line: 397, column: 18, scope: !518)
!529 = !DILocation(line: 398, column: 38, scope: !518)
!530 = !DILocation(line: 398, column: 24, scope: !518)
!531 = !DILocation(line: 398, column: 13, scope: !518)
!532 = !DILocation(line: 399, column: 44, scope: !518)
!533 = !DILocation(line: 399, column: 42, scope: !518)
!534 = !DILocation(line: 399, column: 17, scope: !518)
!535 = !DILocation(line: 401, column: 3, scope: !513)
!536 = !DILocation(line: 400, column: 5, scope: !518)
!537 = distinct !DISubprogram(name: "gsl_sf_hazard_e", scope: !2, file: !2, line: 405, type: !133, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !538)
!538 = !{!539, !540, !541, !544, !546, !547, !548, !549, !551, !552, !553}
!539 = !DILocalVariable(name: "x", arg: 1, scope: !537, file: !2, line: 405, type: !91)
!540 = !DILocalVariable(name: "result", arg: 2, scope: !537, file: !2, line: 405, type: !135)
!541 = !DILocalVariable(name: "result_ln_erfc", scope: !542, file: !2, line: 409, type: !136)
!542 = distinct !DILexicalBlock(scope: !543, file: !2, line: 408, column: 3)
!543 = distinct !DILexicalBlock(scope: !537, file: !2, line: 407, column: 6)
!544 = !DILocalVariable(name: "stat_l", scope: !542, file: !2, line: 410, type: !545)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!546 = !DILocalVariable(name: "lnc", scope: !542, file: !2, line: 411, type: !146)
!547 = !DILocalVariable(name: "arg", scope: !542, file: !2, line: 412, type: !146)
!548 = !DILocalVariable(name: "stat_e", scope: !542, file: !2, line: 413, type: !545)
!549 = !DILocalVariable(name: "ix2", scope: !550, file: !2, line: 420, type: !146)
!550 = distinct !DILexicalBlock(scope: !543, file: !2, line: 419, column: 3)
!551 = !DILocalVariable(name: "corrB", scope: !550, file: !2, line: 421, type: !146)
!552 = !DILocalVariable(name: "corrM", scope: !550, file: !2, line: 422, type: !146)
!553 = !DILocalVariable(name: "corrT", scope: !550, file: !2, line: 423, type: !146)
!554 = distinct !DIAssignID()
!555 = !DILocation(line: 0, scope: !542)
!556 = !DILocation(line: 0, scope: !537)
!557 = !DILocation(line: 407, column: 8, scope: !543)
!558 = !DILocation(line: 407, column: 6, scope: !537)
!559 = !DILocation(line: 409, column: 5, scope: !542)
!560 = !DILocation(line: 410, column: 43, scope: !542)
!561 = !DILocation(line: 410, column: 24, scope: !542)
!562 = !DILocation(line: 412, column: 33, scope: !542)
!563 = !DILocation(line: 412, column: 35, scope: !542)
!564 = !DILocation(line: 412, column: 55, scope: !542)
!565 = !DILocation(line: 413, column: 24, scope: !542)
!566 = !DILocation(line: 414, column: 33, scope: !542)
!567 = !DILocation(line: 414, column: 24, scope: !542)
!568 = !DILocation(line: 414, column: 42, scope: !542)
!569 = !DILocation(line: 414, column: 75, scope: !542)
!570 = !DILocation(line: 414, column: 62, scope: !542)
!571 = !DILocation(line: 414, column: 60, scope: !542)
!572 = !DILocation(line: 414, column: 13, scope: !542)
!573 = !DILocation(line: 414, column: 17, scope: !542)
!574 = !DILocation(line: 415, column: 40, scope: !542)
!575 = !DILocation(line: 415, column: 44, scope: !542)
!576 = !DILocation(line: 415, column: 20, scope: !542)
!577 = !DILocation(line: 415, column: 17, scope: !542)
!578 = !DILocation(line: 417, column: 3, scope: !543)
!579 = !DILocation(line: 420, column: 30, scope: !550)
!580 = !DILocation(line: 420, column: 27, scope: !550)
!581 = !DILocation(line: 0, scope: !550)
!582 = !DILocation(line: 421, column: 35, scope: !550)
!583 = !DILocation(line: 421, column: 53, scope: !550)
!584 = !DILocation(line: 421, column: 40, scope: !550)
!585 = !DILocation(line: 422, column: 35, scope: !550)
!586 = !DILocation(line: 422, column: 52, scope: !550)
!587 = !DILocation(line: 422, column: 57, scope: !550)
!588 = !DILocation(line: 422, column: 40, scope: !550)
!589 = !DILocation(line: 423, column: 48, scope: !550)
!590 = !DILocation(line: 423, column: 52, scope: !550)
!591 = !DILocation(line: 423, column: 36, scope: !550)
!592 = !DILocation(line: 424, column: 21, scope: !550)
!593 = !DILocation(line: 424, column: 17, scope: !550)
!594 = !DILocation(line: 425, column: 43, scope: !550)
!595 = !DILocation(line: 425, column: 41, scope: !550)
!596 = !DILocation(line: 425, column: 13, scope: !550)
!597 = !DILocation(line: 425, column: 17, scope: !550)
!598 = !DILocation(line: 0, scope: !543)
!599 = !DILocation(line: 428, column: 1, scope: !537)
!600 = !DISubprogram(name: "gsl_sf_exp_e", scope: !601, file: !601, line: 45, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!601 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!602 = !DISubroutineType(types: !603)
!603 = !{!28, !146, !135}
!604 = distinct !DISubprogram(name: "gsl_sf_erfc", scope: !2, file: !2, line: 436, type: !111, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !605)
!605 = !{!606, !607, !608}
!606 = !DILocalVariable(name: "x", arg: 1, scope: !604, file: !2, line: 436, type: !91)
!607 = !DILocalVariable(name: "result", scope: !604, file: !2, line: 438, type: !136)
!608 = !DILocalVariable(name: "status", scope: !604, file: !2, line: 438, type: !28)
!609 = distinct !DIAssignID()
!610 = !DILocation(line: 0, scope: !604)
!611 = !DILocation(line: 438, column: 3, scope: !604)
!612 = !DILocation(line: 439, column: 1, scope: !604)
!613 = distinct !DISubprogram(name: "gsl_sf_log_erfc", scope: !2, file: !2, line: 441, type: !111, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !614)
!614 = !{!615, !616, !617}
!615 = !DILocalVariable(name: "x", arg: 1, scope: !613, file: !2, line: 441, type: !91)
!616 = !DILocalVariable(name: "result", scope: !613, file: !2, line: 443, type: !136)
!617 = !DILocalVariable(name: "status", scope: !613, file: !2, line: 443, type: !28)
!618 = distinct !DIAssignID()
!619 = !DILocation(line: 0, scope: !613)
!620 = !DILocation(line: 443, column: 3, scope: !613)
!621 = !DILocation(line: 444, column: 1, scope: !613)
!622 = distinct !DISubprogram(name: "gsl_sf_erf", scope: !2, file: !2, line: 446, type: !111, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !623)
!623 = !{!624, !625, !626}
!624 = !DILocalVariable(name: "x", arg: 1, scope: !622, file: !2, line: 446, type: !91)
!625 = !DILocalVariable(name: "result", scope: !622, file: !2, line: 448, type: !136)
!626 = !DILocalVariable(name: "status", scope: !622, file: !2, line: 448, type: !28)
!627 = distinct !DIAssignID()
!628 = !DILocation(line: 0, scope: !622)
!629 = !DILocation(line: 0, scope: !431, inlinedAt: !630)
!630 = distinct !DILocation(line: 448, column: 3, scope: !622)
!631 = !DILocation(line: 0, scope: !426, inlinedAt: !630)
!632 = !DILocation(line: 361, column: 6, scope: !432, inlinedAt: !630)
!633 = !DILocation(line: 361, column: 14, scope: !432, inlinedAt: !630)
!634 = !DILocation(line: 361, column: 6, scope: !426, inlinedAt: !630)
!635 = !DILocation(line: 0, scope: !440, inlinedAt: !636)
!636 = distinct !DILocation(line: 362, column: 12, scope: !449, inlinedAt: !630)
!637 = !DILocation(line: 129, column: 3, scope: !451, inlinedAt: !636)
!638 = !DILocation(line: 130, column: 18, scope: !453, inlinedAt: !636)
!639 = !DILocation(line: 130, column: 17, scope: !453, inlinedAt: !636)
!640 = !DILocation(line: 130, column: 10, scope: !453, inlinedAt: !636)
!641 = !DILocation(line: 131, column: 22, scope: !453, inlinedAt: !636)
!642 = !DILocation(line: 131, column: 17, scope: !453, inlinedAt: !636)
!643 = !DILocation(line: 129, column: 19, scope: !454, inlinedAt: !636)
!644 = !DILocation(line: 129, column: 14, scope: !454, inlinedAt: !636)
!645 = distinct !{!645, !637, !646, !214}
!646 = !DILocation(line: 133, column: 3, scope: !451, inlinedAt: !636)
!647 = !DILocation(line: 134, column: 32, scope: !440, inlinedAt: !636)
!648 = !DILocation(line: 362, column: 5, scope: !449, inlinedAt: !630)
!649 = !DILocation(line: 365, column: 5, scope: !431, inlinedAt: !630)
!650 = !DILocation(line: 366, column: 5, scope: !431, inlinedAt: !630)
!651 = !DILocation(line: 367, column: 38, scope: !431, inlinedAt: !630)
!652 = !DILocation(line: 371, column: 3, scope: !432, inlinedAt: !630)
!653 = !DILocation(line: 0, scope: !432, inlinedAt: !630)
!654 = !DILocation(line: 449, column: 1, scope: !622)
!655 = distinct !DISubprogram(name: "gsl_sf_erf_Z", scope: !2, file: !2, line: 451, type: !111, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !656)
!656 = !{!657, !658, !659}
!657 = !DILocalVariable(name: "x", arg: 1, scope: !655, file: !2, line: 451, type: !91)
!658 = !DILocalVariable(name: "result", scope: !655, file: !2, line: 453, type: !136)
!659 = !DILocalVariable(name: "status", scope: !655, file: !2, line: 453, type: !28)
!660 = !DILocation(line: 0, scope: !655)
!661 = !DILocation(line: 0, scope: !481, inlinedAt: !662)
!662 = distinct !DILocation(line: 453, column: 3, scope: !655)
!663 = !DILocation(line: 380, column: 28, scope: !486, inlinedAt: !662)
!664 = !DILocation(line: 380, column: 30, scope: !486, inlinedAt: !662)
!665 = !DILocation(line: 380, column: 32, scope: !486, inlinedAt: !662)
!666 = !DILocation(line: 380, column: 24, scope: !486, inlinedAt: !662)
!667 = !DILocation(line: 0, scope: !486, inlinedAt: !662)
!668 = !DILocation(line: 381, column: 24, scope: !486, inlinedAt: !662)
!669 = !DILocation(line: 383, column: 44, scope: !486, inlinedAt: !662)
!670 = !DILocation(line: 384, column: 5, scope: !503, inlinedAt: !662)
!671 = !DILocation(line: 384, column: 5, scope: !486, inlinedAt: !662)
!672 = !DILocation(line: 384, column: 5, scope: !506, inlinedAt: !662)
!673 = !DILocation(line: 453, column: 3, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !2, line: 453, column: 3)
!675 = distinct !DILexicalBlock(scope: !676, file: !2, line: 453, column: 3)
!676 = distinct !DILexicalBlock(scope: !655, file: !2, line: 453, column: 3)
!677 = !DILocation(line: 454, column: 1, scope: !655)
!678 = distinct !DISubprogram(name: "gsl_sf_erf_Q", scope: !2, file: !2, line: 456, type: !111, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !679)
!679 = !{!680, !681, !682}
!680 = !DILocalVariable(name: "x", arg: 1, scope: !678, file: !2, line: 456, type: !91)
!681 = !DILocalVariable(name: "result", scope: !678, file: !2, line: 458, type: !136)
!682 = !DILocalVariable(name: "status", scope: !678, file: !2, line: 458, type: !28)
!683 = distinct !DIAssignID()
!684 = !DILocation(line: 0, scope: !678)
!685 = !DILocation(line: 0, scope: !518, inlinedAt: !686)
!686 = distinct !DILocation(line: 458, column: 3, scope: !678)
!687 = !DILocation(line: 0, scope: !513, inlinedAt: !686)
!688 = !DILocation(line: 395, column: 5, scope: !518, inlinedAt: !686)
!689 = !DILocation(line: 396, column: 31, scope: !518, inlinedAt: !686)
!690 = !DILocation(line: 396, column: 16, scope: !518, inlinedAt: !686)
!691 = !DILocation(line: 397, column: 38, scope: !518, inlinedAt: !686)
!692 = !DILocation(line: 397, column: 24, scope: !518, inlinedAt: !686)
!693 = !DILocation(line: 401, column: 3, scope: !513, inlinedAt: !686)
!694 = !DILocation(line: 459, column: 1, scope: !678)
!695 = distinct !DISubprogram(name: "gsl_sf_hazard", scope: !2, file: !2, line: 461, type: !111, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !696)
!696 = !{!697, !698, !699}
!697 = !DILocalVariable(name: "x", arg: 1, scope: !695, file: !2, line: 461, type: !91)
!698 = !DILocalVariable(name: "result", scope: !695, file: !2, line: 463, type: !136)
!699 = !DILocalVariable(name: "status", scope: !695, file: !2, line: 463, type: !28)
!700 = distinct !DIAssignID()
!701 = !DILocation(line: 0, scope: !695)
!702 = !DILocation(line: 463, column: 3, scope: !695)
!703 = !DILocation(line: 463, column: 3, scope: !704)
!704 = distinct !DILexicalBlock(scope: !695, file: !2, line: 463, column: 3)
!705 = !DILocation(line: 463, column: 3, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !2, line: 463, column: 3)
!707 = distinct !DILexicalBlock(scope: !704, file: !2, line: 463, column: 3)
!708 = !DILocation(line: 464, column: 1, scope: !695)
