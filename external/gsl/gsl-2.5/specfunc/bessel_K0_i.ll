; ModuleID = 'bessel_K0.ll'
source_filename = "bessel_K0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_K0.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_K0_scaled_e(x, &result)\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_K0_e(x, &result)\00", align 1, !dbg !17
@ak0_data = internal unnamed_addr constant [24 x double] [double 0xBFA0D4D53DA02B79, double 0xBFA701F8595707AC, double 0x3F686CA894C99E5E, double 0xBF33E7224ACAF754, double 0x3F04810FC8BA31E0, double 0xBED89D7EA1913EC4, double 0x3EB07D69129D3737, double 0xBE8805A8CF970730, double 0x3E62B37159763CE2, double 0xBE3EBF81488E2402, double 0x3E1A75DE3FBA85CA, double 0xBDF7AD7BF4DAC0FE, double 0x3DD5EAE50EA1613C, double 0xBDB4E695C96D212F, double 0x3D9476C348F02A9A, double 0xBD7483D7327FED8A, double 0x3D55024709B62B40, double 0xBD35EF484CE45EFC, double 0x3D174F2914CBFC13, double 0xBCF92CB0F5CCFF50, double 0x3CDB993D60F2BCE6, double 0xBCBEAD78AC82AFD3, double 0x3CA145530D1B2B7C, double 0xBC83AE487D34B2AC], align 16, !dbg !22
@ak02_data = internal unnamed_addr constant [14 x double] [double 0xBF889D425FD7DD93, double 0xBF82CA43E2075142, double 0x3F22EF1BCD47BEC8, double 0xBED0D595DD239AD5, double 0x3E850B0771F4EA8B, double 0xBE40AFA9D3CDEF4F, double 0x3DFFB014035FE5C4, double 0xBDC15D530F529E11, double 0x3D856B2C54B23E51, double 0xBD4D319102E9251A, double 0x3D15AEB434479FAD, double 0xBCE15CA386B00802, double 0x3CADB82AF887F813, double 0xBC7AFF6F40020063], align 16, !dbg !91

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_K0_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !107 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !119, metadata !DIExpression()), !dbg !134
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !120, metadata !DIExpression()), !dbg !134
  %3 = fcmp ugt double %0, 0.000000e+00, !dbg !135
  br i1 %3, label %6, label %4, !dbg !136

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !137, !tbaa !140
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !137
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !137, !tbaa !145
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 136, i32 noundef 1) #5, !dbg !146
  br label %94, !dbg !146

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 1.000000e+00, !dbg !148
  br i1 %7, label %8, label %35, !dbg !149

8:                                                ; preds = %6
  %handler_result50 = call double @callHandler(i32 12, double %0, double %0), !dbg !150
  tail call void @llvm.dbg.value(metadata double %handler_result50, metadata !121, metadata !DIExpression()), !dbg !151
  %9 = tail call double @exp(double noundef %0) #5, !dbg !150
  tail call void @llvm.dbg.value(metadata double %9, metadata !125, metadata !DIExpression()), !dbg !151
  %10 = fmul double %0, %0, !dbg !152
  tail call void @llvm.dbg.value(metadata double %10, metadata !126, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata !153, metadata !154, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i32 8, metadata !162, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata double %10, metadata !163, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata double 0x3D9D141FCB837472, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i32 7, metadata !164, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata double 0x3D9D141FCB837472, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 7, metadata !164, metadata !DIExpression()), !dbg !166
  %11 = fmul double %10, 0x3D9D141FCB837472, !dbg !168
  %handler_result = call double @fAddHandlerDouble(double %11, double 0x3E14C2029D5D2FB5), !dbg !168
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 6, metadata !164, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 6, metadata !164, metadata !DIExpression()), !dbg !166
  %12 = fmul double %10, %handler_result, !dbg !168
  %handler_result1 = call double @fAddHandlerDouble(double %12, double 0x3E85D6B25BE0BEE4), !dbg !168
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 5, metadata !164, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 5, metadata !164, metadata !DIExpression()), !dbg !166
  %13 = fmul double %10, %handler_result1, !dbg !168
  %handler_result2 = call double @fAddHandlerDouble(double %13, double 0x3EEF47476772D4D9), !dbg !168
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 4, metadata !164, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 4, metadata !164, metadata !DIExpression()), !dbg !166
  %14 = fmul double %10, %handler_result2, !dbg !168
  %handler_result3 = call double @fAddHandlerDouble(double %14, double 0x3F4BB90E85E098DB), !dbg !168
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 3, metadata !164, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 3, metadata !164, metadata !DIExpression()), !dbg !166
  %15 = fmul double %10, %handler_result3, !dbg !168
  %handler_result4 = call double @fAddHandlerDouble(double %15, double 0x3F99DADB01454042), !dbg !168
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 2, metadata !164, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 2, metadata !164, metadata !DIExpression()), !dbg !166
  %16 = fmul double %10, %handler_result4, !dbg !168
  %handler_result5 = call double @fAddHandlerDouble(double %16, double 0x3FD1DADB014541EC), !dbg !168
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 1, metadata !164, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 1, metadata !164, metadata !DIExpression()), !dbg !166
  %17 = fmul double %10, %handler_result5, !dbg !168
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !165, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 0, metadata !164, metadata !DIExpression()), !dbg !166
  %18 = fmul double %10, 2.500000e-01, !dbg !171
  tail call void @llvm.dbg.value(metadata !153, metadata !154, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i32 7, metadata !162, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata double %18, metadata !163, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata double 0x3E656CF1AEB212BC, metadata !165, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i32 6, metadata !164, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata double 0x3E656CF1AEB212BC, metadata !165, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i64 6, metadata !164, metadata !DIExpression()), !dbg !172
  %19 = fmul double %18, 0x3E656CF1AEB212BC, !dbg !174
  %handler_result6 = call double @fAddHandlerDouble(double %19, double 0x3EC02E1F9FBAC1EB), !dbg !174
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !165, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i64 5, metadata !164, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !165, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i64 5, metadata !164, metadata !DIExpression()), !dbg !172
  %20 = fmul double %18, %handler_result6, !dbg !174
  %handler_result7 = call double @fAddHandlerDouble(double %20, double 0x3F12345703982239), !dbg !174
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !165, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i64 4, metadata !164, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !165, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i64 4, metadata !164, metadata !DIExpression()), !dbg !172
  %21 = fmul double %18, %handler_result7, !dbg !174
  %handler_result8 = call double @fAddHandlerDouble(double %21, double 0x3F5C71C71BAFCBAF), !dbg !174
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !165, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i64 3, metadata !164, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !165, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i64 3, metadata !164, metadata !DIExpression()), !dbg !172
  %22 = fmul double %18, %handler_result8, !dbg !174
  %handler_result9 = call double @fAddHandlerDouble(double %22, double 0x3F9C71C71C7247E2), !dbg !174
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !165, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i64 2, metadata !164, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !165, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i64 2, metadata !164, metadata !DIExpression()), !dbg !172
  %23 = fmul double %18, %handler_result9, !dbg !174
  %handler_result10 = call double @fAddHandlerDouble(double %23, double 0x3FCFFFFFFFFFFFC0), !dbg !174
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !165, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i64 1, metadata !164, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !165, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i64 1, metadata !164, metadata !DIExpression()), !dbg !172
  %24 = fmul double %18, %handler_result10, !dbg !174
  %handler_result11 = call double @fAddHandlerDouble(double %24, double 1.000000e+00), !dbg !175
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !165, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i64 0, metadata !164, metadata !DIExpression()), !dbg !172
  %handler_result12 = call double @fAddHandlerDouble(double %17, double 0x3FBDADB014541EB2), !dbg !176
  %25 = fmul double %18, %handler_result11, !dbg !176
  %handler_result13 = call double @fAddHandlerDouble(double %25, double 1.000000e+00), !dbg !177
  %26 = fmul double %handler_result50, %handler_result13, !dbg !177
  %handler_result14 = call double @fSubHandlerDouble(double %handler_result12, double %26), !dbg !178
  %27 = fmul double %9, %handler_result14, !dbg !178
  store double %27, ptr %1, align 8, !dbg !179, !tbaa !140
  %28 = tail call double @llvm.fabs.f64(double %handler_result50), !dbg !180
  %29 = fmul double %28, 6.000000e-01, !dbg !181
  %handler_result15 = call double @fAddHandlerDouble(double %29, double 1.600000e+00), !dbg !182
  %30 = fmul double %9, %handler_result15, !dbg !182
  %31 = fmul double %30, 0x3CB0000000000000, !dbg !183
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !184
  %33 = tail call double @llvm.fabs.f64(double %27), !dbg !185
  %34 = fmul double %33, 0x3CC0000000000000, !dbg !186
  %handler_result16 = call double @fAddHandlerDouble(double %31, double %34), !dbg !187
  store double %handler_result16, ptr %32, align 8, !dbg !187, !tbaa !145
  br label %94

35:                                               ; preds = %6
  %36 = fcmp ugt double %0, 8.000000e+00, !dbg !188
  %37 = tail call double @sqrt(double noundef %0) #5, !dbg !189
  %38 = fdiv double 1.600000e+01, %0, !dbg !189
  br i1 %36, label %67, label %39, !dbg !190

39:                                               ; preds = %35
  tail call void @llvm.dbg.value(metadata double %37, metadata !127, metadata !DIExpression()), !dbg !191
  %handler_result17 = call double @fAddHandlerDouble(double %38, double -9.000000e+00), !dbg !192
  %40 = fdiv double %handler_result17, 7.000000e+00, !dbg !192
  call void @llvm.dbg.value(metadata !153, metadata !193, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata double %40, metadata !201, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata ptr undef, metadata !202, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !204, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !205, metadata !DIExpression()), !dbg !215
  %41 = fmul double %40, 2.000000e+00, !dbg !217
  %handler_result18 = call double @fAddHandlerDouble(double %41, double 1.000000e+00), !dbg !218
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double -1.000000e+00), !dbg !219
  %42 = fmul double %handler_result19, 5.000000e-01, !dbg !219
  call void @llvm.dbg.value(metadata double %42, metadata !206, metadata !DIExpression()), !dbg !215
  %43 = fmul double %42, 2.000000e+00, !dbg !220
  call void @llvm.dbg.value(metadata double %43, metadata !207, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !208, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 23, metadata !203, metadata !DIExpression()), !dbg !215
  br label %44, !dbg !221

44:                                               ; preds = %44, %39
  %45 = phi i64 [ 23, %39 ], [ %55, %44 ]
  %46 = phi double [ 0.000000e+00, %39 ], [ %handler_result21, %44 ]
  %47 = phi double [ 0.000000e+00, %39 ], [ %handler_result24, %44 ]
  %48 = phi double [ 0.000000e+00, %39 ], [ %46, %44 ]
  call void @llvm.dbg.value(metadata i64 %45, metadata !203, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata double %46, metadata !204, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata double %47, metadata !208, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata double %48, metadata !205, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata double %46, metadata !209, metadata !DIExpression()), !dbg !222
  %49 = fmul double %43, %46, !dbg !223
  %handler_result20 = call double @fSubHandlerDouble(double %49, double %48), !dbg !224
  %50 = getelementptr inbounds double, ptr @ak0_data, i64 %45, !dbg !224
  %51 = load double, ptr %50, align 8, !dbg !224, !tbaa !225
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double %51), !dbg !226
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !204, metadata !DIExpression()), !dbg !215
  %52 = tail call double @llvm.fabs.f64(double %49), !dbg !226
  %53 = tail call double @llvm.fabs.f64(double %48), !dbg !227
  %handler_result22 = call double @fAddHandlerDouble(double %52, double %53), !dbg !228
  %54 = tail call double @llvm.fabs.f64(double %51), !dbg !228
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double %54), !dbg !229
  %handler_result24 = call double @fAddHandlerDouble(double %47, double %handler_result23), !dbg !230
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !208, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata double %46, metadata !205, metadata !DIExpression()), !dbg !215
  %55 = add nsw i64 %45, -1, !dbg !230
  call void @llvm.dbg.value(metadata i64 %55, metadata !203, metadata !DIExpression()), !dbg !215
  %56 = icmp ugt i64 %45, 1, !dbg !231
  br i1 %56, label %44, label %57, !dbg !221, !llvm.loop !232

57:                                               ; preds = %44
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !213, metadata !DIExpression()), !dbg !235
  %58 = fmul double %42, %handler_result21, !dbg !236
  %handler_result25 = call double @fSubHandlerDouble(double %58, double %46), !dbg !237
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0xBF90D4D53DA02B79), !dbg !238
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !204, metadata !DIExpression()), !dbg !215
  %59 = tail call double @llvm.fabs.f64(double %58), !dbg !238
  %60 = tail call double @llvm.fabs.f64(double %46), !dbg !239
  %handler_result27 = call double @fAddHandlerDouble(double %60, double %59), !dbg !240
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3F90D4D53DA02B79), !dbg !241
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result24, double %handler_result28), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !208, metadata !DIExpression()), !dbg !215
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !130, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !191
  %61 = fmul double %handler_result29, 0x3CB0000000000000, !dbg !242
  %handler_result30 = call double @fAddHandlerDouble(double %61, double 0x3C83AE487D34B2AC), !dbg !243
  tail call void @llvm.dbg.value(metadata double %handler_result30, metadata !130, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !191
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result26, double 0x3FF3400000000000), !dbg !244
  %62 = fdiv double %handler_result31, %37, !dbg !244
  store double %62, ptr %1, align 8, !dbg !245, !tbaa !140
  %63 = fdiv double %handler_result30, %37, !dbg !246
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !247
  %65 = tail call double @llvm.fabs.f64(double %62), !dbg !248
  %66 = fmul double %65, 0x3CC0000000000000, !dbg !249
  %handler_result32 = call double @fAddHandlerDouble(double %66, double %63), !dbg !250
  store double %handler_result32, ptr %64, align 8, !dbg !250, !tbaa !145
  br label %94

67:                                               ; preds = %35
  tail call void @llvm.dbg.value(metadata double %37, metadata !131, metadata !DIExpression()), !dbg !251
  %handler_result33 = call double @fAddHandlerDouble(double %38, double -1.000000e+00), !dbg !252
  call void @llvm.dbg.value(metadata !153, metadata !193, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !201, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata ptr undef, metadata !202, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !204, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !205, metadata !DIExpression()), !dbg !254
  %68 = fmul double %handler_result33, 2.000000e+00, !dbg !252
  %handler_result34 = call double @fAddHandlerDouble(double %68, double 1.000000e+00), !dbg !255
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double -1.000000e+00), !dbg !256
  %69 = fmul double %handler_result35, 5.000000e-01, !dbg !256
  call void @llvm.dbg.value(metadata double %69, metadata !206, metadata !DIExpression()), !dbg !254
  %70 = fmul double %69, 2.000000e+00, !dbg !257
  call void @llvm.dbg.value(metadata double %70, metadata !207, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !208, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i32 13, metadata !203, metadata !DIExpression()), !dbg !254
  br label %71, !dbg !258

71:                                               ; preds = %71, %67
  %72 = phi i64 [ 13, %67 ], [ %82, %71 ]
  %73 = phi double [ 0.000000e+00, %67 ], [ %handler_result37, %71 ]
  %74 = phi double [ 0.000000e+00, %67 ], [ %handler_result40, %71 ]
  %75 = phi double [ 0.000000e+00, %67 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata i64 %72, metadata !203, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %73, metadata !204, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %74, metadata !208, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %75, metadata !205, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %73, metadata !209, metadata !DIExpression()), !dbg !259
  %76 = fmul double %70, %73, !dbg !260
  %handler_result36 = call double @fSubHandlerDouble(double %76, double %75), !dbg !261
  %77 = getelementptr inbounds double, ptr @ak02_data, i64 %72, !dbg !261
  %78 = load double, ptr %77, align 8, !dbg !261, !tbaa !225
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double %78), !dbg !262
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !204, metadata !DIExpression()), !dbg !254
  %79 = tail call double @llvm.fabs.f64(double %76), !dbg !262
  %80 = tail call double @llvm.fabs.f64(double %75), !dbg !263
  %handler_result38 = call double @fAddHandlerDouble(double %79, double %80), !dbg !264
  %81 = tail call double @llvm.fabs.f64(double %78), !dbg !264
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double %81), !dbg !265
  %handler_result40 = call double @fAddHandlerDouble(double %74, double %handler_result39), !dbg !266
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !208, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %73, metadata !205, metadata !DIExpression()), !dbg !254
  %82 = add nsw i64 %72, -1, !dbg !266
  call void @llvm.dbg.value(metadata i64 %82, metadata !203, metadata !DIExpression()), !dbg !254
  %83 = icmp ugt i64 %72, 1, !dbg !267
  br i1 %83, label %71, label %84, !dbg !258, !llvm.loop !268

84:                                               ; preds = %71
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !213, metadata !DIExpression()), !dbg !270
  %85 = fmul double %69, %handler_result37, !dbg !271
  %handler_result41 = call double @fSubHandlerDouble(double %85, double %73), !dbg !272
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double 0xBF789D425FD7DD93), !dbg !273
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !204, metadata !DIExpression()), !dbg !254
  %86 = tail call double @llvm.fabs.f64(double %85), !dbg !273
  %87 = tail call double @llvm.fabs.f64(double %73), !dbg !274
  %handler_result43 = call double @fAddHandlerDouble(double %87, double %86), !dbg !275
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 0x3F789D425FD7DD93), !dbg !276
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result40, double %handler_result44), !dbg !277
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !208, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result42, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !251
  %88 = fmul double %handler_result45, 0x3CB0000000000000, !dbg !277
  %handler_result46 = call double @fAddHandlerDouble(double %88, double 0x3C7AFF6F40020063), !dbg !278
  tail call void @llvm.dbg.value(metadata double %handler_result46, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !251
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result42, double 1.250000e+00), !dbg !279
  %89 = fdiv double %handler_result47, %37, !dbg !279
  store double %89, ptr %1, align 8, !dbg !280, !tbaa !140
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result46, double 0x3CB0000000000000), !dbg !281
  %90 = fdiv double %handler_result48, %37, !dbg !281
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !282
  %92 = tail call double @llvm.fabs.f64(double %89), !dbg !283
  %93 = fmul double %92, 0x3CC0000000000000, !dbg !284
  %handler_result49 = call double @fAddHandlerDouble(double %93, double %90), !dbg !285
  store double %handler_result49, ptr %91, align 8, !dbg !285, !tbaa !145
  br label %94

94:                                               ; preds = %84, %57, %8, %4
  %95 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %57 ], [ 0, %84 ], !dbg !286
  ret i32 %95, !dbg !287
}

declare !dbg !288 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !293 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !297 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !298 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_K0_e(double noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !299 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !312
  call void @llvm.dbg.assign(metadata i1 undef, metadata !308, metadata !DIExpression(), metadata !312, metadata ptr %3, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %0, metadata !301, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !302, metadata !DIExpression()), !dbg !314
  %4 = fcmp ugt double %0, 0.000000e+00, !dbg !315
  br i1 %4, label %7, label %5, !dbg !316

5:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !317, !tbaa !140
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !317
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !317, !tbaa !145
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 173, i32 noundef 1) #5, !dbg !320
  br label %44, !dbg !320

7:                                                ; preds = %2
  %8 = fcmp olt double %0, 1.000000e+00, !dbg !322
  br i1 %8, label %9, label %33, !dbg !323

9:                                                ; preds = %7
  %handler_result17 = call double @callHandler(i32 12, double %0, double %0), !dbg !324
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !303, metadata !DIExpression()), !dbg !325
  %10 = fmul double %0, %0, !dbg !324
  tail call void @llvm.dbg.value(metadata double %10, metadata !307, metadata !DIExpression()), !dbg !325
  tail call void @llvm.dbg.value(metadata !153, metadata !154, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i32 8, metadata !162, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata double %10, metadata !163, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata double 0x3D9D141FCB837472, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i32 7, metadata !164, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata double 0x3D9D141FCB837472, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i32 7, metadata !164, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata double 0x3D9D141FCB837472, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 7, metadata !164, metadata !DIExpression()), !dbg !326
  %11 = fmul double %10, 0x3D9D141FCB837472, !dbg !328
  %handler_result = call double @fAddHandlerDouble(double %11, double 0x3E14C2029D5D2FB5), !dbg !328
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 6, metadata !164, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 6, metadata !164, metadata !DIExpression()), !dbg !326
  %12 = fmul double %10, %handler_result, !dbg !328
  %handler_result1 = call double @fAddHandlerDouble(double %12, double 0x3E85D6B25BE0BEE4), !dbg !328
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 5, metadata !164, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 5, metadata !164, metadata !DIExpression()), !dbg !326
  %13 = fmul double %10, %handler_result1, !dbg !328
  %handler_result2 = call double @fAddHandlerDouble(double %13, double 0x3EEF47476772D4D9), !dbg !328
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 4, metadata !164, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 4, metadata !164, metadata !DIExpression()), !dbg !326
  %14 = fmul double %10, %handler_result2, !dbg !328
  %handler_result3 = call double @fAddHandlerDouble(double %14, double 0x3F4BB90E85E098DB), !dbg !328
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 3, metadata !164, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 3, metadata !164, metadata !DIExpression()), !dbg !326
  %15 = fmul double %10, %handler_result3, !dbg !328
  %handler_result4 = call double @fAddHandlerDouble(double %15, double 0x3F99DADB01454042), !dbg !328
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 2, metadata !164, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 2, metadata !164, metadata !DIExpression()), !dbg !326
  %16 = fmul double %10, %handler_result4, !dbg !328
  %handler_result5 = call double @fAddHandlerDouble(double %16, double 0x3FD1DADB014541EC), !dbg !328
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 1, metadata !164, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 1, metadata !164, metadata !DIExpression()), !dbg !326
  %17 = fmul double %10, %handler_result5, !dbg !328
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !165, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 0, metadata !164, metadata !DIExpression()), !dbg !326
  %18 = fmul double %10, 2.500000e-01, !dbg !329
  tail call void @llvm.dbg.value(metadata !153, metadata !154, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i32 7, metadata !162, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %18, metadata !163, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double 0x3E656CF1AEB212BC, metadata !165, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i32 6, metadata !164, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double 0x3E656CF1AEB212BC, metadata !165, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i32 6, metadata !164, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double 0x3E656CF1AEB212BC, metadata !165, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i64 6, metadata !164, metadata !DIExpression()), !dbg !330
  %19 = fmul double %18, 0x3E656CF1AEB212BC, !dbg !332
  %handler_result6 = call double @fAddHandlerDouble(double %19, double 0x3EC02E1F9FBAC1EB), !dbg !332
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !165, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i64 5, metadata !164, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !165, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i64 5, metadata !164, metadata !DIExpression()), !dbg !330
  %20 = fmul double %18, %handler_result6, !dbg !332
  %handler_result7 = call double @fAddHandlerDouble(double %20, double 0x3F12345703982239), !dbg !332
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !165, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i64 4, metadata !164, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !165, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i64 4, metadata !164, metadata !DIExpression()), !dbg !330
  %21 = fmul double %18, %handler_result7, !dbg !332
  %handler_result8 = call double @fAddHandlerDouble(double %21, double 0x3F5C71C71BAFCBAF), !dbg !332
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !165, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i64 3, metadata !164, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !165, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i64 3, metadata !164, metadata !DIExpression()), !dbg !330
  %22 = fmul double %18, %handler_result8, !dbg !332
  %handler_result9 = call double @fAddHandlerDouble(double %22, double 0x3F9C71C71C7247E2), !dbg !332
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !165, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i64 2, metadata !164, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !165, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i64 2, metadata !164, metadata !DIExpression()), !dbg !330
  %23 = fmul double %18, %handler_result9, !dbg !332
  %handler_result10 = call double @fAddHandlerDouble(double %23, double 0x3FCFFFFFFFFFFFC0), !dbg !332
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !165, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i64 1, metadata !164, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !165, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i64 1, metadata !164, metadata !DIExpression()), !dbg !330
  %24 = fmul double %18, %handler_result10, !dbg !332
  %handler_result11 = call double @fAddHandlerDouble(double %24, double 1.000000e+00), !dbg !333
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !165, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i64 0, metadata !164, metadata !DIExpression()), !dbg !330
  %handler_result12 = call double @fAddHandlerDouble(double %17, double 0x3FBDADB014541EB2), !dbg !334
  %25 = fmul double %18, %handler_result11, !dbg !334
  %handler_result13 = call double @fAddHandlerDouble(double %25, double 1.000000e+00), !dbg !335
  %26 = fmul double %handler_result17, %handler_result13, !dbg !335
  %handler_result14 = call double @fSubHandlerDouble(double %handler_result12, double %26), !dbg !336
  store double %handler_result14, ptr %1, align 8, !dbg !336, !tbaa !140
  %27 = tail call double @llvm.fabs.f64(double %handler_result17), !dbg !337
  %28 = fmul double %27, 6.000000e-01, !dbg !338
  %handler_result15 = call double @fAddHandlerDouble(double %28, double 1.600000e+00), !dbg !339
  %29 = fmul double %handler_result15, 0x3CB0000000000000, !dbg !339
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !340
  %31 = tail call double @llvm.fabs.f64(double %handler_result14), !dbg !341
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !342
  %handler_result16 = call double @fAddHandlerDouble(double %29, double %32), !dbg !343
  store double %handler_result16, ptr %30, align 8, !dbg !343, !tbaa !145
  br label %44

33:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !344
  %34 = call i32 @gsl_sf_bessel_K0_scaled_e(double noundef %0, ptr noundef nonnull %3), !dbg !345, !range !346
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !310, metadata !DIExpression()), !dbg !313
  %35 = fneg double %0, !dbg !347
  %36 = tail call double @llvm.fabs.f64(double %0), !dbg !348
  %37 = fmul double %36, 0x3CB0000000000000, !dbg !349
  %38 = load double, ptr %3, align 8, !dbg !350, !tbaa !140
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !351
  %40 = load double, ptr %39, align 8, !dbg !351, !tbaa !145
  %41 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %35, double noundef %37, double noundef %38, double noundef %40, ptr noundef %1) #5, !dbg !352
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !311, metadata !DIExpression()), !dbg !313
  %42 = icmp eq i32 %41, 0, !dbg !353
  %43 = select i1 %42, i32 %34, i32 %41, !dbg !353
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !354
  br label %44

44:                                               ; preds = %33, %9, %5
  %45 = phi i32 [ 1, %5 ], [ 0, %9 ], [ %43, %33 ], !dbg !355
  ret i32 %45, !dbg !356
}

declare !dbg !357 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_K0_scaled(double noundef %0) local_unnamed_addr #0 !dbg !361 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !368
  call void @llvm.dbg.assign(metadata i1 undef, metadata !366, metadata !DIExpression(), metadata !368, metadata ptr %2, metadata !DIExpression()), !dbg !369
  tail call void @llvm.dbg.value(metadata double %0, metadata !365, metadata !DIExpression()), !dbg !369
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !370
  %3 = call i32 @gsl_sf_bessel_K0_scaled_e(double noundef %0, ptr noundef nonnull %2), !dbg !370, !range !346
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !367, metadata !DIExpression()), !dbg !369
  %4 = icmp eq i32 %3, 0, !dbg !371
  br i1 %4, label %6, label %5, !dbg !370

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 200, i32 noundef 1) #5, !dbg !373
  br label %6, !dbg !373

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !370, !tbaa !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !376
  ret double %7, !dbg !376
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_K0(double noundef %0) local_unnamed_addr #0 !dbg !377 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !382
  call void @llvm.dbg.assign(metadata i1 undef, metadata !380, metadata !DIExpression(), metadata !382, metadata ptr %2, metadata !DIExpression()), !dbg !383
  tail call void @llvm.dbg.value(metadata double %0, metadata !379, metadata !DIExpression()), !dbg !383
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !384
  %3 = call i32 @gsl_sf_bessel_K0_e(double noundef %0, ptr noundef nonnull %2), !dbg !384
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !381, metadata !DIExpression()), !dbg !383
  %4 = icmp eq i32 %3, 0, !dbg !385
  br i1 %4, label %6, label %5, !dbg !384

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 205, i32 noundef %3) #5, !dbg !387
  br label %6, !dbg !387

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !384, !tbaa !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !390
  ret double %7, !dbg !390
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

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_K0.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "027a0e8f7d657dcda8d543956e7509ae")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 38)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 205, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 31)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "ak0_data", scope: !24, file: !2, line: 66, type: !96, isLocal: true, isDefinition: true)
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
!65 = !{!0, !7, !12, !17, !66, !72, !77, !22, !89, !91}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "k0_poly", scope: !24, file: !2, line: 41, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 512, elements: !70)
!69 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!70 = !{!71}
!71 = !DISubrange(count: 8)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "i0_poly", scope: !24, file: !2, line: 52, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 448, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 7)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "ak0_cs", scope: !24, file: !2, line: 93, type: !79, isLocal: true, isDefinition: true)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !80, line: 29, baseType: !81)
!80 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !80, line: 22, size: 320, elements: !82)
!82 = !{!83, !85, !86, !87, !88}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !81, file: !80, line: 23, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !81, file: !80, line: 24, baseType: !28, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !81, file: !80, line: 25, baseType: !69, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !81, file: !80, line: 26, baseType: !69, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !81, file: !80, line: 27, baseType: !28, size: 32, offset: 256)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "ak02_cs", scope: !24, file: !2, line: 121, type: !79, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "ak02_data", scope: !24, file: !2, line: 104, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 896, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 14)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 1536, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 24)
!99 = !{i32 7, !"Dwarf Version", i32 5}
!100 = !{i32 2, !"Debug Info Version", i32 3}
!101 = !{i32 1, !"wchar_size", i32 4}
!102 = !{i32 8, !"PIC Level", i32 2}
!103 = !{i32 7, !"PIE Level", i32 2}
!104 = !{i32 7, !"uwtable", i32 2}
!105 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!106 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!107 = distinct !DISubprogram(name: "gsl_sf_bessel_K0_scaled_e", scope: !2, file: !2, line: 131, type: !108, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !118)
!108 = !DISubroutineType(types: !109)
!109 = !{!28, !110, !111}
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !113, line: 41, baseType: !114)
!113 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !113, line: 37, size: 128, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !114, file: !113, line: 38, baseType: !69, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !114, file: !113, line: 39, baseType: !69, size: 64, offset: 64)
!118 = !{!119, !120, !121, !125, !126, !127, !130, !131, !133}
!119 = !DILocalVariable(name: "x", arg: 1, scope: !107, file: !2, line: 131, type: !110)
!120 = !DILocalVariable(name: "result", arg: 2, scope: !107, file: !2, line: 131, type: !111)
!121 = !DILocalVariable(name: "lx", scope: !122, file: !2, line: 139, type: !110)
!122 = distinct !DILexicalBlock(scope: !123, file: !2, line: 138, column: 20)
!123 = distinct !DILexicalBlock(scope: !124, file: !2, line: 138, column: 11)
!124 = distinct !DILexicalBlock(scope: !107, file: !2, line: 135, column: 6)
!125 = !DILocalVariable(name: "ex", scope: !122, file: !2, line: 140, type: !110)
!126 = !DILocalVariable(name: "x2", scope: !122, file: !2, line: 141, type: !110)
!127 = !DILocalVariable(name: "sx", scope: !128, file: !2, line: 148, type: !110)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 147, column: 21)
!129 = distinct !DILexicalBlock(scope: !123, file: !2, line: 147, column: 11)
!130 = !DILocalVariable(name: "c", scope: !128, file: !2, line: 149, type: !112)
!131 = !DILocalVariable(name: "sx", scope: !132, file: !2, line: 157, type: !110)
!132 = distinct !DILexicalBlock(scope: !129, file: !2, line: 156, column: 8)
!133 = !DILocalVariable(name: "c", scope: !132, file: !2, line: 158, type: !112)
!134 = !DILocation(line: 0, scope: !107)
!135 = !DILocation(line: 135, column: 8, scope: !124)
!136 = !DILocation(line: 135, column: 6, scope: !107)
!137 = !DILocation(line: 136, column: 5, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !2, line: 136, column: 5)
!139 = distinct !DILexicalBlock(scope: !124, file: !2, line: 135, column: 16)
!140 = !{!141, !142, i64 0}
!141 = !{!"gsl_sf_result_struct", !142, i64 0, !142, i64 8}
!142 = !{!"double", !143, i64 0}
!143 = !{!"omnipotent char", !144, i64 0}
!144 = !{!"Simple C/C++ TBAA"}
!145 = !{!141, !142, i64 8}
!146 = !DILocation(line: 136, column: 5, scope: !147)
!147 = distinct !DILexicalBlock(scope: !138, file: !2, line: 136, column: 5)
!148 = !DILocation(line: 138, column: 13, scope: !123)
!149 = !DILocation(line: 138, column: 11, scope: !124)
!150 = !DILocation(line: 140, column: 23, scope: !122)
!151 = !DILocation(line: 0, scope: !122)
!152 = !DILocation(line: 141, column: 24, scope: !122)
!153 = !{}
!154 = !DILocalVariable(name: "c", arg: 1, scope: !155, file: !156, line: 61, type: !159)
!155 = distinct !DISubprogram(name: "gsl_poly_eval", scope: !156, file: !156, line: 61, type: !157, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !161)
!156 = !DIFile(filename: "../gsl/gsl_poly.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "12a100e1cfeec1a19df8b89da050794d")
!157 = !DISubroutineType(types: !158)
!158 = !{!69, !159, !160, !110}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!161 = !{!154, !162, !163, !164, !165}
!162 = !DILocalVariable(name: "len", arg: 2, scope: !155, file: !156, line: 61, type: !160)
!163 = !DILocalVariable(name: "x", arg: 3, scope: !155, file: !156, line: 61, type: !110)
!164 = !DILocalVariable(name: "i", scope: !155, file: !156, line: 63, type: !28)
!165 = !DILocalVariable(name: "ans", scope: !155, file: !156, line: 64, type: !69)
!166 = !DILocation(line: 0, scope: !155, inlinedAt: !167)
!167 = distinct !DILocation(line: 142, column: 26, scope: !122)
!168 = !DILocation(line: 65, column: 43, scope: !169, inlinedAt: !167)
!169 = distinct !DILexicalBlock(scope: !170, file: !156, line: 65, column: 3)
!170 = distinct !DILexicalBlock(scope: !155, file: !156, line: 65, column: 3)
!171 = !DILocation(line: 142, column: 66, scope: !122)
!172 = !DILocation(line: 0, scope: !155, inlinedAt: !173)
!173 = distinct !DILocation(line: 142, column: 70, scope: !122)
!174 = !DILocation(line: 65, column: 43, scope: !169, inlinedAt: !173)
!175 = !DILocation(line: 65, column: 39, scope: !169, inlinedAt: !167)
!176 = !DILocation(line: 142, column: 69, scope: !122)
!177 = !DILocation(line: 142, column: 56, scope: !122)
!178 = !DILocation(line: 142, column: 23, scope: !122)
!179 = !DILocation(line: 142, column: 18, scope: !122)
!180 = !DILocation(line: 143, column: 30, scope: !122)
!181 = !DILocation(line: 143, column: 38, scope: !122)
!182 = !DILocation(line: 143, column: 23, scope: !122)
!183 = !DILocation(line: 143, column: 44, scope: !122)
!184 = !DILocation(line: 143, column: 13, scope: !122)
!185 = !DILocation(line: 144, column: 44, scope: !122)
!186 = !DILocation(line: 144, column: 42, scope: !122)
!187 = !DILocation(line: 144, column: 17, scope: !122)
!188 = !DILocation(line: 147, column: 13, scope: !129)
!189 = !DILocation(line: 0, scope: !129)
!190 = !DILocation(line: 147, column: 11, scope: !123)
!191 = !DILocation(line: 0, scope: !128)
!192 = !DILocation(line: 150, column: 38, scope: !128)
!193 = !DILocalVariable(name: "cs", arg: 1, scope: !194, file: !195, line: 3, type: !198)
!194 = distinct !DISubprogram(name: "cheb_eval_e", scope: !195, file: !195, line: 3, type: !196, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !200)
!195 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!196 = !DISubroutineType(types: !197)
!197 = !{!28, !198, !110, !111}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!200 = !{!193, !201, !202, !203, !204, !205, !206, !207, !208, !209, !213}
!201 = !DILocalVariable(name: "x", arg: 2, scope: !194, file: !195, line: 4, type: !110)
!202 = !DILocalVariable(name: "result", arg: 3, scope: !194, file: !195, line: 5, type: !111)
!203 = !DILocalVariable(name: "j", scope: !194, file: !195, line: 7, type: !28)
!204 = !DILocalVariable(name: "d", scope: !194, file: !195, line: 8, type: !69)
!205 = !DILocalVariable(name: "dd", scope: !194, file: !195, line: 9, type: !69)
!206 = !DILocalVariable(name: "y", scope: !194, file: !195, line: 11, type: !69)
!207 = !DILocalVariable(name: "y2", scope: !194, file: !195, line: 12, type: !69)
!208 = !DILocalVariable(name: "e", scope: !194, file: !195, line: 14, type: !69)
!209 = !DILocalVariable(name: "temp", scope: !210, file: !195, line: 17, type: !69)
!210 = distinct !DILexicalBlock(scope: !211, file: !195, line: 16, column: 33)
!211 = distinct !DILexicalBlock(scope: !212, file: !195, line: 16, column: 3)
!212 = distinct !DILexicalBlock(scope: !194, file: !195, line: 16, column: 3)
!213 = !DILocalVariable(name: "temp", scope: !214, file: !195, line: 24, type: !69)
!214 = distinct !DILexicalBlock(scope: !194, file: !195, line: 23, column: 3)
!215 = !DILocation(line: 0, scope: !194, inlinedAt: !216)
!216 = distinct !DILocation(line: 150, column: 5, scope: !128)
!217 = !DILocation(line: 11, column: 19, scope: !194, inlinedAt: !216)
!218 = !DILocation(line: 11, column: 30, scope: !194, inlinedAt: !216)
!219 = !DILocation(line: 11, column: 39, scope: !194, inlinedAt: !216)
!220 = !DILocation(line: 12, column: 19, scope: !194, inlinedAt: !216)
!221 = !DILocation(line: 16, column: 3, scope: !212, inlinedAt: !216)
!222 = !DILocation(line: 0, scope: !210, inlinedAt: !216)
!223 = !DILocation(line: 18, column: 11, scope: !210, inlinedAt: !216)
!224 = !DILocation(line: 18, column: 21, scope: !210, inlinedAt: !216)
!225 = !{!142, !142, i64 0}
!226 = !DILocation(line: 19, column: 10, scope: !210, inlinedAt: !216)
!227 = !DILocation(line: 19, column: 26, scope: !210, inlinedAt: !216)
!228 = !DILocation(line: 19, column: 37, scope: !210, inlinedAt: !216)
!229 = !DILocation(line: 19, column: 7, scope: !210, inlinedAt: !216)
!230 = !DILocation(line: 16, column: 29, scope: !211, inlinedAt: !216)
!231 = !DILocation(line: 16, column: 23, scope: !211, inlinedAt: !216)
!232 = distinct !{!232, !221, !233, !234}
!233 = !DILocation(line: 21, column: 3, scope: !212, inlinedAt: !216)
!234 = !{!"llvm.loop.mustprogress"}
!235 = !DILocation(line: 0, scope: !214, inlinedAt: !216)
!236 = !DILocation(line: 25, column: 10, scope: !214, inlinedAt: !216)
!237 = !DILocation(line: 25, column: 18, scope: !214, inlinedAt: !216)
!238 = !DILocation(line: 26, column: 10, scope: !214, inlinedAt: !216)
!239 = !DILocation(line: 26, column: 25, scope: !214, inlinedAt: !216)
!240 = !DILocation(line: 26, column: 34, scope: !214, inlinedAt: !216)
!241 = !DILocation(line: 26, column: 7, scope: !214, inlinedAt: !216)
!242 = !DILocation(line: 30, column: 33, scope: !194, inlinedAt: !216)
!243 = !DILocation(line: 151, column: 30, scope: !128)
!244 = !DILocation(line: 151, column: 39, scope: !128)
!245 = !DILocation(line: 151, column: 18, scope: !128)
!246 = !DILocation(line: 152, column: 26, scope: !128)
!247 = !DILocation(line: 152, column: 13, scope: !128)
!248 = !DILocation(line: 153, column: 44, scope: !128)
!249 = !DILocation(line: 153, column: 42, scope: !128)
!250 = !DILocation(line: 153, column: 17, scope: !128)
!251 = !DILocation(line: 0, scope: !132)
!252 = !DILocation(line: 11, column: 19, scope: !194, inlinedAt: !253)
!253 = distinct !DILocation(line: 159, column: 5, scope: !132)
!254 = !DILocation(line: 0, scope: !194, inlinedAt: !253)
!255 = !DILocation(line: 11, column: 30, scope: !194, inlinedAt: !253)
!256 = !DILocation(line: 11, column: 39, scope: !194, inlinedAt: !253)
!257 = !DILocation(line: 12, column: 19, scope: !194, inlinedAt: !253)
!258 = !DILocation(line: 16, column: 3, scope: !212, inlinedAt: !253)
!259 = !DILocation(line: 0, scope: !210, inlinedAt: !253)
!260 = !DILocation(line: 18, column: 11, scope: !210, inlinedAt: !253)
!261 = !DILocation(line: 18, column: 21, scope: !210, inlinedAt: !253)
!262 = !DILocation(line: 19, column: 10, scope: !210, inlinedAt: !253)
!263 = !DILocation(line: 19, column: 26, scope: !210, inlinedAt: !253)
!264 = !DILocation(line: 19, column: 37, scope: !210, inlinedAt: !253)
!265 = !DILocation(line: 19, column: 7, scope: !210, inlinedAt: !253)
!266 = !DILocation(line: 16, column: 29, scope: !211, inlinedAt: !253)
!267 = !DILocation(line: 16, column: 23, scope: !211, inlinedAt: !253)
!268 = distinct !{!268, !258, !269, !234}
!269 = !DILocation(line: 21, column: 3, scope: !212, inlinedAt: !253)
!270 = !DILocation(line: 0, scope: !214, inlinedAt: !253)
!271 = !DILocation(line: 25, column: 10, scope: !214, inlinedAt: !253)
!272 = !DILocation(line: 25, column: 18, scope: !214, inlinedAt: !253)
!273 = !DILocation(line: 26, column: 10, scope: !214, inlinedAt: !253)
!274 = !DILocation(line: 26, column: 25, scope: !214, inlinedAt: !253)
!275 = !DILocation(line: 26, column: 34, scope: !214, inlinedAt: !253)
!276 = !DILocation(line: 26, column: 7, scope: !214, inlinedAt: !253)
!277 = !DILocation(line: 30, column: 33, scope: !194, inlinedAt: !253)
!278 = !DILocation(line: 160, column: 26, scope: !132)
!279 = !DILocation(line: 160, column: 35, scope: !132)
!280 = !DILocation(line: 160, column: 18, scope: !132)
!281 = !DILocation(line: 161, column: 46, scope: !132)
!282 = !DILocation(line: 161, column: 13, scope: !132)
!283 = !DILocation(line: 162, column: 44, scope: !132)
!284 = !DILocation(line: 162, column: 42, scope: !132)
!285 = !DILocation(line: 162, column: 17, scope: !132)
!286 = !DILocation(line: 0, scope: !124)
!287 = !DILocation(line: 165, column: 1, scope: !107)
!288 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !291, !291, !28, !28}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!293 = !DISubprogram(name: "log", scope: !294, file: !294, line: 104, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!294 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!295 = !DISubroutineType(types: !296)
!296 = !{!69, !69}
!297 = !DISubprogram(name: "exp", scope: !294, file: !294, line: 95, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !DISubprogram(name: "sqrt", scope: !294, file: !294, line: 143, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = distinct !DISubprogram(name: "gsl_sf_bessel_K0_e", scope: !2, file: !2, line: 168, type: !108, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !300)
!300 = !{!301, !302, !303, !307, !308, !310, !311}
!301 = !DILocalVariable(name: "x", arg: 1, scope: !299, file: !2, line: 168, type: !110)
!302 = !DILocalVariable(name: "result", arg: 2, scope: !299, file: !2, line: 168, type: !111)
!303 = !DILocalVariable(name: "lx", scope: !304, file: !2, line: 176, type: !110)
!304 = distinct !DILexicalBlock(scope: !305, file: !2, line: 175, column: 20)
!305 = distinct !DILexicalBlock(scope: !306, file: !2, line: 175, column: 11)
!306 = distinct !DILexicalBlock(scope: !299, file: !2, line: 172, column: 6)
!307 = !DILocalVariable(name: "x2", scope: !304, file: !2, line: 177, type: !110)
!308 = !DILocalVariable(name: "K0_scaled", scope: !309, file: !2, line: 184, type: !112)
!309 = distinct !DILexicalBlock(scope: !305, file: !2, line: 183, column: 8)
!310 = !DILocalVariable(name: "stat_K0", scope: !309, file: !2, line: 185, type: !28)
!311 = !DILocalVariable(name: "stat_e", scope: !309, file: !2, line: 186, type: !28)
!312 = distinct !DIAssignID()
!313 = !DILocation(line: 0, scope: !309)
!314 = !DILocation(line: 0, scope: !299)
!315 = !DILocation(line: 172, column: 8, scope: !306)
!316 = !DILocation(line: 172, column: 6, scope: !299)
!317 = !DILocation(line: 173, column: 5, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !2, line: 173, column: 5)
!319 = distinct !DILexicalBlock(scope: !306, file: !2, line: 172, column: 16)
!320 = !DILocation(line: 173, column: 5, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !2, line: 173, column: 5)
!322 = !DILocation(line: 175, column: 13, scope: !305)
!323 = !DILocation(line: 175, column: 11, scope: !306)
!324 = !DILocation(line: 177, column: 24, scope: !304)
!325 = !DILocation(line: 0, scope: !304)
!326 = !DILocation(line: 0, scope: !155, inlinedAt: !327)
!327 = distinct !DILocation(line: 178, column: 20, scope: !304)
!328 = !DILocation(line: 65, column: 43, scope: !169, inlinedAt: !327)
!329 = !DILocation(line: 178, column: 60, scope: !304)
!330 = !DILocation(line: 0, scope: !155, inlinedAt: !331)
!331 = distinct !DILocation(line: 178, column: 64, scope: !304)
!332 = !DILocation(line: 65, column: 43, scope: !169, inlinedAt: !331)
!333 = !DILocation(line: 65, column: 39, scope: !169, inlinedAt: !327)
!334 = !DILocation(line: 178, column: 63, scope: !304)
!335 = !DILocation(line: 178, column: 50, scope: !304)
!336 = !DILocation(line: 178, column: 18, scope: !304)
!337 = !DILocation(line: 179, column: 25, scope: !304)
!338 = !DILocation(line: 179, column: 33, scope: !304)
!339 = !DILocation(line: 179, column: 39, scope: !304)
!340 = !DILocation(line: 179, column: 13, scope: !304)
!341 = !DILocation(line: 180, column: 44, scope: !304)
!342 = !DILocation(line: 180, column: 42, scope: !304)
!343 = !DILocation(line: 180, column: 17, scope: !304)
!344 = !DILocation(line: 184, column: 5, scope: !309)
!345 = !DILocation(line: 185, column: 19, scope: !309)
!346 = !{i32 0, i32 2}
!347 = !DILocation(line: 186, column: 41, scope: !309)
!348 = !DILocation(line: 186, column: 61, scope: !309)
!349 = !DILocation(line: 186, column: 60, scope: !309)
!350 = !DILocation(line: 187, column: 54, scope: !309)
!351 = !DILocation(line: 187, column: 69, scope: !309)
!352 = !DILocation(line: 186, column: 19, scope: !309)
!353 = !DILocation(line: 189, column: 12, scope: !309)
!354 = !DILocation(line: 190, column: 3, scope: !305)
!355 = !DILocation(line: 0, scope: !306)
!356 = !DILocation(line: 191, column: 1, scope: !299)
!357 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !358, file: !358, line: 122, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!359 = !DISubroutineType(types: !360)
!360 = !{!28, !110, !110, !110, !110, !111}
!361 = distinct !DISubprogram(name: "gsl_sf_bessel_K0_scaled", scope: !2, file: !2, line: 198, type: !362, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !364)
!362 = !DISubroutineType(types: !363)
!363 = !{!69, !110}
!364 = !{!365, !366, !367}
!365 = !DILocalVariable(name: "x", arg: 1, scope: !361, file: !2, line: 198, type: !110)
!366 = !DILocalVariable(name: "result", scope: !361, file: !2, line: 200, type: !112)
!367 = !DILocalVariable(name: "status", scope: !361, file: !2, line: 200, type: !28)
!368 = distinct !DIAssignID()
!369 = !DILocation(line: 0, scope: !361)
!370 = !DILocation(line: 200, column: 3, scope: !361)
!371 = !DILocation(line: 200, column: 3, scope: !372)
!372 = distinct !DILexicalBlock(scope: !361, file: !2, line: 200, column: 3)
!373 = !DILocation(line: 200, column: 3, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !2, line: 200, column: 3)
!375 = distinct !DILexicalBlock(scope: !372, file: !2, line: 200, column: 3)
!376 = !DILocation(line: 201, column: 1, scope: !361)
!377 = distinct !DISubprogram(name: "gsl_sf_bessel_K0", scope: !2, file: !2, line: 203, type: !362, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !378)
!378 = !{!379, !380, !381}
!379 = !DILocalVariable(name: "x", arg: 1, scope: !377, file: !2, line: 203, type: !110)
!380 = !DILocalVariable(name: "result", scope: !377, file: !2, line: 205, type: !112)
!381 = !DILocalVariable(name: "status", scope: !377, file: !2, line: 205, type: !28)
!382 = distinct !DIAssignID()
!383 = !DILocation(line: 0, scope: !377)
!384 = !DILocation(line: 205, column: 3, scope: !377)
!385 = !DILocation(line: 205, column: 3, scope: !386)
!386 = distinct !DILexicalBlock(scope: !377, file: !2, line: 205, column: 3)
!387 = !DILocation(line: 205, column: 3, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !2, line: 205, column: 3)
!389 = distinct !DILexicalBlock(scope: !386, file: !2, line: 205, column: 3)
!390 = !DILocation(line: 206, column: 1, scope: !377)
