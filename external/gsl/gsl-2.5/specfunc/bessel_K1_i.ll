; ModuleID = 'bessel_K1.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 137, i32 noundef 1) #5, !dbg !152
  br label %104, !dbg !152

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x20000000000000, !dbg !154
  br i1 %7, label %8, label %10, !dbg !155

8:                                                ; preds = %6
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !156, !tbaa !146
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !156
  store double 0x7FF0000000000000, ptr %9, align 8, !dbg !156, !tbaa !151
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 140, i32 noundef 16) #5, !dbg !159
  br label %104, !dbg !159

10:                                               ; preds = %6
  %11 = fcmp olt double %0, 1.000000e+00, !dbg !161
  br i1 %11, label %12, label %45, !dbg !162

12:                                               ; preds = %10
  %handler_result51 = call double @callHandler(i32 12, double %0, double %0), !dbg !163
  tail call void @llvm.dbg.value(metadata double %handler_result51, metadata !124, metadata !DIExpression()), !dbg !164
  %13 = tail call double @exp(double noundef %0) #5, !dbg !163
  tail call void @llvm.dbg.value(metadata double %13, metadata !129, metadata !DIExpression()), !dbg !164
  %14 = fmul double %0, %0, !dbg !165
  tail call void @llvm.dbg.value(metadata double %14, metadata !130, metadata !DIExpression()), !dbg !164
  %15 = fmul double %14, 2.500000e-01, !dbg !166
  tail call void @llvm.dbg.value(metadata double %15, metadata !131, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata !167, metadata !168, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 6, metadata !176, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double %15, metadata !177, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double 0x3E355B410B3332C5, metadata !179, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 5, metadata !178, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double 0x3E355B410B3332C5, metadata !179, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 5, metadata !178, metadata !DIExpression()), !dbg !180
  %16 = fmul double %15, 0x3E355B410B3332C5, !dbg !182
  %handler_result = call double @fAddHandlerDouble(double %16, double 0x3E927E0FFAAEE53D), !dbg !182
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !179, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 4, metadata !178, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !179, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 4, metadata !178, metadata !DIExpression()), !dbg !180
  %17 = fmul double %15, %handler_result, !dbg !182
  %handler_result1 = call double @fAddHandlerDouble(double %17, double 0x3EE845C8E2E1423A), !dbg !182
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !179, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 3, metadata !178, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !179, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 3, metadata !178, metadata !DIExpression()), !dbg !180
  %18 = fmul double %15, %handler_result1, !dbg !182
  %handler_result2 = call double @fAddHandlerDouble(double %18, double 0x3F36C16C16A27BAF), !dbg !182
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !179, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 2, metadata !178, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !179, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 2, metadata !178, metadata !DIExpression()), !dbg !180
  %19 = fmul double %15, %handler_result2, !dbg !182
  %handler_result3 = call double @fAddHandlerDouble(double %19, double 0x3F7C71C71C71D1B3), !dbg !182
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !179, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 1, metadata !178, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !179, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 1, metadata !178, metadata !DIExpression()), !dbg !180
  %20 = fmul double %15, %handler_result3, !dbg !182
  %handler_result4 = call double @fAddHandlerDouble(double %20, double 0x3FB5555555555555), !dbg !185
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !179, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()), !dbg !180
  %21 = fmul double %15, %handler_result4, !dbg !185
  %handler_result5 = call double @fAddHandlerDouble(double %21, double 5.000000e-01), !dbg !186
  %22 = fmul double %15, %handler_result5, !dbg !186
  %handler_result6 = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !187
  tail call void @llvm.dbg.value(metadata double %32, metadata !132, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata !167, metadata !168, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i32 9, metadata !176, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %14, metadata !177, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double 0xBCDB7E078296495F, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i32 8, metadata !178, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double 0xBCDB7E078296495F, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 8, metadata !178, metadata !DIExpression()), !dbg !189
  %23 = fmul double %14, 0xBCDB7E078296495F, !dbg !187
  %handler_result7 = call double @fAddHandlerDouble(double %23, double 0xBD5D4891F134D1BD), !dbg !187
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 7, metadata !178, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 7, metadata !178, metadata !DIExpression()), !dbg !189
  %24 = fmul double %14, %handler_result7, !dbg !187
  %handler_result8 = call double @fAddHandlerDouble(double %24, double 0xBDD8630B65993898), !dbg !187
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 6, metadata !178, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 6, metadata !178, metadata !DIExpression()), !dbg !189
  %25 = fmul double %14, %handler_result8, !dbg !187
  %handler_result9 = call double @fAddHandlerDouble(double %25, double 0xBE4E2129FF568BB1), !dbg !187
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 5, metadata !178, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 5, metadata !178, metadata !DIExpression()), !dbg !189
  %26 = fmul double %14, %handler_result9, !dbg !187
  %handler_result10 = call double @fAddHandlerDouble(double %26, double 0xBEBA29182247C54B), !dbg !187
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 4, metadata !178, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 4, metadata !178, metadata !DIExpression()), !dbg !189
  %27 = fmul double %14, %handler_result10, !dbg !187
  %handler_result11 = call double @fAddHandlerDouble(double %27, double 0xBF1D802AF7A5DB61), !dbg !187
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 3, metadata !178, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 3, metadata !178, metadata !DIExpression()), !dbg !189
  %28 = fmul double %14, %handler_result11, !dbg !187
  %handler_result12 = call double @fAddHandlerDouble(double %28, double 0xBF7303AE729FF30F), !dbg !187
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 2, metadata !178, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 2, metadata !178, metadata !DIExpression()), !dbg !189
  %29 = fmul double %14, %handler_result12, !dbg !187
  %handler_result13 = call double @fAddHandlerDouble(double %29, double 0xBFB5DADB014541EB), !dbg !187
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 1, metadata !178, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 1, metadata !178, metadata !DIExpression()), !dbg !189
  %30 = fmul double %14, %handler_result13, !dbg !187
  %handler_result14 = call double @fAddHandlerDouble(double %30, double 0xBFD3B5B6028A83D6), !dbg !190
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !179, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()), !dbg !189
  %31 = fmul double %0, 5.000000e-01, !dbg !190
  %32 = fmul double %31, %handler_result6, !dbg !191
  %33 = fmul double %14, %handler_result14, !dbg !192
  %34 = fmul double %handler_result51, %0, !dbg !193
  %35 = fmul double %34, %32, !dbg !194
  %handler_result15 = call double @fAddHandlerDouble(double %35, double %33), !dbg !195
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double 1.000000e+00), !dbg !196
  %36 = fmul double %13, %handler_result16, !dbg !196
  %37 = fdiv double %36, %0, !dbg !197
  store double %37, ptr %1, align 8, !dbg !198, !tbaa !146
  %38 = tail call double @llvm.fabs.f64(double %handler_result51), !dbg !199
  %39 = fmul double %38, 6.000000e-01, !dbg !200
  %handler_result17 = call double @fAddHandlerDouble(double %39, double 1.600000e+00), !dbg !201
  %40 = fmul double %13, %handler_result17, !dbg !201
  %41 = fmul double %40, 0x3CB0000000000000, !dbg !202
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !203
  %43 = tail call double @llvm.fabs.f64(double %37), !dbg !204
  %44 = fmul double %43, 0x3CC0000000000000, !dbg !205
  %handler_result18 = call double @fAddHandlerDouble(double %41, double %44), !dbg !206
  store double %handler_result18, ptr %42, align 8, !dbg !206, !tbaa !151
  br label %104

45:                                               ; preds = %10
  %46 = fcmp ugt double %0, 8.000000e+00, !dbg !207
  %47 = tail call double @sqrt(double noundef %0) #5, !dbg !208
  %48 = fdiv double 1.600000e+01, %0, !dbg !208
  br i1 %46, label %77, label %49, !dbg !209

49:                                               ; preds = %45
  tail call void @llvm.dbg.value(metadata double %47, metadata !133, metadata !DIExpression()), !dbg !210
  %handler_result19 = call double @fAddHandlerDouble(double %48, double -9.000000e+00), !dbg !211
  %50 = fdiv double %handler_result19, 7.000000e+00, !dbg !211
  call void @llvm.dbg.value(metadata !167, metadata !212, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata double %50, metadata !220, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata ptr undef, metadata !221, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !223, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !224, metadata !DIExpression()), !dbg !234
  %51 = fmul double %50, 2.000000e+00, !dbg !236
  %handler_result20 = call double @fAddHandlerDouble(double %51, double 1.000000e+00), !dbg !237
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double -1.000000e+00), !dbg !238
  %52 = fmul double %handler_result21, 5.000000e-01, !dbg !238
  call void @llvm.dbg.value(metadata double %52, metadata !225, metadata !DIExpression()), !dbg !234
  %53 = fmul double %52, 2.000000e+00, !dbg !239
  call void @llvm.dbg.value(metadata double %53, metadata !226, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !227, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i32 24, metadata !222, metadata !DIExpression()), !dbg !234
  br label %54, !dbg !240

54:                                               ; preds = %54, %49
  %55 = phi i64 [ 24, %49 ], [ %65, %54 ]
  %56 = phi double [ 0.000000e+00, %49 ], [ %handler_result23, %54 ]
  %57 = phi double [ 0.000000e+00, %49 ], [ %handler_result26, %54 ]
  %58 = phi double [ 0.000000e+00, %49 ], [ %56, %54 ]
  call void @llvm.dbg.value(metadata i64 %55, metadata !222, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata double %56, metadata !223, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata double %57, metadata !227, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata double %58, metadata !224, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata double %56, metadata !228, metadata !DIExpression()), !dbg !241
  %59 = fmul double %53, %56, !dbg !242
  %handler_result22 = call double @fSubHandlerDouble(double %59, double %58), !dbg !243
  %60 = getelementptr inbounds double, ptr @ak1_data, i64 %55, !dbg !243
  %61 = load double, ptr %60, align 8, !dbg !243, !tbaa !244
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double %61), !dbg !245
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !223, metadata !DIExpression()), !dbg !234
  %62 = tail call double @llvm.fabs.f64(double %59), !dbg !245
  %63 = tail call double @llvm.fabs.f64(double %58), !dbg !246
  %handler_result24 = call double @fAddHandlerDouble(double %62, double %63), !dbg !247
  %64 = tail call double @llvm.fabs.f64(double %61), !dbg !247
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double %64), !dbg !248
  %handler_result26 = call double @fAddHandlerDouble(double %57, double %handler_result25), !dbg !249
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !227, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata double %56, metadata !224, metadata !DIExpression()), !dbg !234
  %65 = add nsw i64 %55, -1, !dbg !249
  call void @llvm.dbg.value(metadata i64 %65, metadata !222, metadata !DIExpression()), !dbg !234
  %66 = icmp ugt i64 %55, 1, !dbg !250
  br i1 %66, label %54, label %67, !dbg !240, !llvm.loop !251

67:                                               ; preds = %54
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !232, metadata !DIExpression()), !dbg !254
  %68 = fmul double %52, %handler_result23, !dbg !255
  %handler_result27 = call double @fSubHandlerDouble(double %68, double %56), !dbg !256
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3FBA9FA430DE464C), !dbg !257
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !223, metadata !DIExpression()), !dbg !234
  %69 = tail call double @llvm.fabs.f64(double %68), !dbg !257
  %70 = tail call double @llvm.fabs.f64(double %56), !dbg !258
  %handler_result29 = call double @fAddHandlerDouble(double %70, double %69), !dbg !259
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double 0x3FBA9FA430DE464C), !dbg !260
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result26, double %handler_result30), !dbg !261
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !227, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !210
  %71 = fmul double %handler_result31, 0x3CB0000000000000, !dbg !261
  %handler_result32 = call double @fAddHandlerDouble(double %71, double 0x3C697838D1062EAD), !dbg !262
  tail call void @llvm.dbg.value(metadata double %handler_result32, metadata !136, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !210
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result28, double 1.375000e+00), !dbg !263
  %72 = fdiv double %handler_result33, %47, !dbg !263
  store double %72, ptr %1, align 8, !dbg !264, !tbaa !146
  %73 = fdiv double %handler_result32, %47, !dbg !265
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !266
  %75 = tail call double @llvm.fabs.f64(double %72), !dbg !267
  %76 = fmul double %75, 0x3CC0000000000000, !dbg !268
  %handler_result34 = call double @fAddHandlerDouble(double %76, double %73), !dbg !269
  store double %handler_result34, ptr %74, align 8, !dbg !269, !tbaa !151
  br label %104

77:                                               ; preds = %45
  tail call void @llvm.dbg.value(metadata double %47, metadata !137, metadata !DIExpression()), !dbg !270
  %handler_result35 = call double @fAddHandlerDouble(double %48, double -1.000000e+00), !dbg !271
  call void @llvm.dbg.value(metadata !167, metadata !212, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !220, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata ptr undef, metadata !221, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !223, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !224, metadata !DIExpression()), !dbg !273
  %78 = fmul double %handler_result35, 2.000000e+00, !dbg !271
  %handler_result36 = call double @fAddHandlerDouble(double %78, double 1.000000e+00), !dbg !274
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double -1.000000e+00), !dbg !275
  %79 = fmul double %handler_result37, 5.000000e-01, !dbg !275
  call void @llvm.dbg.value(metadata double %79, metadata !225, metadata !DIExpression()), !dbg !273
  %80 = fmul double %79, 2.000000e+00, !dbg !276
  call void @llvm.dbg.value(metadata double %80, metadata !226, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !227, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i32 13, metadata !222, metadata !DIExpression()), !dbg !273
  br label %81, !dbg !277

81:                                               ; preds = %81, %77
  %82 = phi i64 [ 13, %77 ], [ %92, %81 ]
  %83 = phi double [ 0.000000e+00, %77 ], [ %handler_result39, %81 ]
  %84 = phi double [ 0.000000e+00, %77 ], [ %handler_result42, %81 ]
  %85 = phi double [ 0.000000e+00, %77 ], [ %83, %81 ]
  call void @llvm.dbg.value(metadata i64 %82, metadata !222, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %83, metadata !223, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %84, metadata !227, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %85, metadata !224, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %83, metadata !228, metadata !DIExpression()), !dbg !278
  %86 = fmul double %80, %83, !dbg !279
  %handler_result38 = call double @fSubHandlerDouble(double %86, double %85), !dbg !280
  %87 = getelementptr inbounds double, ptr @ak12_data, i64 %82, !dbg !280
  %88 = load double, ptr %87, align 8, !dbg !280, !tbaa !244
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double %88), !dbg !281
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !223, metadata !DIExpression()), !dbg !273
  %89 = tail call double @llvm.fabs.f64(double %86), !dbg !281
  %90 = tail call double @llvm.fabs.f64(double %85), !dbg !282
  %handler_result40 = call double @fAddHandlerDouble(double %89, double %90), !dbg !283
  %91 = tail call double @llvm.fabs.f64(double %88), !dbg !283
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double %91), !dbg !284
  %handler_result42 = call double @fAddHandlerDouble(double %84, double %handler_result41), !dbg !285
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !227, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %83, metadata !224, metadata !DIExpression()), !dbg !273
  %92 = add nsw i64 %82, -1, !dbg !285
  call void @llvm.dbg.value(metadata i64 %92, metadata !222, metadata !DIExpression()), !dbg !273
  %93 = icmp ugt i64 %82, 1, !dbg !286
  br i1 %93, label %81, label %94, !dbg !277, !llvm.loop !287

94:                                               ; preds = %81
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !232, metadata !DIExpression()), !dbg !289
  %95 = fmul double %79, %handler_result39, !dbg !290
  %handler_result43 = call double @fSubHandlerDouble(double %95, double %83), !dbg !291
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 0x3FA054BE5713184A), !dbg !292
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !223, metadata !DIExpression()), !dbg !273
  %96 = tail call double @llvm.fabs.f64(double %95), !dbg !292
  %97 = tail call double @llvm.fabs.f64(double %83), !dbg !293
  %handler_result45 = call double @fAddHandlerDouble(double %97, double %96), !dbg !294
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result45, double 0x3FA054BE5713184A), !dbg !295
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result42, double %handler_result46), !dbg !296
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !227, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata double %handler_result44, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !270
  %98 = fmul double %handler_result47, 0x3CB0000000000000, !dbg !296
  %handler_result48 = call double @fAddHandlerDouble(double %98, double 0x3C7DC75547A9E207), !dbg !297
  tail call void @llvm.dbg.value(metadata double %handler_result48, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !270
  %handler_result49 = call double @fAddHandlerDouble(double %handler_result44, double 1.250000e+00), !dbg !298
  %99 = fdiv double %handler_result49, %47, !dbg !298
  store double %99, ptr %1, align 8, !dbg !299, !tbaa !146
  %100 = fdiv double %handler_result48, %47, !dbg !300
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !301
  %102 = tail call double @llvm.fabs.f64(double %99), !dbg !302
  %103 = fmul double %102, 0x3CC0000000000000, !dbg !303
  %handler_result50 = call double @fAddHandlerDouble(double %103, double %100), !dbg !304
  store double %handler_result50, ptr %101, align 8, !dbg !304, !tbaa !151
  br label %104

104:                                              ; preds = %94, %67, %12, %8, %4
  %105 = phi i32 [ 1, %4 ], [ 16, %8 ], [ 0, %12 ], [ 0, %67 ], [ 0, %94 ], !dbg !305
  ret i32 %105, !dbg !306
}

declare !dbg !307 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !312 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !316 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !317 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_K1_e(double noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !318 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !334
  call void @llvm.dbg.assign(metadata i1 undef, metadata !330, metadata !DIExpression(), metadata !334, metadata ptr %3, metadata !DIExpression()), !dbg !335
  tail call void @llvm.dbg.value(metadata double %0, metadata !320, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !321, metadata !DIExpression()), !dbg !336
  %4 = fcmp ugt double %0, 0.000000e+00, !dbg !337
  br i1 %4, label %7, label %5, !dbg !338

5:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !339, !tbaa !146
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !339
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !339, !tbaa !151
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 179, i32 noundef 1) #5, !dbg !342
  br label %59, !dbg !342

7:                                                ; preds = %2
  %8 = fcmp olt double %0, 0x20000000000000, !dbg !344
  br i1 %8, label %9, label %11, !dbg !345

9:                                                ; preds = %7
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !346, !tbaa !146
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !346
  store double 0x7FF0000000000000, ptr %10, align 8, !dbg !346, !tbaa !151
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 182, i32 noundef 16) #5, !dbg !349
  br label %59, !dbg !349

11:                                               ; preds = %7
  %12 = fcmp olt double %0, 1.000000e+00, !dbg !351
  br i1 %12, label %13, label %43, !dbg !352

13:                                               ; preds = %11
  %handler_result20 = call double @callHandler(i32 12, double %0, double %0), !dbg !353
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !322, metadata !DIExpression()), !dbg !354
  %14 = fmul double %0, %0, !dbg !353
  tail call void @llvm.dbg.value(metadata double %14, metadata !327, metadata !DIExpression()), !dbg !354
  %15 = fmul double %14, 2.500000e-01, !dbg !355
  tail call void @llvm.dbg.value(metadata double %15, metadata !328, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata !167, metadata !168, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i32 6, metadata !176, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double %15, metadata !177, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double 0x3E355B410B3332C5, metadata !179, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i32 5, metadata !178, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double 0x3E355B410B3332C5, metadata !179, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i32 5, metadata !178, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double 0x3E355B410B3332C5, metadata !179, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 5, metadata !178, metadata !DIExpression()), !dbg !356
  %16 = fmul double %15, 0x3E355B410B3332C5, !dbg !358
  %handler_result = call double @fAddHandlerDouble(double %16, double 0x3E927E0FFAAEE53D), !dbg !358
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !179, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 4, metadata !178, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !179, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 4, metadata !178, metadata !DIExpression()), !dbg !356
  %17 = fmul double %15, %handler_result, !dbg !358
  %handler_result1 = call double @fAddHandlerDouble(double %17, double 0x3EE845C8E2E1423A), !dbg !358
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !179, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 3, metadata !178, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !179, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 3, metadata !178, metadata !DIExpression()), !dbg !356
  %18 = fmul double %15, %handler_result1, !dbg !358
  %handler_result2 = call double @fAddHandlerDouble(double %18, double 0x3F36C16C16A27BAF), !dbg !358
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !179, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 2, metadata !178, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !179, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 2, metadata !178, metadata !DIExpression()), !dbg !356
  %19 = fmul double %15, %handler_result2, !dbg !358
  %handler_result3 = call double @fAddHandlerDouble(double %19, double 0x3F7C71C71C71D1B3), !dbg !358
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !179, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 1, metadata !178, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !179, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 1, metadata !178, metadata !DIExpression()), !dbg !356
  %20 = fmul double %15, %handler_result3, !dbg !358
  %handler_result4 = call double @fAddHandlerDouble(double %20, double 0x3FB5555555555555), !dbg !359
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !179, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()), !dbg !356
  %21 = fmul double %15, %handler_result4, !dbg !359
  %handler_result5 = call double @fAddHandlerDouble(double %21, double 5.000000e-01), !dbg !360
  %22 = fmul double %15, %handler_result5, !dbg !360
  %handler_result6 = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !361
  tail call void @llvm.dbg.value(metadata double %32, metadata !329, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata !167, metadata !168, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i32 9, metadata !176, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata double %14, metadata !177, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata double 0xBCDB7E078296495F, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i32 8, metadata !178, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata double 0xBCDB7E078296495F, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i32 8, metadata !178, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata double 0xBCDB7E078296495F, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 8, metadata !178, metadata !DIExpression()), !dbg !363
  %23 = fmul double %14, 0xBCDB7E078296495F, !dbg !361
  %handler_result7 = call double @fAddHandlerDouble(double %23, double 0xBD5D4891F134D1BD), !dbg !361
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 7, metadata !178, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 7, metadata !178, metadata !DIExpression()), !dbg !363
  %24 = fmul double %14, %handler_result7, !dbg !361
  %handler_result8 = call double @fAddHandlerDouble(double %24, double 0xBDD8630B65993898), !dbg !361
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 6, metadata !178, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 6, metadata !178, metadata !DIExpression()), !dbg !363
  %25 = fmul double %14, %handler_result8, !dbg !361
  %handler_result9 = call double @fAddHandlerDouble(double %25, double 0xBE4E2129FF568BB1), !dbg !361
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 5, metadata !178, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 5, metadata !178, metadata !DIExpression()), !dbg !363
  %26 = fmul double %14, %handler_result9, !dbg !361
  %handler_result10 = call double @fAddHandlerDouble(double %26, double 0xBEBA29182247C54B), !dbg !361
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 4, metadata !178, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 4, metadata !178, metadata !DIExpression()), !dbg !363
  %27 = fmul double %14, %handler_result10, !dbg !361
  %handler_result11 = call double @fAddHandlerDouble(double %27, double 0xBF1D802AF7A5DB61), !dbg !361
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 3, metadata !178, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 3, metadata !178, metadata !DIExpression()), !dbg !363
  %28 = fmul double %14, %handler_result11, !dbg !361
  %handler_result12 = call double @fAddHandlerDouble(double %28, double 0xBF7303AE729FF30F), !dbg !361
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 2, metadata !178, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 2, metadata !178, metadata !DIExpression()), !dbg !363
  %29 = fmul double %14, %handler_result12, !dbg !361
  %handler_result13 = call double @fAddHandlerDouble(double %29, double 0xBFB5DADB014541EB), !dbg !361
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 1, metadata !178, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 1, metadata !178, metadata !DIExpression()), !dbg !363
  %30 = fmul double %14, %handler_result13, !dbg !361
  %handler_result14 = call double @fAddHandlerDouble(double %30, double 0xBFD3B5B6028A83D6), !dbg !364
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !179, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()), !dbg !363
  %31 = fmul double %0, 5.000000e-01, !dbg !364
  %32 = fmul double %31, %handler_result6, !dbg !365
  %33 = fmul double %14, %handler_result14, !dbg !366
  %34 = fmul double %handler_result20, %0, !dbg !367
  %35 = fmul double %34, %32, !dbg !368
  %handler_result15 = call double @fAddHandlerDouble(double %35, double %33), !dbg !369
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double 1.000000e+00), !dbg !370
  %36 = fdiv double %handler_result16, %0, !dbg !370
  store double %36, ptr %1, align 8, !dbg !371, !tbaa !146
  %37 = tail call double @llvm.fabs.f64(double %handler_result20), !dbg !372
  %38 = fmul double %37, 6.000000e-01, !dbg !373
  %handler_result17 = call double @fAddHandlerDouble(double %38, double 1.600000e+00), !dbg !374
  %39 = fmul double %handler_result17, 0x3CB0000000000000, !dbg !374
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !375
  %41 = tail call double @llvm.fabs.f64(double %36), !dbg !376
  %42 = fmul double %41, 0x3CC0000000000000, !dbg !377
  %handler_result18 = call double @fAddHandlerDouble(double %39, double %42), !dbg !378
  store double %handler_result18, ptr %40, align 8, !dbg !378, !tbaa !151
  br label %59

43:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !379
  %44 = call i32 @gsl_sf_bessel_K1_scaled_e(double noundef %0, ptr noundef nonnull %3), !dbg !380, !range !381
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !332, metadata !DIExpression()), !dbg !335
  %45 = fneg double %0, !dbg !382
  %46 = load double, ptr %3, align 8, !dbg !383, !tbaa !146
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !384
  %48 = load double, ptr %47, align 8, !dbg !384, !tbaa !151
  %49 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %45, double noundef 0.000000e+00, double noundef %46, double noundef %48, ptr noundef %1) #5, !dbg !385
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !333, metadata !DIExpression()), !dbg !335
  %50 = load double, ptr %1, align 8, !dbg !386, !tbaa !146
  %51 = tail call double @llvm.fabs.f64(double %50), !dbg !387
  %52 = tail call double @llvm.fabs.f64(double %0), !dbg !388
  %53 = fmul double %52, 0x3CB0000000000000, !dbg !389
  %54 = fdiv double %48, %46, !dbg !390
  %handler_result19 = call double @fAddHandlerDouble(double %53, double %54), !dbg !391
  %55 = fmul double %handler_result19, %51, !dbg !391
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !392
  store double %55, ptr %56, align 8, !dbg !393, !tbaa !151
  %57 = icmp eq i32 %49, 0, !dbg !394
  %58 = select i1 %57, i32 %44, i32 %49, !dbg !394
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !395
  br label %59

59:                                               ; preds = %43, %13, %9, %5
  %60 = phi i32 [ 1, %5 ], [ 16, %9 ], [ 0, %13 ], [ %58, %43 ], !dbg !396
  ret i32 %60, !dbg !397
}

declare !dbg !398 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_K1_scaled(double noundef %0) local_unnamed_addr #0 !dbg !402 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !409
  call void @llvm.dbg.assign(metadata i1 undef, metadata !407, metadata !DIExpression(), metadata !409, metadata ptr %2, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata double %0, metadata !406, metadata !DIExpression()), !dbg !410
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !411
  %3 = call i32 @gsl_sf_bessel_K1_scaled_e(double noundef %0, ptr noundef nonnull %2), !dbg !411, !range !381
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !408, metadata !DIExpression()), !dbg !410
  %4 = icmp eq i32 %3, 0, !dbg !412
  br i1 %4, label %6, label %5, !dbg !411

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 211, i32 noundef %3) #5, !dbg !414
  br label %6, !dbg !414

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !411, !tbaa !146
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !417
  ret double %7, !dbg !417
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_K1(double noundef %0) local_unnamed_addr #0 !dbg !418 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !423
  call void @llvm.dbg.assign(metadata i1 undef, metadata !421, metadata !DIExpression(), metadata !423, metadata ptr %2, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %0, metadata !420, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !425
  %3 = call i32 @gsl_sf_bessel_K1_e(double noundef %0, ptr noundef nonnull %2), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !422, metadata !DIExpression()), !dbg !424
  %4 = icmp eq i32 %3, 0, !dbg !426
  br i1 %4, label %6, label %5, !dbg !425

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 216, i32 noundef %3) #5, !dbg !428
  br label %6, !dbg !428

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !425, !tbaa !146
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !431
  ret double %7, !dbg !431
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!163 = !DILocation(line: 144, column: 23, scope: !125)
!164 = !DILocation(line: 0, scope: !125)
!165 = !DILocation(line: 145, column: 24, scope: !125)
!166 = !DILocation(line: 146, column: 27, scope: !125)
!167 = !{}
!168 = !DILocalVariable(name: "c", arg: 1, scope: !169, file: !170, line: 61, type: !173)
!169 = distinct !DISubprogram(name: "gsl_poly_eval", scope: !170, file: !170, line: 61, type: !171, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !175)
!170 = !DIFile(filename: "../gsl/gsl_poly.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "12a100e1cfeec1a19df8b89da050794d")
!171 = !DISubroutineType(types: !172)
!172 = !{!74, !173, !174, !113}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!175 = !{!168, !176, !177, !178, !179}
!176 = !DILocalVariable(name: "len", arg: 2, scope: !169, file: !170, line: 61, type: !174)
!177 = !DILocalVariable(name: "x", arg: 3, scope: !169, file: !170, line: 61, type: !113)
!178 = !DILocalVariable(name: "i", scope: !169, file: !170, line: 63, type: !33)
!179 = !DILocalVariable(name: "ans", scope: !169, file: !170, line: 64, type: !74)
!180 = !DILocation(line: 0, scope: !169, inlinedAt: !181)
!181 = distinct !DILocation(line: 147, column: 55, scope: !125)
!182 = !DILocation(line: 65, column: 43, scope: !183, inlinedAt: !181)
!183 = distinct !DILexicalBlock(scope: !184, file: !170, line: 65, column: 3)
!184 = distinct !DILexicalBlock(scope: !169, file: !170, line: 65, column: 3)
!185 = !DILocation(line: 147, column: 53, scope: !125)
!186 = !DILocation(line: 147, column: 42, scope: !125)
!187 = !DILocation(line: 65, column: 43, scope: !183, inlinedAt: !188)
!188 = distinct !DILocation(line: 148, column: 31, scope: !125)
!189 = !DILocation(line: 0, scope: !169, inlinedAt: !188)
!190 = !DILocation(line: 147, column: 27, scope: !125)
!191 = !DILocation(line: 147, column: 31, scope: !125)
!192 = !DILocation(line: 148, column: 29, scope: !125)
!193 = !DILocation(line: 148, column: 63, scope: !125)
!194 = !DILocation(line: 148, column: 68, scope: !125)
!195 = !DILocation(line: 148, column: 73, scope: !125)
!196 = !DILocation(line: 148, column: 23, scope: !125)
!197 = !DILocation(line: 148, column: 78, scope: !125)
!198 = !DILocation(line: 148, column: 18, scope: !125)
!199 = !DILocation(line: 149, column: 30, scope: !125)
!200 = !DILocation(line: 149, column: 38, scope: !125)
!201 = !DILocation(line: 149, column: 23, scope: !125)
!202 = !DILocation(line: 149, column: 44, scope: !125)
!203 = !DILocation(line: 149, column: 13, scope: !125)
!204 = !DILocation(line: 150, column: 44, scope: !125)
!205 = !DILocation(line: 150, column: 42, scope: !125)
!206 = !DILocation(line: 150, column: 17, scope: !125)
!207 = !DILocation(line: 153, column: 13, scope: !135)
!208 = !DILocation(line: 0, scope: !135)
!209 = !DILocation(line: 153, column: 11, scope: !126)
!210 = !DILocation(line: 0, scope: !134)
!211 = !DILocation(line: 156, column: 38, scope: !134)
!212 = !DILocalVariable(name: "cs", arg: 1, scope: !213, file: !214, line: 3, type: !217)
!213 = distinct !DISubprogram(name: "cheb_eval_e", scope: !214, file: !214, line: 3, type: !215, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !219)
!214 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!215 = !DISubroutineType(types: !216)
!216 = !{!33, !217, !113, !114}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!219 = !{!212, !220, !221, !222, !223, !224, !225, !226, !227, !228, !232}
!220 = !DILocalVariable(name: "x", arg: 2, scope: !213, file: !214, line: 4, type: !113)
!221 = !DILocalVariable(name: "result", arg: 3, scope: !213, file: !214, line: 5, type: !114)
!222 = !DILocalVariable(name: "j", scope: !213, file: !214, line: 7, type: !33)
!223 = !DILocalVariable(name: "d", scope: !213, file: !214, line: 8, type: !74)
!224 = !DILocalVariable(name: "dd", scope: !213, file: !214, line: 9, type: !74)
!225 = !DILocalVariable(name: "y", scope: !213, file: !214, line: 11, type: !74)
!226 = !DILocalVariable(name: "y2", scope: !213, file: !214, line: 12, type: !74)
!227 = !DILocalVariable(name: "e", scope: !213, file: !214, line: 14, type: !74)
!228 = !DILocalVariable(name: "temp", scope: !229, file: !214, line: 17, type: !74)
!229 = distinct !DILexicalBlock(scope: !230, file: !214, line: 16, column: 33)
!230 = distinct !DILexicalBlock(scope: !231, file: !214, line: 16, column: 3)
!231 = distinct !DILexicalBlock(scope: !213, file: !214, line: 16, column: 3)
!232 = !DILocalVariable(name: "temp", scope: !233, file: !214, line: 24, type: !74)
!233 = distinct !DILexicalBlock(scope: !213, file: !214, line: 23, column: 3)
!234 = !DILocation(line: 0, scope: !213, inlinedAt: !235)
!235 = distinct !DILocation(line: 156, column: 5, scope: !134)
!236 = !DILocation(line: 11, column: 19, scope: !213, inlinedAt: !235)
!237 = !DILocation(line: 11, column: 30, scope: !213, inlinedAt: !235)
!238 = !DILocation(line: 11, column: 39, scope: !213, inlinedAt: !235)
!239 = !DILocation(line: 12, column: 19, scope: !213, inlinedAt: !235)
!240 = !DILocation(line: 16, column: 3, scope: !231, inlinedAt: !235)
!241 = !DILocation(line: 0, scope: !229, inlinedAt: !235)
!242 = !DILocation(line: 18, column: 11, scope: !229, inlinedAt: !235)
!243 = !DILocation(line: 18, column: 21, scope: !229, inlinedAt: !235)
!244 = !{!148, !148, i64 0}
!245 = !DILocation(line: 19, column: 10, scope: !229, inlinedAt: !235)
!246 = !DILocation(line: 19, column: 26, scope: !229, inlinedAt: !235)
!247 = !DILocation(line: 19, column: 37, scope: !229, inlinedAt: !235)
!248 = !DILocation(line: 19, column: 7, scope: !229, inlinedAt: !235)
!249 = !DILocation(line: 16, column: 29, scope: !230, inlinedAt: !235)
!250 = !DILocation(line: 16, column: 23, scope: !230, inlinedAt: !235)
!251 = distinct !{!251, !240, !252, !253}
!252 = !DILocation(line: 21, column: 3, scope: !231, inlinedAt: !235)
!253 = !{!"llvm.loop.mustprogress"}
!254 = !DILocation(line: 0, scope: !233, inlinedAt: !235)
!255 = !DILocation(line: 25, column: 10, scope: !233, inlinedAt: !235)
!256 = !DILocation(line: 25, column: 18, scope: !233, inlinedAt: !235)
!257 = !DILocation(line: 26, column: 10, scope: !233, inlinedAt: !235)
!258 = !DILocation(line: 26, column: 25, scope: !233, inlinedAt: !235)
!259 = !DILocation(line: 26, column: 34, scope: !233, inlinedAt: !235)
!260 = !DILocation(line: 26, column: 7, scope: !233, inlinedAt: !235)
!261 = !DILocation(line: 30, column: 33, scope: !213, inlinedAt: !235)
!262 = !DILocation(line: 157, column: 27, scope: !134)
!263 = !DILocation(line: 157, column: 36, scope: !134)
!264 = !DILocation(line: 157, column: 18, scope: !134)
!265 = !DILocation(line: 158, column: 26, scope: !134)
!266 = !DILocation(line: 158, column: 13, scope: !134)
!267 = !DILocation(line: 159, column: 44, scope: !134)
!268 = !DILocation(line: 159, column: 42, scope: !134)
!269 = !DILocation(line: 159, column: 17, scope: !134)
!270 = !DILocation(line: 0, scope: !138)
!271 = !DILocation(line: 11, column: 19, scope: !213, inlinedAt: !272)
!272 = distinct !DILocation(line: 165, column: 5, scope: !138)
!273 = !DILocation(line: 0, scope: !213, inlinedAt: !272)
!274 = !DILocation(line: 11, column: 30, scope: !213, inlinedAt: !272)
!275 = !DILocation(line: 11, column: 39, scope: !213, inlinedAt: !272)
!276 = !DILocation(line: 12, column: 19, scope: !213, inlinedAt: !272)
!277 = !DILocation(line: 16, column: 3, scope: !231, inlinedAt: !272)
!278 = !DILocation(line: 0, scope: !229, inlinedAt: !272)
!279 = !DILocation(line: 18, column: 11, scope: !229, inlinedAt: !272)
!280 = !DILocation(line: 18, column: 21, scope: !229, inlinedAt: !272)
!281 = !DILocation(line: 19, column: 10, scope: !229, inlinedAt: !272)
!282 = !DILocation(line: 19, column: 26, scope: !229, inlinedAt: !272)
!283 = !DILocation(line: 19, column: 37, scope: !229, inlinedAt: !272)
!284 = !DILocation(line: 19, column: 7, scope: !229, inlinedAt: !272)
!285 = !DILocation(line: 16, column: 29, scope: !230, inlinedAt: !272)
!286 = !DILocation(line: 16, column: 23, scope: !230, inlinedAt: !272)
!287 = distinct !{!287, !277, !288, !253}
!288 = !DILocation(line: 21, column: 3, scope: !231, inlinedAt: !272)
!289 = !DILocation(line: 0, scope: !233, inlinedAt: !272)
!290 = !DILocation(line: 25, column: 10, scope: !233, inlinedAt: !272)
!291 = !DILocation(line: 25, column: 18, scope: !233, inlinedAt: !272)
!292 = !DILocation(line: 26, column: 10, scope: !233, inlinedAt: !272)
!293 = !DILocation(line: 26, column: 25, scope: !233, inlinedAt: !272)
!294 = !DILocation(line: 26, column: 34, scope: !233, inlinedAt: !272)
!295 = !DILocation(line: 26, column: 7, scope: !233, inlinedAt: !272)
!296 = !DILocation(line: 30, column: 33, scope: !213, inlinedAt: !272)
!297 = !DILocation(line: 166, column: 26, scope: !138)
!298 = !DILocation(line: 166, column: 35, scope: !138)
!299 = !DILocation(line: 166, column: 18, scope: !138)
!300 = !DILocation(line: 167, column: 26, scope: !138)
!301 = !DILocation(line: 167, column: 13, scope: !138)
!302 = !DILocation(line: 168, column: 44, scope: !138)
!303 = !DILocation(line: 168, column: 42, scope: !138)
!304 = !DILocation(line: 168, column: 17, scope: !138)
!305 = !DILocation(line: 0, scope: !128)
!306 = !DILocation(line: 171, column: 1, scope: !110)
!307 = !DISubprogram(name: "gsl_error", scope: !32, file: !32, line: 77, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !310, !310, !33, !33}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!312 = !DISubprogram(name: "log", scope: !313, file: !313, line: 104, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!314 = !DISubroutineType(types: !315)
!315 = !{!74, !74}
!316 = !DISubprogram(name: "exp", scope: !313, file: !313, line: 95, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!317 = !DISubprogram(name: "sqrt", scope: !313, file: !313, line: 143, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = distinct !DISubprogram(name: "gsl_sf_bessel_K1_e", scope: !2, file: !2, line: 174, type: !111, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !319)
!319 = !{!320, !321, !322, !327, !328, !329, !330, !332, !333}
!320 = !DILocalVariable(name: "x", arg: 1, scope: !318, file: !2, line: 174, type: !113)
!321 = !DILocalVariable(name: "result", arg: 2, scope: !318, file: !2, line: 174, type: !114)
!322 = !DILocalVariable(name: "lx", scope: !323, file: !2, line: 185, type: !113)
!323 = distinct !DILexicalBlock(scope: !324, file: !2, line: 184, column: 20)
!324 = distinct !DILexicalBlock(scope: !325, file: !2, line: 184, column: 11)
!325 = distinct !DILexicalBlock(scope: !326, file: !2, line: 181, column: 11)
!326 = distinct !DILexicalBlock(scope: !318, file: !2, line: 178, column: 6)
!327 = !DILocalVariable(name: "x2", scope: !323, file: !2, line: 186, type: !113)
!328 = !DILocalVariable(name: "t", scope: !323, file: !2, line: 187, type: !113)
!329 = !DILocalVariable(name: "i1", scope: !323, file: !2, line: 188, type: !113)
!330 = !DILocalVariable(name: "K1_scaled", scope: !331, file: !2, line: 195, type: !115)
!331 = distinct !DILexicalBlock(scope: !324, file: !2, line: 194, column: 8)
!332 = !DILocalVariable(name: "stat_K1", scope: !331, file: !2, line: 196, type: !33)
!333 = !DILocalVariable(name: "stat_e", scope: !331, file: !2, line: 197, type: !33)
!334 = distinct !DIAssignID()
!335 = !DILocation(line: 0, scope: !331)
!336 = !DILocation(line: 0, scope: !318)
!337 = !DILocation(line: 178, column: 8, scope: !326)
!338 = !DILocation(line: 178, column: 6, scope: !318)
!339 = !DILocation(line: 179, column: 5, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !2, line: 179, column: 5)
!341 = distinct !DILexicalBlock(scope: !326, file: !2, line: 178, column: 16)
!342 = !DILocation(line: 179, column: 5, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !2, line: 179, column: 5)
!344 = !DILocation(line: 181, column: 13, scope: !325)
!345 = !DILocation(line: 181, column: 11, scope: !326)
!346 = !DILocation(line: 182, column: 5, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 182, column: 5)
!348 = distinct !DILexicalBlock(scope: !325, file: !2, line: 181, column: 32)
!349 = !DILocation(line: 182, column: 5, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !2, line: 182, column: 5)
!351 = !DILocation(line: 184, column: 13, scope: !324)
!352 = !DILocation(line: 184, column: 11, scope: !325)
!353 = !DILocation(line: 186, column: 24, scope: !323)
!354 = !DILocation(line: 0, scope: !323)
!355 = !DILocation(line: 187, column: 27, scope: !323)
!356 = !DILocation(line: 0, scope: !169, inlinedAt: !357)
!357 = distinct !DILocation(line: 188, column: 55, scope: !323)
!358 = !DILocation(line: 65, column: 43, scope: !183, inlinedAt: !357)
!359 = !DILocation(line: 188, column: 53, scope: !323)
!360 = !DILocation(line: 188, column: 42, scope: !323)
!361 = !DILocation(line: 65, column: 43, scope: !183, inlinedAt: !362)
!362 = distinct !DILocation(line: 189, column: 26, scope: !323)
!363 = !DILocation(line: 0, scope: !169, inlinedAt: !362)
!364 = !DILocation(line: 188, column: 27, scope: !323)
!365 = !DILocation(line: 188, column: 31, scope: !323)
!366 = !DILocation(line: 189, column: 24, scope: !323)
!367 = !DILocation(line: 189, column: 58, scope: !323)
!368 = !DILocation(line: 189, column: 63, scope: !323)
!369 = !DILocation(line: 189, column: 68, scope: !323)
!370 = !DILocation(line: 189, column: 73, scope: !323)
!371 = !DILocation(line: 189, column: 18, scope: !323)
!372 = !DILocation(line: 190, column: 25, scope: !323)
!373 = !DILocation(line: 190, column: 33, scope: !323)
!374 = !DILocation(line: 190, column: 39, scope: !323)
!375 = !DILocation(line: 190, column: 13, scope: !323)
!376 = !DILocation(line: 191, column: 44, scope: !323)
!377 = !DILocation(line: 191, column: 42, scope: !323)
!378 = !DILocation(line: 191, column: 17, scope: !323)
!379 = !DILocation(line: 195, column: 5, scope: !331)
!380 = !DILocation(line: 196, column: 19, scope: !331)
!381 = !{i32 0, i32 17}
!382 = !DILocation(line: 197, column: 41, scope: !331)
!383 = !DILocation(line: 198, column: 54, scope: !331)
!384 = !DILocation(line: 198, column: 69, scope: !331)
!385 = !DILocation(line: 197, column: 19, scope: !331)
!386 = !DILocation(line: 200, column: 32, scope: !331)
!387 = !DILocation(line: 200, column: 19, scope: !331)
!388 = !DILocation(line: 200, column: 56, scope: !331)
!389 = !DILocation(line: 200, column: 55, scope: !331)
!390 = !DILocation(line: 200, column: 79, scope: !331)
!391 = !DILocation(line: 200, column: 37, scope: !331)
!392 = !DILocation(line: 200, column: 13, scope: !331)
!393 = !DILocation(line: 200, column: 17, scope: !331)
!394 = !DILocation(line: 201, column: 12, scope: !331)
!395 = !DILocation(line: 202, column: 3, scope: !324)
!396 = !DILocation(line: 0, scope: !326)
!397 = !DILocation(line: 203, column: 1, scope: !318)
!398 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !399, file: !399, line: 122, type: !400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!399 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!400 = !DISubroutineType(types: !401)
!401 = !{!33, !113, !113, !113, !113, !114}
!402 = distinct !DISubprogram(name: "gsl_sf_bessel_K1_scaled", scope: !2, file: !2, line: 209, type: !403, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!74, !113}
!405 = !{!406, !407, !408}
!406 = !DILocalVariable(name: "x", arg: 1, scope: !402, file: !2, line: 209, type: !113)
!407 = !DILocalVariable(name: "result", scope: !402, file: !2, line: 211, type: !115)
!408 = !DILocalVariable(name: "status", scope: !402, file: !2, line: 211, type: !33)
!409 = distinct !DIAssignID()
!410 = !DILocation(line: 0, scope: !402)
!411 = !DILocation(line: 211, column: 3, scope: !402)
!412 = !DILocation(line: 211, column: 3, scope: !413)
!413 = distinct !DILexicalBlock(scope: !402, file: !2, line: 211, column: 3)
!414 = !DILocation(line: 211, column: 3, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !2, line: 211, column: 3)
!416 = distinct !DILexicalBlock(scope: !413, file: !2, line: 211, column: 3)
!417 = !DILocation(line: 212, column: 1, scope: !402)
!418 = distinct !DISubprogram(name: "gsl_sf_bessel_K1", scope: !2, file: !2, line: 214, type: !403, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !419)
!419 = !{!420, !421, !422}
!420 = !DILocalVariable(name: "x", arg: 1, scope: !418, file: !2, line: 214, type: !113)
!421 = !DILocalVariable(name: "result", scope: !418, file: !2, line: 216, type: !115)
!422 = !DILocalVariable(name: "status", scope: !418, file: !2, line: 216, type: !33)
!423 = distinct !DIAssignID()
!424 = !DILocation(line: 0, scope: !418)
!425 = !DILocation(line: 216, column: 3, scope: !418)
!426 = !DILocation(line: 216, column: 3, scope: !427)
!427 = distinct !DILexicalBlock(scope: !418, file: !2, line: 216, column: 3)
!428 = !DILocation(line: 216, column: 3, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !2, line: 216, column: 3)
!430 = distinct !DILexicalBlock(scope: !427, file: !2, line: 216, column: 3)
!431 = !DILocation(line: 217, column: 1, scope: !418)
