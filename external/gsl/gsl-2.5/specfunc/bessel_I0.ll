; ModuleID = 'bessel_I0.c'
source_filename = "bessel_I0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_I0.c\00", align 1, !dbg !7
@.str.3 = private unnamed_addr constant [32 x i8] c"gsl_sf_bessel_I0_e(x, &result);\00", align 1, !dbg !12
@bi0_data = internal unnamed_addr constant [12 x double] [double 0xBFB39C6A8F343DC8, double 0x3FFED660528BE329, double 0x3FCD37C51075F0D7, double 0x3F8AB963ADF26D77, double 0x3F3C787A24F735CB, double 0x3EE3C2C03617093B, double 0x3E833F35458DE982, double 0x3E1BB9C8846672F9, double 0x3DAEB670D671AE28, double 0x3D3AF6B8CF4454F0, double 5.333900e-16, double 2.450000e-18], align 16, !dbg !17
@ai0_data = internal unnamed_addr constant [21 x double] [double 0x3FB36500F5DD7610, double 0x3F7F1823C5060387, double 0x3F3B37CC53E1FC02, double 0x3EE670EDE4880950, double 0xBEE091E9E8545094, double 0xBEAA429B27F54A32, double 0x3E92AE9E272332E6, double 0x3E41B8D84435C00F, double 0xBE49DD9C4DE920BD, double 0x3E1ACB6833C29B9B, double 0x3DEF823723C22545, double 0xBDE060A6664CCA7E, double 0x3DB353EB4C91C88B, double 1.128220e-12, double -1.146840e-12, double 2.715500e-13, double -2.415000e-14, double -6.080000e-15, double 3.140000e-15, double -7.100000e-16, double 7.000000e-17], align 16, !dbg !81
@ai02_data = internal unnamed_addr constant [22 x double] [double 0x3FABE62ACA809CB5, double 0x3F6B998CA2E5903F, double 0x3F120FA37899A1B5, double 0x3EC8412BC1013D6B, double 0x3E8B8007D9C3A27D, double 0x3E58569280EDF9E5, double 0x3E2D2C64A9C0B0AC, double 0x3E00F9CCB61AB9A0, double 0x3DAA24FDA5AC4A25, double 0xBDC1511C7B4B7113, double -1.321580e-11, double -1.794190e-12, double 7.180100e-13, double 3.852900e-13, double 1.539000e-14, double -4.151000e-14, double -9.540000e-15, double 3.820000e-15, double 1.760000e-15, double -3.400000e-16, double -2.700000e-16, double 3.000000e-17], align 16, !dbg !88

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_I0_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !102 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !114, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !115, metadata !DIExpression()), !dbg !129
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !130
  tail call void @llvm.dbg.value(metadata double %3, metadata !116, metadata !DIExpression()), !dbg !129
  %4 = fcmp olt double %3, 0x3E60000000000000, !dbg !131
  br i1 %4, label %5, label %10, !dbg !132

5:                                                ; preds = %2
  %6 = fsub double 1.000000e+00, %3, !dbg !133
  store double %6, ptr %1, align 8, !dbg !135, !tbaa !136
  %7 = fmul double %3, 5.000000e-01, !dbg !141
  %8 = fmul double %3, %7, !dbg !142
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !143
  store double %8, ptr %9, align 8, !dbg !144, !tbaa !145
  br label %161, !dbg !146

10:                                               ; preds = %2
  %11 = fcmp ugt double %3, 3.000000e+00, !dbg !147
  br i1 %11, label %59, label %12, !dbg !148

12:                                               ; preds = %10
  %13 = fneg double %3, !dbg !149
  %14 = tail call double @exp(double noundef %13) #7, !dbg !150
  tail call void @llvm.dbg.value(metadata double %14, metadata !117, metadata !DIExpression()), !dbg !151
  %15 = fmul double %0, %0, !dbg !152
  %16 = fdiv double %15, 4.500000e+00, !dbg !153
  %17 = fadd double %16, -1.000000e+00, !dbg !154
  call void @llvm.dbg.value(metadata !155, metadata !156, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %17, metadata !164, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata ptr undef, metadata !165, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !167, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !168, metadata !DIExpression()), !dbg !178
  %18 = fmul double %17, 2.000000e+00, !dbg !180
  %19 = fadd double %18, 1.000000e+00, !dbg !181
  %20 = fadd double %19, -1.000000e+00, !dbg !182
  %21 = fmul double %20, 5.000000e-01, !dbg !183
  call void @llvm.dbg.value(metadata double %21, metadata !169, metadata !DIExpression()), !dbg !178
  %22 = fmul double %21, 2.000000e+00, !dbg !184
  call void @llvm.dbg.value(metadata double %22, metadata !170, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !171, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i32 11, metadata !166, metadata !DIExpression()), !dbg !178
  br label %23, !dbg !185

23:                                               ; preds = %23, %12
  %24 = phi i64 [ 11, %12 ], [ %39, %23 ]
  %25 = phi double [ 0.000000e+00, %12 ], [ %32, %23 ]
  %26 = phi double [ 0.000000e+00, %12 ], [ %38, %23 ]
  %27 = phi double [ 0.000000e+00, %12 ], [ %25, %23 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !166, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %25, metadata !167, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %26, metadata !171, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %27, metadata !168, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %25, metadata !172, metadata !DIExpression()), !dbg !186
  %28 = fmul double %22, %25, !dbg !187
  %29 = fsub double %28, %27, !dbg !188
  %30 = getelementptr inbounds double, ptr @bi0_data, i64 %24, !dbg !189
  %31 = load double, ptr %30, align 8, !dbg !189, !tbaa !190
  %32 = fadd double %29, %31, !dbg !191
  call void @llvm.dbg.value(metadata double %32, metadata !167, metadata !DIExpression()), !dbg !178
  %33 = tail call double @llvm.fabs.f64(double %28), !dbg !192
  %34 = tail call double @llvm.fabs.f64(double %27), !dbg !193
  %35 = fadd double %33, %34, !dbg !194
  %36 = tail call double @llvm.fabs.f64(double %31), !dbg !195
  %37 = fadd double %35, %36, !dbg !196
  %38 = fadd double %26, %37, !dbg !197
  call void @llvm.dbg.value(metadata double %38, metadata !171, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %25, metadata !168, metadata !DIExpression()), !dbg !178
  %39 = add nsw i64 %24, -1, !dbg !198
  call void @llvm.dbg.value(metadata i64 %39, metadata !166, metadata !DIExpression()), !dbg !178
  %40 = icmp ugt i64 %24, 1, !dbg !199
  br i1 %40, label %23, label %41, !dbg !185, !llvm.loop !200

41:                                               ; preds = %23
  call void @llvm.dbg.value(metadata double %32, metadata !176, metadata !DIExpression()), !dbg !203
  %42 = fmul double %21, %32, !dbg !204
  %43 = fsub double %42, %25, !dbg !205
  %44 = fadd double %43, 0xBFA39C6A8F343DC8, !dbg !206
  call void @llvm.dbg.value(metadata double %44, metadata !167, metadata !DIExpression()), !dbg !178
  %45 = tail call double @llvm.fabs.f64(double %42), !dbg !207
  %46 = tail call double @llvm.fabs.f64(double %25), !dbg !208
  %47 = fadd double %46, %45, !dbg !209
  %48 = fadd double %47, 0x3FA39C6A8F343DC8, !dbg !210
  %49 = fadd double %38, %48, !dbg !211
  call void @llvm.dbg.value(metadata double %49, metadata !171, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %44, metadata !121, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !151
  %50 = fmul double %49, 0x3CB0000000000000, !dbg !212
  %51 = fadd double %50, 2.450000e-18, !dbg !213
  tail call void @llvm.dbg.value(metadata double %51, metadata !121, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !151
  %52 = fadd double %44, 2.750000e+00, !dbg !214
  %53 = fmul double %14, %52, !dbg !215
  store double %53, ptr %1, align 8, !dbg !216, !tbaa !136
  %54 = tail call double @llvm.fabs.f64(double %53), !dbg !217
  %55 = fmul double %54, 0x3CB0000000000000, !dbg !218
  %56 = fmul double %14, %51, !dbg !219
  %57 = fadd double %55, %56, !dbg !220
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !221
  store double %57, ptr %58, align 8, !dbg !222, !tbaa !145
  br label %161

59:                                               ; preds = %10
  %60 = fcmp ugt double %3, 8.000000e+00, !dbg !223
  %61 = tail call double @llvm.sqrt.f64(double %3), !dbg !224
  br i1 %60, label %112, label %62, !dbg !225

62:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata double %61, metadata !122, metadata !DIExpression()), !dbg !226
  %63 = fdiv double 4.800000e+01, %3, !dbg !227
  %64 = fadd double %63, -1.100000e+01, !dbg !228
  %65 = fdiv double %64, 5.000000e+00, !dbg !229
  call void @llvm.dbg.value(metadata !155, metadata !156, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata double %65, metadata !164, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata ptr undef, metadata !165, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !167, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !168, metadata !DIExpression()), !dbg !230
  %66 = fmul double %65, 2.000000e+00, !dbg !232
  %67 = fadd double %66, 1.000000e+00, !dbg !233
  %68 = fadd double %67, -1.000000e+00, !dbg !234
  %69 = fmul double %68, 5.000000e-01, !dbg !235
  call void @llvm.dbg.value(metadata double %69, metadata !169, metadata !DIExpression()), !dbg !230
  %70 = fmul double %69, 2.000000e+00, !dbg !236
  call void @llvm.dbg.value(metadata double %70, metadata !170, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !171, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i32 20, metadata !166, metadata !DIExpression()), !dbg !230
  br label %71, !dbg !237

71:                                               ; preds = %71, %62
  %72 = phi i64 [ 20, %62 ], [ %87, %71 ]
  %73 = phi double [ 0.000000e+00, %62 ], [ %80, %71 ]
  %74 = phi double [ 0.000000e+00, %62 ], [ %86, %71 ]
  %75 = phi double [ 0.000000e+00, %62 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata i64 %72, metadata !166, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata double %73, metadata !167, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata double %74, metadata !171, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata double %75, metadata !168, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata double %73, metadata !172, metadata !DIExpression()), !dbg !238
  %76 = fmul double %70, %73, !dbg !239
  %77 = fsub double %76, %75, !dbg !240
  %78 = getelementptr inbounds double, ptr @ai0_data, i64 %72, !dbg !241
  %79 = load double, ptr %78, align 8, !dbg !241, !tbaa !190
  %80 = fadd double %77, %79, !dbg !242
  call void @llvm.dbg.value(metadata double %80, metadata !167, metadata !DIExpression()), !dbg !230
  %81 = tail call double @llvm.fabs.f64(double %76), !dbg !243
  %82 = tail call double @llvm.fabs.f64(double %75), !dbg !244
  %83 = fadd double %81, %82, !dbg !245
  %84 = tail call double @llvm.fabs.f64(double %79), !dbg !246
  %85 = fadd double %83, %84, !dbg !247
  %86 = fadd double %74, %85, !dbg !248
  call void @llvm.dbg.value(metadata double %86, metadata !171, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata double %73, metadata !168, metadata !DIExpression()), !dbg !230
  %87 = add nsw i64 %72, -1, !dbg !249
  call void @llvm.dbg.value(metadata i64 %87, metadata !166, metadata !DIExpression()), !dbg !230
  %88 = icmp ugt i64 %72, 1, !dbg !250
  br i1 %88, label %71, label %89, !dbg !237, !llvm.loop !251

89:                                               ; preds = %71
  call void @llvm.dbg.value(metadata double %80, metadata !176, metadata !DIExpression()), !dbg !253
  %90 = fmul double %69, %80, !dbg !254
  %91 = fsub double %90, %73, !dbg !255
  %92 = fadd double %91, 0x3FA36500F5DD7610, !dbg !256
  call void @llvm.dbg.value(metadata double %92, metadata !167, metadata !DIExpression()), !dbg !230
  %93 = tail call double @llvm.fabs.f64(double %90), !dbg !257
  %94 = tail call double @llvm.fabs.f64(double %73), !dbg !258
  %95 = fadd double %94, %93, !dbg !259
  %96 = fadd double %95, 0x3FA36500F5DD7610, !dbg !260
  %97 = fadd double %86, %96, !dbg !261
  call void @llvm.dbg.value(metadata double %97, metadata !171, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata double %92, metadata !125, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !226
  %98 = fmul double %97, 0x3CB0000000000000, !dbg !262
  %99 = fadd double %98, 7.000000e-17, !dbg !263
  tail call void @llvm.dbg.value(metadata double %99, metadata !125, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !226
  %100 = fadd double %92, 3.750000e-01, !dbg !264
  %101 = fdiv double %100, %61, !dbg !265
  store double %101, ptr %1, align 8, !dbg !266, !tbaa !136
  %102 = tail call double @llvm.fabs.f64(double %92), !dbg !267
  %103 = fadd double %102, 3.750000e-01, !dbg !268
  %104 = fmul double %103, 0x3CC0000000000000, !dbg !269
  %105 = fdiv double %104, %61, !dbg !270
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !271
  %107 = fdiv double %99, %61, !dbg !272
  %108 = fadd double %105, %107, !dbg !273
  %109 = tail call double @llvm.fabs.f64(double %101), !dbg !274
  %110 = fmul double %109, 0x3CC0000000000000, !dbg !275
  %111 = fadd double %110, %108, !dbg !276
  store double %111, ptr %106, align 8, !dbg !276, !tbaa !145
  br label %161

112:                                              ; preds = %59
  tail call void @llvm.dbg.value(metadata double %61, metadata !126, metadata !DIExpression()), !dbg !277
  %113 = fdiv double 1.600000e+01, %3, !dbg !278
  %114 = fadd double %113, -1.000000e+00, !dbg !279
  call void @llvm.dbg.value(metadata !155, metadata !156, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata double %114, metadata !164, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata ptr undef, metadata !165, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !167, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !168, metadata !DIExpression()), !dbg !280
  %115 = fmul double %114, 2.000000e+00, !dbg !282
  %116 = fadd double %115, 1.000000e+00, !dbg !283
  %117 = fadd double %116, -1.000000e+00, !dbg !284
  %118 = fmul double %117, 5.000000e-01, !dbg !285
  call void @llvm.dbg.value(metadata double %118, metadata !169, metadata !DIExpression()), !dbg !280
  %119 = fmul double %118, 2.000000e+00, !dbg !286
  call void @llvm.dbg.value(metadata double %119, metadata !170, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !171, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 21, metadata !166, metadata !DIExpression()), !dbg !280
  br label %120, !dbg !287

120:                                              ; preds = %120, %112
  %121 = phi i64 [ 21, %112 ], [ %136, %120 ]
  %122 = phi double [ 0.000000e+00, %112 ], [ %129, %120 ]
  %123 = phi double [ 0.000000e+00, %112 ], [ %135, %120 ]
  %124 = phi double [ 0.000000e+00, %112 ], [ %122, %120 ]
  call void @llvm.dbg.value(metadata i64 %121, metadata !166, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata double %122, metadata !167, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata double %123, metadata !171, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata double %124, metadata !168, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata double %122, metadata !172, metadata !DIExpression()), !dbg !288
  %125 = fmul double %119, %122, !dbg !289
  %126 = fsub double %125, %124, !dbg !290
  %127 = getelementptr inbounds double, ptr @ai02_data, i64 %121, !dbg !291
  %128 = load double, ptr %127, align 8, !dbg !291, !tbaa !190
  %129 = fadd double %126, %128, !dbg !292
  call void @llvm.dbg.value(metadata double %129, metadata !167, metadata !DIExpression()), !dbg !280
  %130 = tail call double @llvm.fabs.f64(double %125), !dbg !293
  %131 = tail call double @llvm.fabs.f64(double %124), !dbg !294
  %132 = fadd double %130, %131, !dbg !295
  %133 = tail call double @llvm.fabs.f64(double %128), !dbg !296
  %134 = fadd double %132, %133, !dbg !297
  %135 = fadd double %123, %134, !dbg !298
  call void @llvm.dbg.value(metadata double %135, metadata !171, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata double %122, metadata !168, metadata !DIExpression()), !dbg !280
  %136 = add nsw i64 %121, -1, !dbg !299
  call void @llvm.dbg.value(metadata i64 %136, metadata !166, metadata !DIExpression()), !dbg !280
  %137 = icmp ugt i64 %121, 1, !dbg !300
  br i1 %137, label %120, label %138, !dbg !287, !llvm.loop !301

138:                                              ; preds = %120
  call void @llvm.dbg.value(metadata double %129, metadata !176, metadata !DIExpression()), !dbg !303
  %139 = fmul double %118, %129, !dbg !304
  %140 = fsub double %139, %122, !dbg !305
  %141 = fadd double %140, 0x3F9BE62ACA809CB5, !dbg !306
  call void @llvm.dbg.value(metadata double %141, metadata !167, metadata !DIExpression()), !dbg !280
  %142 = tail call double @llvm.fabs.f64(double %139), !dbg !307
  %143 = tail call double @llvm.fabs.f64(double %122), !dbg !308
  %144 = fadd double %143, %142, !dbg !309
  %145 = fadd double %144, 0x3F9BE62ACA809CB5, !dbg !310
  %146 = fadd double %135, %145, !dbg !311
  call void @llvm.dbg.value(metadata double %146, metadata !171, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata double %141, metadata !128, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !277
  %147 = fmul double %146, 0x3CB0000000000000, !dbg !312
  %148 = fadd double %147, 3.000000e-17, !dbg !313
  tail call void @llvm.dbg.value(metadata double %148, metadata !128, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !277
  %149 = fadd double %141, 3.750000e-01, !dbg !314
  %150 = fdiv double %149, %61, !dbg !315
  store double %150, ptr %1, align 8, !dbg !316, !tbaa !136
  %151 = tail call double @llvm.fabs.f64(double %141), !dbg !317
  %152 = fadd double %151, 3.750000e-01, !dbg !318
  %153 = fmul double %152, 0x3CC0000000000000, !dbg !319
  %154 = fdiv double %153, %61, !dbg !320
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !321
  %156 = fdiv double %148, %61, !dbg !322
  %157 = fadd double %154, %156, !dbg !323
  %158 = tail call double @llvm.fabs.f64(double %150), !dbg !324
  %159 = fmul double %158, 0x3CC0000000000000, !dbg !325
  %160 = fadd double %159, %157, !dbg !326
  store double %160, ptr %155, align 8, !dbg !326, !tbaa !145
  br label %161

161:                                              ; preds = %138, %89, %41, %5
  ret i32 0, !dbg !327
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !328 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_I0_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !332 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !345
  call void @llvm.dbg.assign(metadata i1 undef, metadata !344, metadata !DIExpression(), metadata !345, metadata ptr %3, metadata !DIExpression()), !dbg !346
  tail call void @llvm.dbg.value(metadata double %0, metadata !334, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !335, metadata !DIExpression()), !dbg !347
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !348
  tail call void @llvm.dbg.value(metadata double %4, metadata !336, metadata !DIExpression()), !dbg !347
  %5 = fcmp olt double %4, 0x3E60000000000000, !dbg !349
  br i1 %5, label %6, label %10, !dbg !350

6:                                                ; preds = %2
  store double 1.000000e+00, ptr %1, align 8, !dbg !351, !tbaa !136
  %7 = fmul double %4, 5.000000e-01, !dbg !353
  %8 = fmul double %4, %7, !dbg !354
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !355
  store double %8, ptr %9, align 8, !dbg !356, !tbaa !145
  br label %78, !dbg !357

10:                                               ; preds = %2
  %11 = fcmp ugt double %4, 3.000000e+00, !dbg !358
  br i1 %11, label %59, label %12, !dbg !359

12:                                               ; preds = %10
  %13 = fmul double %0, %0, !dbg !360
  %14 = fdiv double %13, 4.500000e+00, !dbg !361
  %15 = fadd double %14, -1.000000e+00, !dbg !362
  call void @llvm.dbg.value(metadata !155, metadata !156, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %15, metadata !164, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata ptr undef, metadata !165, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !167, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !168, metadata !DIExpression()), !dbg !363
  %16 = fmul double %15, 2.000000e+00, !dbg !365
  %17 = fadd double %16, 1.000000e+00, !dbg !366
  %18 = fadd double %17, -1.000000e+00, !dbg !367
  %19 = fmul double %18, 5.000000e-01, !dbg !368
  call void @llvm.dbg.value(metadata double %19, metadata !169, metadata !DIExpression()), !dbg !363
  %20 = fmul double %19, 2.000000e+00, !dbg !369
  call void @llvm.dbg.value(metadata double %20, metadata !170, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !171, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i32 11, metadata !166, metadata !DIExpression()), !dbg !363
  br label %21, !dbg !370

21:                                               ; preds = %21, %12
  %22 = phi i64 [ 11, %12 ], [ %37, %21 ]
  %23 = phi double [ 0.000000e+00, %12 ], [ %30, %21 ]
  %24 = phi double [ 0.000000e+00, %12 ], [ %36, %21 ]
  %25 = phi double [ 0.000000e+00, %12 ], [ %23, %21 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !166, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %23, metadata !167, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %24, metadata !171, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %25, metadata !168, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %23, metadata !172, metadata !DIExpression()), !dbg !371
  %26 = fmul double %20, %23, !dbg !372
  %27 = fsub double %26, %25, !dbg !373
  %28 = getelementptr inbounds double, ptr @bi0_data, i64 %22, !dbg !374
  %29 = load double, ptr %28, align 8, !dbg !374, !tbaa !190
  %30 = fadd double %27, %29, !dbg !375
  call void @llvm.dbg.value(metadata double %30, metadata !167, metadata !DIExpression()), !dbg !363
  %31 = tail call double @llvm.fabs.f64(double %26), !dbg !376
  %32 = tail call double @llvm.fabs.f64(double %25), !dbg !377
  %33 = fadd double %31, %32, !dbg !378
  %34 = tail call double @llvm.fabs.f64(double %29), !dbg !379
  %35 = fadd double %33, %34, !dbg !380
  %36 = fadd double %24, %35, !dbg !381
  call void @llvm.dbg.value(metadata double %36, metadata !171, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %23, metadata !168, metadata !DIExpression()), !dbg !363
  %37 = add nsw i64 %22, -1, !dbg !382
  call void @llvm.dbg.value(metadata i64 %37, metadata !166, metadata !DIExpression()), !dbg !363
  %38 = icmp ugt i64 %22, 1, !dbg !383
  br i1 %38, label %21, label %39, !dbg !370, !llvm.loop !384

39:                                               ; preds = %21
  call void @llvm.dbg.value(metadata double %30, metadata !176, metadata !DIExpression()), !dbg !386
  %40 = fmul double %19, %30, !dbg !387
  %41 = fsub double %40, %23, !dbg !388
  %42 = fadd double %41, 0xBFA39C6A8F343DC8, !dbg !389
  call void @llvm.dbg.value(metadata double %42, metadata !167, metadata !DIExpression()), !dbg !363
  %43 = tail call double @llvm.fabs.f64(double %40), !dbg !390
  %44 = tail call double @llvm.fabs.f64(double %23), !dbg !391
  %45 = fadd double %44, %43, !dbg !392
  %46 = fadd double %45, 0x3FA39C6A8F343DC8, !dbg !393
  %47 = fadd double %36, %46, !dbg !394
  call void @llvm.dbg.value(metadata double %47, metadata !171, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata double %42, metadata !337, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !395
  %48 = fmul double %47, 0x3CB0000000000000, !dbg !396
  %49 = fadd double %48, 2.450000e-18, !dbg !397
  tail call void @llvm.dbg.value(metadata double %49, metadata !337, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !395
  %50 = fadd double %42, 2.750000e+00, !dbg !398
  store double %50, ptr %1, align 8, !dbg !399, !tbaa !136
  %51 = tail call double @llvm.fabs.f64(double %42), !dbg !400
  %52 = fadd double %51, 2.750000e+00, !dbg !401
  %53 = fmul double %52, 0x3CB0000000000000, !dbg !402
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !403
  %55 = fadd double %53, %49, !dbg !404
  %56 = tail call double @llvm.fabs.f64(double %50), !dbg !405
  %57 = fmul double %56, 0x3CC0000000000000, !dbg !406
  %58 = fadd double %57, %55, !dbg !407
  store double %58, ptr %54, align 8, !dbg !407, !tbaa !145
  br label %78

59:                                               ; preds = %10
  %60 = fcmp olt double %4, 0x40862642FEFA39EF, !dbg !408
  br i1 %60, label %61, label %76, !dbg !409

61:                                               ; preds = %59
  %62 = tail call double @exp(double noundef %4) #7, !dbg !410
  tail call void @llvm.dbg.value(metadata double %62, metadata !341, metadata !DIExpression()), !dbg !346
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !411
  %63 = call i32 @gsl_sf_bessel_I0_scaled_e(double noundef %0, ptr noundef nonnull %3), !dbg !412
  %64 = load double, ptr %3, align 8, !dbg !413, !tbaa !136
  %65 = fmul double %62, %64, !dbg !414
  store double %65, ptr %1, align 8, !dbg !415, !tbaa !136
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !416
  %67 = load double, ptr %66, align 8, !dbg !416, !tbaa !145
  %68 = fmul double %62, %67, !dbg !417
  %69 = fmul double %4, 0x3CB0000000000000, !dbg !418
  %70 = tail call double @llvm.fabs.f64(double %65), !dbg !419
  %71 = fmul double %69, %70, !dbg !420
  %72 = fadd double %68, %71, !dbg !421
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !422
  %74 = fmul double %70, 0x3CC0000000000000, !dbg !423
  %75 = fadd double %74, %72, !dbg !424
  store double %75, ptr %73, align 8, !dbg !424, !tbaa !145
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !425
  br label %78

76:                                               ; preds = %59
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !426, !tbaa !136
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !426
  store double 0x7FF0000000000000, ptr %77, align 8, !dbg !426, !tbaa !145
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 216, i32 noundef 16) #7, !dbg !429
  br label %78, !dbg !429

78:                                               ; preds = %76, %61, %39, %6
  %79 = phi i32 [ 0, %6 ], [ 0, %39 ], [ 0, %61 ], [ 16, %76 ], !dbg !431
  ret i32 %79, !dbg !432
}

declare !dbg !433 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_bessel_I0_scaled(double noundef %0) local_unnamed_addr #0 !dbg !438 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !445
  call void @llvm.dbg.assign(metadata i1 undef, metadata !443, metadata !DIExpression(), metadata !445, metadata ptr %2, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata double %0, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !447
  %3 = call i32 @gsl_sf_bessel_I0_scaled_e(double noundef %0, ptr noundef nonnull %2), !dbg !447
  tail call void @llvm.dbg.value(metadata i32 0, metadata !444, metadata !DIExpression()), !dbg !446
  %4 = load double, ptr %2, align 8, !dbg !447, !tbaa !136
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !448
  ret double %4, !dbg !448
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_I0(double noundef %0) local_unnamed_addr #4 !dbg !449 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !454
  call void @llvm.dbg.assign(metadata i1 undef, metadata !452, metadata !DIExpression(), metadata !454, metadata ptr %2, metadata !DIExpression()), !dbg !455
  tail call void @llvm.dbg.value(metadata double %0, metadata !451, metadata !DIExpression()), !dbg !455
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !456
  %3 = call i32 @gsl_sf_bessel_I0_e(double noundef %0, ptr noundef nonnull %2), !dbg !456, !range !457
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !453, metadata !DIExpression()), !dbg !455
  %4 = icmp eq i32 %3, 0, !dbg !458
  br i1 %4, label %6, label %5, !dbg !456

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 231, i32 noundef %3) #7, !dbg !460
  br label %6, !dbg !460

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !456, !tbaa !136
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !463
  ret double %7, !dbg !463
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_I0.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "a8dca5438f3343f7ab0c16cb4be7ee9c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 32)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "bi0_data", scope: !19, file: !2, line: 59, type: !93, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !20, globals: !60, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 39, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!25 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!26 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!27 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!28 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!29 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!30 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!31 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!32 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!33 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!34 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!35 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!36 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!37 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!38 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!39 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!40 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!41 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!42 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!43 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!44 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!45 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!46 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!47 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!48 = !DIEnumerator(name: "GSL_ESING", value: 21)
!49 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!50 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!51 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!52 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!53 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!54 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!55 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!56 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!57 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!58 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!59 = !DIEnumerator(name: "GSL_EOF", value: 32)
!60 = !{!0, !7, !61, !12, !66, !17, !79, !81, !86, !88}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 39)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "bi0_cs", scope: !19, file: !2, line: 73, type: !68, isLocal: true, isDefinition: true)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !69, line: 29, baseType: !70)
!69 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !69, line: 22, size: 320, elements: !71)
!71 = !{!72, !75, !76, !77, !78}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !70, file: !69, line: 23, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !70, file: !69, line: 24, baseType: !23, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !70, file: !69, line: 25, baseType: !74, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !70, file: !69, line: 26, baseType: !74, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !70, file: !69, line: 27, baseType: !23, size: 32, offset: 256)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "ai0_cs", scope: !19, file: !2, line: 103, type: !68, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "ai0_data", scope: !19, file: !2, line: 80, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1344, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 21)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "ai02_cs", scope: !19, file: !2, line: 134, type: !68, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "ai02_data", scope: !19, file: !2, line: 110, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1408, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 22)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 768, elements: !10)
!94 = !{i32 7, !"Dwarf Version", i32 5}
!95 = !{i32 2, !"Debug Info Version", i32 3}
!96 = !{i32 1, !"wchar_size", i32 4}
!97 = !{i32 8, !"PIC Level", i32 2}
!98 = !{i32 7, !"PIE Level", i32 2}
!99 = !{i32 7, !"uwtable", i32 2}
!100 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!101 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!102 = distinct !DISubprogram(name: "gsl_sf_bessel_I0_scaled_e", scope: !2, file: !2, line: 144, type: !103, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !113)
!103 = !DISubroutineType(types: !104)
!104 = !{!23, !105, !106}
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !108, line: 41, baseType: !109)
!108 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !108, line: 37, size: 128, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !109, file: !108, line: 38, baseType: !74, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !109, file: !108, line: 39, baseType: !74, size: 64, offset: 64)
!113 = !{!114, !115, !116, !117, !121, !122, !125, !126, !128}
!114 = !DILocalVariable(name: "x", arg: 1, scope: !102, file: !2, line: 144, type: !105)
!115 = !DILocalVariable(name: "result", arg: 2, scope: !102, file: !2, line: 144, type: !106)
!116 = !DILocalVariable(name: "y", scope: !102, file: !2, line: 146, type: !74)
!117 = !DILocalVariable(name: "ey", scope: !118, file: !2, line: 156, type: !105)
!118 = distinct !DILexicalBlock(scope: !119, file: !2, line: 155, column: 21)
!119 = distinct !DILexicalBlock(scope: !120, file: !2, line: 155, column: 11)
!120 = distinct !DILexicalBlock(scope: !102, file: !2, line: 150, column: 6)
!121 = !DILocalVariable(name: "c", scope: !118, file: !2, line: 157, type: !107)
!122 = !DILocalVariable(name: "sy", scope: !123, file: !2, line: 164, type: !105)
!123 = distinct !DILexicalBlock(scope: !124, file: !2, line: 163, column: 21)
!124 = distinct !DILexicalBlock(scope: !119, file: !2, line: 163, column: 11)
!125 = !DILocalVariable(name: "c", scope: !123, file: !2, line: 165, type: !107)
!126 = !DILocalVariable(name: "sy", scope: !127, file: !2, line: 174, type: !105)
!127 = distinct !DILexicalBlock(scope: !124, file: !2, line: 173, column: 8)
!128 = !DILocalVariable(name: "c", scope: !127, file: !2, line: 175, type: !107)
!129 = !DILocation(line: 0, scope: !102)
!130 = !DILocation(line: 146, column: 14, scope: !102)
!131 = !DILocation(line: 150, column: 8, scope: !120)
!132 = !DILocation(line: 150, column: 6, scope: !102)
!133 = !DILocation(line: 151, column: 23, scope: !134)
!134 = distinct !DILexicalBlock(scope: !120, file: !2, line: 150, column: 38)
!135 = !DILocation(line: 151, column: 17, scope: !134)
!136 = !{!137, !138, i64 0}
!137 = !{!"gsl_sf_result_struct", !138, i64 0, !138, i64 8}
!138 = !{!"double", !139, i64 0}
!139 = !{!"omnipotent char", !140, i64 0}
!140 = !{!"Simple C/C++ TBAA"}
!141 = !DILocation(line: 152, column: 22, scope: !134)
!142 = !DILocation(line: 152, column: 24, scope: !134)
!143 = !DILocation(line: 152, column: 13, scope: !134)
!144 = !DILocation(line: 152, column: 17, scope: !134)
!145 = !{!137, !138, i64 8}
!146 = !DILocation(line: 153, column: 5, scope: !134)
!147 = !DILocation(line: 155, column: 13, scope: !119)
!148 = !DILocation(line: 155, column: 11, scope: !120)
!149 = !DILocation(line: 156, column: 27, scope: !118)
!150 = !DILocation(line: 156, column: 23, scope: !118)
!151 = !DILocation(line: 0, scope: !118)
!152 = !DILocation(line: 158, column: 27, scope: !118)
!153 = !DILocation(line: 158, column: 29, scope: !118)
!154 = !DILocation(line: 158, column: 33, scope: !118)
!155 = !{}
!156 = !DILocalVariable(name: "cs", arg: 1, scope: !157, file: !158, line: 3, type: !161)
!157 = distinct !DISubprogram(name: "cheb_eval_e", scope: !158, file: !158, line: 3, type: !159, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !163)
!158 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!159 = !DISubroutineType(types: !160)
!160 = !{!23, !161, !105, !106}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!163 = !{!156, !164, !165, !166, !167, !168, !169, !170, !171, !172, !176}
!164 = !DILocalVariable(name: "x", arg: 2, scope: !157, file: !158, line: 4, type: !105)
!165 = !DILocalVariable(name: "result", arg: 3, scope: !157, file: !158, line: 5, type: !106)
!166 = !DILocalVariable(name: "j", scope: !157, file: !158, line: 7, type: !23)
!167 = !DILocalVariable(name: "d", scope: !157, file: !158, line: 8, type: !74)
!168 = !DILocalVariable(name: "dd", scope: !157, file: !158, line: 9, type: !74)
!169 = !DILocalVariable(name: "y", scope: !157, file: !158, line: 11, type: !74)
!170 = !DILocalVariable(name: "y2", scope: !157, file: !158, line: 12, type: !74)
!171 = !DILocalVariable(name: "e", scope: !157, file: !158, line: 14, type: !74)
!172 = !DILocalVariable(name: "temp", scope: !173, file: !158, line: 17, type: !74)
!173 = distinct !DILexicalBlock(scope: !174, file: !158, line: 16, column: 33)
!174 = distinct !DILexicalBlock(scope: !175, file: !158, line: 16, column: 3)
!175 = distinct !DILexicalBlock(scope: !157, file: !158, line: 16, column: 3)
!176 = !DILocalVariable(name: "temp", scope: !177, file: !158, line: 24, type: !74)
!177 = distinct !DILexicalBlock(scope: !157, file: !158, line: 23, column: 3)
!178 = !DILocation(line: 0, scope: !157, inlinedAt: !179)
!179 = distinct !DILocation(line: 158, column: 5, scope: !118)
!180 = !DILocation(line: 11, column: 19, scope: !157, inlinedAt: !179)
!181 = !DILocation(line: 11, column: 22, scope: !157, inlinedAt: !179)
!182 = !DILocation(line: 11, column: 30, scope: !157, inlinedAt: !179)
!183 = !DILocation(line: 11, column: 39, scope: !157, inlinedAt: !179)
!184 = !DILocation(line: 12, column: 19, scope: !157, inlinedAt: !179)
!185 = !DILocation(line: 16, column: 3, scope: !175, inlinedAt: !179)
!186 = !DILocation(line: 0, scope: !173, inlinedAt: !179)
!187 = !DILocation(line: 18, column: 11, scope: !173, inlinedAt: !179)
!188 = !DILocation(line: 18, column: 14, scope: !173, inlinedAt: !179)
!189 = !DILocation(line: 18, column: 21, scope: !173, inlinedAt: !179)
!190 = !{!138, !138, i64 0}
!191 = !DILocation(line: 18, column: 19, scope: !173, inlinedAt: !179)
!192 = !DILocation(line: 19, column: 10, scope: !173, inlinedAt: !179)
!193 = !DILocation(line: 19, column: 26, scope: !173, inlinedAt: !179)
!194 = !DILocation(line: 19, column: 24, scope: !173, inlinedAt: !179)
!195 = !DILocation(line: 19, column: 37, scope: !173, inlinedAt: !179)
!196 = !DILocation(line: 19, column: 35, scope: !173, inlinedAt: !179)
!197 = !DILocation(line: 19, column: 7, scope: !173, inlinedAt: !179)
!198 = !DILocation(line: 16, column: 29, scope: !174, inlinedAt: !179)
!199 = !DILocation(line: 16, column: 23, scope: !174, inlinedAt: !179)
!200 = distinct !{!200, !185, !201, !202}
!201 = !DILocation(line: 21, column: 3, scope: !175, inlinedAt: !179)
!202 = !{!"llvm.loop.mustprogress"}
!203 = !DILocation(line: 0, scope: !177, inlinedAt: !179)
!204 = !DILocation(line: 25, column: 10, scope: !177, inlinedAt: !179)
!205 = !DILocation(line: 25, column: 13, scope: !177, inlinedAt: !179)
!206 = !DILocation(line: 25, column: 18, scope: !177, inlinedAt: !179)
!207 = !DILocation(line: 26, column: 10, scope: !177, inlinedAt: !179)
!208 = !DILocation(line: 26, column: 25, scope: !177, inlinedAt: !179)
!209 = !DILocation(line: 26, column: 23, scope: !177, inlinedAt: !179)
!210 = !DILocation(line: 26, column: 34, scope: !177, inlinedAt: !179)
!211 = !DILocation(line: 26, column: 7, scope: !177, inlinedAt: !179)
!212 = !DILocation(line: 30, column: 33, scope: !157, inlinedAt: !179)
!213 = !DILocation(line: 30, column: 37, scope: !157, inlinedAt: !179)
!214 = !DILocation(line: 159, column: 30, scope: !118)
!215 = !DILocation(line: 159, column: 22, scope: !118)
!216 = !DILocation(line: 159, column: 17, scope: !118)
!217 = !DILocation(line: 160, column: 37, scope: !118)
!218 = !DILocation(line: 160, column: 35, scope: !118)
!219 = !DILocation(line: 160, column: 60, scope: !118)
!220 = !DILocation(line: 160, column: 55, scope: !118)
!221 = !DILocation(line: 160, column: 13, scope: !118)
!222 = !DILocation(line: 160, column: 17, scope: !118)
!223 = !DILocation(line: 163, column: 13, scope: !124)
!224 = !DILocation(line: 0, scope: !124)
!225 = !DILocation(line: 163, column: 11, scope: !119)
!226 = !DILocation(line: 0, scope: !123)
!227 = !DILocation(line: 166, column: 31, scope: !123)
!228 = !DILocation(line: 166, column: 33, scope: !123)
!229 = !DILocation(line: 166, column: 39, scope: !123)
!230 = !DILocation(line: 0, scope: !157, inlinedAt: !231)
!231 = distinct !DILocation(line: 166, column: 5, scope: !123)
!232 = !DILocation(line: 11, column: 19, scope: !157, inlinedAt: !231)
!233 = !DILocation(line: 11, column: 22, scope: !157, inlinedAt: !231)
!234 = !DILocation(line: 11, column: 30, scope: !157, inlinedAt: !231)
!235 = !DILocation(line: 11, column: 39, scope: !157, inlinedAt: !231)
!236 = !DILocation(line: 12, column: 19, scope: !157, inlinedAt: !231)
!237 = !DILocation(line: 16, column: 3, scope: !175, inlinedAt: !231)
!238 = !DILocation(line: 0, scope: !173, inlinedAt: !231)
!239 = !DILocation(line: 18, column: 11, scope: !173, inlinedAt: !231)
!240 = !DILocation(line: 18, column: 14, scope: !173, inlinedAt: !231)
!241 = !DILocation(line: 18, column: 21, scope: !173, inlinedAt: !231)
!242 = !DILocation(line: 18, column: 19, scope: !173, inlinedAt: !231)
!243 = !DILocation(line: 19, column: 10, scope: !173, inlinedAt: !231)
!244 = !DILocation(line: 19, column: 26, scope: !173, inlinedAt: !231)
!245 = !DILocation(line: 19, column: 24, scope: !173, inlinedAt: !231)
!246 = !DILocation(line: 19, column: 37, scope: !173, inlinedAt: !231)
!247 = !DILocation(line: 19, column: 35, scope: !173, inlinedAt: !231)
!248 = !DILocation(line: 19, column: 7, scope: !173, inlinedAt: !231)
!249 = !DILocation(line: 16, column: 29, scope: !174, inlinedAt: !231)
!250 = !DILocation(line: 16, column: 23, scope: !174, inlinedAt: !231)
!251 = distinct !{!251, !237, !252, !202}
!252 = !DILocation(line: 21, column: 3, scope: !175, inlinedAt: !231)
!253 = !DILocation(line: 0, scope: !177, inlinedAt: !231)
!254 = !DILocation(line: 25, column: 10, scope: !177, inlinedAt: !231)
!255 = !DILocation(line: 25, column: 13, scope: !177, inlinedAt: !231)
!256 = !DILocation(line: 25, column: 18, scope: !177, inlinedAt: !231)
!257 = !DILocation(line: 26, column: 10, scope: !177, inlinedAt: !231)
!258 = !DILocation(line: 26, column: 25, scope: !177, inlinedAt: !231)
!259 = !DILocation(line: 26, column: 23, scope: !177, inlinedAt: !231)
!260 = !DILocation(line: 26, column: 34, scope: !177, inlinedAt: !231)
!261 = !DILocation(line: 26, column: 7, scope: !177, inlinedAt: !231)
!262 = !DILocation(line: 30, column: 33, scope: !157, inlinedAt: !231)
!263 = !DILocation(line: 30, column: 37, scope: !157, inlinedAt: !231)
!264 = !DILocation(line: 167, column: 27, scope: !123)
!265 = !DILocation(line: 167, column: 36, scope: !123)
!266 = !DILocation(line: 167, column: 18, scope: !123)
!267 = !DILocation(line: 168, column: 53, scope: !123)
!268 = !DILocation(line: 168, column: 51, scope: !123)
!269 = !DILocation(line: 168, column: 42, scope: !123)
!270 = !DILocation(line: 168, column: 66, scope: !123)
!271 = !DILocation(line: 168, column: 13, scope: !123)
!272 = !DILocation(line: 169, column: 26, scope: !123)
!273 = !DILocation(line: 169, column: 17, scope: !123)
!274 = !DILocation(line: 170, column: 44, scope: !123)
!275 = !DILocation(line: 170, column: 42, scope: !123)
!276 = !DILocation(line: 170, column: 17, scope: !123)
!277 = !DILocation(line: 0, scope: !127)
!278 = !DILocation(line: 176, column: 31, scope: !127)
!279 = !DILocation(line: 176, column: 33, scope: !127)
!280 = !DILocation(line: 0, scope: !157, inlinedAt: !281)
!281 = distinct !DILocation(line: 176, column: 5, scope: !127)
!282 = !DILocation(line: 11, column: 19, scope: !157, inlinedAt: !281)
!283 = !DILocation(line: 11, column: 22, scope: !157, inlinedAt: !281)
!284 = !DILocation(line: 11, column: 30, scope: !157, inlinedAt: !281)
!285 = !DILocation(line: 11, column: 39, scope: !157, inlinedAt: !281)
!286 = !DILocation(line: 12, column: 19, scope: !157, inlinedAt: !281)
!287 = !DILocation(line: 16, column: 3, scope: !175, inlinedAt: !281)
!288 = !DILocation(line: 0, scope: !173, inlinedAt: !281)
!289 = !DILocation(line: 18, column: 11, scope: !173, inlinedAt: !281)
!290 = !DILocation(line: 18, column: 14, scope: !173, inlinedAt: !281)
!291 = !DILocation(line: 18, column: 21, scope: !173, inlinedAt: !281)
!292 = !DILocation(line: 18, column: 19, scope: !173, inlinedAt: !281)
!293 = !DILocation(line: 19, column: 10, scope: !173, inlinedAt: !281)
!294 = !DILocation(line: 19, column: 26, scope: !173, inlinedAt: !281)
!295 = !DILocation(line: 19, column: 24, scope: !173, inlinedAt: !281)
!296 = !DILocation(line: 19, column: 37, scope: !173, inlinedAt: !281)
!297 = !DILocation(line: 19, column: 35, scope: !173, inlinedAt: !281)
!298 = !DILocation(line: 19, column: 7, scope: !173, inlinedAt: !281)
!299 = !DILocation(line: 16, column: 29, scope: !174, inlinedAt: !281)
!300 = !DILocation(line: 16, column: 23, scope: !174, inlinedAt: !281)
!301 = distinct !{!301, !287, !302, !202}
!302 = !DILocation(line: 21, column: 3, scope: !175, inlinedAt: !281)
!303 = !DILocation(line: 0, scope: !177, inlinedAt: !281)
!304 = !DILocation(line: 25, column: 10, scope: !177, inlinedAt: !281)
!305 = !DILocation(line: 25, column: 13, scope: !177, inlinedAt: !281)
!306 = !DILocation(line: 25, column: 18, scope: !177, inlinedAt: !281)
!307 = !DILocation(line: 26, column: 10, scope: !177, inlinedAt: !281)
!308 = !DILocation(line: 26, column: 25, scope: !177, inlinedAt: !281)
!309 = !DILocation(line: 26, column: 23, scope: !177, inlinedAt: !281)
!310 = !DILocation(line: 26, column: 34, scope: !177, inlinedAt: !281)
!311 = !DILocation(line: 26, column: 7, scope: !177, inlinedAt: !281)
!312 = !DILocation(line: 30, column: 33, scope: !157, inlinedAt: !281)
!313 = !DILocation(line: 30, column: 37, scope: !157, inlinedAt: !281)
!314 = !DILocation(line: 177, column: 26, scope: !127)
!315 = !DILocation(line: 177, column: 35, scope: !127)
!316 = !DILocation(line: 177, column: 17, scope: !127)
!317 = !DILocation(line: 178, column: 53, scope: !127)
!318 = !DILocation(line: 178, column: 51, scope: !127)
!319 = !DILocation(line: 178, column: 42, scope: !127)
!320 = !DILocation(line: 178, column: 66, scope: !127)
!321 = !DILocation(line: 178, column: 13, scope: !127)
!322 = !DILocation(line: 179, column: 26, scope: !127)
!323 = !DILocation(line: 179, column: 17, scope: !127)
!324 = !DILocation(line: 180, column: 44, scope: !127)
!325 = !DILocation(line: 180, column: 42, scope: !127)
!326 = !DILocation(line: 180, column: 17, scope: !127)
!327 = !DILocation(line: 183, column: 1, scope: !102)
!328 = !DISubprogram(name: "exp", scope: !329, file: !329, line: 95, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!330 = !DISubroutineType(types: !331)
!331 = !{!74, !74}
!332 = distinct !DISubprogram(name: "gsl_sf_bessel_I0_e", scope: !2, file: !2, line: 186, type: !103, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !333)
!333 = !{!334, !335, !336, !337, !341, !344}
!334 = !DILocalVariable(name: "x", arg: 1, scope: !332, file: !2, line: 186, type: !105)
!335 = !DILocalVariable(name: "result", arg: 2, scope: !332, file: !2, line: 186, type: !106)
!336 = !DILocalVariable(name: "y", scope: !332, file: !2, line: 188, type: !74)
!337 = !DILocalVariable(name: "c", scope: !338, file: !2, line: 198, type: !107)
!338 = distinct !DILexicalBlock(scope: !339, file: !2, line: 197, column: 21)
!339 = distinct !DILexicalBlock(scope: !340, file: !2, line: 197, column: 11)
!340 = distinct !DILexicalBlock(scope: !332, file: !2, line: 192, column: 6)
!341 = !DILocalVariable(name: "ey", scope: !342, file: !2, line: 207, type: !105)
!342 = distinct !DILexicalBlock(scope: !343, file: !2, line: 206, column: 38)
!343 = distinct !DILexicalBlock(scope: !339, file: !2, line: 206, column: 11)
!344 = !DILocalVariable(name: "b_scaled", scope: !342, file: !2, line: 208, type: !107)
!345 = distinct !DIAssignID()
!346 = !DILocation(line: 0, scope: !342)
!347 = !DILocation(line: 0, scope: !332)
!348 = !DILocation(line: 188, column: 14, scope: !332)
!349 = !DILocation(line: 192, column: 8, scope: !340)
!350 = !DILocation(line: 192, column: 6, scope: !332)
!351 = !DILocation(line: 193, column: 17, scope: !352)
!352 = distinct !DILexicalBlock(scope: !340, file: !2, line: 192, column: 38)
!353 = !DILocation(line: 194, column: 22, scope: !352)
!354 = !DILocation(line: 194, column: 24, scope: !352)
!355 = !DILocation(line: 194, column: 13, scope: !352)
!356 = !DILocation(line: 194, column: 17, scope: !352)
!357 = !DILocation(line: 195, column: 5, scope: !352)
!358 = !DILocation(line: 197, column: 13, scope: !339)
!359 = !DILocation(line: 197, column: 11, scope: !340)
!360 = !DILocation(line: 199, column: 27, scope: !338)
!361 = !DILocation(line: 199, column: 29, scope: !338)
!362 = !DILocation(line: 199, column: 33, scope: !338)
!363 = !DILocation(line: 0, scope: !157, inlinedAt: !364)
!364 = distinct !DILocation(line: 199, column: 5, scope: !338)
!365 = !DILocation(line: 11, column: 19, scope: !157, inlinedAt: !364)
!366 = !DILocation(line: 11, column: 22, scope: !157, inlinedAt: !364)
!367 = !DILocation(line: 11, column: 30, scope: !157, inlinedAt: !364)
!368 = !DILocation(line: 11, column: 39, scope: !157, inlinedAt: !364)
!369 = !DILocation(line: 12, column: 19, scope: !157, inlinedAt: !364)
!370 = !DILocation(line: 16, column: 3, scope: !175, inlinedAt: !364)
!371 = !DILocation(line: 0, scope: !173, inlinedAt: !364)
!372 = !DILocation(line: 18, column: 11, scope: !173, inlinedAt: !364)
!373 = !DILocation(line: 18, column: 14, scope: !173, inlinedAt: !364)
!374 = !DILocation(line: 18, column: 21, scope: !173, inlinedAt: !364)
!375 = !DILocation(line: 18, column: 19, scope: !173, inlinedAt: !364)
!376 = !DILocation(line: 19, column: 10, scope: !173, inlinedAt: !364)
!377 = !DILocation(line: 19, column: 26, scope: !173, inlinedAt: !364)
!378 = !DILocation(line: 19, column: 24, scope: !173, inlinedAt: !364)
!379 = !DILocation(line: 19, column: 37, scope: !173, inlinedAt: !364)
!380 = !DILocation(line: 19, column: 35, scope: !173, inlinedAt: !364)
!381 = !DILocation(line: 19, column: 7, scope: !173, inlinedAt: !364)
!382 = !DILocation(line: 16, column: 29, scope: !174, inlinedAt: !364)
!383 = !DILocation(line: 16, column: 23, scope: !174, inlinedAt: !364)
!384 = distinct !{!384, !370, !385, !202}
!385 = !DILocation(line: 21, column: 3, scope: !175, inlinedAt: !364)
!386 = !DILocation(line: 0, scope: !177, inlinedAt: !364)
!387 = !DILocation(line: 25, column: 10, scope: !177, inlinedAt: !364)
!388 = !DILocation(line: 25, column: 13, scope: !177, inlinedAt: !364)
!389 = !DILocation(line: 25, column: 18, scope: !177, inlinedAt: !364)
!390 = !DILocation(line: 26, column: 10, scope: !177, inlinedAt: !364)
!391 = !DILocation(line: 26, column: 25, scope: !177, inlinedAt: !364)
!392 = !DILocation(line: 26, column: 23, scope: !177, inlinedAt: !364)
!393 = !DILocation(line: 26, column: 34, scope: !177, inlinedAt: !364)
!394 = !DILocation(line: 26, column: 7, scope: !177, inlinedAt: !364)
!395 = !DILocation(line: 0, scope: !338)
!396 = !DILocation(line: 30, column: 33, scope: !157, inlinedAt: !364)
!397 = !DILocation(line: 30, column: 37, scope: !157, inlinedAt: !364)
!398 = !DILocation(line: 200, column: 25, scope: !338)
!399 = !DILocation(line: 200, column: 18, scope: !338)
!400 = !DILocation(line: 201, column: 46, scope: !338)
!401 = !DILocation(line: 201, column: 44, scope: !338)
!402 = !DILocation(line: 201, column: 36, scope: !338)
!403 = !DILocation(line: 201, column: 13, scope: !338)
!404 = !DILocation(line: 202, column: 17, scope: !338)
!405 = !DILocation(line: 203, column: 44, scope: !338)
!406 = !DILocation(line: 203, column: 42, scope: !338)
!407 = !DILocation(line: 203, column: 17, scope: !338)
!408 = !DILocation(line: 206, column: 13, scope: !343)
!409 = !DILocation(line: 206, column: 11, scope: !339)
!410 = !DILocation(line: 207, column: 23, scope: !342)
!411 = !DILocation(line: 208, column: 5, scope: !342)
!412 = !DILocation(line: 209, column: 5, scope: !342)
!413 = !DILocation(line: 210, column: 34, scope: !342)
!414 = !DILocation(line: 210, column: 23, scope: !342)
!415 = !DILocation(line: 210, column: 18, scope: !342)
!416 = !DILocation(line: 211, column: 34, scope: !342)
!417 = !DILocation(line: 211, column: 23, scope: !342)
!418 = !DILocation(line: 211, column: 41, scope: !342)
!419 = !DILocation(line: 211, column: 58, scope: !342)
!420 = !DILocation(line: 211, column: 57, scope: !342)
!421 = !DILocation(line: 211, column: 38, scope: !342)
!422 = !DILocation(line: 211, column: 13, scope: !342)
!423 = !DILocation(line: 212, column: 42, scope: !342)
!424 = !DILocation(line: 212, column: 17, scope: !342)
!425 = !DILocation(line: 214, column: 3, scope: !343)
!426 = !DILocation(line: 216, column: 5, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !2, line: 216, column: 5)
!428 = distinct !DILexicalBlock(scope: !343, file: !2, line: 215, column: 8)
!429 = !DILocation(line: 216, column: 5, scope: !430)
!430 = distinct !DILexicalBlock(scope: !427, file: !2, line: 216, column: 5)
!431 = !DILocation(line: 0, scope: !340)
!432 = !DILocation(line: 218, column: 1, scope: !332)
!433 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !436, !436, !23, !23}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!438 = distinct !DISubprogram(name: "gsl_sf_bessel_I0_scaled", scope: !2, file: !2, line: 224, type: !439, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!74, !105}
!441 = !{!442, !443, !444}
!442 = !DILocalVariable(name: "x", arg: 1, scope: !438, file: !2, line: 224, type: !105)
!443 = !DILocalVariable(name: "result", scope: !438, file: !2, line: 226, type: !107)
!444 = !DILocalVariable(name: "status", scope: !438, file: !2, line: 226, type: !23)
!445 = distinct !DIAssignID()
!446 = !DILocation(line: 0, scope: !438)
!447 = !DILocation(line: 226, column: 3, scope: !438)
!448 = !DILocation(line: 227, column: 1, scope: !438)
!449 = distinct !DISubprogram(name: "gsl_sf_bessel_I0", scope: !2, file: !2, line: 229, type: !439, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !450)
!450 = !{!451, !452, !453}
!451 = !DILocalVariable(name: "x", arg: 1, scope: !449, file: !2, line: 229, type: !105)
!452 = !DILocalVariable(name: "result", scope: !449, file: !2, line: 231, type: !107)
!453 = !DILocalVariable(name: "status", scope: !449, file: !2, line: 231, type: !23)
!454 = distinct !DIAssignID()
!455 = !DILocation(line: 0, scope: !449)
!456 = !DILocation(line: 231, column: 3, scope: !449)
!457 = !{i32 0, i32 17}
!458 = !DILocation(line: 231, column: 3, scope: !459)
!459 = distinct !DILexicalBlock(scope: !449, file: !2, line: 231, column: 3)
!460 = !DILocation(line: 231, column: 3, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !2, line: 231, column: 3)
!462 = distinct !DILexicalBlock(scope: !459, file: !2, line: 231, column: 3)
!463 = !DILocation(line: 232, column: 1, scope: !449)
