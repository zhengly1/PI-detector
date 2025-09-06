; ModuleID = 'bessel_I0.ll'
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
  br i1 %4, label %5, label %9, !dbg !132

5:                                                ; preds = %2
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %3), !dbg !133
  store double %handler_result, ptr %1, align 8, !dbg !133, !tbaa !135
  %6 = fmul double %3, 5.000000e-01, !dbg !140
  %7 = fmul double %3, %6, !dbg !141
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !142
  store double %7, ptr %8, align 8, !dbg !143, !tbaa !144
  br label %108, !dbg !145

9:                                                ; preds = %2
  %10 = fcmp ugt double %3, 3.000000e+00, !dbg !146
  br i1 %10, label %42, label %11, !dbg !147

11:                                               ; preds = %9
  %12 = fneg double %3, !dbg !148
  %13 = tail call double @exp(double noundef %12) #6, !dbg !149
  tail call void @llvm.dbg.value(metadata double %13, metadata !117, metadata !DIExpression()), !dbg !150
  %14 = fmul double %0, %0, !dbg !151
  %15 = fdiv double %14, 4.500000e+00, !dbg !152
  %handler_result1 = call double @fAddHandlerDouble(double %15, double -1.000000e+00), !dbg !153
  call void @llvm.dbg.value(metadata !177, metadata !161, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !162, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata ptr undef, metadata !163, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !165, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !166, metadata !DIExpression()), !dbg !178
  %16 = fmul double %handler_result1, 2.000000e+00, !dbg !153
  %handler_result2 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !179
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !180
  %17 = fmul double %handler_result3, 5.000000e-01, !dbg !180
  call void @llvm.dbg.value(metadata double %17, metadata !167, metadata !DIExpression()), !dbg !178
  %18 = fmul double %17, 2.000000e+00, !dbg !181
  call void @llvm.dbg.value(metadata double %18, metadata !168, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !169, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i32 11, metadata !164, metadata !DIExpression()), !dbg !178
  br label %19, !dbg !182

19:                                               ; preds = %19, %11
  %20 = phi i64 [ 11, %11 ], [ %30, %19 ]
  %21 = phi double [ 0.000000e+00, %11 ], [ %handler_result5, %19 ]
  %22 = phi double [ 0.000000e+00, %11 ], [ %handler_result8, %19 ]
  %23 = phi double [ 0.000000e+00, %11 ], [ %21, %19 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !164, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %21, metadata !165, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %22, metadata !169, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %23, metadata !166, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %21, metadata !170, metadata !DIExpression()), !dbg !183
  %24 = fmul double %18, %21, !dbg !184
  %handler_result4 = call double @fSubHandlerDouble(double %24, double %23), !dbg !185
  %25 = getelementptr inbounds double, ptr @bi0_data, i64 %20, !dbg !185
  %26 = load double, ptr %25, align 8, !dbg !185, !tbaa !186
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %26), !dbg !187
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !165, metadata !DIExpression()), !dbg !178
  %27 = tail call double @llvm.fabs.f64(double %24), !dbg !187
  %28 = tail call double @llvm.fabs.f64(double %23), !dbg !188
  %handler_result6 = call double @fAddHandlerDouble(double %27, double %28), !dbg !189
  %29 = tail call double @llvm.fabs.f64(double %26), !dbg !189
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %29), !dbg !190
  %handler_result8 = call double @fAddHandlerDouble(double %22, double %handler_result7), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !169, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %21, metadata !166, metadata !DIExpression()), !dbg !178
  %30 = add nsw i64 %20, -1, !dbg !191
  call void @llvm.dbg.value(metadata i64 %30, metadata !164, metadata !DIExpression()), !dbg !178
  %31 = icmp ugt i64 %20, 1, !dbg !192
  br i1 %31, label %19, label %32, !dbg !182, !llvm.loop !193

32:                                               ; preds = %19
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !174, metadata !DIExpression()), !dbg !196
  %33 = fmul double %17, %handler_result5, !dbg !197
  %handler_result9 = call double @fSubHandlerDouble(double %33, double %21), !dbg !198
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0xBFA39C6A8F343DC8), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !165, metadata !DIExpression()), !dbg !178
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !199
  %35 = tail call double @llvm.fabs.f64(double %21), !dbg !200
  %handler_result11 = call double @fAddHandlerDouble(double %35, double %34), !dbg !201
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3FA39C6A8F343DC8), !dbg !202
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result12), !dbg !203
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !169, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !121, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !150
  %36 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !203
  %handler_result14 = call double @fAddHandlerDouble(double %36, double 2.450000e-18), !dbg !204
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !121, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !150
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result10, double 2.750000e+00), !dbg !205
  %37 = fmul double %13, %handler_result15, !dbg !205
  store double %37, ptr %1, align 8, !dbg !206, !tbaa !135
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !207
  %39 = fmul double %38, 0x3CB0000000000000, !dbg !208
  %40 = fmul double %13, %handler_result14, !dbg !209
  %handler_result16 = call double @fAddHandlerDouble(double %39, double %40), !dbg !210
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !210
  store double %handler_result16, ptr %41, align 8, !dbg !211, !tbaa !144
  br label %108

42:                                               ; preds = %9
  %43 = fcmp ugt double %3, 8.000000e+00, !dbg !212
  %44 = tail call double @llvm.sqrt.f64(double %3), !dbg !213
  br i1 %43, label %77, label %45, !dbg !214

45:                                               ; preds = %42
  tail call void @llvm.dbg.value(metadata double %44, metadata !122, metadata !DIExpression()), !dbg !215
  %46 = fdiv double 4.800000e+01, %3, !dbg !216
  %handler_result17 = call double @fAddHandlerDouble(double %46, double -1.100000e+01), !dbg !217
  %47 = fdiv double %handler_result17, 5.000000e+00, !dbg !217
  call void @llvm.dbg.value(metadata !177, metadata !161, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata double %47, metadata !162, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata ptr undef, metadata !163, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !165, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !166, metadata !DIExpression()), !dbg !218
  %48 = fmul double %47, 2.000000e+00, !dbg !220
  %handler_result18 = call double @fAddHandlerDouble(double %48, double 1.000000e+00), !dbg !221
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double -1.000000e+00), !dbg !222
  %49 = fmul double %handler_result19, 5.000000e-01, !dbg !222
  call void @llvm.dbg.value(metadata double %49, metadata !167, metadata !DIExpression()), !dbg !218
  %50 = fmul double %49, 2.000000e+00, !dbg !223
  call void @llvm.dbg.value(metadata double %50, metadata !168, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !169, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 20, metadata !164, metadata !DIExpression()), !dbg !218
  br label %51, !dbg !224

51:                                               ; preds = %51, %45
  %52 = phi i64 [ 20, %45 ], [ %62, %51 ]
  %53 = phi double [ 0.000000e+00, %45 ], [ %handler_result21, %51 ]
  %54 = phi double [ 0.000000e+00, %45 ], [ %handler_result24, %51 ]
  %55 = phi double [ 0.000000e+00, %45 ], [ %53, %51 ]
  call void @llvm.dbg.value(metadata i64 %52, metadata !164, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata double %53, metadata !165, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata double %54, metadata !169, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata double %55, metadata !166, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata double %53, metadata !170, metadata !DIExpression()), !dbg !225
  %56 = fmul double %50, %53, !dbg !226
  %handler_result20 = call double @fSubHandlerDouble(double %56, double %55), !dbg !227
  %57 = getelementptr inbounds double, ptr @ai0_data, i64 %52, !dbg !227
  %58 = load double, ptr %57, align 8, !dbg !227, !tbaa !186
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double %58), !dbg !228
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !165, metadata !DIExpression()), !dbg !218
  %59 = tail call double @llvm.fabs.f64(double %56), !dbg !228
  %60 = tail call double @llvm.fabs.f64(double %55), !dbg !229
  %handler_result22 = call double @fAddHandlerDouble(double %59, double %60), !dbg !230
  %61 = tail call double @llvm.fabs.f64(double %58), !dbg !230
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double %61), !dbg !231
  %handler_result24 = call double @fAddHandlerDouble(double %54, double %handler_result23), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !169, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata double %53, metadata !166, metadata !DIExpression()), !dbg !218
  %62 = add nsw i64 %52, -1, !dbg !232
  call void @llvm.dbg.value(metadata i64 %62, metadata !164, metadata !DIExpression()), !dbg !218
  %63 = icmp ugt i64 %52, 1, !dbg !233
  br i1 %63, label %51, label %64, !dbg !224, !llvm.loop !234

64:                                               ; preds = %51
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !174, metadata !DIExpression()), !dbg !236
  %65 = fmul double %49, %handler_result21, !dbg !237
  %handler_result25 = call double @fSubHandlerDouble(double %65, double %53), !dbg !238
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3FA36500F5DD7610), !dbg !239
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !165, metadata !DIExpression()), !dbg !218
  %66 = tail call double @llvm.fabs.f64(double %65), !dbg !239
  %67 = tail call double @llvm.fabs.f64(double %53), !dbg !240
  %handler_result27 = call double @fAddHandlerDouble(double %67, double %66), !dbg !241
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3FA36500F5DD7610), !dbg !242
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result24, double %handler_result28), !dbg !243
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !169, metadata !DIExpression()), !dbg !218
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !125, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !215
  %68 = fmul double %handler_result29, 0x3CB0000000000000, !dbg !243
  %handler_result30 = call double @fAddHandlerDouble(double %68, double 7.000000e-17), !dbg !244
  tail call void @llvm.dbg.value(metadata double %handler_result30, metadata !125, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !215
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result26, double 3.750000e-01), !dbg !245
  %69 = fdiv double %handler_result31, %44, !dbg !245
  store double %69, ptr %1, align 8, !dbg !246, !tbaa !135
  %70 = tail call double @llvm.fabs.f64(double %handler_result26), !dbg !247
  %handler_result32 = call double @fAddHandlerDouble(double %70, double 3.750000e-01), !dbg !248
  %71 = fmul double %handler_result32, 0x3CC0000000000000, !dbg !248
  %72 = fdiv double %71, %44, !dbg !249
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !250
  %74 = fdiv double %handler_result30, %44, !dbg !251
  %handler_result33 = call double @fAddHandlerDouble(double %72, double %74), !dbg !252
  %75 = tail call double @llvm.fabs.f64(double %69), !dbg !252
  %76 = fmul double %75, 0x3CC0000000000000, !dbg !253
  %handler_result34 = call double @fAddHandlerDouble(double %76, double %handler_result33), !dbg !254
  store double %handler_result34, ptr %73, align 8, !dbg !254, !tbaa !144
  br label %108

77:                                               ; preds = %42
  tail call void @llvm.dbg.value(metadata double %44, metadata !126, metadata !DIExpression()), !dbg !255
  %78 = fdiv double 1.600000e+01, %3, !dbg !256
  %handler_result35 = call double @fAddHandlerDouble(double %78, double -1.000000e+00), !dbg !257
  call void @llvm.dbg.value(metadata !177, metadata !161, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !162, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata ptr undef, metadata !163, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !165, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !166, metadata !DIExpression()), !dbg !259
  %79 = fmul double %handler_result35, 2.000000e+00, !dbg !257
  %handler_result36 = call double @fAddHandlerDouble(double %79, double 1.000000e+00), !dbg !260
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double -1.000000e+00), !dbg !261
  %80 = fmul double %handler_result37, 5.000000e-01, !dbg !261
  call void @llvm.dbg.value(metadata double %80, metadata !167, metadata !DIExpression()), !dbg !259
  %81 = fmul double %80, 2.000000e+00, !dbg !262
  call void @llvm.dbg.value(metadata double %81, metadata !168, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !169, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i32 21, metadata !164, metadata !DIExpression()), !dbg !259
  br label %82, !dbg !263

82:                                               ; preds = %82, %77
  %83 = phi i64 [ 21, %77 ], [ %93, %82 ]
  %84 = phi double [ 0.000000e+00, %77 ], [ %handler_result39, %82 ]
  %85 = phi double [ 0.000000e+00, %77 ], [ %handler_result42, %82 ]
  %86 = phi double [ 0.000000e+00, %77 ], [ %84, %82 ]
  call void @llvm.dbg.value(metadata i64 %83, metadata !164, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata double %84, metadata !165, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata double %85, metadata !169, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata double %86, metadata !166, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata double %84, metadata !170, metadata !DIExpression()), !dbg !264
  %87 = fmul double %81, %84, !dbg !265
  %handler_result38 = call double @fSubHandlerDouble(double %87, double %86), !dbg !266
  %88 = getelementptr inbounds double, ptr @ai02_data, i64 %83, !dbg !266
  %89 = load double, ptr %88, align 8, !dbg !266, !tbaa !186
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double %89), !dbg !267
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !165, metadata !DIExpression()), !dbg !259
  %90 = tail call double @llvm.fabs.f64(double %87), !dbg !267
  %91 = tail call double @llvm.fabs.f64(double %86), !dbg !268
  %handler_result40 = call double @fAddHandlerDouble(double %90, double %91), !dbg !269
  %92 = tail call double @llvm.fabs.f64(double %89), !dbg !269
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double %92), !dbg !270
  %handler_result42 = call double @fAddHandlerDouble(double %85, double %handler_result41), !dbg !271
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !169, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata double %84, metadata !166, metadata !DIExpression()), !dbg !259
  %93 = add nsw i64 %83, -1, !dbg !271
  call void @llvm.dbg.value(metadata i64 %93, metadata !164, metadata !DIExpression()), !dbg !259
  %94 = icmp ugt i64 %83, 1, !dbg !272
  br i1 %94, label %82, label %95, !dbg !263, !llvm.loop !273

95:                                               ; preds = %82
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !174, metadata !DIExpression()), !dbg !275
  %96 = fmul double %80, %handler_result39, !dbg !276
  %handler_result43 = call double @fSubHandlerDouble(double %96, double %84), !dbg !277
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 0x3F9BE62ACA809CB5), !dbg !278
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !165, metadata !DIExpression()), !dbg !259
  %97 = tail call double @llvm.fabs.f64(double %96), !dbg !278
  %98 = tail call double @llvm.fabs.f64(double %84), !dbg !279
  %handler_result45 = call double @fAddHandlerDouble(double %98, double %97), !dbg !280
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result45, double 0x3F9BE62ACA809CB5), !dbg !281
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result42, double %handler_result46), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !169, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %handler_result44, metadata !128, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !255
  %99 = fmul double %handler_result47, 0x3CB0000000000000, !dbg !282
  %handler_result48 = call double @fAddHandlerDouble(double %99, double 3.000000e-17), !dbg !283
  tail call void @llvm.dbg.value(metadata double %handler_result48, metadata !128, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !255
  %handler_result49 = call double @fAddHandlerDouble(double %handler_result44, double 3.750000e-01), !dbg !284
  %100 = fdiv double %handler_result49, %44, !dbg !284
  store double %100, ptr %1, align 8, !dbg !285, !tbaa !135
  %101 = tail call double @llvm.fabs.f64(double %handler_result44), !dbg !286
  %handler_result50 = call double @fAddHandlerDouble(double %101, double 3.750000e-01), !dbg !287
  %102 = fmul double %handler_result50, 0x3CC0000000000000, !dbg !287
  %103 = fdiv double %102, %44, !dbg !288
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !289
  %105 = fdiv double %handler_result48, %44, !dbg !290
  %handler_result51 = call double @fAddHandlerDouble(double %103, double %105), !dbg !291
  %106 = tail call double @llvm.fabs.f64(double %100), !dbg !291
  %107 = fmul double %106, 0x3CC0000000000000, !dbg !292
  %handler_result52 = call double @fAddHandlerDouble(double %107, double %handler_result51), !dbg !293
  store double %handler_result52, ptr %104, align 8, !dbg !293, !tbaa !144
  br label %108

108:                                              ; preds = %95, %64, %32, %5
  ret i32 0, !dbg !294
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !295 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_I0_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !299 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !312
  call void @llvm.dbg.assign(metadata i1 undef, metadata !311, metadata !DIExpression(), metadata !312, metadata ptr %3, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %0, metadata !301, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !302, metadata !DIExpression()), !dbg !314
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !315
  tail call void @llvm.dbg.value(metadata double %4, metadata !303, metadata !DIExpression()), !dbg !314
  %5 = fcmp olt double %4, 0x3E60000000000000, !dbg !316
  br i1 %5, label %6, label %10, !dbg !317

6:                                                ; preds = %2
  store double 1.000000e+00, ptr %1, align 8, !dbg !318, !tbaa !135
  %7 = fmul double %4, 5.000000e-01, !dbg !320
  %8 = fmul double %4, %7, !dbg !321
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !322
  store double %8, ptr %9, align 8, !dbg !323, !tbaa !144
  br label %58, !dbg !324

10:                                               ; preds = %2
  %11 = fcmp ugt double %4, 3.000000e+00, !dbg !325
  br i1 %11, label %41, label %12, !dbg !326

12:                                               ; preds = %10
  %13 = fmul double %0, %0, !dbg !327
  %14 = fdiv double %13, 4.500000e+00, !dbg !328
  %handler_result = call double @fAddHandlerDouble(double %14, double -1.000000e+00), !dbg !329
  call void @llvm.dbg.value(metadata !177, metadata !161, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata double %handler_result, metadata !162, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata ptr undef, metadata !163, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !165, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !166, metadata !DIExpression()), !dbg !331
  %15 = fmul double %handler_result, 2.000000e+00, !dbg !329
  %handler_result1 = call double @fAddHandlerDouble(double %15, double 1.000000e+00), !dbg !332
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !333
  %16 = fmul double %handler_result2, 5.000000e-01, !dbg !333
  call void @llvm.dbg.value(metadata double %16, metadata !167, metadata !DIExpression()), !dbg !331
  %17 = fmul double %16, 2.000000e+00, !dbg !334
  call void @llvm.dbg.value(metadata double %17, metadata !168, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !169, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 11, metadata !164, metadata !DIExpression()), !dbg !331
  br label %18, !dbg !335

18:                                               ; preds = %18, %12
  %19 = phi i64 [ 11, %12 ], [ %29, %18 ]
  %20 = phi double [ 0.000000e+00, %12 ], [ %handler_result4, %18 ]
  %21 = phi double [ 0.000000e+00, %12 ], [ %handler_result7, %18 ]
  %22 = phi double [ 0.000000e+00, %12 ], [ %20, %18 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !164, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata double %20, metadata !165, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata double %21, metadata !169, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata double %22, metadata !166, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata double %20, metadata !170, metadata !DIExpression()), !dbg !336
  %23 = fmul double %17, %20, !dbg !337
  %handler_result3 = call double @fSubHandlerDouble(double %23, double %22), !dbg !338
  %24 = getelementptr inbounds double, ptr @bi0_data, i64 %19, !dbg !338
  %25 = load double, ptr %24, align 8, !dbg !338, !tbaa !186
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %25), !dbg !339
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !165, metadata !DIExpression()), !dbg !331
  %26 = tail call double @llvm.fabs.f64(double %23), !dbg !339
  %27 = tail call double @llvm.fabs.f64(double %22), !dbg !340
  %handler_result5 = call double @fAddHandlerDouble(double %26, double %27), !dbg !341
  %28 = tail call double @llvm.fabs.f64(double %25), !dbg !341
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %28), !dbg !342
  %handler_result7 = call double @fAddHandlerDouble(double %21, double %handler_result6), !dbg !343
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !169, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata double %20, metadata !166, metadata !DIExpression()), !dbg !331
  %29 = add nsw i64 %19, -1, !dbg !343
  call void @llvm.dbg.value(metadata i64 %29, metadata !164, metadata !DIExpression()), !dbg !331
  %30 = icmp ugt i64 %19, 1, !dbg !344
  br i1 %30, label %18, label %31, !dbg !335, !llvm.loop !345

31:                                               ; preds = %18
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !174, metadata !DIExpression()), !dbg !347
  %32 = fmul double %16, %handler_result4, !dbg !348
  %handler_result8 = call double @fSubHandlerDouble(double %32, double %20), !dbg !349
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0xBFA39C6A8F343DC8), !dbg !350
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !165, metadata !DIExpression()), !dbg !331
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !350
  %34 = tail call double @llvm.fabs.f64(double %20), !dbg !351
  %handler_result10 = call double @fAddHandlerDouble(double %34, double %33), !dbg !352
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FA39C6A8F343DC8), !dbg !353
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !354
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !169, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !304, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !355
  %35 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !354
  %handler_result13 = call double @fAddHandlerDouble(double %35, double 2.450000e-18), !dbg !356
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !304, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !355
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result9, double 2.750000e+00), !dbg !357
  store double %handler_result14, ptr %1, align 8, !dbg !357, !tbaa !135
  %36 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !358
  %handler_result15 = call double @fAddHandlerDouble(double %36, double 2.750000e+00), !dbg !359
  %37 = fmul double %handler_result15, 0x3CB0000000000000, !dbg !359
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !360
  %handler_result16 = call double @fAddHandlerDouble(double %37, double %handler_result13), !dbg !361
  %39 = tail call double @llvm.fabs.f64(double %handler_result14), !dbg !361
  %40 = fmul double %39, 0x3CC0000000000000, !dbg !362
  %handler_result17 = call double @fAddHandlerDouble(double %40, double %handler_result16), !dbg !363
  store double %handler_result17, ptr %38, align 8, !dbg !363, !tbaa !144
  br label %58

41:                                               ; preds = %10
  %42 = fcmp olt double %4, 0x40862642FEFA39EF, !dbg !364
  br i1 %42, label %43, label %56, !dbg !365

43:                                               ; preds = %41
  %44 = tail call double @exp(double noundef %4) #6, !dbg !366
  tail call void @llvm.dbg.value(metadata double %44, metadata !308, metadata !DIExpression()), !dbg !313
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !367
  %45 = call i32 @gsl_sf_bessel_I0_scaled_e(double noundef %0, ptr noundef nonnull %3), !dbg !368
  %46 = load double, ptr %3, align 8, !dbg !369, !tbaa !135
  %47 = fmul double %44, %46, !dbg !370
  store double %47, ptr %1, align 8, !dbg !371, !tbaa !135
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !372
  %49 = load double, ptr %48, align 8, !dbg !372, !tbaa !144
  %50 = fmul double %44, %49, !dbg !373
  %51 = fmul double %4, 0x3CB0000000000000, !dbg !374
  %52 = tail call double @llvm.fabs.f64(double %47), !dbg !375
  %53 = fmul double %51, %52, !dbg !376
  %handler_result18 = call double @fAddHandlerDouble(double %50, double %53), !dbg !377
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !377
  %55 = fmul double %52, 0x3CC0000000000000, !dbg !378
  %handler_result19 = call double @fAddHandlerDouble(double %55, double %handler_result18), !dbg !379
  store double %handler_result19, ptr %54, align 8, !dbg !379, !tbaa !144
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !380
  br label %58

56:                                               ; preds = %41
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !381, !tbaa !135
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !381
  store double 0x7FF0000000000000, ptr %57, align 8, !dbg !381, !tbaa !144
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 216, i32 noundef 16) #6, !dbg !384
  br label %58, !dbg !384

58:                                               ; preds = %56, %43, %31, %6
  %59 = phi i32 [ 0, %6 ], [ 0, %31 ], [ 0, %43 ], [ 16, %56 ], !dbg !386
  ret i32 %59, !dbg !387
}

declare !dbg !388 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_bessel_I0_scaled(double noundef %0) local_unnamed_addr #0 !dbg !393 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !400
  call void @llvm.dbg.assign(metadata i1 undef, metadata !398, metadata !DIExpression(), metadata !400, metadata ptr %2, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %0, metadata !397, metadata !DIExpression()), !dbg !401
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !402
  %3 = call i32 @gsl_sf_bessel_I0_scaled_e(double noundef %0, ptr noundef nonnull %2), !dbg !402
  tail call void @llvm.dbg.value(metadata i32 0, metadata !399, metadata !DIExpression()), !dbg !401
  %4 = load double, ptr %2, align 8, !dbg !402, !tbaa !135
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !403
  ret double %4, !dbg !403
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_I0(double noundef %0) local_unnamed_addr #4 !dbg !404 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !409
  call void @llvm.dbg.assign(metadata i1 undef, metadata !407, metadata !DIExpression(), metadata !409, metadata ptr %2, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata double %0, metadata !406, metadata !DIExpression()), !dbg !410
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !411
  %3 = call i32 @gsl_sf_bessel_I0_e(double noundef %0, ptr noundef nonnull %2), !dbg !411, !range !412
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !408, metadata !DIExpression()), !dbg !410
  %4 = icmp eq i32 %3, 0, !dbg !413
  br i1 %4, label %6, label %5, !dbg !411

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 231, i32 noundef %3) #6, !dbg !415
  br label %6, !dbg !415

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !411, !tbaa !135
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !418
  ret double %7, !dbg !418
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!133 = !DILocation(line: 151, column: 17, scope: !134)
!134 = distinct !DILexicalBlock(scope: !120, file: !2, line: 150, column: 38)
!135 = !{!136, !137, i64 0}
!136 = !{!"gsl_sf_result_struct", !137, i64 0, !137, i64 8}
!137 = !{!"double", !138, i64 0}
!138 = !{!"omnipotent char", !139, i64 0}
!139 = !{!"Simple C/C++ TBAA"}
!140 = !DILocation(line: 152, column: 22, scope: !134)
!141 = !DILocation(line: 152, column: 24, scope: !134)
!142 = !DILocation(line: 152, column: 13, scope: !134)
!143 = !DILocation(line: 152, column: 17, scope: !134)
!144 = !{!136, !137, i64 8}
!145 = !DILocation(line: 153, column: 5, scope: !134)
!146 = !DILocation(line: 155, column: 13, scope: !119)
!147 = !DILocation(line: 155, column: 11, scope: !120)
!148 = !DILocation(line: 156, column: 27, scope: !118)
!149 = !DILocation(line: 156, column: 23, scope: !118)
!150 = !DILocation(line: 0, scope: !118)
!151 = !DILocation(line: 158, column: 27, scope: !118)
!152 = !DILocation(line: 158, column: 29, scope: !118)
!153 = !DILocation(line: 11, column: 19, scope: !154, inlinedAt: !176)
!154 = distinct !DISubprogram(name: "cheb_eval_e", scope: !155, file: !155, line: 3, type: !156, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !160)
!155 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!156 = !DISubroutineType(types: !157)
!157 = !{!23, !158, !105, !106}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !174}
!161 = !DILocalVariable(name: "cs", arg: 1, scope: !154, file: !155, line: 3, type: !158)
!162 = !DILocalVariable(name: "x", arg: 2, scope: !154, file: !155, line: 4, type: !105)
!163 = !DILocalVariable(name: "result", arg: 3, scope: !154, file: !155, line: 5, type: !106)
!164 = !DILocalVariable(name: "j", scope: !154, file: !155, line: 7, type: !23)
!165 = !DILocalVariable(name: "d", scope: !154, file: !155, line: 8, type: !74)
!166 = !DILocalVariable(name: "dd", scope: !154, file: !155, line: 9, type: !74)
!167 = !DILocalVariable(name: "y", scope: !154, file: !155, line: 11, type: !74)
!168 = !DILocalVariable(name: "y2", scope: !154, file: !155, line: 12, type: !74)
!169 = !DILocalVariable(name: "e", scope: !154, file: !155, line: 14, type: !74)
!170 = !DILocalVariable(name: "temp", scope: !171, file: !155, line: 17, type: !74)
!171 = distinct !DILexicalBlock(scope: !172, file: !155, line: 16, column: 33)
!172 = distinct !DILexicalBlock(scope: !173, file: !155, line: 16, column: 3)
!173 = distinct !DILexicalBlock(scope: !154, file: !155, line: 16, column: 3)
!174 = !DILocalVariable(name: "temp", scope: !175, file: !155, line: 24, type: !74)
!175 = distinct !DILexicalBlock(scope: !154, file: !155, line: 23, column: 3)
!176 = distinct !DILocation(line: 158, column: 5, scope: !118)
!177 = !{}
!178 = !DILocation(line: 0, scope: !154, inlinedAt: !176)
!179 = !DILocation(line: 11, column: 30, scope: !154, inlinedAt: !176)
!180 = !DILocation(line: 11, column: 39, scope: !154, inlinedAt: !176)
!181 = !DILocation(line: 12, column: 19, scope: !154, inlinedAt: !176)
!182 = !DILocation(line: 16, column: 3, scope: !173, inlinedAt: !176)
!183 = !DILocation(line: 0, scope: !171, inlinedAt: !176)
!184 = !DILocation(line: 18, column: 11, scope: !171, inlinedAt: !176)
!185 = !DILocation(line: 18, column: 21, scope: !171, inlinedAt: !176)
!186 = !{!137, !137, i64 0}
!187 = !DILocation(line: 19, column: 10, scope: !171, inlinedAt: !176)
!188 = !DILocation(line: 19, column: 26, scope: !171, inlinedAt: !176)
!189 = !DILocation(line: 19, column: 37, scope: !171, inlinedAt: !176)
!190 = !DILocation(line: 19, column: 7, scope: !171, inlinedAt: !176)
!191 = !DILocation(line: 16, column: 29, scope: !172, inlinedAt: !176)
!192 = !DILocation(line: 16, column: 23, scope: !172, inlinedAt: !176)
!193 = distinct !{!193, !182, !194, !195}
!194 = !DILocation(line: 21, column: 3, scope: !173, inlinedAt: !176)
!195 = !{!"llvm.loop.mustprogress"}
!196 = !DILocation(line: 0, scope: !175, inlinedAt: !176)
!197 = !DILocation(line: 25, column: 10, scope: !175, inlinedAt: !176)
!198 = !DILocation(line: 25, column: 18, scope: !175, inlinedAt: !176)
!199 = !DILocation(line: 26, column: 10, scope: !175, inlinedAt: !176)
!200 = !DILocation(line: 26, column: 25, scope: !175, inlinedAt: !176)
!201 = !DILocation(line: 26, column: 34, scope: !175, inlinedAt: !176)
!202 = !DILocation(line: 26, column: 7, scope: !175, inlinedAt: !176)
!203 = !DILocation(line: 30, column: 33, scope: !154, inlinedAt: !176)
!204 = !DILocation(line: 159, column: 30, scope: !118)
!205 = !DILocation(line: 159, column: 22, scope: !118)
!206 = !DILocation(line: 159, column: 17, scope: !118)
!207 = !DILocation(line: 160, column: 37, scope: !118)
!208 = !DILocation(line: 160, column: 35, scope: !118)
!209 = !DILocation(line: 160, column: 60, scope: !118)
!210 = !DILocation(line: 160, column: 13, scope: !118)
!211 = !DILocation(line: 160, column: 17, scope: !118)
!212 = !DILocation(line: 163, column: 13, scope: !124)
!213 = !DILocation(line: 0, scope: !124)
!214 = !DILocation(line: 163, column: 11, scope: !119)
!215 = !DILocation(line: 0, scope: !123)
!216 = !DILocation(line: 166, column: 31, scope: !123)
!217 = !DILocation(line: 166, column: 39, scope: !123)
!218 = !DILocation(line: 0, scope: !154, inlinedAt: !219)
!219 = distinct !DILocation(line: 166, column: 5, scope: !123)
!220 = !DILocation(line: 11, column: 19, scope: !154, inlinedAt: !219)
!221 = !DILocation(line: 11, column: 30, scope: !154, inlinedAt: !219)
!222 = !DILocation(line: 11, column: 39, scope: !154, inlinedAt: !219)
!223 = !DILocation(line: 12, column: 19, scope: !154, inlinedAt: !219)
!224 = !DILocation(line: 16, column: 3, scope: !173, inlinedAt: !219)
!225 = !DILocation(line: 0, scope: !171, inlinedAt: !219)
!226 = !DILocation(line: 18, column: 11, scope: !171, inlinedAt: !219)
!227 = !DILocation(line: 18, column: 21, scope: !171, inlinedAt: !219)
!228 = !DILocation(line: 19, column: 10, scope: !171, inlinedAt: !219)
!229 = !DILocation(line: 19, column: 26, scope: !171, inlinedAt: !219)
!230 = !DILocation(line: 19, column: 37, scope: !171, inlinedAt: !219)
!231 = !DILocation(line: 19, column: 7, scope: !171, inlinedAt: !219)
!232 = !DILocation(line: 16, column: 29, scope: !172, inlinedAt: !219)
!233 = !DILocation(line: 16, column: 23, scope: !172, inlinedAt: !219)
!234 = distinct !{!234, !224, !235, !195}
!235 = !DILocation(line: 21, column: 3, scope: !173, inlinedAt: !219)
!236 = !DILocation(line: 0, scope: !175, inlinedAt: !219)
!237 = !DILocation(line: 25, column: 10, scope: !175, inlinedAt: !219)
!238 = !DILocation(line: 25, column: 18, scope: !175, inlinedAt: !219)
!239 = !DILocation(line: 26, column: 10, scope: !175, inlinedAt: !219)
!240 = !DILocation(line: 26, column: 25, scope: !175, inlinedAt: !219)
!241 = !DILocation(line: 26, column: 34, scope: !175, inlinedAt: !219)
!242 = !DILocation(line: 26, column: 7, scope: !175, inlinedAt: !219)
!243 = !DILocation(line: 30, column: 33, scope: !154, inlinedAt: !219)
!244 = !DILocation(line: 167, column: 27, scope: !123)
!245 = !DILocation(line: 167, column: 36, scope: !123)
!246 = !DILocation(line: 167, column: 18, scope: !123)
!247 = !DILocation(line: 168, column: 53, scope: !123)
!248 = !DILocation(line: 168, column: 42, scope: !123)
!249 = !DILocation(line: 168, column: 66, scope: !123)
!250 = !DILocation(line: 168, column: 13, scope: !123)
!251 = !DILocation(line: 169, column: 26, scope: !123)
!252 = !DILocation(line: 170, column: 44, scope: !123)
!253 = !DILocation(line: 170, column: 42, scope: !123)
!254 = !DILocation(line: 170, column: 17, scope: !123)
!255 = !DILocation(line: 0, scope: !127)
!256 = !DILocation(line: 176, column: 31, scope: !127)
!257 = !DILocation(line: 11, column: 19, scope: !154, inlinedAt: !258)
!258 = distinct !DILocation(line: 176, column: 5, scope: !127)
!259 = !DILocation(line: 0, scope: !154, inlinedAt: !258)
!260 = !DILocation(line: 11, column: 30, scope: !154, inlinedAt: !258)
!261 = !DILocation(line: 11, column: 39, scope: !154, inlinedAt: !258)
!262 = !DILocation(line: 12, column: 19, scope: !154, inlinedAt: !258)
!263 = !DILocation(line: 16, column: 3, scope: !173, inlinedAt: !258)
!264 = !DILocation(line: 0, scope: !171, inlinedAt: !258)
!265 = !DILocation(line: 18, column: 11, scope: !171, inlinedAt: !258)
!266 = !DILocation(line: 18, column: 21, scope: !171, inlinedAt: !258)
!267 = !DILocation(line: 19, column: 10, scope: !171, inlinedAt: !258)
!268 = !DILocation(line: 19, column: 26, scope: !171, inlinedAt: !258)
!269 = !DILocation(line: 19, column: 37, scope: !171, inlinedAt: !258)
!270 = !DILocation(line: 19, column: 7, scope: !171, inlinedAt: !258)
!271 = !DILocation(line: 16, column: 29, scope: !172, inlinedAt: !258)
!272 = !DILocation(line: 16, column: 23, scope: !172, inlinedAt: !258)
!273 = distinct !{!273, !263, !274, !195}
!274 = !DILocation(line: 21, column: 3, scope: !173, inlinedAt: !258)
!275 = !DILocation(line: 0, scope: !175, inlinedAt: !258)
!276 = !DILocation(line: 25, column: 10, scope: !175, inlinedAt: !258)
!277 = !DILocation(line: 25, column: 18, scope: !175, inlinedAt: !258)
!278 = !DILocation(line: 26, column: 10, scope: !175, inlinedAt: !258)
!279 = !DILocation(line: 26, column: 25, scope: !175, inlinedAt: !258)
!280 = !DILocation(line: 26, column: 34, scope: !175, inlinedAt: !258)
!281 = !DILocation(line: 26, column: 7, scope: !175, inlinedAt: !258)
!282 = !DILocation(line: 30, column: 33, scope: !154, inlinedAt: !258)
!283 = !DILocation(line: 177, column: 26, scope: !127)
!284 = !DILocation(line: 177, column: 35, scope: !127)
!285 = !DILocation(line: 177, column: 17, scope: !127)
!286 = !DILocation(line: 178, column: 53, scope: !127)
!287 = !DILocation(line: 178, column: 42, scope: !127)
!288 = !DILocation(line: 178, column: 66, scope: !127)
!289 = !DILocation(line: 178, column: 13, scope: !127)
!290 = !DILocation(line: 179, column: 26, scope: !127)
!291 = !DILocation(line: 180, column: 44, scope: !127)
!292 = !DILocation(line: 180, column: 42, scope: !127)
!293 = !DILocation(line: 180, column: 17, scope: !127)
!294 = !DILocation(line: 183, column: 1, scope: !102)
!295 = !DISubprogram(name: "exp", scope: !296, file: !296, line: 95, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!297 = !DISubroutineType(types: !298)
!298 = !{!74, !74}
!299 = distinct !DISubprogram(name: "gsl_sf_bessel_I0_e", scope: !2, file: !2, line: 186, type: !103, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !300)
!300 = !{!301, !302, !303, !304, !308, !311}
!301 = !DILocalVariable(name: "x", arg: 1, scope: !299, file: !2, line: 186, type: !105)
!302 = !DILocalVariable(name: "result", arg: 2, scope: !299, file: !2, line: 186, type: !106)
!303 = !DILocalVariable(name: "y", scope: !299, file: !2, line: 188, type: !74)
!304 = !DILocalVariable(name: "c", scope: !305, file: !2, line: 198, type: !107)
!305 = distinct !DILexicalBlock(scope: !306, file: !2, line: 197, column: 21)
!306 = distinct !DILexicalBlock(scope: !307, file: !2, line: 197, column: 11)
!307 = distinct !DILexicalBlock(scope: !299, file: !2, line: 192, column: 6)
!308 = !DILocalVariable(name: "ey", scope: !309, file: !2, line: 207, type: !105)
!309 = distinct !DILexicalBlock(scope: !310, file: !2, line: 206, column: 38)
!310 = distinct !DILexicalBlock(scope: !306, file: !2, line: 206, column: 11)
!311 = !DILocalVariable(name: "b_scaled", scope: !309, file: !2, line: 208, type: !107)
!312 = distinct !DIAssignID()
!313 = !DILocation(line: 0, scope: !309)
!314 = !DILocation(line: 0, scope: !299)
!315 = !DILocation(line: 188, column: 14, scope: !299)
!316 = !DILocation(line: 192, column: 8, scope: !307)
!317 = !DILocation(line: 192, column: 6, scope: !299)
!318 = !DILocation(line: 193, column: 17, scope: !319)
!319 = distinct !DILexicalBlock(scope: !307, file: !2, line: 192, column: 38)
!320 = !DILocation(line: 194, column: 22, scope: !319)
!321 = !DILocation(line: 194, column: 24, scope: !319)
!322 = !DILocation(line: 194, column: 13, scope: !319)
!323 = !DILocation(line: 194, column: 17, scope: !319)
!324 = !DILocation(line: 195, column: 5, scope: !319)
!325 = !DILocation(line: 197, column: 13, scope: !306)
!326 = !DILocation(line: 197, column: 11, scope: !307)
!327 = !DILocation(line: 199, column: 27, scope: !305)
!328 = !DILocation(line: 199, column: 29, scope: !305)
!329 = !DILocation(line: 11, column: 19, scope: !154, inlinedAt: !330)
!330 = distinct !DILocation(line: 199, column: 5, scope: !305)
!331 = !DILocation(line: 0, scope: !154, inlinedAt: !330)
!332 = !DILocation(line: 11, column: 30, scope: !154, inlinedAt: !330)
!333 = !DILocation(line: 11, column: 39, scope: !154, inlinedAt: !330)
!334 = !DILocation(line: 12, column: 19, scope: !154, inlinedAt: !330)
!335 = !DILocation(line: 16, column: 3, scope: !173, inlinedAt: !330)
!336 = !DILocation(line: 0, scope: !171, inlinedAt: !330)
!337 = !DILocation(line: 18, column: 11, scope: !171, inlinedAt: !330)
!338 = !DILocation(line: 18, column: 21, scope: !171, inlinedAt: !330)
!339 = !DILocation(line: 19, column: 10, scope: !171, inlinedAt: !330)
!340 = !DILocation(line: 19, column: 26, scope: !171, inlinedAt: !330)
!341 = !DILocation(line: 19, column: 37, scope: !171, inlinedAt: !330)
!342 = !DILocation(line: 19, column: 7, scope: !171, inlinedAt: !330)
!343 = !DILocation(line: 16, column: 29, scope: !172, inlinedAt: !330)
!344 = !DILocation(line: 16, column: 23, scope: !172, inlinedAt: !330)
!345 = distinct !{!345, !335, !346, !195}
!346 = !DILocation(line: 21, column: 3, scope: !173, inlinedAt: !330)
!347 = !DILocation(line: 0, scope: !175, inlinedAt: !330)
!348 = !DILocation(line: 25, column: 10, scope: !175, inlinedAt: !330)
!349 = !DILocation(line: 25, column: 18, scope: !175, inlinedAt: !330)
!350 = !DILocation(line: 26, column: 10, scope: !175, inlinedAt: !330)
!351 = !DILocation(line: 26, column: 25, scope: !175, inlinedAt: !330)
!352 = !DILocation(line: 26, column: 34, scope: !175, inlinedAt: !330)
!353 = !DILocation(line: 26, column: 7, scope: !175, inlinedAt: !330)
!354 = !DILocation(line: 30, column: 33, scope: !154, inlinedAt: !330)
!355 = !DILocation(line: 0, scope: !305)
!356 = !DILocation(line: 200, column: 25, scope: !305)
!357 = !DILocation(line: 200, column: 18, scope: !305)
!358 = !DILocation(line: 201, column: 46, scope: !305)
!359 = !DILocation(line: 201, column: 36, scope: !305)
!360 = !DILocation(line: 201, column: 13, scope: !305)
!361 = !DILocation(line: 203, column: 44, scope: !305)
!362 = !DILocation(line: 203, column: 42, scope: !305)
!363 = !DILocation(line: 203, column: 17, scope: !305)
!364 = !DILocation(line: 206, column: 13, scope: !310)
!365 = !DILocation(line: 206, column: 11, scope: !306)
!366 = !DILocation(line: 207, column: 23, scope: !309)
!367 = !DILocation(line: 208, column: 5, scope: !309)
!368 = !DILocation(line: 209, column: 5, scope: !309)
!369 = !DILocation(line: 210, column: 34, scope: !309)
!370 = !DILocation(line: 210, column: 23, scope: !309)
!371 = !DILocation(line: 210, column: 18, scope: !309)
!372 = !DILocation(line: 211, column: 34, scope: !309)
!373 = !DILocation(line: 211, column: 23, scope: !309)
!374 = !DILocation(line: 211, column: 41, scope: !309)
!375 = !DILocation(line: 211, column: 58, scope: !309)
!376 = !DILocation(line: 211, column: 57, scope: !309)
!377 = !DILocation(line: 211, column: 13, scope: !309)
!378 = !DILocation(line: 212, column: 42, scope: !309)
!379 = !DILocation(line: 212, column: 17, scope: !309)
!380 = !DILocation(line: 214, column: 3, scope: !310)
!381 = !DILocation(line: 216, column: 5, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !2, line: 216, column: 5)
!383 = distinct !DILexicalBlock(scope: !310, file: !2, line: 215, column: 8)
!384 = !DILocation(line: 216, column: 5, scope: !385)
!385 = distinct !DILexicalBlock(scope: !382, file: !2, line: 216, column: 5)
!386 = !DILocation(line: 0, scope: !307)
!387 = !DILocation(line: 218, column: 1, scope: !299)
!388 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391, !391, !23, !23}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!393 = distinct !DISubprogram(name: "gsl_sf_bessel_I0_scaled", scope: !2, file: !2, line: 224, type: !394, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{!74, !105}
!396 = !{!397, !398, !399}
!397 = !DILocalVariable(name: "x", arg: 1, scope: !393, file: !2, line: 224, type: !105)
!398 = !DILocalVariable(name: "result", scope: !393, file: !2, line: 226, type: !107)
!399 = !DILocalVariable(name: "status", scope: !393, file: !2, line: 226, type: !23)
!400 = distinct !DIAssignID()
!401 = !DILocation(line: 0, scope: !393)
!402 = !DILocation(line: 226, column: 3, scope: !393)
!403 = !DILocation(line: 227, column: 1, scope: !393)
!404 = distinct !DISubprogram(name: "gsl_sf_bessel_I0", scope: !2, file: !2, line: 229, type: !394, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !405)
!405 = !{!406, !407, !408}
!406 = !DILocalVariable(name: "x", arg: 1, scope: !404, file: !2, line: 229, type: !105)
!407 = !DILocalVariable(name: "result", scope: !404, file: !2, line: 231, type: !107)
!408 = !DILocalVariable(name: "status", scope: !404, file: !2, line: 231, type: !23)
!409 = distinct !DIAssignID()
!410 = !DILocation(line: 0, scope: !404)
!411 = !DILocation(line: 231, column: 3, scope: !404)
!412 = !{i32 0, i32 17}
!413 = !DILocation(line: 231, column: 3, scope: !414)
!414 = distinct !DILexicalBlock(scope: !404, file: !2, line: 231, column: 3)
!415 = !DILocation(line: 231, column: 3, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !2, line: 231, column: 3)
!417 = distinct !DILexicalBlock(scope: !414, file: !2, line: 231, column: 3)
!418 = !DILocation(line: 232, column: 1, scope: !404)
