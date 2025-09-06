; ModuleID = 'erfc.c'
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
  br i1 %4, label %42, label %5, !dbg !166

5:                                                ; preds = %2
  %6 = fmul double %3, 2.000000e+00, !dbg !167
  %7 = fadd double %6, -1.000000e+00, !dbg !168
  tail call void @llvm.dbg.value(metadata double %7, metadata !149, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata !170, metadata !171, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata double %7, metadata !179, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata ptr undef, metadata !180, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !182, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !183, metadata !DIExpression()), !dbg !193
  %8 = fmul double %7, 2.000000e+00, !dbg !195
  %9 = fadd double %8, 1.000000e+00, !dbg !196
  %10 = fadd double %9, -1.000000e+00, !dbg !197
  %11 = fmul double %10, 5.000000e-01, !dbg !198
  call void @llvm.dbg.value(metadata double %11, metadata !184, metadata !DIExpression()), !dbg !193
  %12 = fmul double %11, 2.000000e+00, !dbg !199
  call void @llvm.dbg.value(metadata double %12, metadata !185, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !186, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata i32 19, metadata !181, metadata !DIExpression()), !dbg !193
  br label %13, !dbg !200

13:                                               ; preds = %13, %5
  %14 = phi i64 [ 19, %5 ], [ %29, %13 ]
  %15 = phi double [ 0.000000e+00, %5 ], [ %22, %13 ]
  %16 = phi double [ 0.000000e+00, %5 ], [ %28, %13 ]
  %17 = phi double [ 0.000000e+00, %5 ], [ %15, %13 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !181, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata double %15, metadata !182, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata double %16, metadata !186, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata double %17, metadata !183, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata double %15, metadata !187, metadata !DIExpression()), !dbg !201
  %18 = fmul double %12, %15, !dbg !202
  %19 = fsub double %18, %17, !dbg !203
  %20 = getelementptr inbounds double, ptr @erfc_xlt1_data, i64 %14, !dbg !204
  %21 = load double, ptr %20, align 8, !dbg !204, !tbaa !205
  %22 = fadd double %19, %21, !dbg !209
  call void @llvm.dbg.value(metadata double %22, metadata !182, metadata !DIExpression()), !dbg !193
  %23 = tail call double @llvm.fabs.f64(double %18), !dbg !210
  %24 = tail call double @llvm.fabs.f64(double %17), !dbg !211
  %25 = fadd double %23, %24, !dbg !212
  %26 = tail call double @llvm.fabs.f64(double %21), !dbg !213
  %27 = fadd double %25, %26, !dbg !214
  %28 = fadd double %16, %27, !dbg !215
  call void @llvm.dbg.value(metadata double %28, metadata !186, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata double %15, metadata !183, metadata !DIExpression()), !dbg !193
  %29 = add nsw i64 %14, -1, !dbg !216
  call void @llvm.dbg.value(metadata i64 %29, metadata !181, metadata !DIExpression()), !dbg !193
  %30 = icmp ugt i64 %14, 1, !dbg !217
  br i1 %30, label %13, label %31, !dbg !200, !llvm.loop !218

31:                                               ; preds = %13
  call void @llvm.dbg.value(metadata double %22, metadata !191, metadata !DIExpression()), !dbg !221
  %32 = fmul double %11, %22, !dbg !222
  %33 = fsub double %32, %15, !dbg !223
  %34 = fadd double %33, 0x3FE0F8C4631109E3, !dbg !224
  call void @llvm.dbg.value(metadata double %34, metadata !182, metadata !DIExpression()), !dbg !193
  %35 = tail call double @llvm.fabs.f64(double %32), !dbg !225
  %36 = tail call double @llvm.fabs.f64(double %15), !dbg !226
  %37 = fadd double %36, %35, !dbg !227
  %38 = fadd double %37, 0x3FE0F8C4631109E3, !dbg !228
  %39 = fadd double %28, %38, !dbg !229
  call void @llvm.dbg.value(metadata double %39, metadata !186, metadata !DIExpression()), !dbg !193
  tail call void @llvm.dbg.value(metadata double %34, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !169
  %40 = fmul double %39, 0x3CB0000000000000, !dbg !230
  %41 = fadd double %40, 0x3C3125E8E9559186, !dbg !231
  tail call void @llvm.dbg.value(metadata double %41, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !169
  tail call void @llvm.dbg.value(metadata double %34, metadata !147, metadata !DIExpression()), !dbg !163
  tail call void @llvm.dbg.value(metadata double %41, metadata !148, metadata !DIExpression()), !dbg !163
  br label %170, !dbg !232

42:                                               ; preds = %2
  %43 = fcmp ugt double %3, 5.000000e+00, !dbg !233
  br i1 %43, label %89, label %44, !dbg !234

44:                                               ; preds = %42
  %45 = fneg double %0, !dbg !235
  %46 = fmul double %45, %0, !dbg !236
  %47 = tail call double @exp(double noundef %46) #7, !dbg !237
  tail call void @llvm.dbg.value(metadata double %47, metadata !153, metadata !DIExpression()), !dbg !238
  %48 = fadd double %3, -3.000000e+00, !dbg !239
  %49 = fmul double %48, 5.000000e-01, !dbg !240
  tail call void @llvm.dbg.value(metadata double %49, metadata !156, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata !170, metadata !171, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata double %49, metadata !179, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata ptr undef, metadata !180, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !182, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !183, metadata !DIExpression()), !dbg !241
  %50 = fmul double %49, 2.000000e+00, !dbg !243
  %51 = fadd double %50, 1.000000e+00, !dbg !244
  %52 = fadd double %51, -1.000000e+00, !dbg !245
  %53 = fmul double %52, 5.000000e-01, !dbg !246
  call void @llvm.dbg.value(metadata double %53, metadata !184, metadata !DIExpression()), !dbg !241
  %54 = fmul double %53, 2.000000e+00, !dbg !247
  call void @llvm.dbg.value(metadata double %54, metadata !185, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !186, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i32 24, metadata !181, metadata !DIExpression()), !dbg !241
  br label %55, !dbg !248

55:                                               ; preds = %55, %44
  %56 = phi i64 [ 24, %44 ], [ %71, %55 ]
  %57 = phi double [ 0.000000e+00, %44 ], [ %64, %55 ]
  %58 = phi double [ 0.000000e+00, %44 ], [ %70, %55 ]
  %59 = phi double [ 0.000000e+00, %44 ], [ %57, %55 ]
  call void @llvm.dbg.value(metadata i64 %56, metadata !181, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata double %57, metadata !182, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata double %58, metadata !186, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata double %59, metadata !183, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata double %57, metadata !187, metadata !DIExpression()), !dbg !249
  %60 = fmul double %54, %57, !dbg !250
  %61 = fsub double %60, %59, !dbg !251
  %62 = getelementptr inbounds double, ptr @erfc_x15_data, i64 %56, !dbg !252
  %63 = load double, ptr %62, align 8, !dbg !252, !tbaa !205
  %64 = fadd double %61, %63, !dbg !253
  call void @llvm.dbg.value(metadata double %64, metadata !182, metadata !DIExpression()), !dbg !241
  %65 = tail call double @llvm.fabs.f64(double %60), !dbg !254
  %66 = tail call double @llvm.fabs.f64(double %59), !dbg !255
  %67 = fadd double %65, %66, !dbg !256
  %68 = tail call double @llvm.fabs.f64(double %63), !dbg !257
  %69 = fadd double %67, %68, !dbg !258
  %70 = fadd double %58, %69, !dbg !259
  call void @llvm.dbg.value(metadata double %70, metadata !186, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata double %57, metadata !183, metadata !DIExpression()), !dbg !241
  %71 = add nsw i64 %56, -1, !dbg !260
  call void @llvm.dbg.value(metadata i64 %71, metadata !181, metadata !DIExpression()), !dbg !241
  %72 = icmp ugt i64 %56, 1, !dbg !261
  br i1 %72, label %55, label %73, !dbg !248, !llvm.loop !262

73:                                               ; preds = %55
  call void @llvm.dbg.value(metadata double %64, metadata !191, metadata !DIExpression()), !dbg !264
  %74 = fmul double %53, %64, !dbg !265
  %75 = fsub double %74, %57, !dbg !266
  %76 = fadd double %75, 0x3FCC3078182C9217, !dbg !267
  call void @llvm.dbg.value(metadata double %76, metadata !182, metadata !DIExpression()), !dbg !241
  %77 = tail call double @llvm.fabs.f64(double %74), !dbg !268
  %78 = tail call double @llvm.fabs.f64(double %57), !dbg !269
  %79 = fadd double %78, %77, !dbg !270
  %80 = fadd double %79, 0x3FCC3078182C9217, !dbg !271
  %81 = fadd double %70, %80, !dbg !272
  call void @llvm.dbg.value(metadata double %81, metadata !186, metadata !DIExpression()), !dbg !241
  tail call void @llvm.dbg.value(metadata double %76, metadata !157, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !238
  %82 = fmul double %81, 0x3CB0000000000000, !dbg !273
  %83 = fadd double %82, 0x3CB9479C0104005F, !dbg !274
  tail call void @llvm.dbg.value(metadata double %83, metadata !157, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !238
  %84 = fmul double %47, %76, !dbg !275
  tail call void @llvm.dbg.value(metadata double %84, metadata !147, metadata !DIExpression()), !dbg !163
  %85 = fmul double %3, 2.000000e+00, !dbg !276
  %86 = fmul double %85, 0x3CB0000000000000, !dbg !277
  %87 = fadd double %86, %83, !dbg !278
  %88 = fmul double %47, %87, !dbg !279
  tail call void @llvm.dbg.value(metadata double %88, metadata !148, metadata !DIExpression()), !dbg !163
  br label %170, !dbg !280

89:                                               ; preds = %42
  %90 = fcmp olt double %3, 1.000000e+01, !dbg !281
  br i1 %90, label %91, label %138, !dbg !282

91:                                               ; preds = %89
  %92 = fneg double %0, !dbg !283
  %93 = fmul double %92, %0, !dbg !284
  %94 = tail call double @exp(double noundef %93) #7, !dbg !285
  %95 = fdiv double %94, %3, !dbg !286
  tail call void @llvm.dbg.value(metadata double %95, metadata !158, metadata !DIExpression()), !dbg !287
  %96 = fmul double %3, 2.000000e+00, !dbg !288
  %97 = fadd double %96, -1.500000e+01, !dbg !289
  %98 = fdiv double %97, 5.000000e+00, !dbg !290
  tail call void @llvm.dbg.value(metadata double %98, metadata !161, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata !170, metadata !171, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata double %98, metadata !179, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata ptr undef, metadata !180, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !182, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !183, metadata !DIExpression()), !dbg !291
  %99 = fmul double %98, 2.000000e+00, !dbg !293
  %100 = fadd double %99, 1.000000e+00, !dbg !294
  %101 = fadd double %100, -1.000000e+00, !dbg !295
  %102 = fmul double %101, 5.000000e-01, !dbg !296
  call void @llvm.dbg.value(metadata double %102, metadata !184, metadata !DIExpression()), !dbg !291
  %103 = fmul double %102, 2.000000e+00, !dbg !297
  call void @llvm.dbg.value(metadata double %103, metadata !185, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !186, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i32 19, metadata !181, metadata !DIExpression()), !dbg !291
  br label %104, !dbg !298

104:                                              ; preds = %104, %91
  %105 = phi i64 [ 19, %91 ], [ %120, %104 ]
  %106 = phi double [ 0.000000e+00, %91 ], [ %113, %104 ]
  %107 = phi double [ 0.000000e+00, %91 ], [ %119, %104 ]
  %108 = phi double [ 0.000000e+00, %91 ], [ %106, %104 ]
  call void @llvm.dbg.value(metadata i64 %105, metadata !181, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata double %106, metadata !182, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata double %107, metadata !186, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata double %108, metadata !183, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata double %106, metadata !187, metadata !DIExpression()), !dbg !299
  %109 = fmul double %103, %106, !dbg !300
  %110 = fsub double %109, %108, !dbg !301
  %111 = getelementptr inbounds double, ptr @erfc_x510_data, i64 %105, !dbg !302
  %112 = load double, ptr %111, align 8, !dbg !302, !tbaa !205
  %113 = fadd double %110, %112, !dbg !303
  call void @llvm.dbg.value(metadata double %113, metadata !182, metadata !DIExpression()), !dbg !291
  %114 = tail call double @llvm.fabs.f64(double %109), !dbg !304
  %115 = tail call double @llvm.fabs.f64(double %108), !dbg !305
  %116 = fadd double %114, %115, !dbg !306
  %117 = tail call double @llvm.fabs.f64(double %112), !dbg !307
  %118 = fadd double %116, %117, !dbg !308
  %119 = fadd double %107, %118, !dbg !309
  call void @llvm.dbg.value(metadata double %119, metadata !186, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata double %106, metadata !183, metadata !DIExpression()), !dbg !291
  %120 = add nsw i64 %105, -1, !dbg !310
  call void @llvm.dbg.value(metadata i64 %120, metadata !181, metadata !DIExpression()), !dbg !291
  %121 = icmp ugt i64 %105, 1, !dbg !311
  br i1 %121, label %104, label %122, !dbg !298, !llvm.loop !312

122:                                              ; preds = %104
  call void @llvm.dbg.value(metadata double %113, metadata !191, metadata !DIExpression()), !dbg !314
  %123 = fmul double %102, %113, !dbg !315
  %124 = fsub double %123, %106, !dbg !316
  %125 = fadd double %124, 0x3FE1DE9E00858DCB, !dbg !317
  call void @llvm.dbg.value(metadata double %125, metadata !182, metadata !DIExpression()), !dbg !291
  %126 = tail call double @llvm.fabs.f64(double %123), !dbg !318
  %127 = tail call double @llvm.fabs.f64(double %106), !dbg !319
  %128 = fadd double %127, %126, !dbg !320
  %129 = fadd double %128, 0x3FE1DE9E00858DCB, !dbg !321
  %130 = fadd double %119, %129, !dbg !322
  call void @llvm.dbg.value(metadata double %130, metadata !186, metadata !DIExpression()), !dbg !291
  tail call void @llvm.dbg.value(metadata double %125, metadata !162, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !287
  %131 = fmul double %130, 0x3CB0000000000000, !dbg !323
  %132 = fadd double %131, 0x3C9A4DCDCED8EC98, !dbg !324
  tail call void @llvm.dbg.value(metadata double %132, metadata !162, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !287
  %133 = fmul double %95, %125, !dbg !325
  tail call void @llvm.dbg.value(metadata double %133, metadata !147, metadata !DIExpression()), !dbg !163
  %134 = fmul double %96, 0x3CB0000000000000, !dbg !326
  %135 = fadd double %134, %132, !dbg !327
  %136 = fadd double %135, 0x3CB0000000000000, !dbg !328
  %137 = fmul double %95, %136, !dbg !329
  tail call void @llvm.dbg.value(metadata double %137, metadata !148, metadata !DIExpression()), !dbg !163
  br label %170, !dbg !330

138:                                              ; preds = %89
  call void @llvm.dbg.value(metadata double %3, metadata !331, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata double %3, metadata !114, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !116, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 4, metadata !117, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double 0x3FE20DD750429B62, metadata !115, metadata !DIExpression()), !dbg !338
  %139 = fmul double %3, 0x3FE20DD750429B62, !dbg !340
  %140 = fadd double %139, 0x3FF467E6DAD8642A, !dbg !344
  call void @llvm.dbg.value(metadata i64 3, metadata !117, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %140, metadata !115, metadata !DIExpression()), !dbg !338
  %141 = fmul double %3, %140, !dbg !340
  %142 = fadd double %141, 0x40141381C5862508, !dbg !344
  call void @llvm.dbg.value(metadata i64 2, metadata !117, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %142, metadata !115, metadata !DIExpression()), !dbg !338
  %143 = fmul double %3, %142, !dbg !340
  %144 = fadd double %143, 0x4018A40E0D3E694C, !dbg !344
  call void @llvm.dbg.value(metadata i64 1, metadata !117, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %144, metadata !115, metadata !DIExpression()), !dbg !338
  %145 = fmul double %3, %144, !dbg !340
  %146 = fadd double %145, 0x401DA3930A99D8DF, !dbg !344
  call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %146, metadata !115, metadata !DIExpression()), !dbg !338
  %147 = fmul double %3, %146, !dbg !340
  call void @llvm.dbg.value(metadata double %159, metadata !115, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 5, metadata !117, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !116, metadata !DIExpression()), !dbg !338
  %148 = fadd double %3, 0x4002158FFA22F7A8, !dbg !345
  call void @llvm.dbg.value(metadata i64 4, metadata !117, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %148, metadata !116, metadata !DIExpression()), !dbg !338
  %149 = fmul double %3, %148, !dbg !349
  %150 = fadd double %149, 0x4022CAC4F877AA8B, !dbg !345
  call void @llvm.dbg.value(metadata i64 3, metadata !117, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %150, metadata !116, metadata !DIExpression()), !dbg !338
  %151 = fmul double %3, %150, !dbg !349
  %152 = fadd double %151, 0x402819103A226D88, !dbg !345
  call void @llvm.dbg.value(metadata i64 2, metadata !117, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %152, metadata !116, metadata !DIExpression()), !dbg !338
  %153 = fmul double %3, %152, !dbg !349
  %154 = fadd double %153, 0x403114D94D02EDA4, !dbg !345
  call void @llvm.dbg.value(metadata i64 1, metadata !117, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %154, metadata !116, metadata !DIExpression()), !dbg !338
  %155 = fmul double %3, %154, !dbg !349
  %156 = fadd double %155, 0x402337CA4DA961C6, !dbg !345
  call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %156, metadata !116, metadata !DIExpression()), !dbg !338
  %157 = fmul double %3, %156, !dbg !349
  %158 = fadd double %157, 0x400AF3DDB3BE0AF7, !dbg !345
  call void @llvm.dbg.value(metadata double %158, metadata !116, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 -1, metadata !117, metadata !DIExpression()), !dbg !338
  %159 = fadd double %147, 0x4007D4B780645377, !dbg !344
  %160 = fdiv double %159, %158, !dbg !350
  call void @llvm.dbg.value(metadata double %160, metadata !334, metadata !DIExpression()), !dbg !335
  %161 = fneg double %3, !dbg !351
  %162 = fmul double %3, %161, !dbg !352
  %163 = tail call double @exp(double noundef %162) #7, !dbg !353
  %164 = fmul double %160, %163, !dbg !354
  call void @llvm.dbg.value(metadata double %164, metadata !334, metadata !DIExpression()), !dbg !335
  tail call void @llvm.dbg.value(metadata double %164, metadata !147, metadata !DIExpression()), !dbg !163
  %165 = fmul double %0, %0, !dbg !355
  %166 = fadd double %165, 1.000000e+00, !dbg !356
  %167 = fmul double %166, 0x3CB0000000000000, !dbg !357
  %168 = tail call double @llvm.fabs.f64(double %164), !dbg !358
  %169 = fmul double %167, %168, !dbg !359
  tail call void @llvm.dbg.value(metadata double %169, metadata !148, metadata !DIExpression()), !dbg !163
  br label %170

170:                                              ; preds = %73, %138, %122, %31
  %171 = phi double [ %41, %31 ], [ %88, %73 ], [ %137, %122 ], [ %169, %138 ], !dbg !360
  %172 = phi double [ %34, %31 ], [ %84, %73 ], [ %133, %122 ], [ %164, %138 ], !dbg !360
  tail call void @llvm.dbg.value(metadata double %172, metadata !147, metadata !DIExpression()), !dbg !163
  tail call void @llvm.dbg.value(metadata double %171, metadata !148, metadata !DIExpression()), !dbg !163
  %173 = fcmp olt double %0, 0.000000e+00, !dbg !361
  %174 = fsub double 2.000000e+00, %172, !dbg !363
  %175 = select i1 %173, double %174, double %172, !dbg !363
  %176 = tail call double @llvm.fabs.f64(double %175), !dbg !364
  %177 = fmul double %176, 0x3CC0000000000000, !dbg !364
  %178 = fadd double %171, %177, !dbg !364
  store double %175, ptr %1, align 8, !dbg !364
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !364
  store double %178, ptr %179, align 8, !dbg !364
  ret i32 0, !dbg !365
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !366 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_log_erfc_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !368 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !391
  call void @llvm.dbg.assign(metadata i1 undef, metadata !388, metadata !DIExpression(), metadata !391, metadata ptr %3, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double %0, metadata !370, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !371, metadata !DIExpression()), !dbg !393
  %4 = fmul double %0, %0, !dbg !394
  %5 = fcmp olt double %4, 0x3F9932CBB7F0CF30, !dbg !395
  br i1 %5, label %6, label %39, !dbg !396

6:                                                ; preds = %2
  %7 = fdiv double %0, 0x3FFC5BF891B4EF6B, !dbg !397
  tail call void @llvm.dbg.value(metadata double %7, metadata !372, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double 0x3FD2500C749F87C0, metadata !375, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double 0xBFB82A4705AE6CA0, metadata !376, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double 0xBF5DFA96DCBD2883, metadata !377, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double 0x3F9AED7943500FA5, metadata !378, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double 0xBF909ADCD0CDCABE, metadata !379, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double 0x3F54A491DCF7AFED, metadata !380, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double 0x3F76D032987DFC5C, metadata !381, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double 0xBF72A9A996F42C40, metadata !382, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double 0x3F4F00F4C5E56661, metadata !383, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double 0x3F55A095517B6A89, metadata !384, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double -1.429060e-03, metadata !385, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double 4.820400e-04, metadata !386, metadata !DIExpression()), !dbg !398
  %8 = fmul double %7, 4.820400e-04, !dbg !399
  %9 = fadd double %8, -1.429060e-03, !dbg !400
  %10 = fmul double %7, %9, !dbg !401
  %11 = fadd double %10, 0x3F55A095517B6A89, !dbg !402
  %12 = fmul double %7, %11, !dbg !403
  %13 = fadd double %12, 0x3F4F00F4C5E56661, !dbg !404
  %14 = fmul double %7, %13, !dbg !405
  %15 = fadd double %14, 0xBF72A9A996F42C40, !dbg !406
  %16 = fmul double %7, %15, !dbg !407
  %17 = fadd double %16, 0x3F76D032987DFC5C, !dbg !408
  %18 = fmul double %7, %17, !dbg !409
  %19 = fadd double %18, 0x3F54A491DCF7AFED, !dbg !410
  tail call void @llvm.dbg.value(metadata double %19, metadata !387, metadata !DIExpression()), !dbg !398
  %20 = fmul double %7, %19, !dbg !411
  %21 = fadd double %20, 0xBF909ADCD0CDCABE, !dbg !412
  %22 = fmul double %7, %21, !dbg !413
  %23 = fadd double %22, 0x3F9AED7943500FA5, !dbg !414
  %24 = fmul double %7, %23, !dbg !415
  %25 = fadd double %24, 0xBF5DFA96DCBD2883, !dbg !416
  %26 = fmul double %7, %25, !dbg !417
  %27 = fadd double %26, 0xBFB82A4705AE6CA0, !dbg !418
  %28 = fmul double %7, %27, !dbg !419
  %29 = fadd double %28, 0x3FD2500C749F87C0, !dbg !420
  %30 = fmul double %7, %29, !dbg !421
  %31 = fadd double %30, 1.000000e+00, !dbg !422
  %32 = fmul double %7, %31, !dbg !423
  %33 = fadd double %32, 1.000000e+00, !dbg !424
  %34 = fmul double %7, %33, !dbg !425
  tail call void @llvm.dbg.value(metadata double %34, metadata !387, metadata !DIExpression()), !dbg !398
  %35 = fmul double %34, -2.000000e+00, !dbg !426
  store double %35, ptr %1, align 8, !dbg !427, !tbaa !428
  %36 = tail call double @llvm.fabs.f64(double %35), !dbg !430
  %37 = fmul double %36, 0x3CC0000000000000, !dbg !431
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !432
  store double %37, ptr %38, align 8, !dbg !433, !tbaa !434
  br label %81

39:                                               ; preds = %2
  %40 = fcmp ogt double %0, 8.000000e+00, !dbg !435
  br i1 %40, label %41, label %69, !dbg !436

41:                                               ; preds = %39
  call void @llvm.dbg.value(metadata double %0, metadata !437, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata double %0, metadata !114, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !115, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !116, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double 0x3FE20DD750429B62, metadata !115, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 4, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 4, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double 0x3FE20DD750429B62, metadata !115, metadata !DIExpression()), !dbg !444
  %42 = fmul double %0, 0x3FE20DD750429B62, !dbg !446
  %43 = fadd double %42, 0x3FF467E6DAD8642A, !dbg !447
  call void @llvm.dbg.value(metadata double %43, metadata !115, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 3, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 3, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %43, metadata !115, metadata !DIExpression()), !dbg !444
  %44 = fmul double %43, %0, !dbg !446
  %45 = fadd double %44, 0x40141381C5862508, !dbg !447
  call void @llvm.dbg.value(metadata double %45, metadata !115, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 2, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 2, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %45, metadata !115, metadata !DIExpression()), !dbg !444
  %46 = fmul double %45, %0, !dbg !446
  %47 = fadd double %46, 0x4018A40E0D3E694C, !dbg !447
  call void @llvm.dbg.value(metadata double %47, metadata !115, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 1, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 1, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %47, metadata !115, metadata !DIExpression()), !dbg !444
  %48 = fmul double %47, %0, !dbg !446
  %49 = fadd double %48, 0x401DA3930A99D8DF, !dbg !447
  call void @llvm.dbg.value(metadata double %49, metadata !115, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %49, metadata !115, metadata !DIExpression()), !dbg !444
  %50 = fmul double %49, %0, !dbg !446
  call void @llvm.dbg.value(metadata double %62, metadata !115, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 -1, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 5, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !116, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 5, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !116, metadata !DIExpression()), !dbg !444
  %51 = fadd double %0, 0x4002158FFA22F7A8, !dbg !448
  call void @llvm.dbg.value(metadata double %51, metadata !116, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 4, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 4, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %51, metadata !116, metadata !DIExpression()), !dbg !444
  %52 = fmul double %51, %0, !dbg !449
  %53 = fadd double %52, 0x4022CAC4F877AA8B, !dbg !448
  call void @llvm.dbg.value(metadata double %53, metadata !116, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 3, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 3, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %53, metadata !116, metadata !DIExpression()), !dbg !444
  %54 = fmul double %53, %0, !dbg !449
  %55 = fadd double %54, 0x402819103A226D88, !dbg !448
  call void @llvm.dbg.value(metadata double %55, metadata !116, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 2, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 2, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %55, metadata !116, metadata !DIExpression()), !dbg !444
  %56 = fmul double %55, %0, !dbg !449
  %57 = fadd double %56, 0x403114D94D02EDA4, !dbg !448
  call void @llvm.dbg.value(metadata double %57, metadata !116, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 1, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 1, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %57, metadata !116, metadata !DIExpression()), !dbg !444
  %58 = fmul double %57, %0, !dbg !449
  %59 = fadd double %58, 0x402337CA4DA961C6, !dbg !448
  call void @llvm.dbg.value(metadata double %59, metadata !116, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %59, metadata !116, metadata !DIExpression()), !dbg !444
  %60 = fmul double %59, %0, !dbg !449
  %61 = fadd double %60, 0x400AF3DDB3BE0AF7, !dbg !448
  call void @llvm.dbg.value(metadata double %61, metadata !116, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 -1, metadata !117, metadata !DIExpression()), !dbg !444
  %62 = fadd double %50, 0x4007D4B780645377, !dbg !447
  %63 = fdiv double %62, %61, !dbg !450
  call void @llvm.dbg.value(metadata double %63, metadata !440, metadata !DIExpression()), !dbg !441
  %64 = tail call double @log(double noundef %63) #7, !dbg !451
  %65 = fsub double %64, %4, !dbg !452
  call void @llvm.dbg.value(metadata double %65, metadata !440, metadata !DIExpression()), !dbg !441
  store double %65, ptr %1, align 8, !dbg !453, !tbaa !428
  %66 = tail call double @llvm.fabs.f64(double %65), !dbg !454
  %67 = fmul double %66, 0x3CC0000000000000, !dbg !455
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !456
  store double %67, ptr %68, align 8, !dbg !457, !tbaa !434
  br label %81, !dbg !458

69:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !459
  %70 = call i32 @gsl_sf_erfc_e(double noundef %0, ptr noundef nonnull %3), !dbg !460
  %71 = load double, ptr %3, align 8, !dbg !461, !tbaa !428
  %72 = tail call double @log(double noundef %71) #7, !dbg !462
  store double %72, ptr %1, align 8, !dbg !463, !tbaa !428
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !464
  %74 = load double, ptr %73, align 8, !dbg !464, !tbaa !434
  %75 = fdiv double %74, %71, !dbg !465
  %76 = tail call double @llvm.fabs.f64(double %75), !dbg !466
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !467
  %78 = tail call double @llvm.fabs.f64(double %72), !dbg !468
  %79 = fmul double %78, 0x3CC0000000000000, !dbg !469
  %80 = fadd double %79, %76, !dbg !470
  store double %80, ptr %77, align 8, !dbg !470, !tbaa !434
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !471
  br label %81

81:                                               ; preds = %69, %41, %6
  ret i32 0, !dbg !472
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !473 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_erf_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !474 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !481
  call void @llvm.dbg.assign(metadata i1 undef, metadata !478, metadata !DIExpression(), metadata !481, metadata ptr %3, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata double %0, metadata !476, metadata !DIExpression()), !dbg !483
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !477, metadata !DIExpression()), !dbg !483
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !484
  %5 = fcmp olt double %4, 1.000000e+00, !dbg !485
  br i1 %5, label %6, label %37, !dbg !486

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata double %0, metadata !487, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata ptr %1, metadata !490, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata double %0, metadata !491, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata double %0, metadata !492, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata i32 1, metadata !494, metadata !DIExpression()), !dbg !495
  %7 = fneg double %0
  %8 = fmul double %7, %0
  call void @llvm.dbg.value(metadata i32 1, metadata !494, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata double undef, metadata !493, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata double %0, metadata !492, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata double %0, metadata !491, metadata !DIExpression()), !dbg !495
  br label %9, !dbg !498

9:                                                ; preds = %22, %6
  %10 = phi i32 [ 1, %6 ], [ %30, %22 ]
  %11 = phi double [ %0, %6 ], [ %29, %22 ]
  %12 = phi double [ %0, %6 ], [ %25, %22 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !494, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata double %11, metadata !492, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata double %12, metadata !491, metadata !DIExpression()), !dbg !495
  %13 = sitofp i32 %10 to double, !dbg !500
  %14 = fdiv double %8, %13, !dbg !503
  %15 = fmul double %12, %14, !dbg !504
  call void @llvm.dbg.value(metadata double %15, metadata !491, metadata !DIExpression()), !dbg !495
  %16 = fmul double %13, 2.000000e+00, !dbg !505
  %17 = fadd double %16, 1.000000e+00, !dbg !506
  %18 = fdiv double %15, %17, !dbg !507
  call void @llvm.dbg.value(metadata double %18, metadata !493, metadata !DIExpression()), !dbg !495
  %19 = fadd double %11, %18, !dbg !508
  call void @llvm.dbg.value(metadata double %19, metadata !492, metadata !DIExpression()), !dbg !495
  %20 = add nuw nsw i32 %10, 1, !dbg !509
  call void @llvm.dbg.value(metadata i32 %20, metadata !494, metadata !DIExpression()), !dbg !495
  %21 = icmp eq i32 %20, 30, !dbg !510
  br i1 %21, label %31, label %22, !dbg !498, !llvm.loop !511

22:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !494, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata double %19, metadata !492, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata double %15, metadata !491, metadata !DIExpression()), !dbg !495
  %23 = sitofp i32 %20 to double, !dbg !500
  %24 = fdiv double %8, %23, !dbg !503
  %25 = fmul double %15, %24, !dbg !504
  call void @llvm.dbg.value(metadata double %25, metadata !491, metadata !DIExpression()), !dbg !495
  %26 = fmul double %23, 2.000000e+00, !dbg !505
  %27 = fadd double %26, 1.000000e+00, !dbg !506
  %28 = fdiv double %25, %27, !dbg !507
  call void @llvm.dbg.value(metadata double %28, metadata !493, metadata !DIExpression()), !dbg !495
  %29 = fadd double %19, %28, !dbg !508
  call void @llvm.dbg.value(metadata double %29, metadata !492, metadata !DIExpression()), !dbg !495
  %30 = add nuw nsw i32 %10, 2, !dbg !509
  call void @llvm.dbg.value(metadata i32 %30, metadata !494, metadata !DIExpression()), !dbg !495
  br label %9

31:                                               ; preds = %9
  %32 = fmul double %19, 0x3FF20DD750429B6D, !dbg !513
  store double %32, ptr %1, align 8, !dbg !514, !tbaa !428
  %33 = tail call double @llvm.fabs.f64(double %18), !dbg !515
  %34 = fadd double %33, 0x3CB0000000000000, !dbg !516
  %35 = fmul double %34, 0x3FF20DD750429B6D, !dbg !517
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !518
  store double %35, ptr %36, align 8, !dbg !519, !tbaa !434
  br label %47, !dbg !520

37:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !521
  %38 = call i32 @gsl_sf_erfc_e(double noundef %0, ptr noundef nonnull %3), !dbg !522
  %39 = load double, ptr %3, align 8, !dbg !523, !tbaa !428
  %40 = fsub double 1.000000e+00, %39, !dbg !524
  store double %40, ptr %1, align 8, !dbg !525, !tbaa !428
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !526
  %42 = load double, ptr %41, align 8, !dbg !526, !tbaa !434
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !527
  %44 = tail call double @llvm.fabs.f64(double %40), !dbg !528
  %45 = fmul double %44, 0x3CC0000000000000, !dbg !529
  %46 = fadd double %42, %45, !dbg !530
  store double %46, ptr %43, align 8, !dbg !530, !tbaa !434
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !531
  br label %47

47:                                               ; preds = %37, %31
  ret i32 0, !dbg !532
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_erf_Z_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !533 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !535, metadata !DIExpression()), !dbg !539
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !536, metadata !DIExpression()), !dbg !539
  %3 = fneg double %0, !dbg !540
  %4 = fmul double %3, %0, !dbg !541
  %5 = fmul double %4, 5.000000e-01, !dbg !542
  %6 = tail call double @exp(double noundef %5) #7, !dbg !543
  tail call void @llvm.dbg.value(metadata double %6, metadata !537, metadata !DIExpression()), !dbg !544
  %7 = fdiv double %6, 0x40040D931FF62706, !dbg !545
  store double %7, ptr %1, align 8, !dbg !546, !tbaa !428
  %8 = fmul double %7, %0, !dbg !547
  %9 = tail call double @llvm.fabs.f64(double %8), !dbg !548
  %10 = fmul double %9, 0x3CB0000000000000, !dbg !549
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !550
  %12 = tail call double @llvm.fabs.f64(double %7), !dbg !551
  %13 = fmul double %12, 0x3CC0000000000000, !dbg !552
  %14 = fadd double %13, %10, !dbg !553
  store double %14, ptr %11, align 8, !dbg !553, !tbaa !434
  %15 = fcmp olt double %12, 0x10000000000000, !dbg !554
  br i1 %15, label %16, label %17, !dbg !556

16:                                               ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 384, i32 noundef 15) #7, !dbg !557
  br label %17, !dbg !557

17:                                               ; preds = %2, %16
  %18 = phi i32 [ 15, %16 ], [ 0, %2 ], !dbg !544
  ret i32 %18, !dbg !559
}

declare !dbg !560 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_erf_Q_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !565 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !572
  call void @llvm.dbg.assign(metadata i1 undef, metadata !569, metadata !DIExpression(), metadata !572, metadata ptr %3, metadata !DIExpression()), !dbg !573
  tail call void @llvm.dbg.value(metadata double %0, metadata !567, metadata !DIExpression()), !dbg !574
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !568, metadata !DIExpression()), !dbg !574
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !575
  %4 = fdiv double %0, 0x3FF6A09E667F3BCD, !dbg !576
  %5 = call i32 @gsl_sf_erfc_e(double noundef %4, ptr noundef nonnull %3), !dbg !577
  tail call void @llvm.dbg.value(metadata i32 0, metadata !571, metadata !DIExpression()), !dbg !573
  %6 = load double, ptr %3, align 8, !dbg !578, !tbaa !428
  %7 = fmul double %6, 5.000000e-01, !dbg !579
  store double %7, ptr %1, align 8, !dbg !580, !tbaa !428
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !581
  %9 = load double, ptr %8, align 8, !dbg !581, !tbaa !434
  %10 = fmul double %9, 5.000000e-01, !dbg !582
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !583
  %12 = tail call double @llvm.fabs.f64(double %7), !dbg !584
  %13 = fmul double %12, 0x3CC0000000000000, !dbg !585
  %14 = fadd double %10, %13, !dbg !586
  store double %14, ptr %11, align 8, !dbg !586, !tbaa !434
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !587
  ret i32 0, !dbg !588
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hazard_e(double noundef %0, ptr noundef %1) local_unnamed_addr #4 !dbg !589 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !606
  call void @llvm.dbg.assign(metadata i1 undef, metadata !593, metadata !DIExpression(), metadata !606, metadata ptr %3, metadata !DIExpression()), !dbg !607
  tail call void @llvm.dbg.value(metadata double %0, metadata !591, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !592, metadata !DIExpression()), !dbg !608
  %4 = fcmp olt double %0, 2.500000e+01, !dbg !609
  br i1 %4, label %5, label %29, !dbg !610

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !611
  %6 = fdiv double %0, 0x3FF6A09E667F3BCD, !dbg !612
  %7 = call i32 @gsl_sf_log_erfc_e(double noundef %6, ptr noundef nonnull %3), !dbg !613
  tail call void @llvm.dbg.value(metadata i32 0, metadata !596, metadata !DIExpression()), !dbg !607
  tail call void @llvm.dbg.value(metadata double 0xBFCCE6BB25AA1316, metadata !598, metadata !DIExpression()), !dbg !607
  %8 = fmul double %0, 5.000000e-01, !dbg !614
  %9 = fmul double %8, %0, !dbg !615
  %10 = fsub double 0xBFCCE6BB25AA1316, %9, !dbg !616
  %11 = load double, ptr %3, align 8, !dbg !617, !tbaa !428
  %12 = fsub double %10, %11, !dbg !618
  tail call void @llvm.dbg.value(metadata double %12, metadata !599, metadata !DIExpression()), !dbg !607
  %13 = tail call i32 @gsl_sf_exp_e(double noundef %12, ptr noundef %1) #7, !dbg !619
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !600, metadata !DIExpression()), !dbg !607
  %14 = tail call double @llvm.fabs.f64(double %0), !dbg !620
  %15 = fadd double %14, 1.000000e+00, !dbg !621
  %16 = fmul double %15, 3.000000e+00, !dbg !622
  %17 = fmul double %16, 0x3CB0000000000000, !dbg !623
  %18 = load double, ptr %1, align 8, !dbg !624, !tbaa !428
  %19 = tail call double @llvm.fabs.f64(double %18), !dbg !625
  %20 = fmul double %17, %19, !dbg !626
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !627
  %22 = load double, ptr %21, align 8, !dbg !628, !tbaa !434
  %23 = fadd double %22, %20, !dbg !628
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !629
  %25 = load double, ptr %24, align 8, !dbg !629, !tbaa !434
  %26 = fmul double %18, %25, !dbg !630
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !631
  %28 = fadd double %23, %27, !dbg !632
  store double %28, ptr %21, align 8, !dbg !632, !tbaa !434
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !633
  br label %52

29:                                               ; preds = %2
  %30 = fmul double %0, %0, !dbg !634
  %31 = fdiv double 1.000000e+00, %30, !dbg !635
  tail call void @llvm.dbg.value(metadata double %31, metadata !601, metadata !DIExpression()), !dbg !636
  %32 = fmul double %31, 9.000000e+00, !dbg !637
  %33 = fmul double %31, 1.100000e+01, !dbg !638
  %34 = fsub double 1.000000e+00, %33, !dbg !639
  %35 = fmul double %32, %34, !dbg !640
  %36 = fsub double 1.000000e+00, %35, !dbg !641
  tail call void @llvm.dbg.value(metadata double %36, metadata !603, metadata !DIExpression()), !dbg !636
  %37 = fmul double %31, 5.000000e+00, !dbg !642
  %38 = fmul double %31, 7.000000e+00, !dbg !643
  %39 = fmul double %38, %36, !dbg !644
  %40 = fsub double 1.000000e+00, %39, !dbg !645
  %41 = fmul double %37, %40, !dbg !646
  %42 = fsub double 1.000000e+00, %41, !dbg !647
  tail call void @llvm.dbg.value(metadata double %42, metadata !604, metadata !DIExpression()), !dbg !636
  %43 = fmul double %31, 3.000000e+00, !dbg !648
  %44 = fmul double %43, %42, !dbg !649
  %45 = fsub double 1.000000e+00, %44, !dbg !650
  %46 = fmul double %31, %45, !dbg !651
  %47 = fsub double 1.000000e+00, %46, !dbg !652
  tail call void @llvm.dbg.value(metadata double %47, metadata !605, metadata !DIExpression()), !dbg !636
  %48 = fdiv double %0, %47, !dbg !653
  store double %48, ptr %1, align 8, !dbg !654, !tbaa !428
  %49 = tail call double @llvm.fabs.f64(double %48), !dbg !655
  %50 = fmul double %49, 0x3CC0000000000000, !dbg !656
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !657
  store double %50, ptr %51, align 8, !dbg !658, !tbaa !434
  br label %52

52:                                               ; preds = %29, %5
  %53 = phi i32 [ %13, %5 ], [ 0, %29 ], !dbg !659
  ret i32 %53, !dbg !660
}

declare !dbg !661 i32 @gsl_sf_exp_e(double noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_erfc(double noundef %0) local_unnamed_addr #0 !dbg !665 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !670
  call void @llvm.dbg.assign(metadata i1 undef, metadata !668, metadata !DIExpression(), metadata !670, metadata ptr %2, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %0, metadata !667, metadata !DIExpression()), !dbg !671
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !672
  %3 = call i32 @gsl_sf_erfc_e(double noundef %0, ptr noundef nonnull %2), !dbg !672
  tail call void @llvm.dbg.value(metadata i32 0, metadata !669, metadata !DIExpression()), !dbg !671
  %4 = load double, ptr %2, align 8, !dbg !672, !tbaa !428
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !673
  ret double %4, !dbg !673
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_log_erfc(double noundef %0) local_unnamed_addr #0 !dbg !674 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !679
  call void @llvm.dbg.assign(metadata i1 undef, metadata !677, metadata !DIExpression(), metadata !679, metadata ptr %2, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata double %0, metadata !676, metadata !DIExpression()), !dbg !680
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !681
  %3 = call i32 @gsl_sf_log_erfc_e(double noundef %0, ptr noundef nonnull %2), !dbg !681
  tail call void @llvm.dbg.value(metadata i32 0, metadata !678, metadata !DIExpression()), !dbg !680
  %4 = load double, ptr %2, align 8, !dbg !681, !tbaa !428
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !682
  ret double %4, !dbg !682
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_erf(double noundef %0) local_unnamed_addr #0 !dbg !683 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !688
  tail call void @llvm.dbg.value(metadata double %0, metadata !685, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.assign(metadata i1 undef, metadata !478, metadata !DIExpression(), metadata !688, metadata ptr %2, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata double %0, metadata !476, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata ptr undef, metadata !477, metadata !DIExpression()), !dbg !692
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !693
  %4 = fcmp olt double %3, 1.000000e+00, !dbg !694
  br i1 %4, label %5, label %32, !dbg !695

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata double %0, metadata !487, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata ptr undef, metadata !490, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %0, metadata !491, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %0, metadata !492, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i32 1, metadata !494, metadata !DIExpression()), !dbg !696
  %6 = fneg double %0
  %7 = fmul double %6, %0
  call void @llvm.dbg.value(metadata double undef, metadata !493, metadata !DIExpression()), !dbg !696
  br label %8, !dbg !698

8:                                                ; preds = %21, %5
  %9 = phi i32 [ 1, %5 ], [ %29, %21 ]
  %10 = phi double [ %0, %5 ], [ %28, %21 ]
  %11 = phi double [ %0, %5 ], [ %24, %21 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !494, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %10, metadata !492, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %11, metadata !491, metadata !DIExpression()), !dbg !696
  %12 = sitofp i32 %9 to double, !dbg !699
  %13 = fdiv double %7, %12, !dbg !700
  %14 = fmul double %11, %13, !dbg !701
  call void @llvm.dbg.value(metadata double %14, metadata !491, metadata !DIExpression()), !dbg !696
  %15 = fmul double %12, 2.000000e+00, !dbg !702
  %16 = fadd double %15, 1.000000e+00, !dbg !703
  %17 = fdiv double %14, %16, !dbg !704
  call void @llvm.dbg.value(metadata double %17, metadata !493, metadata !DIExpression()), !dbg !696
  %18 = fadd double %10, %17, !dbg !705
  call void @llvm.dbg.value(metadata double %18, metadata !492, metadata !DIExpression()), !dbg !696
  %19 = add nuw nsw i32 %9, 1, !dbg !706
  call void @llvm.dbg.value(metadata i32 %19, metadata !494, metadata !DIExpression()), !dbg !696
  %20 = icmp eq i32 %19, 30, !dbg !707
  br i1 %20, label %30, label %21, !dbg !698, !llvm.loop !708

21:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i32 %19, metadata !494, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %18, metadata !492, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %14, metadata !491, metadata !DIExpression()), !dbg !696
  %22 = sitofp i32 %19 to double, !dbg !699
  %23 = fdiv double %7, %22, !dbg !700
  %24 = fmul double %14, %23, !dbg !701
  call void @llvm.dbg.value(metadata double %24, metadata !491, metadata !DIExpression()), !dbg !696
  %25 = fmul double %22, 2.000000e+00, !dbg !702
  %26 = fadd double %25, 1.000000e+00, !dbg !703
  %27 = fdiv double %24, %26, !dbg !704
  call void @llvm.dbg.value(metadata double %27, metadata !493, metadata !DIExpression()), !dbg !696
  %28 = fadd double %18, %27, !dbg !705
  call void @llvm.dbg.value(metadata double %28, metadata !492, metadata !DIExpression()), !dbg !696
  %29 = add nuw nsw i32 %9, 2, !dbg !706
  call void @llvm.dbg.value(metadata i32 %29, metadata !494, metadata !DIExpression()), !dbg !696
  br label %8

30:                                               ; preds = %8
  %31 = fmul double %18, 0x3FF20DD750429B6D, !dbg !710
  tail call void @llvm.dbg.value(metadata double %31, metadata !686, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !689
  tail call void @llvm.dbg.value(metadata double poison, metadata !686, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !689
  br label %36, !dbg !711

32:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !712
  %33 = call i32 @gsl_sf_erfc_e(double noundef %0, ptr noundef nonnull %2), !dbg !713
  %34 = load double, ptr %2, align 8, !dbg !714, !tbaa !428
  %35 = fsub double 1.000000e+00, %34, !dbg !715
  tail call void @llvm.dbg.value(metadata double %35, metadata !686, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !689
  tail call void @llvm.dbg.value(metadata double poison, metadata !686, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !689
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !716
  br label %36

36:                                               ; preds = %30, %32
  %37 = phi double [ %31, %30 ], [ %35, %32 ], !dbg !717
  tail call void @llvm.dbg.value(metadata double %37, metadata !686, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !689
  tail call void @llvm.dbg.value(metadata i32 0, metadata !687, metadata !DIExpression()), !dbg !689
  ret double %37, !dbg !718
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_erf_Z(double noundef %0) local_unnamed_addr #4 !dbg !719 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !721, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata double %0, metadata !535, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr undef, metadata !536, metadata !DIExpression()), !dbg !725
  %2 = fneg double %0, !dbg !727
  %3 = fmul double %2, %0, !dbg !728
  %4 = fmul double %3, 5.000000e-01, !dbg !729
  %5 = tail call double @exp(double noundef %4) #7, !dbg !730
  call void @llvm.dbg.value(metadata double %5, metadata !537, metadata !DIExpression()), !dbg !731
  %6 = fdiv double %5, 0x40040D931FF62706, !dbg !732
  tail call void @llvm.dbg.value(metadata double %6, metadata !722, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !724
  %7 = tail call double @llvm.fabs.f64(double %6), !dbg !733
  tail call void @llvm.dbg.value(metadata double poison, metadata !722, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !724
  %8 = fcmp olt double %7, 0x10000000000000, !dbg !734
  br i1 %8, label %9, label %10, !dbg !735

9:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 384, i32 noundef 15) #7, !dbg !736
  tail call void @llvm.dbg.value(metadata i32 15, metadata !723, metadata !DIExpression()), !dbg !724
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 453, i32 noundef 15) #7, !dbg !737
  br label %10, !dbg !737

10:                                               ; preds = %1, %9
  ret double %6, !dbg !741
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_erf_Q(double noundef %0) local_unnamed_addr #0 !dbg !742 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !747
  tail call void @llvm.dbg.value(metadata double %0, metadata !744, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.assign(metadata i1 undef, metadata !569, metadata !DIExpression(), metadata !747, metadata ptr %2, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %0, metadata !567, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata ptr undef, metadata !568, metadata !DIExpression()), !dbg !751
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !752
  %3 = fdiv double %0, 0x3FF6A09E667F3BCD, !dbg !753
  %4 = call i32 @gsl_sf_erfc_e(double noundef %3, ptr noundef nonnull %2), !dbg !754
  call void @llvm.dbg.value(metadata i32 0, metadata !571, metadata !DIExpression()), !dbg !749
  %5 = load double, ptr %2, align 8, !dbg !755, !tbaa !428
  %6 = fmul double %5, 5.000000e-01, !dbg !756
  tail call void @llvm.dbg.value(metadata double %6, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !748
  tail call void @llvm.dbg.value(metadata double poison, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !748
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !757
  tail call void @llvm.dbg.value(metadata i32 0, metadata !746, metadata !DIExpression()), !dbg !748
  ret double %6, !dbg !758
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hazard(double noundef %0) local_unnamed_addr #4 !dbg !759 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !764
  call void @llvm.dbg.assign(metadata i1 undef, metadata !762, metadata !DIExpression(), metadata !764, metadata ptr %2, metadata !DIExpression()), !dbg !765
  tail call void @llvm.dbg.value(metadata double %0, metadata !761, metadata !DIExpression()), !dbg !765
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !766
  %3 = call i32 @gsl_sf_hazard_e(double noundef %0, ptr noundef nonnull %2), !dbg !766
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !763, metadata !DIExpression()), !dbg !765
  %4 = icmp eq i32 %3, 0, !dbg !767
  br i1 %4, label %6, label %5, !dbg !766

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 463, i32 noundef %3) #7, !dbg !769
  br label %6, !dbg !769

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !766, !tbaa !428
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !772
  ret double %7, !dbg !772
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!168 = !DILocation(line: 264, column: 23, scope: !150)
!169 = !DILocation(line: 0, scope: !150)
!170 = !{}
!171 = !DILocalVariable(name: "cs", arg: 1, scope: !172, file: !173, line: 3, type: !176)
!172 = distinct !DISubprogram(name: "cheb_eval_e", scope: !173, file: !173, line: 3, type: !174, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !178)
!173 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!174 = !DISubroutineType(types: !175)
!175 = !{!28, !176, !146, !135}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!178 = !{!171, !179, !180, !181, !182, !183, !184, !185, !186, !187, !191}
!179 = !DILocalVariable(name: "x", arg: 2, scope: !172, file: !173, line: 4, type: !146)
!180 = !DILocalVariable(name: "result", arg: 3, scope: !172, file: !173, line: 5, type: !135)
!181 = !DILocalVariable(name: "j", scope: !172, file: !173, line: 7, type: !28)
!182 = !DILocalVariable(name: "d", scope: !172, file: !173, line: 8, type: !91)
!183 = !DILocalVariable(name: "dd", scope: !172, file: !173, line: 9, type: !91)
!184 = !DILocalVariable(name: "y", scope: !172, file: !173, line: 11, type: !91)
!185 = !DILocalVariable(name: "y2", scope: !172, file: !173, line: 12, type: !91)
!186 = !DILocalVariable(name: "e", scope: !172, file: !173, line: 14, type: !91)
!187 = !DILocalVariable(name: "temp", scope: !188, file: !173, line: 17, type: !91)
!188 = distinct !DILexicalBlock(scope: !189, file: !173, line: 16, column: 33)
!189 = distinct !DILexicalBlock(scope: !190, file: !173, line: 16, column: 3)
!190 = distinct !DILexicalBlock(scope: !172, file: !173, line: 16, column: 3)
!191 = !DILocalVariable(name: "temp", scope: !192, file: !173, line: 24, type: !91)
!192 = distinct !DILexicalBlock(scope: !172, file: !173, line: 23, column: 3)
!193 = !DILocation(line: 0, scope: !172, inlinedAt: !194)
!194 = distinct !DILocation(line: 266, column: 5, scope: !150)
!195 = !DILocation(line: 11, column: 19, scope: !172, inlinedAt: !194)
!196 = !DILocation(line: 11, column: 22, scope: !172, inlinedAt: !194)
!197 = !DILocation(line: 11, column: 30, scope: !172, inlinedAt: !194)
!198 = !DILocation(line: 11, column: 39, scope: !172, inlinedAt: !194)
!199 = !DILocation(line: 12, column: 19, scope: !172, inlinedAt: !194)
!200 = !DILocation(line: 16, column: 3, scope: !190, inlinedAt: !194)
!201 = !DILocation(line: 0, scope: !188, inlinedAt: !194)
!202 = !DILocation(line: 18, column: 11, scope: !188, inlinedAt: !194)
!203 = !DILocation(line: 18, column: 14, scope: !188, inlinedAt: !194)
!204 = !DILocation(line: 18, column: 21, scope: !188, inlinedAt: !194)
!205 = !{!206, !206, i64 0}
!206 = !{!"double", !207, i64 0}
!207 = !{!"omnipotent char", !208, i64 0}
!208 = !{!"Simple C/C++ TBAA"}
!209 = !DILocation(line: 18, column: 19, scope: !188, inlinedAt: !194)
!210 = !DILocation(line: 19, column: 10, scope: !188, inlinedAt: !194)
!211 = !DILocation(line: 19, column: 26, scope: !188, inlinedAt: !194)
!212 = !DILocation(line: 19, column: 24, scope: !188, inlinedAt: !194)
!213 = !DILocation(line: 19, column: 37, scope: !188, inlinedAt: !194)
!214 = !DILocation(line: 19, column: 35, scope: !188, inlinedAt: !194)
!215 = !DILocation(line: 19, column: 7, scope: !188, inlinedAt: !194)
!216 = !DILocation(line: 16, column: 29, scope: !189, inlinedAt: !194)
!217 = !DILocation(line: 16, column: 23, scope: !189, inlinedAt: !194)
!218 = distinct !{!218, !200, !219, !220}
!219 = !DILocation(line: 21, column: 3, scope: !190, inlinedAt: !194)
!220 = !{!"llvm.loop.mustprogress"}
!221 = !DILocation(line: 0, scope: !192, inlinedAt: !194)
!222 = !DILocation(line: 25, column: 10, scope: !192, inlinedAt: !194)
!223 = !DILocation(line: 25, column: 13, scope: !192, inlinedAt: !194)
!224 = !DILocation(line: 25, column: 18, scope: !192, inlinedAt: !194)
!225 = !DILocation(line: 26, column: 10, scope: !192, inlinedAt: !194)
!226 = !DILocation(line: 26, column: 25, scope: !192, inlinedAt: !194)
!227 = !DILocation(line: 26, column: 23, scope: !192, inlinedAt: !194)
!228 = !DILocation(line: 26, column: 34, scope: !192, inlinedAt: !194)
!229 = !DILocation(line: 26, column: 7, scope: !192, inlinedAt: !194)
!230 = !DILocation(line: 30, column: 33, scope: !172, inlinedAt: !194)
!231 = !DILocation(line: 30, column: 37, scope: !172, inlinedAt: !194)
!232 = !DILocation(line: 269, column: 3, scope: !150)
!233 = !DILocation(line: 270, column: 14, scope: !155)
!234 = !DILocation(line: 270, column: 11, scope: !151)
!235 = !DILocation(line: 271, column: 22, scope: !154)
!236 = !DILocation(line: 271, column: 24, scope: !154)
!237 = !DILocation(line: 271, column: 18, scope: !154)
!238 = !DILocation(line: 0, scope: !154)
!239 = !DILocation(line: 272, column: 23, scope: !154)
!240 = !DILocation(line: 272, column: 19, scope: !154)
!241 = !DILocation(line: 0, scope: !172, inlinedAt: !242)
!242 = distinct !DILocation(line: 274, column: 5, scope: !154)
!243 = !DILocation(line: 11, column: 19, scope: !172, inlinedAt: !242)
!244 = !DILocation(line: 11, column: 22, scope: !172, inlinedAt: !242)
!245 = !DILocation(line: 11, column: 30, scope: !172, inlinedAt: !242)
!246 = !DILocation(line: 11, column: 39, scope: !172, inlinedAt: !242)
!247 = !DILocation(line: 12, column: 19, scope: !172, inlinedAt: !242)
!248 = !DILocation(line: 16, column: 3, scope: !190, inlinedAt: !242)
!249 = !DILocation(line: 0, scope: !188, inlinedAt: !242)
!250 = !DILocation(line: 18, column: 11, scope: !188, inlinedAt: !242)
!251 = !DILocation(line: 18, column: 14, scope: !188, inlinedAt: !242)
!252 = !DILocation(line: 18, column: 21, scope: !188, inlinedAt: !242)
!253 = !DILocation(line: 18, column: 19, scope: !188, inlinedAt: !242)
!254 = !DILocation(line: 19, column: 10, scope: !188, inlinedAt: !242)
!255 = !DILocation(line: 19, column: 26, scope: !188, inlinedAt: !242)
!256 = !DILocation(line: 19, column: 24, scope: !188, inlinedAt: !242)
!257 = !DILocation(line: 19, column: 37, scope: !188, inlinedAt: !242)
!258 = !DILocation(line: 19, column: 35, scope: !188, inlinedAt: !242)
!259 = !DILocation(line: 19, column: 7, scope: !188, inlinedAt: !242)
!260 = !DILocation(line: 16, column: 29, scope: !189, inlinedAt: !242)
!261 = !DILocation(line: 16, column: 23, scope: !189, inlinedAt: !242)
!262 = distinct !{!262, !248, !263, !220}
!263 = !DILocation(line: 21, column: 3, scope: !190, inlinedAt: !242)
!264 = !DILocation(line: 0, scope: !192, inlinedAt: !242)
!265 = !DILocation(line: 25, column: 10, scope: !192, inlinedAt: !242)
!266 = !DILocation(line: 25, column: 13, scope: !192, inlinedAt: !242)
!267 = !DILocation(line: 25, column: 18, scope: !192, inlinedAt: !242)
!268 = !DILocation(line: 26, column: 10, scope: !192, inlinedAt: !242)
!269 = !DILocation(line: 26, column: 25, scope: !192, inlinedAt: !242)
!270 = !DILocation(line: 26, column: 23, scope: !192, inlinedAt: !242)
!271 = !DILocation(line: 26, column: 34, scope: !192, inlinedAt: !242)
!272 = !DILocation(line: 26, column: 7, scope: !192, inlinedAt: !242)
!273 = !DILocation(line: 30, column: 33, scope: !172, inlinedAt: !242)
!274 = !DILocation(line: 30, column: 37, scope: !172, inlinedAt: !242)
!275 = !DILocation(line: 275, column: 17, scope: !154)
!276 = !DILocation(line: 276, column: 31, scope: !154)
!277 = !DILocation(line: 276, column: 39, scope: !154)
!278 = !DILocation(line: 276, column: 26, scope: !154)
!279 = !DILocation(line: 276, column: 17, scope: !154)
!280 = !DILocation(line: 277, column: 3, scope: !154)
!281 = !DILocation(line: 278, column: 14, scope: !160)
!282 = !DILocation(line: 278, column: 11, scope: !155)
!283 = !DILocation(line: 279, column: 25, scope: !159)
!284 = !DILocation(line: 279, column: 27, scope: !159)
!285 = !DILocation(line: 279, column: 21, scope: !159)
!286 = !DILocation(line: 279, column: 31, scope: !159)
!287 = !DILocation(line: 0, scope: !159)
!288 = !DILocation(line: 280, column: 20, scope: !159)
!289 = !DILocation(line: 280, column: 24, scope: !159)
!290 = !DILocation(line: 280, column: 31, scope: !159)
!291 = !DILocation(line: 0, scope: !172, inlinedAt: !292)
!292 = distinct !DILocation(line: 282, column: 5, scope: !159)
!293 = !DILocation(line: 11, column: 19, scope: !172, inlinedAt: !292)
!294 = !DILocation(line: 11, column: 22, scope: !172, inlinedAt: !292)
!295 = !DILocation(line: 11, column: 30, scope: !172, inlinedAt: !292)
!296 = !DILocation(line: 11, column: 39, scope: !172, inlinedAt: !292)
!297 = !DILocation(line: 12, column: 19, scope: !172, inlinedAt: !292)
!298 = !DILocation(line: 16, column: 3, scope: !190, inlinedAt: !292)
!299 = !DILocation(line: 0, scope: !188, inlinedAt: !292)
!300 = !DILocation(line: 18, column: 11, scope: !188, inlinedAt: !292)
!301 = !DILocation(line: 18, column: 14, scope: !188, inlinedAt: !292)
!302 = !DILocation(line: 18, column: 21, scope: !188, inlinedAt: !292)
!303 = !DILocation(line: 18, column: 19, scope: !188, inlinedAt: !292)
!304 = !DILocation(line: 19, column: 10, scope: !188, inlinedAt: !292)
!305 = !DILocation(line: 19, column: 26, scope: !188, inlinedAt: !292)
!306 = !DILocation(line: 19, column: 24, scope: !188, inlinedAt: !292)
!307 = !DILocation(line: 19, column: 37, scope: !188, inlinedAt: !292)
!308 = !DILocation(line: 19, column: 35, scope: !188, inlinedAt: !292)
!309 = !DILocation(line: 19, column: 7, scope: !188, inlinedAt: !292)
!310 = !DILocation(line: 16, column: 29, scope: !189, inlinedAt: !292)
!311 = !DILocation(line: 16, column: 23, scope: !189, inlinedAt: !292)
!312 = distinct !{!312, !298, !313, !220}
!313 = !DILocation(line: 21, column: 3, scope: !190, inlinedAt: !292)
!314 = !DILocation(line: 0, scope: !192, inlinedAt: !292)
!315 = !DILocation(line: 25, column: 10, scope: !192, inlinedAt: !292)
!316 = !DILocation(line: 25, column: 13, scope: !192, inlinedAt: !292)
!317 = !DILocation(line: 25, column: 18, scope: !192, inlinedAt: !292)
!318 = !DILocation(line: 26, column: 10, scope: !192, inlinedAt: !292)
!319 = !DILocation(line: 26, column: 25, scope: !192, inlinedAt: !292)
!320 = !DILocation(line: 26, column: 23, scope: !192, inlinedAt: !292)
!321 = !DILocation(line: 26, column: 34, scope: !192, inlinedAt: !292)
!322 = !DILocation(line: 26, column: 7, scope: !192, inlinedAt: !292)
!323 = !DILocation(line: 30, column: 33, scope: !172, inlinedAt: !292)
!324 = !DILocation(line: 30, column: 37, scope: !172, inlinedAt: !292)
!325 = !DILocation(line: 283, column: 20, scope: !159)
!326 = !DILocation(line: 284, column: 42, scope: !159)
!327 = !DILocation(line: 284, column: 29, scope: !159)
!328 = !DILocation(line: 284, column: 59, scope: !159)
!329 = !DILocation(line: 284, column: 20, scope: !159)
!330 = !DILocation(line: 285, column: 3, scope: !159)
!331 = !DILocalVariable(name: "x", arg: 1, scope: !332, file: !2, line: 81, type: !91)
!332 = distinct !DISubprogram(name: "erfc8", scope: !2, file: !2, line: 81, type: !111, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !333)
!333 = !{!331, !334}
!334 = !DILocalVariable(name: "e", scope: !332, file: !2, line: 83, type: !91)
!335 = !DILocation(line: 0, scope: !332, inlinedAt: !336)
!336 = distinct !DILocation(line: 287, column: 13, scope: !337)
!337 = distinct !DILexicalBlock(scope: !160, file: !2, line: 286, column: 8)
!338 = !DILocation(line: 0, scope: !110, inlinedAt: !339)
!339 = distinct !DILocation(line: 84, column: 7, scope: !332, inlinedAt: !336)
!340 = !DILocation(line: 70, column: 14, scope: !341, inlinedAt: !339)
!341 = distinct !DILexicalBlock(scope: !342, file: !2, line: 69, column: 24)
!342 = distinct !DILexicalBlock(scope: !343, file: !2, line: 69, column: 3)
!343 = distinct !DILexicalBlock(scope: !110, file: !2, line: 69, column: 3)
!344 = !DILocation(line: 70, column: 19, scope: !341, inlinedAt: !339)
!345 = !DILocation(line: 74, column: 19, scope: !346, inlinedAt: !339)
!346 = distinct !DILexicalBlock(scope: !347, file: !2, line: 73, column: 24)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 73, column: 3)
!348 = distinct !DILexicalBlock(scope: !110, file: !2, line: 73, column: 3)
!349 = !DILocation(line: 74, column: 14, scope: !346, inlinedAt: !339)
!350 = !DILocation(line: 77, column: 13, scope: !110, inlinedAt: !339)
!351 = !DILocation(line: 85, column: 12, scope: !332, inlinedAt: !336)
!352 = !DILocation(line: 85, column: 14, scope: !332, inlinedAt: !336)
!353 = !DILocation(line: 85, column: 8, scope: !332, inlinedAt: !336)
!354 = !DILocation(line: 85, column: 5, scope: !332, inlinedAt: !336)
!355 = !DILocation(line: 288, column: 15, scope: !337)
!356 = !DILocation(line: 288, column: 18, scope: !337)
!357 = !DILocation(line: 288, column: 25, scope: !337)
!358 = !DILocation(line: 288, column: 45, scope: !337)
!359 = !DILocation(line: 288, column: 43, scope: !337)
!360 = !DILocation(line: 0, scope: !151)
!361 = !DILocation(line: 291, column: 8, scope: !362)
!362 = distinct !DILexicalBlock(scope: !132, file: !2, line: 291, column: 6)
!363 = !DILocation(line: 291, column: 6, scope: !132)
!364 = !DILocation(line: 0, scope: !362)
!365 = !DILocation(line: 302, column: 3, scope: !132)
!366 = !DISubprogram(name: "exp", scope: !367, file: !367, line: 95, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!368 = distinct !DISubprogram(name: "gsl_sf_log_erfc_e", scope: !2, file: !2, line: 306, type: !133, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !369)
!369 = !{!370, !371, !372, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!370 = !DILocalVariable(name: "x", arg: 1, scope: !368, file: !2, line: 306, type: !91)
!371 = !DILocalVariable(name: "result", arg: 2, scope: !368, file: !2, line: 306, type: !135)
!372 = !DILocalVariable(name: "y", scope: !373, file: !2, line: 311, type: !146)
!373 = distinct !DILexicalBlock(scope: !374, file: !2, line: 310, column: 40)
!374 = distinct !DILexicalBlock(scope: !368, file: !2, line: 310, column: 6)
!375 = !DILocalVariable(name: "c3", scope: !373, file: !2, line: 313, type: !146)
!376 = !DILocalVariable(name: "c4", scope: !373, file: !2, line: 314, type: !146)
!377 = !DILocalVariable(name: "c5", scope: !373, file: !2, line: 315, type: !146)
!378 = !DILocalVariable(name: "c6", scope: !373, file: !2, line: 316, type: !146)
!379 = !DILocalVariable(name: "c7", scope: !373, file: !2, line: 317, type: !146)
!380 = !DILocalVariable(name: "c8", scope: !373, file: !2, line: 318, type: !146)
!381 = !DILocalVariable(name: "c9", scope: !373, file: !2, line: 319, type: !146)
!382 = !DILocalVariable(name: "c10", scope: !373, file: !2, line: 320, type: !146)
!383 = !DILocalVariable(name: "c11", scope: !373, file: !2, line: 321, type: !146)
!384 = !DILocalVariable(name: "c12", scope: !373, file: !2, line: 322, type: !146)
!385 = !DILocalVariable(name: "c13", scope: !373, file: !2, line: 323, type: !146)
!386 = !DILocalVariable(name: "c14", scope: !373, file: !2, line: 324, type: !146)
!387 = !DILocalVariable(name: "series", scope: !373, file: !2, line: 325, type: !91)
!388 = !DILocalVariable(name: "result_erfc", scope: !389, file: !2, line: 347, type: !136)
!389 = distinct !DILexicalBlock(scope: !390, file: !2, line: 346, column: 8)
!390 = distinct !DILexicalBlock(scope: !374, file: !2, line: 341, column: 11)
!391 = distinct !DIAssignID()
!392 = !DILocation(line: 0, scope: !389)
!393 = !DILocation(line: 0, scope: !368)
!394 = !DILocation(line: 310, column: 7, scope: !374)
!395 = !DILocation(line: 310, column: 10, scope: !374)
!396 = !DILocation(line: 310, column: 6, scope: !368)
!397 = !DILocation(line: 311, column: 24, scope: !373)
!398 = !DILocation(line: 0, scope: !373)
!399 = !DILocation(line: 325, column: 73, scope: !373)
!400 = !DILocation(line: 325, column: 68, scope: !373)
!401 = !DILocation(line: 325, column: 62, scope: !373)
!402 = !DILocation(line: 325, column: 59, scope: !373)
!403 = !DILocation(line: 325, column: 53, scope: !373)
!404 = !DILocation(line: 325, column: 50, scope: !373)
!405 = !DILocation(line: 325, column: 44, scope: !373)
!406 = !DILocation(line: 325, column: 41, scope: !373)
!407 = !DILocation(line: 325, column: 35, scope: !373)
!408 = !DILocation(line: 325, column: 32, scope: !373)
!409 = !DILocation(line: 325, column: 27, scope: !373)
!410 = !DILocation(line: 325, column: 24, scope: !373)
!411 = !DILocation(line: 326, column: 73, scope: !373)
!412 = !DILocation(line: 326, column: 70, scope: !373)
!413 = !DILocation(line: 326, column: 65, scope: !373)
!414 = !DILocation(line: 326, column: 62, scope: !373)
!415 = !DILocation(line: 326, column: 57, scope: !373)
!416 = !DILocation(line: 326, column: 54, scope: !373)
!417 = !DILocation(line: 326, column: 49, scope: !373)
!418 = !DILocation(line: 326, column: 46, scope: !373)
!419 = !DILocation(line: 326, column: 41, scope: !373)
!420 = !DILocation(line: 326, column: 38, scope: !373)
!421 = !DILocation(line: 326, column: 33, scope: !373)
!422 = !DILocation(line: 326, column: 30, scope: !373)
!423 = !DILocation(line: 326, column: 24, scope: !373)
!424 = !DILocation(line: 326, column: 21, scope: !373)
!425 = !DILocation(line: 326, column: 15, scope: !373)
!426 = !DILocation(line: 327, column: 24, scope: !373)
!427 = !DILocation(line: 327, column: 17, scope: !373)
!428 = !{!429, !206, i64 0}
!429 = !{!"gsl_sf_result_struct", !206, i64 0, !206, i64 8}
!430 = !DILocation(line: 328, column: 43, scope: !373)
!431 = !DILocation(line: 328, column: 41, scope: !373)
!432 = !DILocation(line: 328, column: 13, scope: !373)
!433 = !DILocation(line: 328, column: 17, scope: !373)
!434 = !{!429, !206, i64 8}
!435 = !DILocation(line: 341, column: 13, scope: !390)
!436 = !DILocation(line: 341, column: 11, scope: !374)
!437 = !DILocalVariable(name: "x", arg: 1, scope: !438, file: !2, line: 90, type: !91)
!438 = distinct !DISubprogram(name: "log_erfc8", scope: !2, file: !2, line: 90, type: !111, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !439)
!439 = !{!437, !440}
!440 = !DILocalVariable(name: "e", scope: !438, file: !2, line: 92, type: !91)
!441 = !DILocation(line: 0, scope: !438, inlinedAt: !442)
!442 = distinct !DILocation(line: 342, column: 19, scope: !443)
!443 = distinct !DILexicalBlock(scope: !390, file: !2, line: 341, column: 20)
!444 = !DILocation(line: 0, scope: !110, inlinedAt: !445)
!445 = distinct !DILocation(line: 93, column: 7, scope: !438, inlinedAt: !442)
!446 = !DILocation(line: 70, column: 14, scope: !341, inlinedAt: !445)
!447 = !DILocation(line: 70, column: 19, scope: !341, inlinedAt: !445)
!448 = !DILocation(line: 74, column: 19, scope: !346, inlinedAt: !445)
!449 = !DILocation(line: 74, column: 14, scope: !346, inlinedAt: !445)
!450 = !DILocation(line: 77, column: 13, scope: !110, inlinedAt: !445)
!451 = !DILocation(line: 94, column: 7, scope: !438, inlinedAt: !442)
!452 = !DILocation(line: 94, column: 14, scope: !438, inlinedAt: !442)
!453 = !DILocation(line: 342, column: 17, scope: !443)
!454 = !DILocation(line: 343, column: 43, scope: !443)
!455 = !DILocation(line: 343, column: 41, scope: !443)
!456 = !DILocation(line: 343, column: 13, scope: !443)
!457 = !DILocation(line: 343, column: 17, scope: !443)
!458 = !DILocation(line: 344, column: 5, scope: !443)
!459 = !DILocation(line: 347, column: 5, scope: !389)
!460 = !DILocation(line: 348, column: 5, scope: !389)
!461 = !DILocation(line: 349, column: 36, scope: !389)
!462 = !DILocation(line: 349, column: 20, scope: !389)
!463 = !DILocation(line: 349, column: 18, scope: !389)
!464 = !DILocation(line: 350, column: 37, scope: !389)
!465 = !DILocation(line: 350, column: 41, scope: !389)
!466 = !DILocation(line: 350, column: 20, scope: !389)
!467 = !DILocation(line: 350, column: 13, scope: !389)
!468 = !DILocation(line: 351, column: 44, scope: !389)
!469 = !DILocation(line: 351, column: 42, scope: !389)
!470 = !DILocation(line: 351, column: 17, scope: !389)
!471 = !DILocation(line: 353, column: 3, scope: !390)
!472 = !DILocation(line: 354, column: 1, scope: !368)
!473 = !DISubprogram(name: "log", scope: !367, file: !367, line: 104, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!474 = distinct !DISubprogram(name: "gsl_sf_erf_e", scope: !2, file: !2, line: 357, type: !133, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !475)
!475 = !{!476, !477, !478}
!476 = !DILocalVariable(name: "x", arg: 1, scope: !474, file: !2, line: 357, type: !91)
!477 = !DILocalVariable(name: "result", arg: 2, scope: !474, file: !2, line: 357, type: !135)
!478 = !DILocalVariable(name: "result_erfc", scope: !479, file: !2, line: 365, type: !136)
!479 = distinct !DILexicalBlock(scope: !480, file: !2, line: 364, column: 8)
!480 = distinct !DILexicalBlock(scope: !474, file: !2, line: 361, column: 6)
!481 = distinct !DIAssignID()
!482 = !DILocation(line: 0, scope: !479)
!483 = !DILocation(line: 0, scope: !474)
!484 = !DILocation(line: 361, column: 6, scope: !480)
!485 = !DILocation(line: 361, column: 14, scope: !480)
!486 = !DILocation(line: 361, column: 6, scope: !474)
!487 = !DILocalVariable(name: "x", arg: 1, scope: !488, file: !2, line: 123, type: !91)
!488 = distinct !DISubprogram(name: "erfseries", scope: !2, file: !2, line: 123, type: !133, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !489)
!489 = !{!487, !490, !491, !492, !493, !494}
!490 = !DILocalVariable(name: "result", arg: 2, scope: !488, file: !2, line: 123, type: !135)
!491 = !DILocalVariable(name: "coef", scope: !488, file: !2, line: 125, type: !91)
!492 = !DILocalVariable(name: "e", scope: !488, file: !2, line: 126, type: !91)
!493 = !DILocalVariable(name: "del", scope: !488, file: !2, line: 127, type: !91)
!494 = !DILocalVariable(name: "k", scope: !488, file: !2, line: 128, type: !28)
!495 = !DILocation(line: 0, scope: !488, inlinedAt: !496)
!496 = distinct !DILocation(line: 362, column: 12, scope: !497)
!497 = distinct !DILexicalBlock(scope: !480, file: !2, line: 361, column: 21)
!498 = !DILocation(line: 129, column: 3, scope: !499, inlinedAt: !496)
!499 = distinct !DILexicalBlock(scope: !488, file: !2, line: 129, column: 3)
!500 = !DILocation(line: 130, column: 18, scope: !501, inlinedAt: !496)
!501 = distinct !DILexicalBlock(scope: !502, file: !2, line: 129, column: 24)
!502 = distinct !DILexicalBlock(scope: !499, file: !2, line: 129, column: 3)
!503 = !DILocation(line: 130, column: 17, scope: !501, inlinedAt: !496)
!504 = !DILocation(line: 130, column: 10, scope: !501, inlinedAt: !496)
!505 = !DILocation(line: 131, column: 22, scope: !501, inlinedAt: !496)
!506 = !DILocation(line: 131, column: 24, scope: !501, inlinedAt: !496)
!507 = !DILocation(line: 131, column: 17, scope: !501, inlinedAt: !496)
!508 = !DILocation(line: 132, column: 7, scope: !501, inlinedAt: !496)
!509 = !DILocation(line: 129, column: 19, scope: !502, inlinedAt: !496)
!510 = !DILocation(line: 129, column: 14, scope: !502, inlinedAt: !496)
!511 = distinct !{!511, !498, !512, !220}
!512 = !DILocation(line: 133, column: 3, scope: !499, inlinedAt: !496)
!513 = !DILocation(line: 134, column: 32, scope: !488, inlinedAt: !496)
!514 = !DILocation(line: 134, column: 15, scope: !488, inlinedAt: !496)
!515 = !DILocation(line: 135, column: 35, scope: !488, inlinedAt: !496)
!516 = !DILocation(line: 135, column: 45, scope: !488, inlinedAt: !496)
!517 = !DILocation(line: 135, column: 32, scope: !488, inlinedAt: !496)
!518 = !DILocation(line: 135, column: 11, scope: !488, inlinedAt: !496)
!519 = !DILocation(line: 135, column: 15, scope: !488, inlinedAt: !496)
!520 = !DILocation(line: 362, column: 5, scope: !497)
!521 = !DILocation(line: 365, column: 5, scope: !479)
!522 = !DILocation(line: 366, column: 5, scope: !479)
!523 = !DILocation(line: 367, column: 38, scope: !479)
!524 = !DILocation(line: 367, column: 24, scope: !479)
!525 = !DILocation(line: 367, column: 18, scope: !479)
!526 = !DILocation(line: 368, column: 32, scope: !479)
!527 = !DILocation(line: 368, column: 13, scope: !479)
!528 = !DILocation(line: 369, column: 44, scope: !479)
!529 = !DILocation(line: 369, column: 42, scope: !479)
!530 = !DILocation(line: 369, column: 17, scope: !479)
!531 = !DILocation(line: 371, column: 3, scope: !480)
!532 = !DILocation(line: 372, column: 1, scope: !474)
!533 = distinct !DISubprogram(name: "gsl_sf_erf_Z_e", scope: !2, file: !2, line: 375, type: !133, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !534)
!534 = !{!535, !536, !537}
!535 = !DILocalVariable(name: "x", arg: 1, scope: !533, file: !2, line: 375, type: !91)
!536 = !DILocalVariable(name: "result", arg: 2, scope: !533, file: !2, line: 375, type: !135)
!537 = !DILocalVariable(name: "ex2", scope: !538, file: !2, line: 380, type: !146)
!538 = distinct !DILexicalBlock(scope: !533, file: !2, line: 379, column: 3)
!539 = !DILocation(line: 0, scope: !533)
!540 = !DILocation(line: 380, column: 28, scope: !538)
!541 = !DILocation(line: 380, column: 30, scope: !538)
!542 = !DILocation(line: 380, column: 32, scope: !538)
!543 = !DILocation(line: 380, column: 24, scope: !538)
!544 = !DILocation(line: 0, scope: !538)
!545 = !DILocation(line: 381, column: 24, scope: !538)
!546 = !DILocation(line: 381, column: 18, scope: !538)
!547 = !DILocation(line: 382, column: 27, scope: !538)
!548 = !DILocation(line: 382, column: 20, scope: !538)
!549 = !DILocation(line: 382, column: 42, scope: !538)
!550 = !DILocation(line: 382, column: 13, scope: !538)
!551 = !DILocation(line: 383, column: 44, scope: !538)
!552 = !DILocation(line: 383, column: 42, scope: !538)
!553 = !DILocation(line: 383, column: 17, scope: !538)
!554 = !DILocation(line: 384, column: 5, scope: !555)
!555 = distinct !DILexicalBlock(scope: !538, file: !2, line: 384, column: 5)
!556 = !DILocation(line: 384, column: 5, scope: !538)
!557 = !DILocation(line: 384, column: 5, scope: !558)
!558 = distinct !DILexicalBlock(scope: !555, file: !2, line: 384, column: 5)
!559 = !DILocation(line: 387, column: 1, scope: !533)
!560 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !563, !563, !28, !28}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!565 = distinct !DISubprogram(name: "gsl_sf_erf_Q_e", scope: !2, file: !2, line: 390, type: !133, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !566)
!566 = !{!567, !568, !569, !571}
!567 = !DILocalVariable(name: "x", arg: 1, scope: !565, file: !2, line: 390, type: !91)
!568 = !DILocalVariable(name: "result", arg: 2, scope: !565, file: !2, line: 390, type: !135)
!569 = !DILocalVariable(name: "result_erfc", scope: !570, file: !2, line: 395, type: !136)
!570 = distinct !DILexicalBlock(scope: !565, file: !2, line: 394, column: 3)
!571 = !DILocalVariable(name: "stat", scope: !570, file: !2, line: 396, type: !28)
!572 = distinct !DIAssignID()
!573 = !DILocation(line: 0, scope: !570)
!574 = !DILocation(line: 0, scope: !565)
!575 = !DILocation(line: 395, column: 5, scope: !570)
!576 = !DILocation(line: 396, column: 31, scope: !570)
!577 = !DILocation(line: 396, column: 16, scope: !570)
!578 = !DILocation(line: 397, column: 38, scope: !570)
!579 = !DILocation(line: 397, column: 24, scope: !570)
!580 = !DILocation(line: 397, column: 18, scope: !570)
!581 = !DILocation(line: 398, column: 38, scope: !570)
!582 = !DILocation(line: 398, column: 24, scope: !570)
!583 = !DILocation(line: 398, column: 13, scope: !570)
!584 = !DILocation(line: 399, column: 44, scope: !570)
!585 = !DILocation(line: 399, column: 42, scope: !570)
!586 = !DILocation(line: 399, column: 17, scope: !570)
!587 = !DILocation(line: 401, column: 3, scope: !565)
!588 = !DILocation(line: 400, column: 5, scope: !570)
!589 = distinct !DISubprogram(name: "gsl_sf_hazard_e", scope: !2, file: !2, line: 405, type: !133, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !590)
!590 = !{!591, !592, !593, !596, !598, !599, !600, !601, !603, !604, !605}
!591 = !DILocalVariable(name: "x", arg: 1, scope: !589, file: !2, line: 405, type: !91)
!592 = !DILocalVariable(name: "result", arg: 2, scope: !589, file: !2, line: 405, type: !135)
!593 = !DILocalVariable(name: "result_ln_erfc", scope: !594, file: !2, line: 409, type: !136)
!594 = distinct !DILexicalBlock(scope: !595, file: !2, line: 408, column: 3)
!595 = distinct !DILexicalBlock(scope: !589, file: !2, line: 407, column: 6)
!596 = !DILocalVariable(name: "stat_l", scope: !594, file: !2, line: 410, type: !597)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!598 = !DILocalVariable(name: "lnc", scope: !594, file: !2, line: 411, type: !146)
!599 = !DILocalVariable(name: "arg", scope: !594, file: !2, line: 412, type: !146)
!600 = !DILocalVariable(name: "stat_e", scope: !594, file: !2, line: 413, type: !597)
!601 = !DILocalVariable(name: "ix2", scope: !602, file: !2, line: 420, type: !146)
!602 = distinct !DILexicalBlock(scope: !595, file: !2, line: 419, column: 3)
!603 = !DILocalVariable(name: "corrB", scope: !602, file: !2, line: 421, type: !146)
!604 = !DILocalVariable(name: "corrM", scope: !602, file: !2, line: 422, type: !146)
!605 = !DILocalVariable(name: "corrT", scope: !602, file: !2, line: 423, type: !146)
!606 = distinct !DIAssignID()
!607 = !DILocation(line: 0, scope: !594)
!608 = !DILocation(line: 0, scope: !589)
!609 = !DILocation(line: 407, column: 8, scope: !595)
!610 = !DILocation(line: 407, column: 6, scope: !589)
!611 = !DILocation(line: 409, column: 5, scope: !594)
!612 = !DILocation(line: 410, column: 43, scope: !594)
!613 = !DILocation(line: 410, column: 24, scope: !594)
!614 = !DILocation(line: 412, column: 33, scope: !594)
!615 = !DILocation(line: 412, column: 35, scope: !594)
!616 = !DILocation(line: 412, column: 28, scope: !594)
!617 = !DILocation(line: 412, column: 55, scope: !594)
!618 = !DILocation(line: 412, column: 38, scope: !594)
!619 = !DILocation(line: 413, column: 24, scope: !594)
!620 = !DILocation(line: 414, column: 33, scope: !594)
!621 = !DILocation(line: 414, column: 31, scope: !594)
!622 = !DILocation(line: 414, column: 24, scope: !594)
!623 = !DILocation(line: 414, column: 42, scope: !594)
!624 = !DILocation(line: 414, column: 75, scope: !594)
!625 = !DILocation(line: 414, column: 62, scope: !594)
!626 = !DILocation(line: 414, column: 60, scope: !594)
!627 = !DILocation(line: 414, column: 13, scope: !594)
!628 = !DILocation(line: 414, column: 17, scope: !594)
!629 = !DILocation(line: 415, column: 40, scope: !594)
!630 = !DILocation(line: 415, column: 44, scope: !594)
!631 = !DILocation(line: 415, column: 20, scope: !594)
!632 = !DILocation(line: 415, column: 17, scope: !594)
!633 = !DILocation(line: 417, column: 3, scope: !595)
!634 = !DILocation(line: 420, column: 30, scope: !602)
!635 = !DILocation(line: 420, column: 27, scope: !602)
!636 = !DILocation(line: 0, scope: !602)
!637 = !DILocation(line: 421, column: 35, scope: !602)
!638 = !DILocation(line: 421, column: 53, scope: !602)
!639 = !DILocation(line: 421, column: 47, scope: !602)
!640 = !DILocation(line: 421, column: 40, scope: !602)
!641 = !DILocation(line: 421, column: 30, scope: !602)
!642 = !DILocation(line: 422, column: 35, scope: !602)
!643 = !DILocation(line: 422, column: 52, scope: !602)
!644 = !DILocation(line: 422, column: 57, scope: !602)
!645 = !DILocation(line: 422, column: 47, scope: !602)
!646 = !DILocation(line: 422, column: 40, scope: !602)
!647 = !DILocation(line: 422, column: 30, scope: !602)
!648 = !DILocation(line: 423, column: 48, scope: !602)
!649 = !DILocation(line: 423, column: 52, scope: !602)
!650 = !DILocation(line: 423, column: 43, scope: !602)
!651 = !DILocation(line: 423, column: 36, scope: !602)
!652 = !DILocation(line: 423, column: 30, scope: !602)
!653 = !DILocation(line: 424, column: 21, scope: !602)
!654 = !DILocation(line: 424, column: 17, scope: !602)
!655 = !DILocation(line: 425, column: 43, scope: !602)
!656 = !DILocation(line: 425, column: 41, scope: !602)
!657 = !DILocation(line: 425, column: 13, scope: !602)
!658 = !DILocation(line: 425, column: 17, scope: !602)
!659 = !DILocation(line: 0, scope: !595)
!660 = !DILocation(line: 428, column: 1, scope: !589)
!661 = !DISubprogram(name: "gsl_sf_exp_e", scope: !662, file: !662, line: 45, type: !663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!662 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!663 = !DISubroutineType(types: !664)
!664 = !{!28, !146, !135}
!665 = distinct !DISubprogram(name: "gsl_sf_erfc", scope: !2, file: !2, line: 436, type: !111, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !666)
!666 = !{!667, !668, !669}
!667 = !DILocalVariable(name: "x", arg: 1, scope: !665, file: !2, line: 436, type: !91)
!668 = !DILocalVariable(name: "result", scope: !665, file: !2, line: 438, type: !136)
!669 = !DILocalVariable(name: "status", scope: !665, file: !2, line: 438, type: !28)
!670 = distinct !DIAssignID()
!671 = !DILocation(line: 0, scope: !665)
!672 = !DILocation(line: 438, column: 3, scope: !665)
!673 = !DILocation(line: 439, column: 1, scope: !665)
!674 = distinct !DISubprogram(name: "gsl_sf_log_erfc", scope: !2, file: !2, line: 441, type: !111, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !675)
!675 = !{!676, !677, !678}
!676 = !DILocalVariable(name: "x", arg: 1, scope: !674, file: !2, line: 441, type: !91)
!677 = !DILocalVariable(name: "result", scope: !674, file: !2, line: 443, type: !136)
!678 = !DILocalVariable(name: "status", scope: !674, file: !2, line: 443, type: !28)
!679 = distinct !DIAssignID()
!680 = !DILocation(line: 0, scope: !674)
!681 = !DILocation(line: 443, column: 3, scope: !674)
!682 = !DILocation(line: 444, column: 1, scope: !674)
!683 = distinct !DISubprogram(name: "gsl_sf_erf", scope: !2, file: !2, line: 446, type: !111, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !684)
!684 = !{!685, !686, !687}
!685 = !DILocalVariable(name: "x", arg: 1, scope: !683, file: !2, line: 446, type: !91)
!686 = !DILocalVariable(name: "result", scope: !683, file: !2, line: 448, type: !136)
!687 = !DILocalVariable(name: "status", scope: !683, file: !2, line: 448, type: !28)
!688 = distinct !DIAssignID()
!689 = !DILocation(line: 0, scope: !683)
!690 = !DILocation(line: 0, scope: !479, inlinedAt: !691)
!691 = distinct !DILocation(line: 448, column: 3, scope: !683)
!692 = !DILocation(line: 0, scope: !474, inlinedAt: !691)
!693 = !DILocation(line: 361, column: 6, scope: !480, inlinedAt: !691)
!694 = !DILocation(line: 361, column: 14, scope: !480, inlinedAt: !691)
!695 = !DILocation(line: 361, column: 6, scope: !474, inlinedAt: !691)
!696 = !DILocation(line: 0, scope: !488, inlinedAt: !697)
!697 = distinct !DILocation(line: 362, column: 12, scope: !497, inlinedAt: !691)
!698 = !DILocation(line: 129, column: 3, scope: !499, inlinedAt: !697)
!699 = !DILocation(line: 130, column: 18, scope: !501, inlinedAt: !697)
!700 = !DILocation(line: 130, column: 17, scope: !501, inlinedAt: !697)
!701 = !DILocation(line: 130, column: 10, scope: !501, inlinedAt: !697)
!702 = !DILocation(line: 131, column: 22, scope: !501, inlinedAt: !697)
!703 = !DILocation(line: 131, column: 24, scope: !501, inlinedAt: !697)
!704 = !DILocation(line: 131, column: 17, scope: !501, inlinedAt: !697)
!705 = !DILocation(line: 132, column: 7, scope: !501, inlinedAt: !697)
!706 = !DILocation(line: 129, column: 19, scope: !502, inlinedAt: !697)
!707 = !DILocation(line: 129, column: 14, scope: !502, inlinedAt: !697)
!708 = distinct !{!708, !698, !709, !220}
!709 = !DILocation(line: 133, column: 3, scope: !499, inlinedAt: !697)
!710 = !DILocation(line: 134, column: 32, scope: !488, inlinedAt: !697)
!711 = !DILocation(line: 362, column: 5, scope: !497, inlinedAt: !691)
!712 = !DILocation(line: 365, column: 5, scope: !479, inlinedAt: !691)
!713 = !DILocation(line: 366, column: 5, scope: !479, inlinedAt: !691)
!714 = !DILocation(line: 367, column: 38, scope: !479, inlinedAt: !691)
!715 = !DILocation(line: 367, column: 24, scope: !479, inlinedAt: !691)
!716 = !DILocation(line: 371, column: 3, scope: !480, inlinedAt: !691)
!717 = !DILocation(line: 0, scope: !480, inlinedAt: !691)
!718 = !DILocation(line: 449, column: 1, scope: !683)
!719 = distinct !DISubprogram(name: "gsl_sf_erf_Z", scope: !2, file: !2, line: 451, type: !111, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !720)
!720 = !{!721, !722, !723}
!721 = !DILocalVariable(name: "x", arg: 1, scope: !719, file: !2, line: 451, type: !91)
!722 = !DILocalVariable(name: "result", scope: !719, file: !2, line: 453, type: !136)
!723 = !DILocalVariable(name: "status", scope: !719, file: !2, line: 453, type: !28)
!724 = !DILocation(line: 0, scope: !719)
!725 = !DILocation(line: 0, scope: !533, inlinedAt: !726)
!726 = distinct !DILocation(line: 453, column: 3, scope: !719)
!727 = !DILocation(line: 380, column: 28, scope: !538, inlinedAt: !726)
!728 = !DILocation(line: 380, column: 30, scope: !538, inlinedAt: !726)
!729 = !DILocation(line: 380, column: 32, scope: !538, inlinedAt: !726)
!730 = !DILocation(line: 380, column: 24, scope: !538, inlinedAt: !726)
!731 = !DILocation(line: 0, scope: !538, inlinedAt: !726)
!732 = !DILocation(line: 381, column: 24, scope: !538, inlinedAt: !726)
!733 = !DILocation(line: 383, column: 44, scope: !538, inlinedAt: !726)
!734 = !DILocation(line: 384, column: 5, scope: !555, inlinedAt: !726)
!735 = !DILocation(line: 384, column: 5, scope: !538, inlinedAt: !726)
!736 = !DILocation(line: 384, column: 5, scope: !558, inlinedAt: !726)
!737 = !DILocation(line: 453, column: 3, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !2, line: 453, column: 3)
!739 = distinct !DILexicalBlock(scope: !740, file: !2, line: 453, column: 3)
!740 = distinct !DILexicalBlock(scope: !719, file: !2, line: 453, column: 3)
!741 = !DILocation(line: 454, column: 1, scope: !719)
!742 = distinct !DISubprogram(name: "gsl_sf_erf_Q", scope: !2, file: !2, line: 456, type: !111, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !743)
!743 = !{!744, !745, !746}
!744 = !DILocalVariable(name: "x", arg: 1, scope: !742, file: !2, line: 456, type: !91)
!745 = !DILocalVariable(name: "result", scope: !742, file: !2, line: 458, type: !136)
!746 = !DILocalVariable(name: "status", scope: !742, file: !2, line: 458, type: !28)
!747 = distinct !DIAssignID()
!748 = !DILocation(line: 0, scope: !742)
!749 = !DILocation(line: 0, scope: !570, inlinedAt: !750)
!750 = distinct !DILocation(line: 458, column: 3, scope: !742)
!751 = !DILocation(line: 0, scope: !565, inlinedAt: !750)
!752 = !DILocation(line: 395, column: 5, scope: !570, inlinedAt: !750)
!753 = !DILocation(line: 396, column: 31, scope: !570, inlinedAt: !750)
!754 = !DILocation(line: 396, column: 16, scope: !570, inlinedAt: !750)
!755 = !DILocation(line: 397, column: 38, scope: !570, inlinedAt: !750)
!756 = !DILocation(line: 397, column: 24, scope: !570, inlinedAt: !750)
!757 = !DILocation(line: 401, column: 3, scope: !565, inlinedAt: !750)
!758 = !DILocation(line: 459, column: 1, scope: !742)
!759 = distinct !DISubprogram(name: "gsl_sf_hazard", scope: !2, file: !2, line: 461, type: !111, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !760)
!760 = !{!761, !762, !763}
!761 = !DILocalVariable(name: "x", arg: 1, scope: !759, file: !2, line: 461, type: !91)
!762 = !DILocalVariable(name: "result", scope: !759, file: !2, line: 463, type: !136)
!763 = !DILocalVariable(name: "status", scope: !759, file: !2, line: 463, type: !28)
!764 = distinct !DIAssignID()
!765 = !DILocation(line: 0, scope: !759)
!766 = !DILocation(line: 463, column: 3, scope: !759)
!767 = !DILocation(line: 463, column: 3, scope: !768)
!768 = distinct !DILexicalBlock(scope: !759, file: !2, line: 463, column: 3)
!769 = !DILocation(line: 463, column: 3, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !2, line: 463, column: 3)
!771 = distinct !DILexicalBlock(scope: !768, file: !2, line: 463, column: 3)
!772 = !DILocation(line: 464, column: 1, scope: !759)
