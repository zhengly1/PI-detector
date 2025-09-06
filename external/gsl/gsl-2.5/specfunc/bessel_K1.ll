; ModuleID = 'bessel_K1.c'
source_filename = "bessel_K1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_K1.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_K1_scaled_e(x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_K1_e(x, &result)\00", align 1, !dbg !22
@ak1_data = internal unnamed_addr constant [25 x double] [double 0x3FCA9FA430DE464C, double 0x3FC4CF7904579719, double 0xBF780BE12B1D2DF0, double 0x3F40388A9EAEEEC5, double 0xBF0E5AA5BC25651D, double 0x3EE12AE75A6DF9E0, double 0xBEB614626E3FB181, double 0x3E8F3638867340D0, double 0xBE67BDA3DE37BE4B, double 0x3E4328B932CAEF32, double 0xBE203D2BE45202AF, double 0x3DFCB1F2BA8576DE, double 0xBDDA46A29F5F1BDF, double 0x3DB8D2D7A3BB4C6D, double 0xBD981B5F6594C819, double 0x3D77FE48EFA6B2F8, double 0xBD5869DB15CD37D1, double 0x3D3957BD05C500C3, double 0xBD1ACA755D3A5F89, double 0x3CFCCC53E9A4D68E, double 0xBCDF6F510EC41328, double 0x3CC166D6A1E60F93, double 0xBCA385A04A588DBF, double 0x3C862BC1DE2B97FE, double 0xBC697838D1062EAD], align 16, !dbg !27
@ak12_data = internal unnamed_addr constant [14 x double] [double 0x3FB054BE5713184A, double 0x3F9D023ED46952DB, double 0xBF3038FB9BE6C5AA, double 0x3ED8359BB4D90134, double 0xBE8BC4D22EE868DF, double 0x3E44EA9CCE60AB63, double 0xBE0330E9E355CB2D, double 0x3DC485B9C7AE6CAF, double 0xBD88D9739428CF59, double 0x3D50B10CAFD9FD90, double 0xBD1881D86DA4951C, double 0x3CE36FCFB04FAB70, double 0xBCB080AAEC279DA4, double 0x3C7DC75547A9E207], align 16, !dbg !94

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_K1_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !110 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !122, metadata !DIExpression()), !dbg !140
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !123, metadata !DIExpression()), !dbg !140
  %3 = fcmp ugt double %0, 0.000000e+00, !dbg !141
  br i1 %3, label %6, label %4, !dbg !142

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !143, !tbaa !146
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !143
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !143, !tbaa !151
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 137, i32 noundef 1) #6, !dbg !152
  br label %156, !dbg !152

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x20000000000000, !dbg !154
  br i1 %7, label %8, label %10, !dbg !155

8:                                                ; preds = %6
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !156, !tbaa !146
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !156
  store double 0x7FF0000000000000, ptr %9, align 8, !dbg !156, !tbaa !151
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 140, i32 noundef 16) #6, !dbg !159
  br label %156, !dbg !159

10:                                               ; preds = %6
  %11 = fcmp olt double %0, 1.000000e+00, !dbg !161
  br i1 %11, label %12, label %65, !dbg !162

12:                                               ; preds = %10
  %13 = tail call double @log(double noundef %0) #6, !dbg !163
  tail call void @llvm.dbg.value(metadata double %13, metadata !124, metadata !DIExpression()), !dbg !164
  %14 = tail call double @exp(double noundef %0) #6, !dbg !165
  tail call void @llvm.dbg.value(metadata double %14, metadata !129, metadata !DIExpression()), !dbg !164
  %15 = fmul double %0, %0, !dbg !166
  tail call void @llvm.dbg.value(metadata double %15, metadata !130, metadata !DIExpression()), !dbg !164
  %16 = fmul double %15, 2.500000e-01, !dbg !167
  tail call void @llvm.dbg.value(metadata double %16, metadata !131, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata !168, metadata !169, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata i32 6, metadata !177, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double %16, metadata !178, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double 0x3E355B410B3332C5, metadata !180, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata i32 5, metadata !179, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double 0x3E355B410B3332C5, metadata !180, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata i64 5, metadata !179, metadata !DIExpression()), !dbg !181
  %17 = fmul double %16, 0x3E355B410B3332C5, !dbg !183
  %18 = fadd double %17, 0x3E927E0FFAAEE53D, !dbg !186
  tail call void @llvm.dbg.value(metadata double %18, metadata !180, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata i64 4, metadata !179, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double %18, metadata !180, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata i64 4, metadata !179, metadata !DIExpression()), !dbg !181
  %19 = fmul double %16, %18, !dbg !183
  %20 = fadd double %19, 0x3EE845C8E2E1423A, !dbg !186
  tail call void @llvm.dbg.value(metadata double %20, metadata !180, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata i64 3, metadata !179, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double %20, metadata !180, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata i64 3, metadata !179, metadata !DIExpression()), !dbg !181
  %21 = fmul double %16, %20, !dbg !183
  %22 = fadd double %21, 0x3F36C16C16A27BAF, !dbg !186
  tail call void @llvm.dbg.value(metadata double %22, metadata !180, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata i64 2, metadata !179, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double %22, metadata !180, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata i64 2, metadata !179, metadata !DIExpression()), !dbg !181
  %23 = fmul double %16, %22, !dbg !183
  %24 = fadd double %23, 0x3F7C71C71C71D1B3, !dbg !186
  tail call void @llvm.dbg.value(metadata double %24, metadata !180, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata i64 1, metadata !179, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double %24, metadata !180, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata i64 1, metadata !179, metadata !DIExpression()), !dbg !181
  %25 = fmul double %16, %24, !dbg !183
  %26 = fadd double %25, 0x3FB5555555555555, !dbg !186
  tail call void @llvm.dbg.value(metadata double %26, metadata !180, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata i64 0, metadata !179, metadata !DIExpression()), !dbg !181
  %27 = fmul double %16, %26, !dbg !187
  %28 = fadd double %27, 5.000000e-01, !dbg !188
  %29 = fmul double %16, %28, !dbg !189
  %30 = fadd double %29, 1.000000e+00, !dbg !190
  tail call void @llvm.dbg.value(metadata double %48, metadata !132, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata !168, metadata !169, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i32 9, metadata !177, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata double %15, metadata !178, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata double 0xBCDB7E078296495F, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i32 8, metadata !179, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata double 0xBCDB7E078296495F, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 8, metadata !179, metadata !DIExpression()), !dbg !191
  %31 = fmul double %15, 0xBCDB7E078296495F, !dbg !193
  %32 = fadd double %31, 0xBD5D4891F134D1BD, !dbg !194
  tail call void @llvm.dbg.value(metadata double %32, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 7, metadata !179, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata double %32, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 7, metadata !179, metadata !DIExpression()), !dbg !191
  %33 = fmul double %15, %32, !dbg !193
  %34 = fadd double %33, 0xBDD8630B65993898, !dbg !194
  tail call void @llvm.dbg.value(metadata double %34, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 6, metadata !179, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata double %34, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 6, metadata !179, metadata !DIExpression()), !dbg !191
  %35 = fmul double %15, %34, !dbg !193
  %36 = fadd double %35, 0xBE4E2129FF568BB1, !dbg !194
  tail call void @llvm.dbg.value(metadata double %36, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 5, metadata !179, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata double %36, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 5, metadata !179, metadata !DIExpression()), !dbg !191
  %37 = fmul double %15, %36, !dbg !193
  %38 = fadd double %37, 0xBEBA29182247C54B, !dbg !194
  tail call void @llvm.dbg.value(metadata double %38, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 4, metadata !179, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata double %38, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 4, metadata !179, metadata !DIExpression()), !dbg !191
  %39 = fmul double %15, %38, !dbg !193
  %40 = fadd double %39, 0xBF1D802AF7A5DB61, !dbg !194
  tail call void @llvm.dbg.value(metadata double %40, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 3, metadata !179, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata double %40, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 3, metadata !179, metadata !DIExpression()), !dbg !191
  %41 = fmul double %15, %40, !dbg !193
  %42 = fadd double %41, 0xBF7303AE729FF30F, !dbg !194
  tail call void @llvm.dbg.value(metadata double %42, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 2, metadata !179, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata double %42, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 2, metadata !179, metadata !DIExpression()), !dbg !191
  %43 = fmul double %15, %42, !dbg !193
  %44 = fadd double %43, 0xBFB5DADB014541EB, !dbg !194
  tail call void @llvm.dbg.value(metadata double %44, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 1, metadata !179, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata double %44, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 1, metadata !179, metadata !DIExpression()), !dbg !191
  %45 = fmul double %15, %44, !dbg !193
  %46 = fadd double %45, 0xBFD3B5B6028A83D6, !dbg !194
  tail call void @llvm.dbg.value(metadata double %46, metadata !180, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 0, metadata !179, metadata !DIExpression()), !dbg !191
  %47 = fmul double %0, 5.000000e-01, !dbg !195
  %48 = fmul double %47, %30, !dbg !196
  %49 = fmul double %15, %46, !dbg !197
  %50 = fmul double %13, %0, !dbg !198
  %51 = fmul double %50, %48, !dbg !199
  %52 = fadd double %51, %49, !dbg !200
  %53 = fadd double %52, 1.000000e+00, !dbg !201
  %54 = fmul double %14, %53, !dbg !202
  %55 = fdiv double %54, %0, !dbg !203
  store double %55, ptr %1, align 8, !dbg !204, !tbaa !146
  %56 = tail call double @llvm.fabs.f64(double %13), !dbg !205
  %57 = fmul double %56, 6.000000e-01, !dbg !206
  %58 = fadd double %57, 1.600000e+00, !dbg !207
  %59 = fmul double %14, %58, !dbg !208
  %60 = fmul double %59, 0x3CB0000000000000, !dbg !209
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !210
  %62 = tail call double @llvm.fabs.f64(double %55), !dbg !211
  %63 = fmul double %62, 0x3CC0000000000000, !dbg !212
  %64 = fadd double %60, %63, !dbg !213
  store double %64, ptr %61, align 8, !dbg !213, !tbaa !151
  br label %156

65:                                               ; preds = %10
  %66 = fcmp ugt double %0, 8.000000e+00, !dbg !214
  %67 = tail call double @sqrt(double noundef %0) #6, !dbg !215
  %68 = fdiv double 1.600000e+01, %0, !dbg !215
  br i1 %66, label %113, label %69, !dbg !216

69:                                               ; preds = %65
  tail call void @llvm.dbg.value(metadata double %67, metadata !133, metadata !DIExpression()), !dbg !217
  %70 = fadd double %68, -9.000000e+00, !dbg !218
  %71 = fdiv double %70, 7.000000e+00, !dbg !219
  call void @llvm.dbg.value(metadata !168, metadata !220, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %71, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata ptr undef, metadata !229, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !231, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !232, metadata !DIExpression()), !dbg !242
  %72 = fmul double %71, 2.000000e+00, !dbg !244
  %73 = fadd double %72, 1.000000e+00, !dbg !245
  %74 = fadd double %73, -1.000000e+00, !dbg !246
  %75 = fmul double %74, 5.000000e-01, !dbg !247
  call void @llvm.dbg.value(metadata double %75, metadata !233, metadata !DIExpression()), !dbg !242
  %76 = fmul double %75, 2.000000e+00, !dbg !248
  call void @llvm.dbg.value(metadata double %76, metadata !234, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !235, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 24, metadata !230, metadata !DIExpression()), !dbg !242
  br label %77, !dbg !249

77:                                               ; preds = %77, %69
  %78 = phi i64 [ 24, %69 ], [ %93, %77 ]
  %79 = phi double [ 0.000000e+00, %69 ], [ %86, %77 ]
  %80 = phi double [ 0.000000e+00, %69 ], [ %92, %77 ]
  %81 = phi double [ 0.000000e+00, %69 ], [ %79, %77 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !230, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %79, metadata !231, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %80, metadata !235, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %81, metadata !232, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %79, metadata !236, metadata !DIExpression()), !dbg !250
  %82 = fmul double %76, %79, !dbg !251
  %83 = fsub double %82, %81, !dbg !252
  %84 = getelementptr inbounds double, ptr @ak1_data, i64 %78, !dbg !253
  %85 = load double, ptr %84, align 8, !dbg !253, !tbaa !254
  %86 = fadd double %83, %85, !dbg !255
  call void @llvm.dbg.value(metadata double %86, metadata !231, metadata !DIExpression()), !dbg !242
  %87 = tail call double @llvm.fabs.f64(double %82), !dbg !256
  %88 = tail call double @llvm.fabs.f64(double %81), !dbg !257
  %89 = fadd double %87, %88, !dbg !258
  %90 = tail call double @llvm.fabs.f64(double %85), !dbg !259
  %91 = fadd double %89, %90, !dbg !260
  %92 = fadd double %80, %91, !dbg !261
  call void @llvm.dbg.value(metadata double %92, metadata !235, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %79, metadata !232, metadata !DIExpression()), !dbg !242
  %93 = add nsw i64 %78, -1, !dbg !262
  call void @llvm.dbg.value(metadata i64 %93, metadata !230, metadata !DIExpression()), !dbg !242
  %94 = icmp ugt i64 %78, 1, !dbg !263
  br i1 %94, label %77, label %95, !dbg !249, !llvm.loop !264

95:                                               ; preds = %77
  call void @llvm.dbg.value(metadata double %86, metadata !240, metadata !DIExpression()), !dbg !267
  %96 = fmul double %75, %86, !dbg !268
  %97 = fsub double %96, %79, !dbg !269
  %98 = fadd double %97, 0x3FBA9FA430DE464C, !dbg !270
  call void @llvm.dbg.value(metadata double %98, metadata !231, metadata !DIExpression()), !dbg !242
  %99 = tail call double @llvm.fabs.f64(double %96), !dbg !271
  %100 = tail call double @llvm.fabs.f64(double %79), !dbg !272
  %101 = fadd double %100, %99, !dbg !273
  %102 = fadd double %101, 0x3FBA9FA430DE464C, !dbg !274
  %103 = fadd double %92, %102, !dbg !275
  call void @llvm.dbg.value(metadata double %103, metadata !235, metadata !DIExpression()), !dbg !242
  tail call void @llvm.dbg.value(metadata double %98, metadata !136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !217
  %104 = fmul double %103, 0x3CB0000000000000, !dbg !276
  %105 = fadd double %104, 0x3C697838D1062EAD, !dbg !277
  tail call void @llvm.dbg.value(metadata double %105, metadata !136, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !217
  %106 = fadd double %98, 1.375000e+00, !dbg !278
  %107 = fdiv double %106, %67, !dbg !279
  store double %107, ptr %1, align 8, !dbg !280, !tbaa !146
  %108 = fdiv double %105, %67, !dbg !281
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !282
  %110 = tail call double @llvm.fabs.f64(double %107), !dbg !283
  %111 = fmul double %110, 0x3CC0000000000000, !dbg !284
  %112 = fadd double %111, %108, !dbg !285
  store double %112, ptr %109, align 8, !dbg !285, !tbaa !151
  br label %156

113:                                              ; preds = %65
  tail call void @llvm.dbg.value(metadata double %67, metadata !137, metadata !DIExpression()), !dbg !286
  %114 = fadd double %68, -1.000000e+00, !dbg !287
  call void @llvm.dbg.value(metadata !168, metadata !220, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata double %114, metadata !228, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata ptr undef, metadata !229, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !231, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !232, metadata !DIExpression()), !dbg !288
  %115 = fmul double %114, 2.000000e+00, !dbg !290
  %116 = fadd double %115, 1.000000e+00, !dbg !291
  %117 = fadd double %116, -1.000000e+00, !dbg !292
  %118 = fmul double %117, 5.000000e-01, !dbg !293
  call void @llvm.dbg.value(metadata double %118, metadata !233, metadata !DIExpression()), !dbg !288
  %119 = fmul double %118, 2.000000e+00, !dbg !294
  call void @llvm.dbg.value(metadata double %119, metadata !234, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !235, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 13, metadata !230, metadata !DIExpression()), !dbg !288
  br label %120, !dbg !295

120:                                              ; preds = %120, %113
  %121 = phi i64 [ 13, %113 ], [ %136, %120 ]
  %122 = phi double [ 0.000000e+00, %113 ], [ %129, %120 ]
  %123 = phi double [ 0.000000e+00, %113 ], [ %135, %120 ]
  %124 = phi double [ 0.000000e+00, %113 ], [ %122, %120 ]
  call void @llvm.dbg.value(metadata i64 %121, metadata !230, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata double %122, metadata !231, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata double %123, metadata !235, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata double %124, metadata !232, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata double %122, metadata !236, metadata !DIExpression()), !dbg !296
  %125 = fmul double %119, %122, !dbg !297
  %126 = fsub double %125, %124, !dbg !298
  %127 = getelementptr inbounds double, ptr @ak12_data, i64 %121, !dbg !299
  %128 = load double, ptr %127, align 8, !dbg !299, !tbaa !254
  %129 = fadd double %126, %128, !dbg !300
  call void @llvm.dbg.value(metadata double %129, metadata !231, metadata !DIExpression()), !dbg !288
  %130 = tail call double @llvm.fabs.f64(double %125), !dbg !301
  %131 = tail call double @llvm.fabs.f64(double %124), !dbg !302
  %132 = fadd double %130, %131, !dbg !303
  %133 = tail call double @llvm.fabs.f64(double %128), !dbg !304
  %134 = fadd double %132, %133, !dbg !305
  %135 = fadd double %123, %134, !dbg !306
  call void @llvm.dbg.value(metadata double %135, metadata !235, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata double %122, metadata !232, metadata !DIExpression()), !dbg !288
  %136 = add nsw i64 %121, -1, !dbg !307
  call void @llvm.dbg.value(metadata i64 %136, metadata !230, metadata !DIExpression()), !dbg !288
  %137 = icmp ugt i64 %121, 1, !dbg !308
  br i1 %137, label %120, label %138, !dbg !295, !llvm.loop !309

138:                                              ; preds = %120
  call void @llvm.dbg.value(metadata double %129, metadata !240, metadata !DIExpression()), !dbg !311
  %139 = fmul double %118, %129, !dbg !312
  %140 = fsub double %139, %122, !dbg !313
  %141 = fadd double %140, 0x3FA054BE5713184A, !dbg !314
  call void @llvm.dbg.value(metadata double %141, metadata !231, metadata !DIExpression()), !dbg !288
  %142 = tail call double @llvm.fabs.f64(double %139), !dbg !315
  %143 = tail call double @llvm.fabs.f64(double %122), !dbg !316
  %144 = fadd double %143, %142, !dbg !317
  %145 = fadd double %144, 0x3FA054BE5713184A, !dbg !318
  %146 = fadd double %135, %145, !dbg !319
  call void @llvm.dbg.value(metadata double %146, metadata !235, metadata !DIExpression()), !dbg !288
  tail call void @llvm.dbg.value(metadata double %141, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !286
  %147 = fmul double %146, 0x3CB0000000000000, !dbg !320
  %148 = fadd double %147, 0x3C7DC75547A9E207, !dbg !321
  tail call void @llvm.dbg.value(metadata double %148, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !286
  %149 = fadd double %141, 1.250000e+00, !dbg !322
  %150 = fdiv double %149, %67, !dbg !323
  store double %150, ptr %1, align 8, !dbg !324, !tbaa !146
  %151 = fdiv double %148, %67, !dbg !325
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !326
  %153 = tail call double @llvm.fabs.f64(double %150), !dbg !327
  %154 = fmul double %153, 0x3CC0000000000000, !dbg !328
  %155 = fadd double %154, %151, !dbg !329
  store double %155, ptr %152, align 8, !dbg !329, !tbaa !151
  br label %156

156:                                              ; preds = %4, %8, %12, %95, %138
  %157 = phi i32 [ 1, %4 ], [ 16, %8 ], [ 0, %12 ], [ 0, %95 ], [ 0, %138 ], !dbg !330
  ret i32 %157, !dbg !331
}

declare !dbg !332 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !337 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !341 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !342 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_K1_e(double noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !343 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !359
  call void @llvm.dbg.assign(metadata i1 undef, metadata !355, metadata !DIExpression(), metadata !359, metadata ptr %3, metadata !DIExpression()), !dbg !360
  tail call void @llvm.dbg.value(metadata double %0, metadata !345, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !346, metadata !DIExpression()), !dbg !361
  %4 = fcmp ugt double %0, 0.000000e+00, !dbg !362
  br i1 %4, label %7, label %5, !dbg !363

5:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !364, !tbaa !146
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !364
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !364, !tbaa !151
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 179, i32 noundef 1) #6, !dbg !367
  br label %80, !dbg !367

7:                                                ; preds = %2
  %8 = fcmp olt double %0, 0x20000000000000, !dbg !369
  br i1 %8, label %9, label %11, !dbg !370

9:                                                ; preds = %7
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !371, !tbaa !146
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !371
  store double 0x7FF0000000000000, ptr %10, align 8, !dbg !371, !tbaa !151
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 182, i32 noundef 16) #6, !dbg !374
  br label %80, !dbg !374

11:                                               ; preds = %7
  %12 = fcmp olt double %0, 1.000000e+00, !dbg !376
  br i1 %12, label %13, label %63, !dbg !377

13:                                               ; preds = %11
  %14 = tail call double @log(double noundef %0) #6, !dbg !378
  tail call void @llvm.dbg.value(metadata double %14, metadata !347, metadata !DIExpression()), !dbg !379
  %15 = fmul double %0, %0, !dbg !380
  tail call void @llvm.dbg.value(metadata double %15, metadata !352, metadata !DIExpression()), !dbg !379
  %16 = fmul double %15, 2.500000e-01, !dbg !381
  tail call void @llvm.dbg.value(metadata double %16, metadata !353, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata !168, metadata !169, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i32 6, metadata !177, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata double %16, metadata !178, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata double 0x3E355B410B3332C5, metadata !180, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i32 5, metadata !179, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata double 0x3E355B410B3332C5, metadata !180, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i32 5, metadata !179, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata double 0x3E355B410B3332C5, metadata !180, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i64 5, metadata !179, metadata !DIExpression()), !dbg !382
  %17 = fmul double %16, 0x3E355B410B3332C5, !dbg !384
  %18 = fadd double %17, 0x3E927E0FFAAEE53D, !dbg !385
  tail call void @llvm.dbg.value(metadata double %18, metadata !180, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i64 4, metadata !179, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata double %18, metadata !180, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i64 4, metadata !179, metadata !DIExpression()), !dbg !382
  %19 = fmul double %16, %18, !dbg !384
  %20 = fadd double %19, 0x3EE845C8E2E1423A, !dbg !385
  tail call void @llvm.dbg.value(metadata double %20, metadata !180, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i64 3, metadata !179, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata double %20, metadata !180, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i64 3, metadata !179, metadata !DIExpression()), !dbg !382
  %21 = fmul double %16, %20, !dbg !384
  %22 = fadd double %21, 0x3F36C16C16A27BAF, !dbg !385
  tail call void @llvm.dbg.value(metadata double %22, metadata !180, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i64 2, metadata !179, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata double %22, metadata !180, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i64 2, metadata !179, metadata !DIExpression()), !dbg !382
  %23 = fmul double %16, %22, !dbg !384
  %24 = fadd double %23, 0x3F7C71C71C71D1B3, !dbg !385
  tail call void @llvm.dbg.value(metadata double %24, metadata !180, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i64 1, metadata !179, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata double %24, metadata !180, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i64 1, metadata !179, metadata !DIExpression()), !dbg !382
  %25 = fmul double %16, %24, !dbg !384
  %26 = fadd double %25, 0x3FB5555555555555, !dbg !385
  tail call void @llvm.dbg.value(metadata double %26, metadata !180, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i64 0, metadata !179, metadata !DIExpression()), !dbg !382
  %27 = fmul double %16, %26, !dbg !386
  %28 = fadd double %27, 5.000000e-01, !dbg !387
  %29 = fmul double %16, %28, !dbg !388
  %30 = fadd double %29, 1.000000e+00, !dbg !389
  tail call void @llvm.dbg.value(metadata double %48, metadata !354, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata !168, metadata !169, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i32 9, metadata !177, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %15, metadata !178, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double 0xBCDB7E078296495F, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i32 8, metadata !179, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double 0xBCDB7E078296495F, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i32 8, metadata !179, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double 0xBCDB7E078296495F, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 8, metadata !179, metadata !DIExpression()), !dbg !390
  %31 = fmul double %15, 0xBCDB7E078296495F, !dbg !392
  %32 = fadd double %31, 0xBD5D4891F134D1BD, !dbg !393
  tail call void @llvm.dbg.value(metadata double %32, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 7, metadata !179, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %32, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 7, metadata !179, metadata !DIExpression()), !dbg !390
  %33 = fmul double %15, %32, !dbg !392
  %34 = fadd double %33, 0xBDD8630B65993898, !dbg !393
  tail call void @llvm.dbg.value(metadata double %34, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 6, metadata !179, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %34, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 6, metadata !179, metadata !DIExpression()), !dbg !390
  %35 = fmul double %15, %34, !dbg !392
  %36 = fadd double %35, 0xBE4E2129FF568BB1, !dbg !393
  tail call void @llvm.dbg.value(metadata double %36, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 5, metadata !179, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %36, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 5, metadata !179, metadata !DIExpression()), !dbg !390
  %37 = fmul double %15, %36, !dbg !392
  %38 = fadd double %37, 0xBEBA29182247C54B, !dbg !393
  tail call void @llvm.dbg.value(metadata double %38, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 4, metadata !179, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %38, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 4, metadata !179, metadata !DIExpression()), !dbg !390
  %39 = fmul double %15, %38, !dbg !392
  %40 = fadd double %39, 0xBF1D802AF7A5DB61, !dbg !393
  tail call void @llvm.dbg.value(metadata double %40, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 3, metadata !179, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %40, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 3, metadata !179, metadata !DIExpression()), !dbg !390
  %41 = fmul double %15, %40, !dbg !392
  %42 = fadd double %41, 0xBF7303AE729FF30F, !dbg !393
  tail call void @llvm.dbg.value(metadata double %42, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 2, metadata !179, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %42, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 2, metadata !179, metadata !DIExpression()), !dbg !390
  %43 = fmul double %15, %42, !dbg !392
  %44 = fadd double %43, 0xBFB5DADB014541EB, !dbg !393
  tail call void @llvm.dbg.value(metadata double %44, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 1, metadata !179, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %44, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 1, metadata !179, metadata !DIExpression()), !dbg !390
  %45 = fmul double %15, %44, !dbg !392
  %46 = fadd double %45, 0xBFD3B5B6028A83D6, !dbg !393
  tail call void @llvm.dbg.value(metadata double %46, metadata !180, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 0, metadata !179, metadata !DIExpression()), !dbg !390
  %47 = fmul double %0, 5.000000e-01, !dbg !394
  %48 = fmul double %47, %30, !dbg !395
  %49 = fmul double %15, %46, !dbg !396
  %50 = fmul double %14, %0, !dbg !397
  %51 = fmul double %50, %48, !dbg !398
  %52 = fadd double %51, %49, !dbg !399
  %53 = fadd double %52, 1.000000e+00, !dbg !400
  %54 = fdiv double %53, %0, !dbg !401
  store double %54, ptr %1, align 8, !dbg !402, !tbaa !146
  %55 = tail call double @llvm.fabs.f64(double %14), !dbg !403
  %56 = fmul double %55, 6.000000e-01, !dbg !404
  %57 = fadd double %56, 1.600000e+00, !dbg !405
  %58 = fmul double %57, 0x3CB0000000000000, !dbg !406
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !407
  %60 = tail call double @llvm.fabs.f64(double %54), !dbg !408
  %61 = fmul double %60, 0x3CC0000000000000, !dbg !409
  %62 = fadd double %58, %61, !dbg !410
  store double %62, ptr %59, align 8, !dbg !410, !tbaa !151
  br label %80

63:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !411
  %64 = call i32 @gsl_sf_bessel_K1_scaled_e(double noundef %0, ptr noundef nonnull %3), !dbg !412, !range !413
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !357, metadata !DIExpression()), !dbg !360
  %65 = fneg double %0, !dbg !414
  %66 = load double, ptr %3, align 8, !dbg !415, !tbaa !146
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !416
  %68 = load double, ptr %67, align 8, !dbg !416, !tbaa !151
  %69 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %65, double noundef 0.000000e+00, double noundef %66, double noundef %68, ptr noundef %1) #6, !dbg !417
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !358, metadata !DIExpression()), !dbg !360
  %70 = load double, ptr %1, align 8, !dbg !418, !tbaa !146
  %71 = tail call double @llvm.fabs.f64(double %70), !dbg !419
  %72 = tail call double @llvm.fabs.f64(double %0), !dbg !420
  %73 = fmul double %72, 0x3CB0000000000000, !dbg !421
  %74 = fdiv double %68, %66, !dbg !422
  %75 = fadd double %73, %74, !dbg !423
  %76 = fmul double %75, %71, !dbg !424
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !425
  store double %76, ptr %77, align 8, !dbg !426, !tbaa !151
  %78 = icmp eq i32 %69, 0, !dbg !427
  %79 = select i1 %78, i32 %64, i32 %69, !dbg !427
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !428
  br label %80

80:                                               ; preds = %5, %9, %13, %63
  %81 = phi i32 [ 1, %5 ], [ 16, %9 ], [ 0, %13 ], [ %79, %63 ], !dbg !429
  ret i32 %81, !dbg !430
}

declare !dbg !431 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_K1_scaled(double noundef %0) local_unnamed_addr #0 !dbg !435 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !442
  call void @llvm.dbg.assign(metadata i1 undef, metadata !440, metadata !DIExpression(), metadata !442, metadata ptr %2, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata double %0, metadata !439, metadata !DIExpression()), !dbg !443
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !444
  %3 = call i32 @gsl_sf_bessel_K1_scaled_e(double noundef %0, ptr noundef nonnull %2), !dbg !444, !range !413
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !441, metadata !DIExpression()), !dbg !443
  %4 = icmp eq i32 %3, 0, !dbg !445
  br i1 %4, label %6, label %5, !dbg !444

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 211, i32 noundef %3) #6, !dbg !447
  br label %6, !dbg !447

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !444, !tbaa !146
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !450
  ret double %7, !dbg !450
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_K1(double noundef %0) local_unnamed_addr #0 !dbg !451 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !456
  call void @llvm.dbg.assign(metadata i1 undef, metadata !454, metadata !DIExpression(), metadata !456, metadata ptr %2, metadata !DIExpression()), !dbg !457
  tail call void @llvm.dbg.value(metadata double %0, metadata !453, metadata !DIExpression()), !dbg !457
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !458
  %3 = call i32 @gsl_sf_bessel_K1_e(double noundef %0, ptr noundef nonnull %2), !dbg !458
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !455, metadata !DIExpression()), !dbg !457
  %4 = icmp eq i32 %3, 0, !dbg !459
  br i1 %4, label %6, label %5, !dbg !458

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 216, i32 noundef %3) #6, !dbg !461
  br label %6, !dbg !461

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !458, !tbaa !146
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !464
  ret double %7, !dbg !464
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

!llvm.dbg.cu = !{!29}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_K1.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "e88071233bfce57df29f78fff221d26e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 211, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 38)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 31)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "ak1_data", scope: !29, file: !2, line: 66, type: !99, isLocal: true, isDefinition: true)
!29 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, globals: !70, splitDebugInlining: false, nameTableKind: None)
!30 = !{!31}
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 39, baseType: !33, size: 32, elements: !34)
!32 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!35 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!36 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!37 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!38 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!39 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!40 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!41 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!42 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!43 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!44 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!45 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!46 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!47 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!48 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!49 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!50 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!51 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!52 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!53 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!54 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!55 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!56 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!57 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!58 = !DIEnumerator(name: "GSL_ESING", value: 21)
!59 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!60 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!61 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!62 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!63 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!64 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!65 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!66 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!67 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!68 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!69 = !DIEnumerator(name: "GSL_EOF", value: 32)
!70 = !{!0, !7, !12, !17, !22, !71, !77, !80, !27, !92, !94}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "i1_poly", scope: !29, file: !2, line: 53, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 448, elements: !75)
!74 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!75 = !{!76}
!76 = !DISubrange(count: 7)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "k1_poly", scope: !29, file: !2, line: 41, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 576, elements: !15)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "ak1_cs", scope: !29, file: !2, line: 94, type: !82, isLocal: true, isDefinition: true)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !83, line: 29, baseType: !84)
!83 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !83, line: 22, size: 320, elements: !85)
!85 = !{!86, !88, !89, !90, !91}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !84, file: !83, line: 23, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !84, file: !83, line: 24, baseType: !33, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !84, file: !83, line: 25, baseType: !74, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !84, file: !83, line: 26, baseType: !74, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !84, file: !83, line: 27, baseType: !33, size: 32, offset: 256)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "ak12_cs", scope: !29, file: !2, line: 122, type: !82, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "ak12_data", scope: !29, file: !2, line: 105, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 896, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 14)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1600, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 25)
!102 = !{i32 7, !"Dwarf Version", i32 5}
!103 = !{i32 2, !"Debug Info Version", i32 3}
!104 = !{i32 1, !"wchar_size", i32 4}
!105 = !{i32 8, !"PIC Level", i32 2}
!106 = !{i32 7, !"PIE Level", i32 2}
!107 = !{i32 7, !"uwtable", i32 2}
!108 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!109 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!110 = distinct !DISubprogram(name: "gsl_sf_bessel_K1_scaled_e", scope: !2, file: !2, line: 132, type: !111, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !121)
!111 = !DISubroutineType(types: !112)
!112 = !{!33, !113, !114}
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !116, line: 41, baseType: !117)
!116 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !116, line: 37, size: 128, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !117, file: !116, line: 38, baseType: !74, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !117, file: !116, line: 39, baseType: !74, size: 64, offset: 64)
!121 = !{!122, !123, !124, !129, !130, !131, !132, !133, !136, !137, !139}
!122 = !DILocalVariable(name: "x", arg: 1, scope: !110, file: !2, line: 132, type: !113)
!123 = !DILocalVariable(name: "result", arg: 2, scope: !110, file: !2, line: 132, type: !114)
!124 = !DILocalVariable(name: "lx", scope: !125, file: !2, line: 143, type: !113)
!125 = distinct !DILexicalBlock(scope: !126, file: !2, line: 142, column: 20)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 142, column: 11)
!127 = distinct !DILexicalBlock(scope: !128, file: !2, line: 139, column: 11)
!128 = distinct !DILexicalBlock(scope: !110, file: !2, line: 136, column: 6)
!129 = !DILocalVariable(name: "ex", scope: !125, file: !2, line: 144, type: !113)
!130 = !DILocalVariable(name: "x2", scope: !125, file: !2, line: 145, type: !113)
!131 = !DILocalVariable(name: "t", scope: !125, file: !2, line: 146, type: !113)
!132 = !DILocalVariable(name: "i1", scope: !125, file: !2, line: 147, type: !113)
!133 = !DILocalVariable(name: "sx", scope: !134, file: !2, line: 154, type: !113)
!134 = distinct !DILexicalBlock(scope: !135, file: !2, line: 153, column: 21)
!135 = distinct !DILexicalBlock(scope: !126, file: !2, line: 153, column: 11)
!136 = !DILocalVariable(name: "c", scope: !134, file: !2, line: 155, type: !115)
!137 = !DILocalVariable(name: "sx", scope: !138, file: !2, line: 163, type: !113)
!138 = distinct !DILexicalBlock(scope: !135, file: !2, line: 162, column: 8)
!139 = !DILocalVariable(name: "c", scope: !138, file: !2, line: 164, type: !115)
!140 = !DILocation(line: 0, scope: !110)
!141 = !DILocation(line: 136, column: 8, scope: !128)
!142 = !DILocation(line: 136, column: 6, scope: !110)
!143 = !DILocation(line: 137, column: 5, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !2, line: 137, column: 5)
!145 = distinct !DILexicalBlock(scope: !128, file: !2, line: 136, column: 16)
!146 = !{!147, !148, i64 0}
!147 = !{!"gsl_sf_result_struct", !148, i64 0, !148, i64 8}
!148 = !{!"double", !149, i64 0}
!149 = !{!"omnipotent char", !150, i64 0}
!150 = !{!"Simple C/C++ TBAA"}
!151 = !{!147, !148, i64 8}
!152 = !DILocation(line: 137, column: 5, scope: !153)
!153 = distinct !DILexicalBlock(scope: !144, file: !2, line: 137, column: 5)
!154 = !DILocation(line: 139, column: 13, scope: !127)
!155 = !DILocation(line: 139, column: 11, scope: !128)
!156 = !DILocation(line: 140, column: 5, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !2, line: 140, column: 5)
!158 = distinct !DILexicalBlock(scope: !127, file: !2, line: 139, column: 32)
!159 = !DILocation(line: 140, column: 5, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !2, line: 140, column: 5)
!161 = !DILocation(line: 142, column: 13, scope: !126)
!162 = !DILocation(line: 142, column: 11, scope: !127)
!163 = !DILocation(line: 143, column: 23, scope: !125)
!164 = !DILocation(line: 0, scope: !125)
!165 = !DILocation(line: 144, column: 23, scope: !125)
!166 = !DILocation(line: 145, column: 24, scope: !125)
!167 = !DILocation(line: 146, column: 27, scope: !125)
!168 = !{}
!169 = !DILocalVariable(name: "c", arg: 1, scope: !170, file: !171, line: 61, type: !174)
!170 = distinct !DISubprogram(name: "gsl_poly_eval", scope: !171, file: !171, line: 61, type: !172, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !176)
!171 = !DIFile(filename: "../gsl/gsl_poly.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "12a100e1cfeec1a19df8b89da050794d")
!172 = !DISubroutineType(types: !173)
!173 = !{!74, !174, !175, !113}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!176 = !{!169, !177, !178, !179, !180}
!177 = !DILocalVariable(name: "len", arg: 2, scope: !170, file: !171, line: 61, type: !175)
!178 = !DILocalVariable(name: "x", arg: 3, scope: !170, file: !171, line: 61, type: !113)
!179 = !DILocalVariable(name: "i", scope: !170, file: !171, line: 63, type: !33)
!180 = !DILocalVariable(name: "ans", scope: !170, file: !171, line: 64, type: !74)
!181 = !DILocation(line: 0, scope: !170, inlinedAt: !182)
!182 = distinct !DILocation(line: 147, column: 55, scope: !125)
!183 = !DILocation(line: 65, column: 43, scope: !184, inlinedAt: !182)
!184 = distinct !DILexicalBlock(scope: !185, file: !171, line: 65, column: 3)
!185 = distinct !DILexicalBlock(scope: !170, file: !171, line: 65, column: 3)
!186 = !DILocation(line: 65, column: 39, scope: !184, inlinedAt: !182)
!187 = !DILocation(line: 147, column: 53, scope: !125)
!188 = !DILocation(line: 147, column: 49, scope: !125)
!189 = !DILocation(line: 147, column: 42, scope: !125)
!190 = !DILocation(line: 147, column: 38, scope: !125)
!191 = !DILocation(line: 0, scope: !170, inlinedAt: !192)
!192 = distinct !DILocation(line: 148, column: 31, scope: !125)
!193 = !DILocation(line: 65, column: 43, scope: !184, inlinedAt: !192)
!194 = !DILocation(line: 65, column: 39, scope: !184, inlinedAt: !192)
!195 = !DILocation(line: 147, column: 27, scope: !125)
!196 = !DILocation(line: 147, column: 31, scope: !125)
!197 = !DILocation(line: 148, column: 29, scope: !125)
!198 = !DILocation(line: 148, column: 63, scope: !125)
!199 = !DILocation(line: 148, column: 68, scope: !125)
!200 = !DILocation(line: 148, column: 59, scope: !125)
!201 = !DILocation(line: 148, column: 73, scope: !125)
!202 = !DILocation(line: 148, column: 23, scope: !125)
!203 = !DILocation(line: 148, column: 78, scope: !125)
!204 = !DILocation(line: 148, column: 18, scope: !125)
!205 = !DILocation(line: 149, column: 30, scope: !125)
!206 = !DILocation(line: 149, column: 38, scope: !125)
!207 = !DILocation(line: 149, column: 29, scope: !125)
!208 = !DILocation(line: 149, column: 23, scope: !125)
!209 = !DILocation(line: 149, column: 44, scope: !125)
!210 = !DILocation(line: 149, column: 13, scope: !125)
!211 = !DILocation(line: 150, column: 44, scope: !125)
!212 = !DILocation(line: 150, column: 42, scope: !125)
!213 = !DILocation(line: 150, column: 17, scope: !125)
!214 = !DILocation(line: 153, column: 13, scope: !135)
!215 = !DILocation(line: 0, scope: !135)
!216 = !DILocation(line: 153, column: 11, scope: !126)
!217 = !DILocation(line: 0, scope: !134)
!218 = !DILocation(line: 156, column: 33, scope: !134)
!219 = !DILocation(line: 156, column: 38, scope: !134)
!220 = !DILocalVariable(name: "cs", arg: 1, scope: !221, file: !222, line: 3, type: !225)
!221 = distinct !DISubprogram(name: "cheb_eval_e", scope: !222, file: !222, line: 3, type: !223, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !227)
!222 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!223 = !DISubroutineType(types: !224)
!224 = !{!33, !225, !113, !114}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!227 = !{!220, !228, !229, !230, !231, !232, !233, !234, !235, !236, !240}
!228 = !DILocalVariable(name: "x", arg: 2, scope: !221, file: !222, line: 4, type: !113)
!229 = !DILocalVariable(name: "result", arg: 3, scope: !221, file: !222, line: 5, type: !114)
!230 = !DILocalVariable(name: "j", scope: !221, file: !222, line: 7, type: !33)
!231 = !DILocalVariable(name: "d", scope: !221, file: !222, line: 8, type: !74)
!232 = !DILocalVariable(name: "dd", scope: !221, file: !222, line: 9, type: !74)
!233 = !DILocalVariable(name: "y", scope: !221, file: !222, line: 11, type: !74)
!234 = !DILocalVariable(name: "y2", scope: !221, file: !222, line: 12, type: !74)
!235 = !DILocalVariable(name: "e", scope: !221, file: !222, line: 14, type: !74)
!236 = !DILocalVariable(name: "temp", scope: !237, file: !222, line: 17, type: !74)
!237 = distinct !DILexicalBlock(scope: !238, file: !222, line: 16, column: 33)
!238 = distinct !DILexicalBlock(scope: !239, file: !222, line: 16, column: 3)
!239 = distinct !DILexicalBlock(scope: !221, file: !222, line: 16, column: 3)
!240 = !DILocalVariable(name: "temp", scope: !241, file: !222, line: 24, type: !74)
!241 = distinct !DILexicalBlock(scope: !221, file: !222, line: 23, column: 3)
!242 = !DILocation(line: 0, scope: !221, inlinedAt: !243)
!243 = distinct !DILocation(line: 156, column: 5, scope: !134)
!244 = !DILocation(line: 11, column: 19, scope: !221, inlinedAt: !243)
!245 = !DILocation(line: 11, column: 22, scope: !221, inlinedAt: !243)
!246 = !DILocation(line: 11, column: 30, scope: !221, inlinedAt: !243)
!247 = !DILocation(line: 11, column: 39, scope: !221, inlinedAt: !243)
!248 = !DILocation(line: 12, column: 19, scope: !221, inlinedAt: !243)
!249 = !DILocation(line: 16, column: 3, scope: !239, inlinedAt: !243)
!250 = !DILocation(line: 0, scope: !237, inlinedAt: !243)
!251 = !DILocation(line: 18, column: 11, scope: !237, inlinedAt: !243)
!252 = !DILocation(line: 18, column: 14, scope: !237, inlinedAt: !243)
!253 = !DILocation(line: 18, column: 21, scope: !237, inlinedAt: !243)
!254 = !{!148, !148, i64 0}
!255 = !DILocation(line: 18, column: 19, scope: !237, inlinedAt: !243)
!256 = !DILocation(line: 19, column: 10, scope: !237, inlinedAt: !243)
!257 = !DILocation(line: 19, column: 26, scope: !237, inlinedAt: !243)
!258 = !DILocation(line: 19, column: 24, scope: !237, inlinedAt: !243)
!259 = !DILocation(line: 19, column: 37, scope: !237, inlinedAt: !243)
!260 = !DILocation(line: 19, column: 35, scope: !237, inlinedAt: !243)
!261 = !DILocation(line: 19, column: 7, scope: !237, inlinedAt: !243)
!262 = !DILocation(line: 16, column: 29, scope: !238, inlinedAt: !243)
!263 = !DILocation(line: 16, column: 23, scope: !238, inlinedAt: !243)
!264 = distinct !{!264, !249, !265, !266}
!265 = !DILocation(line: 21, column: 3, scope: !239, inlinedAt: !243)
!266 = !{!"llvm.loop.mustprogress"}
!267 = !DILocation(line: 0, scope: !241, inlinedAt: !243)
!268 = !DILocation(line: 25, column: 10, scope: !241, inlinedAt: !243)
!269 = !DILocation(line: 25, column: 13, scope: !241, inlinedAt: !243)
!270 = !DILocation(line: 25, column: 18, scope: !241, inlinedAt: !243)
!271 = !DILocation(line: 26, column: 10, scope: !241, inlinedAt: !243)
!272 = !DILocation(line: 26, column: 25, scope: !241, inlinedAt: !243)
!273 = !DILocation(line: 26, column: 23, scope: !241, inlinedAt: !243)
!274 = !DILocation(line: 26, column: 34, scope: !241, inlinedAt: !243)
!275 = !DILocation(line: 26, column: 7, scope: !241, inlinedAt: !243)
!276 = !DILocation(line: 30, column: 33, scope: !221, inlinedAt: !243)
!277 = !DILocation(line: 30, column: 37, scope: !221, inlinedAt: !243)
!278 = !DILocation(line: 157, column: 27, scope: !134)
!279 = !DILocation(line: 157, column: 36, scope: !134)
!280 = !DILocation(line: 157, column: 18, scope: !134)
!281 = !DILocation(line: 158, column: 26, scope: !134)
!282 = !DILocation(line: 158, column: 13, scope: !134)
!283 = !DILocation(line: 159, column: 44, scope: !134)
!284 = !DILocation(line: 159, column: 42, scope: !134)
!285 = !DILocation(line: 159, column: 17, scope: !134)
!286 = !DILocation(line: 0, scope: !138)
!287 = !DILocation(line: 165, column: 33, scope: !138)
!288 = !DILocation(line: 0, scope: !221, inlinedAt: !289)
!289 = distinct !DILocation(line: 165, column: 5, scope: !138)
!290 = !DILocation(line: 11, column: 19, scope: !221, inlinedAt: !289)
!291 = !DILocation(line: 11, column: 22, scope: !221, inlinedAt: !289)
!292 = !DILocation(line: 11, column: 30, scope: !221, inlinedAt: !289)
!293 = !DILocation(line: 11, column: 39, scope: !221, inlinedAt: !289)
!294 = !DILocation(line: 12, column: 19, scope: !221, inlinedAt: !289)
!295 = !DILocation(line: 16, column: 3, scope: !239, inlinedAt: !289)
!296 = !DILocation(line: 0, scope: !237, inlinedAt: !289)
!297 = !DILocation(line: 18, column: 11, scope: !237, inlinedAt: !289)
!298 = !DILocation(line: 18, column: 14, scope: !237, inlinedAt: !289)
!299 = !DILocation(line: 18, column: 21, scope: !237, inlinedAt: !289)
!300 = !DILocation(line: 18, column: 19, scope: !237, inlinedAt: !289)
!301 = !DILocation(line: 19, column: 10, scope: !237, inlinedAt: !289)
!302 = !DILocation(line: 19, column: 26, scope: !237, inlinedAt: !289)
!303 = !DILocation(line: 19, column: 24, scope: !237, inlinedAt: !289)
!304 = !DILocation(line: 19, column: 37, scope: !237, inlinedAt: !289)
!305 = !DILocation(line: 19, column: 35, scope: !237, inlinedAt: !289)
!306 = !DILocation(line: 19, column: 7, scope: !237, inlinedAt: !289)
!307 = !DILocation(line: 16, column: 29, scope: !238, inlinedAt: !289)
!308 = !DILocation(line: 16, column: 23, scope: !238, inlinedAt: !289)
!309 = distinct !{!309, !295, !310, !266}
!310 = !DILocation(line: 21, column: 3, scope: !239, inlinedAt: !289)
!311 = !DILocation(line: 0, scope: !241, inlinedAt: !289)
!312 = !DILocation(line: 25, column: 10, scope: !241, inlinedAt: !289)
!313 = !DILocation(line: 25, column: 13, scope: !241, inlinedAt: !289)
!314 = !DILocation(line: 25, column: 18, scope: !241, inlinedAt: !289)
!315 = !DILocation(line: 26, column: 10, scope: !241, inlinedAt: !289)
!316 = !DILocation(line: 26, column: 25, scope: !241, inlinedAt: !289)
!317 = !DILocation(line: 26, column: 23, scope: !241, inlinedAt: !289)
!318 = !DILocation(line: 26, column: 34, scope: !241, inlinedAt: !289)
!319 = !DILocation(line: 26, column: 7, scope: !241, inlinedAt: !289)
!320 = !DILocation(line: 30, column: 33, scope: !221, inlinedAt: !289)
!321 = !DILocation(line: 30, column: 37, scope: !221, inlinedAt: !289)
!322 = !DILocation(line: 166, column: 26, scope: !138)
!323 = !DILocation(line: 166, column: 35, scope: !138)
!324 = !DILocation(line: 166, column: 18, scope: !138)
!325 = !DILocation(line: 167, column: 26, scope: !138)
!326 = !DILocation(line: 167, column: 13, scope: !138)
!327 = !DILocation(line: 168, column: 44, scope: !138)
!328 = !DILocation(line: 168, column: 42, scope: !138)
!329 = !DILocation(line: 168, column: 17, scope: !138)
!330 = !DILocation(line: 0, scope: !128)
!331 = !DILocation(line: 171, column: 1, scope: !110)
!332 = !DISubprogram(name: "gsl_error", scope: !32, file: !32, line: 77, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !335, !335, !33, !33}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!337 = !DISubprogram(name: "log", scope: !338, file: !338, line: 104, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!339 = !DISubroutineType(types: !340)
!340 = !{!74, !74}
!341 = !DISubprogram(name: "exp", scope: !338, file: !338, line: 95, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DISubprogram(name: "sqrt", scope: !338, file: !338, line: 143, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!343 = distinct !DISubprogram(name: "gsl_sf_bessel_K1_e", scope: !2, file: !2, line: 174, type: !111, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !344)
!344 = !{!345, !346, !347, !352, !353, !354, !355, !357, !358}
!345 = !DILocalVariable(name: "x", arg: 1, scope: !343, file: !2, line: 174, type: !113)
!346 = !DILocalVariable(name: "result", arg: 2, scope: !343, file: !2, line: 174, type: !114)
!347 = !DILocalVariable(name: "lx", scope: !348, file: !2, line: 185, type: !113)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 184, column: 20)
!349 = distinct !DILexicalBlock(scope: !350, file: !2, line: 184, column: 11)
!350 = distinct !DILexicalBlock(scope: !351, file: !2, line: 181, column: 11)
!351 = distinct !DILexicalBlock(scope: !343, file: !2, line: 178, column: 6)
!352 = !DILocalVariable(name: "x2", scope: !348, file: !2, line: 186, type: !113)
!353 = !DILocalVariable(name: "t", scope: !348, file: !2, line: 187, type: !113)
!354 = !DILocalVariable(name: "i1", scope: !348, file: !2, line: 188, type: !113)
!355 = !DILocalVariable(name: "K1_scaled", scope: !356, file: !2, line: 195, type: !115)
!356 = distinct !DILexicalBlock(scope: !349, file: !2, line: 194, column: 8)
!357 = !DILocalVariable(name: "stat_K1", scope: !356, file: !2, line: 196, type: !33)
!358 = !DILocalVariable(name: "stat_e", scope: !356, file: !2, line: 197, type: !33)
!359 = distinct !DIAssignID()
!360 = !DILocation(line: 0, scope: !356)
!361 = !DILocation(line: 0, scope: !343)
!362 = !DILocation(line: 178, column: 8, scope: !351)
!363 = !DILocation(line: 178, column: 6, scope: !343)
!364 = !DILocation(line: 179, column: 5, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !2, line: 179, column: 5)
!366 = distinct !DILexicalBlock(scope: !351, file: !2, line: 178, column: 16)
!367 = !DILocation(line: 179, column: 5, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !2, line: 179, column: 5)
!369 = !DILocation(line: 181, column: 13, scope: !350)
!370 = !DILocation(line: 181, column: 11, scope: !351)
!371 = !DILocation(line: 182, column: 5, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !2, line: 182, column: 5)
!373 = distinct !DILexicalBlock(scope: !350, file: !2, line: 181, column: 32)
!374 = !DILocation(line: 182, column: 5, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !2, line: 182, column: 5)
!376 = !DILocation(line: 184, column: 13, scope: !349)
!377 = !DILocation(line: 184, column: 11, scope: !350)
!378 = !DILocation(line: 185, column: 23, scope: !348)
!379 = !DILocation(line: 0, scope: !348)
!380 = !DILocation(line: 186, column: 24, scope: !348)
!381 = !DILocation(line: 187, column: 27, scope: !348)
!382 = !DILocation(line: 0, scope: !170, inlinedAt: !383)
!383 = distinct !DILocation(line: 188, column: 55, scope: !348)
!384 = !DILocation(line: 65, column: 43, scope: !184, inlinedAt: !383)
!385 = !DILocation(line: 65, column: 39, scope: !184, inlinedAt: !383)
!386 = !DILocation(line: 188, column: 53, scope: !348)
!387 = !DILocation(line: 188, column: 49, scope: !348)
!388 = !DILocation(line: 188, column: 42, scope: !348)
!389 = !DILocation(line: 188, column: 38, scope: !348)
!390 = !DILocation(line: 0, scope: !170, inlinedAt: !391)
!391 = distinct !DILocation(line: 189, column: 26, scope: !348)
!392 = !DILocation(line: 65, column: 43, scope: !184, inlinedAt: !391)
!393 = !DILocation(line: 65, column: 39, scope: !184, inlinedAt: !391)
!394 = !DILocation(line: 188, column: 27, scope: !348)
!395 = !DILocation(line: 188, column: 31, scope: !348)
!396 = !DILocation(line: 189, column: 24, scope: !348)
!397 = !DILocation(line: 189, column: 58, scope: !348)
!398 = !DILocation(line: 189, column: 63, scope: !348)
!399 = !DILocation(line: 189, column: 54, scope: !348)
!400 = !DILocation(line: 189, column: 68, scope: !348)
!401 = !DILocation(line: 189, column: 73, scope: !348)
!402 = !DILocation(line: 189, column: 18, scope: !348)
!403 = !DILocation(line: 190, column: 25, scope: !348)
!404 = !DILocation(line: 190, column: 33, scope: !348)
!405 = !DILocation(line: 190, column: 24, scope: !348)
!406 = !DILocation(line: 190, column: 39, scope: !348)
!407 = !DILocation(line: 190, column: 13, scope: !348)
!408 = !DILocation(line: 191, column: 44, scope: !348)
!409 = !DILocation(line: 191, column: 42, scope: !348)
!410 = !DILocation(line: 191, column: 17, scope: !348)
!411 = !DILocation(line: 195, column: 5, scope: !356)
!412 = !DILocation(line: 196, column: 19, scope: !356)
!413 = !{i32 0, i32 17}
!414 = !DILocation(line: 197, column: 41, scope: !356)
!415 = !DILocation(line: 198, column: 54, scope: !356)
!416 = !DILocation(line: 198, column: 69, scope: !356)
!417 = !DILocation(line: 197, column: 19, scope: !356)
!418 = !DILocation(line: 200, column: 32, scope: !356)
!419 = !DILocation(line: 200, column: 19, scope: !356)
!420 = !DILocation(line: 200, column: 56, scope: !356)
!421 = !DILocation(line: 200, column: 55, scope: !356)
!422 = !DILocation(line: 200, column: 79, scope: !356)
!423 = !DILocation(line: 200, column: 64, scope: !356)
!424 = !DILocation(line: 200, column: 37, scope: !356)
!425 = !DILocation(line: 200, column: 13, scope: !356)
!426 = !DILocation(line: 200, column: 17, scope: !356)
!427 = !DILocation(line: 201, column: 12, scope: !356)
!428 = !DILocation(line: 202, column: 3, scope: !349)
!429 = !DILocation(line: 0, scope: !351)
!430 = !DILocation(line: 203, column: 1, scope: !343)
!431 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !432, file: !432, line: 122, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!433 = !DISubroutineType(types: !434)
!434 = !{!33, !113, !113, !113, !113, !114}
!435 = distinct !DISubprogram(name: "gsl_sf_bessel_K1_scaled", scope: !2, file: !2, line: 209, type: !436, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{!74, !113}
!438 = !{!439, !440, !441}
!439 = !DILocalVariable(name: "x", arg: 1, scope: !435, file: !2, line: 209, type: !113)
!440 = !DILocalVariable(name: "result", scope: !435, file: !2, line: 211, type: !115)
!441 = !DILocalVariable(name: "status", scope: !435, file: !2, line: 211, type: !33)
!442 = distinct !DIAssignID()
!443 = !DILocation(line: 0, scope: !435)
!444 = !DILocation(line: 211, column: 3, scope: !435)
!445 = !DILocation(line: 211, column: 3, scope: !446)
!446 = distinct !DILexicalBlock(scope: !435, file: !2, line: 211, column: 3)
!447 = !DILocation(line: 211, column: 3, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !2, line: 211, column: 3)
!449 = distinct !DILexicalBlock(scope: !446, file: !2, line: 211, column: 3)
!450 = !DILocation(line: 212, column: 1, scope: !435)
!451 = distinct !DISubprogram(name: "gsl_sf_bessel_K1", scope: !2, file: !2, line: 214, type: !436, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !452)
!452 = !{!453, !454, !455}
!453 = !DILocalVariable(name: "x", arg: 1, scope: !451, file: !2, line: 214, type: !113)
!454 = !DILocalVariable(name: "result", scope: !451, file: !2, line: 216, type: !115)
!455 = !DILocalVariable(name: "status", scope: !451, file: !2, line: 216, type: !33)
!456 = distinct !DIAssignID()
!457 = !DILocation(line: 0, scope: !451)
!458 = !DILocation(line: 216, column: 3, scope: !451)
!459 = !DILocation(line: 216, column: 3, scope: !460)
!460 = distinct !DILexicalBlock(scope: !451, file: !2, line: 216, column: 3)
!461 = !DILocation(line: 216, column: 3, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !2, line: 216, column: 3)
!463 = distinct !DILexicalBlock(scope: !460, file: !2, line: 216, column: 3)
!464 = !DILocation(line: 217, column: 1, scope: !451)
