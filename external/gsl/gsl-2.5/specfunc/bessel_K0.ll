; ModuleID = 'bessel_K0.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 136, i32 noundef 1) #6, !dbg !146
  br label %145, !dbg !146

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 1.000000e+00, !dbg !148
  br i1 %7, label %8, label %53, !dbg !149

8:                                                ; preds = %6
  %9 = tail call double @log(double noundef %0) #6, !dbg !150
  tail call void @llvm.dbg.value(metadata double %9, metadata !121, metadata !DIExpression()), !dbg !151
  %10 = tail call double @exp(double noundef %0) #6, !dbg !152
  tail call void @llvm.dbg.value(metadata double %10, metadata !125, metadata !DIExpression()), !dbg !151
  %11 = fmul double %0, %0, !dbg !153
  tail call void @llvm.dbg.value(metadata double %11, metadata !126, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata !154, metadata !155, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i32 8, metadata !163, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata double %11, metadata !164, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata double 0x3D9D141FCB837472, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i32 7, metadata !165, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata double 0x3D9D141FCB837472, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i64 7, metadata !165, metadata !DIExpression()), !dbg !167
  %12 = fmul double %11, 0x3D9D141FCB837472, !dbg !169
  %13 = fadd double %12, 0x3E14C2029D5D2FB5, !dbg !172
  tail call void @llvm.dbg.value(metadata double %13, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i64 6, metadata !165, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata double %13, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i64 6, metadata !165, metadata !DIExpression()), !dbg !167
  %14 = fmul double %11, %13, !dbg !169
  %15 = fadd double %14, 0x3E85D6B25BE0BEE4, !dbg !172
  tail call void @llvm.dbg.value(metadata double %15, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i64 5, metadata !165, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata double %15, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i64 5, metadata !165, metadata !DIExpression()), !dbg !167
  %16 = fmul double %11, %15, !dbg !169
  %17 = fadd double %16, 0x3EEF47476772D4D9, !dbg !172
  tail call void @llvm.dbg.value(metadata double %17, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i64 4, metadata !165, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata double %17, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i64 4, metadata !165, metadata !DIExpression()), !dbg !167
  %18 = fmul double %11, %17, !dbg !169
  %19 = fadd double %18, 0x3F4BB90E85E098DB, !dbg !172
  tail call void @llvm.dbg.value(metadata double %19, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i64 3, metadata !165, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata double %19, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i64 3, metadata !165, metadata !DIExpression()), !dbg !167
  %20 = fmul double %11, %19, !dbg !169
  %21 = fadd double %20, 0x3F99DADB01454042, !dbg !172
  tail call void @llvm.dbg.value(metadata double %21, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i64 2, metadata !165, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata double %21, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i64 2, metadata !165, metadata !DIExpression()), !dbg !167
  %22 = fmul double %11, %21, !dbg !169
  %23 = fadd double %22, 0x3FD1DADB014541EC, !dbg !172
  tail call void @llvm.dbg.value(metadata double %23, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i64 1, metadata !165, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata double %23, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i64 1, metadata !165, metadata !DIExpression()), !dbg !167
  %24 = fmul double %11, %23, !dbg !169
  tail call void @llvm.dbg.value(metadata double %38, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !167
  %25 = fmul double %11, 2.500000e-01, !dbg !173
  tail call void @llvm.dbg.value(metadata !154, metadata !155, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i32 7, metadata !163, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double %25, metadata !164, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double 0x3E656CF1AEB212BC, metadata !166, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i32 6, metadata !165, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double 0x3E656CF1AEB212BC, metadata !166, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i64 6, metadata !165, metadata !DIExpression()), !dbg !174
  %26 = fmul double %25, 0x3E656CF1AEB212BC, !dbg !176
  %27 = fadd double %26, 0x3EC02E1F9FBAC1EB, !dbg !177
  tail call void @llvm.dbg.value(metadata double %27, metadata !166, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i64 5, metadata !165, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double %27, metadata !166, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i64 5, metadata !165, metadata !DIExpression()), !dbg !174
  %28 = fmul double %25, %27, !dbg !176
  %29 = fadd double %28, 0x3F12345703982239, !dbg !177
  tail call void @llvm.dbg.value(metadata double %29, metadata !166, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i64 4, metadata !165, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double %29, metadata !166, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i64 4, metadata !165, metadata !DIExpression()), !dbg !174
  %30 = fmul double %25, %29, !dbg !176
  %31 = fadd double %30, 0x3F5C71C71BAFCBAF, !dbg !177
  tail call void @llvm.dbg.value(metadata double %31, metadata !166, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i64 3, metadata !165, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double %31, metadata !166, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i64 3, metadata !165, metadata !DIExpression()), !dbg !174
  %32 = fmul double %25, %31, !dbg !176
  %33 = fadd double %32, 0x3F9C71C71C7247E2, !dbg !177
  tail call void @llvm.dbg.value(metadata double %33, metadata !166, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i64 2, metadata !165, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double %33, metadata !166, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i64 2, metadata !165, metadata !DIExpression()), !dbg !174
  %34 = fmul double %25, %33, !dbg !176
  %35 = fadd double %34, 0x3FCFFFFFFFFFFFC0, !dbg !177
  tail call void @llvm.dbg.value(metadata double %35, metadata !166, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i64 1, metadata !165, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double %35, metadata !166, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i64 1, metadata !165, metadata !DIExpression()), !dbg !174
  %36 = fmul double %25, %35, !dbg !176
  %37 = fadd double %36, 1.000000e+00, !dbg !177
  tail call void @llvm.dbg.value(metadata double %37, metadata !166, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !174
  %38 = fadd double %24, 0x3FBDADB014541EB2, !dbg !172
  %39 = fmul double %25, %37, !dbg !178
  %40 = fadd double %39, 1.000000e+00, !dbg !179
  %41 = fmul double %9, %40, !dbg !180
  %42 = fsub double %38, %41, !dbg !181
  %43 = fmul double %10, %42, !dbg !182
  store double %43, ptr %1, align 8, !dbg !183, !tbaa !140
  %44 = tail call double @llvm.fabs.f64(double %9), !dbg !184
  %45 = fmul double %44, 6.000000e-01, !dbg !185
  %46 = fadd double %45, 1.600000e+00, !dbg !186
  %47 = fmul double %10, %46, !dbg !187
  %48 = fmul double %47, 0x3CB0000000000000, !dbg !188
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !189
  %50 = tail call double @llvm.fabs.f64(double %43), !dbg !190
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !191
  %52 = fadd double %48, %51, !dbg !192
  store double %52, ptr %49, align 8, !dbg !192, !tbaa !145
  br label %145

53:                                               ; preds = %6
  %54 = fcmp ugt double %0, 8.000000e+00, !dbg !193
  %55 = tail call double @sqrt(double noundef %0) #6, !dbg !194
  %56 = fdiv double 1.600000e+01, %0, !dbg !194
  br i1 %54, label %101, label %57, !dbg !195

57:                                               ; preds = %53
  tail call void @llvm.dbg.value(metadata double %55, metadata !127, metadata !DIExpression()), !dbg !196
  %58 = fadd double %56, -9.000000e+00, !dbg !197
  %59 = fdiv double %58, 7.000000e+00, !dbg !198
  call void @llvm.dbg.value(metadata !154, metadata !199, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double %59, metadata !207, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata ptr undef, metadata !208, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !210, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !211, metadata !DIExpression()), !dbg !221
  %60 = fmul double %59, 2.000000e+00, !dbg !223
  %61 = fadd double %60, 1.000000e+00, !dbg !224
  %62 = fadd double %61, -1.000000e+00, !dbg !225
  %63 = fmul double %62, 5.000000e-01, !dbg !226
  call void @llvm.dbg.value(metadata double %63, metadata !212, metadata !DIExpression()), !dbg !221
  %64 = fmul double %63, 2.000000e+00, !dbg !227
  call void @llvm.dbg.value(metadata double %64, metadata !213, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !214, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 23, metadata !209, metadata !DIExpression()), !dbg !221
  br label %65, !dbg !228

65:                                               ; preds = %65, %57
  %66 = phi i64 [ 23, %57 ], [ %81, %65 ]
  %67 = phi double [ 0.000000e+00, %57 ], [ %74, %65 ]
  %68 = phi double [ 0.000000e+00, %57 ], [ %80, %65 ]
  %69 = phi double [ 0.000000e+00, %57 ], [ %67, %65 ]
  call void @llvm.dbg.value(metadata i64 %66, metadata !209, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double %67, metadata !210, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double %68, metadata !214, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double %69, metadata !211, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double %67, metadata !215, metadata !DIExpression()), !dbg !229
  %70 = fmul double %64, %67, !dbg !230
  %71 = fsub double %70, %69, !dbg !231
  %72 = getelementptr inbounds double, ptr @ak0_data, i64 %66, !dbg !232
  %73 = load double, ptr %72, align 8, !dbg !232, !tbaa !233
  %74 = fadd double %71, %73, !dbg !234
  call void @llvm.dbg.value(metadata double %74, metadata !210, metadata !DIExpression()), !dbg !221
  %75 = tail call double @llvm.fabs.f64(double %70), !dbg !235
  %76 = tail call double @llvm.fabs.f64(double %69), !dbg !236
  %77 = fadd double %75, %76, !dbg !237
  %78 = tail call double @llvm.fabs.f64(double %73), !dbg !238
  %79 = fadd double %77, %78, !dbg !239
  %80 = fadd double %68, %79, !dbg !240
  call void @llvm.dbg.value(metadata double %80, metadata !214, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double %67, metadata !211, metadata !DIExpression()), !dbg !221
  %81 = add nsw i64 %66, -1, !dbg !241
  call void @llvm.dbg.value(metadata i64 %81, metadata !209, metadata !DIExpression()), !dbg !221
  %82 = icmp ugt i64 %66, 1, !dbg !242
  br i1 %82, label %65, label %83, !dbg !228, !llvm.loop !243

83:                                               ; preds = %65
  call void @llvm.dbg.value(metadata double %74, metadata !219, metadata !DIExpression()), !dbg !246
  %84 = fmul double %63, %74, !dbg !247
  %85 = fsub double %84, %67, !dbg !248
  %86 = fadd double %85, 0xBF90D4D53DA02B79, !dbg !249
  call void @llvm.dbg.value(metadata double %86, metadata !210, metadata !DIExpression()), !dbg !221
  %87 = tail call double @llvm.fabs.f64(double %84), !dbg !250
  %88 = tail call double @llvm.fabs.f64(double %67), !dbg !251
  %89 = fadd double %88, %87, !dbg !252
  %90 = fadd double %89, 0x3F90D4D53DA02B79, !dbg !253
  %91 = fadd double %80, %90, !dbg !254
  call void @llvm.dbg.value(metadata double %91, metadata !214, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double %86, metadata !130, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !196
  %92 = fmul double %91, 0x3CB0000000000000, !dbg !255
  %93 = fadd double %92, 0x3C83AE487D34B2AC, !dbg !256
  tail call void @llvm.dbg.value(metadata double %93, metadata !130, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !196
  %94 = fadd double %86, 0x3FF3400000000000, !dbg !257
  %95 = fdiv double %94, %55, !dbg !258
  store double %95, ptr %1, align 8, !dbg !259, !tbaa !140
  %96 = fdiv double %93, %55, !dbg !260
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !261
  %98 = tail call double @llvm.fabs.f64(double %95), !dbg !262
  %99 = fmul double %98, 0x3CC0000000000000, !dbg !263
  %100 = fadd double %99, %96, !dbg !264
  store double %100, ptr %97, align 8, !dbg !264, !tbaa !145
  br label %145

101:                                              ; preds = %53
  tail call void @llvm.dbg.value(metadata double %55, metadata !131, metadata !DIExpression()), !dbg !265
  %102 = fadd double %56, -1.000000e+00, !dbg !266
  call void @llvm.dbg.value(metadata !154, metadata !199, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double %102, metadata !207, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata ptr undef, metadata !208, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !210, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !211, metadata !DIExpression()), !dbg !267
  %103 = fmul double %102, 2.000000e+00, !dbg !269
  %104 = fadd double %103, 1.000000e+00, !dbg !270
  %105 = fadd double %104, -1.000000e+00, !dbg !271
  %106 = fmul double %105, 5.000000e-01, !dbg !272
  call void @llvm.dbg.value(metadata double %106, metadata !212, metadata !DIExpression()), !dbg !267
  %107 = fmul double %106, 2.000000e+00, !dbg !273
  call void @llvm.dbg.value(metadata double %107, metadata !213, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !214, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 13, metadata !209, metadata !DIExpression()), !dbg !267
  br label %108, !dbg !274

108:                                              ; preds = %108, %101
  %109 = phi i64 [ 13, %101 ], [ %124, %108 ]
  %110 = phi double [ 0.000000e+00, %101 ], [ %117, %108 ]
  %111 = phi double [ 0.000000e+00, %101 ], [ %123, %108 ]
  %112 = phi double [ 0.000000e+00, %101 ], [ %110, %108 ]
  call void @llvm.dbg.value(metadata i64 %109, metadata !209, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double %110, metadata !210, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double %111, metadata !214, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double %112, metadata !211, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double %110, metadata !215, metadata !DIExpression()), !dbg !275
  %113 = fmul double %107, %110, !dbg !276
  %114 = fsub double %113, %112, !dbg !277
  %115 = getelementptr inbounds double, ptr @ak02_data, i64 %109, !dbg !278
  %116 = load double, ptr %115, align 8, !dbg !278, !tbaa !233
  %117 = fadd double %114, %116, !dbg !279
  call void @llvm.dbg.value(metadata double %117, metadata !210, metadata !DIExpression()), !dbg !267
  %118 = tail call double @llvm.fabs.f64(double %113), !dbg !280
  %119 = tail call double @llvm.fabs.f64(double %112), !dbg !281
  %120 = fadd double %118, %119, !dbg !282
  %121 = tail call double @llvm.fabs.f64(double %116), !dbg !283
  %122 = fadd double %120, %121, !dbg !284
  %123 = fadd double %111, %122, !dbg !285
  call void @llvm.dbg.value(metadata double %123, metadata !214, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double %110, metadata !211, metadata !DIExpression()), !dbg !267
  %124 = add nsw i64 %109, -1, !dbg !286
  call void @llvm.dbg.value(metadata i64 %124, metadata !209, metadata !DIExpression()), !dbg !267
  %125 = icmp ugt i64 %109, 1, !dbg !287
  br i1 %125, label %108, label %126, !dbg !274, !llvm.loop !288

126:                                              ; preds = %108
  call void @llvm.dbg.value(metadata double %117, metadata !219, metadata !DIExpression()), !dbg !290
  %127 = fmul double %106, %117, !dbg !291
  %128 = fsub double %127, %110, !dbg !292
  %129 = fadd double %128, 0xBF789D425FD7DD93, !dbg !293
  call void @llvm.dbg.value(metadata double %129, metadata !210, metadata !DIExpression()), !dbg !267
  %130 = tail call double @llvm.fabs.f64(double %127), !dbg !294
  %131 = tail call double @llvm.fabs.f64(double %110), !dbg !295
  %132 = fadd double %131, %130, !dbg !296
  %133 = fadd double %132, 0x3F789D425FD7DD93, !dbg !297
  %134 = fadd double %123, %133, !dbg !298
  call void @llvm.dbg.value(metadata double %134, metadata !214, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %129, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !265
  %135 = fmul double %134, 0x3CB0000000000000, !dbg !299
  %136 = fadd double %135, 0x3C7AFF6F40020063, !dbg !300
  tail call void @llvm.dbg.value(metadata double %136, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !265
  %137 = fadd double %129, 1.250000e+00, !dbg !301
  %138 = fdiv double %137, %55, !dbg !302
  store double %138, ptr %1, align 8, !dbg !303, !tbaa !140
  %139 = fadd double %136, 0x3CB0000000000000, !dbg !304
  %140 = fdiv double %139, %55, !dbg !305
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !306
  %142 = tail call double @llvm.fabs.f64(double %138), !dbg !307
  %143 = fmul double %142, 0x3CC0000000000000, !dbg !308
  %144 = fadd double %143, %140, !dbg !309
  store double %144, ptr %141, align 8, !dbg !309, !tbaa !145
  br label %145

145:                                              ; preds = %4, %8, %83, %126
  %146 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %83 ], [ 0, %126 ], !dbg !310
  ret i32 %146, !dbg !311
}

declare !dbg !312 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !317 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !321 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !322 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_K0_e(double noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !323 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !336
  call void @llvm.dbg.assign(metadata i1 undef, metadata !332, metadata !DIExpression(), metadata !336, metadata ptr %3, metadata !DIExpression()), !dbg !337
  tail call void @llvm.dbg.value(metadata double %0, metadata !325, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !326, metadata !DIExpression()), !dbg !338
  %4 = fcmp ugt double %0, 0.000000e+00, !dbg !339
  br i1 %4, label %7, label %5, !dbg !340

5:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !341, !tbaa !140
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !341
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !341, !tbaa !145
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 173, i32 noundef 1) #6, !dbg !344
  br label %62, !dbg !344

7:                                                ; preds = %2
  %8 = fcmp olt double %0, 1.000000e+00, !dbg !346
  br i1 %8, label %9, label %51, !dbg !347

9:                                                ; preds = %7
  %10 = tail call double @log(double noundef %0) #6, !dbg !348
  tail call void @llvm.dbg.value(metadata double %10, metadata !327, metadata !DIExpression()), !dbg !349
  %11 = fmul double %0, %0, !dbg !350
  tail call void @llvm.dbg.value(metadata double %11, metadata !331, metadata !DIExpression()), !dbg !349
  tail call void @llvm.dbg.value(metadata !154, metadata !155, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i32 8, metadata !163, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata double %11, metadata !164, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata double 0x3D9D141FCB837472, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i32 7, metadata !165, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata double 0x3D9D141FCB837472, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i32 7, metadata !165, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata double 0x3D9D141FCB837472, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 7, metadata !165, metadata !DIExpression()), !dbg !351
  %12 = fmul double %11, 0x3D9D141FCB837472, !dbg !353
  %13 = fadd double %12, 0x3E14C2029D5D2FB5, !dbg !354
  tail call void @llvm.dbg.value(metadata double %13, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 6, metadata !165, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata double %13, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 6, metadata !165, metadata !DIExpression()), !dbg !351
  %14 = fmul double %11, %13, !dbg !353
  %15 = fadd double %14, 0x3E85D6B25BE0BEE4, !dbg !354
  tail call void @llvm.dbg.value(metadata double %15, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 5, metadata !165, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata double %15, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 5, metadata !165, metadata !DIExpression()), !dbg !351
  %16 = fmul double %11, %15, !dbg !353
  %17 = fadd double %16, 0x3EEF47476772D4D9, !dbg !354
  tail call void @llvm.dbg.value(metadata double %17, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 4, metadata !165, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata double %17, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 4, metadata !165, metadata !DIExpression()), !dbg !351
  %18 = fmul double %11, %17, !dbg !353
  %19 = fadd double %18, 0x3F4BB90E85E098DB, !dbg !354
  tail call void @llvm.dbg.value(metadata double %19, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 3, metadata !165, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata double %19, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 3, metadata !165, metadata !DIExpression()), !dbg !351
  %20 = fmul double %11, %19, !dbg !353
  %21 = fadd double %20, 0x3F99DADB01454042, !dbg !354
  tail call void @llvm.dbg.value(metadata double %21, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 2, metadata !165, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata double %21, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 2, metadata !165, metadata !DIExpression()), !dbg !351
  %22 = fmul double %11, %21, !dbg !353
  %23 = fadd double %22, 0x3FD1DADB014541EC, !dbg !354
  tail call void @llvm.dbg.value(metadata double %23, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 1, metadata !165, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata double %23, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 1, metadata !165, metadata !DIExpression()), !dbg !351
  %24 = fmul double %11, %23, !dbg !353
  tail call void @llvm.dbg.value(metadata double %38, metadata !166, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !351
  %25 = fmul double %11, 2.500000e-01, !dbg !355
  tail call void @llvm.dbg.value(metadata !154, metadata !155, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i32 7, metadata !163, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double %25, metadata !164, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double 0x3E656CF1AEB212BC, metadata !166, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i32 6, metadata !165, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double 0x3E656CF1AEB212BC, metadata !166, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i32 6, metadata !165, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double 0x3E656CF1AEB212BC, metadata !166, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 6, metadata !165, metadata !DIExpression()), !dbg !356
  %26 = fmul double %25, 0x3E656CF1AEB212BC, !dbg !358
  %27 = fadd double %26, 0x3EC02E1F9FBAC1EB, !dbg !359
  tail call void @llvm.dbg.value(metadata double %27, metadata !166, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 5, metadata !165, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double %27, metadata !166, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 5, metadata !165, metadata !DIExpression()), !dbg !356
  %28 = fmul double %25, %27, !dbg !358
  %29 = fadd double %28, 0x3F12345703982239, !dbg !359
  tail call void @llvm.dbg.value(metadata double %29, metadata !166, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 4, metadata !165, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double %29, metadata !166, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 4, metadata !165, metadata !DIExpression()), !dbg !356
  %30 = fmul double %25, %29, !dbg !358
  %31 = fadd double %30, 0x3F5C71C71BAFCBAF, !dbg !359
  tail call void @llvm.dbg.value(metadata double %31, metadata !166, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 3, metadata !165, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double %31, metadata !166, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 3, metadata !165, metadata !DIExpression()), !dbg !356
  %32 = fmul double %25, %31, !dbg !358
  %33 = fadd double %32, 0x3F9C71C71C7247E2, !dbg !359
  tail call void @llvm.dbg.value(metadata double %33, metadata !166, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 2, metadata !165, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double %33, metadata !166, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 2, metadata !165, metadata !DIExpression()), !dbg !356
  %34 = fmul double %25, %33, !dbg !358
  %35 = fadd double %34, 0x3FCFFFFFFFFFFFC0, !dbg !359
  tail call void @llvm.dbg.value(metadata double %35, metadata !166, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 1, metadata !165, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double %35, metadata !166, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 1, metadata !165, metadata !DIExpression()), !dbg !356
  %36 = fmul double %25, %35, !dbg !358
  %37 = fadd double %36, 1.000000e+00, !dbg !359
  tail call void @llvm.dbg.value(metadata double %37, metadata !166, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !356
  %38 = fadd double %24, 0x3FBDADB014541EB2, !dbg !354
  %39 = fmul double %25, %37, !dbg !360
  %40 = fadd double %39, 1.000000e+00, !dbg !361
  %41 = fmul double %10, %40, !dbg !362
  %42 = fsub double %38, %41, !dbg !363
  store double %42, ptr %1, align 8, !dbg !364, !tbaa !140
  %43 = tail call double @llvm.fabs.f64(double %10), !dbg !365
  %44 = fmul double %43, 6.000000e-01, !dbg !366
  %45 = fadd double %44, 1.600000e+00, !dbg !367
  %46 = fmul double %45, 0x3CB0000000000000, !dbg !368
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !369
  %48 = tail call double @llvm.fabs.f64(double %42), !dbg !370
  %49 = fmul double %48, 0x3CC0000000000000, !dbg !371
  %50 = fadd double %46, %49, !dbg !372
  store double %50, ptr %47, align 8, !dbg !372, !tbaa !145
  br label %62

51:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !373
  %52 = call i32 @gsl_sf_bessel_K0_scaled_e(double noundef %0, ptr noundef nonnull %3), !dbg !374, !range !375
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !334, metadata !DIExpression()), !dbg !337
  %53 = fneg double %0, !dbg !376
  %54 = tail call double @llvm.fabs.f64(double %0), !dbg !377
  %55 = fmul double %54, 0x3CB0000000000000, !dbg !378
  %56 = load double, ptr %3, align 8, !dbg !379, !tbaa !140
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !380
  %58 = load double, ptr %57, align 8, !dbg !380, !tbaa !145
  %59 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %53, double noundef %55, double noundef %56, double noundef %58, ptr noundef %1) #6, !dbg !381
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !335, metadata !DIExpression()), !dbg !337
  %60 = icmp eq i32 %59, 0, !dbg !382
  %61 = select i1 %60, i32 %52, i32 %59, !dbg !382
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !383
  br label %62

62:                                               ; preds = %5, %9, %51
  %63 = phi i32 [ 1, %5 ], [ 0, %9 ], [ %61, %51 ], !dbg !384
  ret i32 %63, !dbg !385
}

declare !dbg !386 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_K0_scaled(double noundef %0) local_unnamed_addr #0 !dbg !390 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !397
  call void @llvm.dbg.assign(metadata i1 undef, metadata !395, metadata !DIExpression(), metadata !397, metadata ptr %2, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double %0, metadata !394, metadata !DIExpression()), !dbg !398
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !399
  %3 = call i32 @gsl_sf_bessel_K0_scaled_e(double noundef %0, ptr noundef nonnull %2), !dbg !399, !range !375
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !396, metadata !DIExpression()), !dbg !398
  %4 = icmp eq i32 %3, 0, !dbg !400
  br i1 %4, label %6, label %5, !dbg !399

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 200, i32 noundef 1) #6, !dbg !402
  br label %6, !dbg !402

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !399, !tbaa !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !405
  ret double %7, !dbg !405
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_K0(double noundef %0) local_unnamed_addr #0 !dbg !406 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !411
  call void @llvm.dbg.assign(metadata i1 undef, metadata !409, metadata !DIExpression(), metadata !411, metadata ptr %2, metadata !DIExpression()), !dbg !412
  tail call void @llvm.dbg.value(metadata double %0, metadata !408, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !413
  %3 = call i32 @gsl_sf_bessel_K0_e(double noundef %0, ptr noundef nonnull %2), !dbg !413
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !410, metadata !DIExpression()), !dbg !412
  %4 = icmp eq i32 %3, 0, !dbg !414
  br i1 %4, label %6, label %5, !dbg !413

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 205, i32 noundef %3) #6, !dbg !416
  br label %6, !dbg !416

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !413, !tbaa !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !419
  ret double %7, !dbg !419
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
!150 = !DILocation(line: 139, column: 23, scope: !122)
!151 = !DILocation(line: 0, scope: !122)
!152 = !DILocation(line: 140, column: 23, scope: !122)
!153 = !DILocation(line: 141, column: 24, scope: !122)
!154 = !{}
!155 = !DILocalVariable(name: "c", arg: 1, scope: !156, file: !157, line: 61, type: !160)
!156 = distinct !DISubprogram(name: "gsl_poly_eval", scope: !157, file: !157, line: 61, type: !158, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !162)
!157 = !DIFile(filename: "../gsl/gsl_poly.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "12a100e1cfeec1a19df8b89da050794d")
!158 = !DISubroutineType(types: !159)
!159 = !{!69, !160, !161, !110}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!162 = !{!155, !163, !164, !165, !166}
!163 = !DILocalVariable(name: "len", arg: 2, scope: !156, file: !157, line: 61, type: !161)
!164 = !DILocalVariable(name: "x", arg: 3, scope: !156, file: !157, line: 61, type: !110)
!165 = !DILocalVariable(name: "i", scope: !156, file: !157, line: 63, type: !28)
!166 = !DILocalVariable(name: "ans", scope: !156, file: !157, line: 64, type: !69)
!167 = !DILocation(line: 0, scope: !156, inlinedAt: !168)
!168 = distinct !DILocation(line: 142, column: 26, scope: !122)
!169 = !DILocation(line: 65, column: 43, scope: !170, inlinedAt: !168)
!170 = distinct !DILexicalBlock(scope: !171, file: !157, line: 65, column: 3)
!171 = distinct !DILexicalBlock(scope: !156, file: !157, line: 65, column: 3)
!172 = !DILocation(line: 65, column: 39, scope: !170, inlinedAt: !168)
!173 = !DILocation(line: 142, column: 66, scope: !122)
!174 = !DILocation(line: 0, scope: !156, inlinedAt: !175)
!175 = distinct !DILocation(line: 142, column: 70, scope: !122)
!176 = !DILocation(line: 65, column: 43, scope: !170, inlinedAt: !175)
!177 = !DILocation(line: 65, column: 39, scope: !170, inlinedAt: !175)
!178 = !DILocation(line: 142, column: 69, scope: !122)
!179 = !DILocation(line: 142, column: 61, scope: !122)
!180 = !DILocation(line: 142, column: 56, scope: !122)
!181 = !DILocation(line: 142, column: 53, scope: !122)
!182 = !DILocation(line: 142, column: 23, scope: !122)
!183 = !DILocation(line: 142, column: 18, scope: !122)
!184 = !DILocation(line: 143, column: 30, scope: !122)
!185 = !DILocation(line: 143, column: 38, scope: !122)
!186 = !DILocation(line: 143, column: 29, scope: !122)
!187 = !DILocation(line: 143, column: 23, scope: !122)
!188 = !DILocation(line: 143, column: 44, scope: !122)
!189 = !DILocation(line: 143, column: 13, scope: !122)
!190 = !DILocation(line: 144, column: 44, scope: !122)
!191 = !DILocation(line: 144, column: 42, scope: !122)
!192 = !DILocation(line: 144, column: 17, scope: !122)
!193 = !DILocation(line: 147, column: 13, scope: !129)
!194 = !DILocation(line: 0, scope: !129)
!195 = !DILocation(line: 147, column: 11, scope: !123)
!196 = !DILocation(line: 0, scope: !128)
!197 = !DILocation(line: 150, column: 33, scope: !128)
!198 = !DILocation(line: 150, column: 38, scope: !128)
!199 = !DILocalVariable(name: "cs", arg: 1, scope: !200, file: !201, line: 3, type: !204)
!200 = distinct !DISubprogram(name: "cheb_eval_e", scope: !201, file: !201, line: 3, type: !202, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !206)
!201 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!202 = !DISubroutineType(types: !203)
!203 = !{!28, !204, !110, !111}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!206 = !{!199, !207, !208, !209, !210, !211, !212, !213, !214, !215, !219}
!207 = !DILocalVariable(name: "x", arg: 2, scope: !200, file: !201, line: 4, type: !110)
!208 = !DILocalVariable(name: "result", arg: 3, scope: !200, file: !201, line: 5, type: !111)
!209 = !DILocalVariable(name: "j", scope: !200, file: !201, line: 7, type: !28)
!210 = !DILocalVariable(name: "d", scope: !200, file: !201, line: 8, type: !69)
!211 = !DILocalVariable(name: "dd", scope: !200, file: !201, line: 9, type: !69)
!212 = !DILocalVariable(name: "y", scope: !200, file: !201, line: 11, type: !69)
!213 = !DILocalVariable(name: "y2", scope: !200, file: !201, line: 12, type: !69)
!214 = !DILocalVariable(name: "e", scope: !200, file: !201, line: 14, type: !69)
!215 = !DILocalVariable(name: "temp", scope: !216, file: !201, line: 17, type: !69)
!216 = distinct !DILexicalBlock(scope: !217, file: !201, line: 16, column: 33)
!217 = distinct !DILexicalBlock(scope: !218, file: !201, line: 16, column: 3)
!218 = distinct !DILexicalBlock(scope: !200, file: !201, line: 16, column: 3)
!219 = !DILocalVariable(name: "temp", scope: !220, file: !201, line: 24, type: !69)
!220 = distinct !DILexicalBlock(scope: !200, file: !201, line: 23, column: 3)
!221 = !DILocation(line: 0, scope: !200, inlinedAt: !222)
!222 = distinct !DILocation(line: 150, column: 5, scope: !128)
!223 = !DILocation(line: 11, column: 19, scope: !200, inlinedAt: !222)
!224 = !DILocation(line: 11, column: 22, scope: !200, inlinedAt: !222)
!225 = !DILocation(line: 11, column: 30, scope: !200, inlinedAt: !222)
!226 = !DILocation(line: 11, column: 39, scope: !200, inlinedAt: !222)
!227 = !DILocation(line: 12, column: 19, scope: !200, inlinedAt: !222)
!228 = !DILocation(line: 16, column: 3, scope: !218, inlinedAt: !222)
!229 = !DILocation(line: 0, scope: !216, inlinedAt: !222)
!230 = !DILocation(line: 18, column: 11, scope: !216, inlinedAt: !222)
!231 = !DILocation(line: 18, column: 14, scope: !216, inlinedAt: !222)
!232 = !DILocation(line: 18, column: 21, scope: !216, inlinedAt: !222)
!233 = !{!142, !142, i64 0}
!234 = !DILocation(line: 18, column: 19, scope: !216, inlinedAt: !222)
!235 = !DILocation(line: 19, column: 10, scope: !216, inlinedAt: !222)
!236 = !DILocation(line: 19, column: 26, scope: !216, inlinedAt: !222)
!237 = !DILocation(line: 19, column: 24, scope: !216, inlinedAt: !222)
!238 = !DILocation(line: 19, column: 37, scope: !216, inlinedAt: !222)
!239 = !DILocation(line: 19, column: 35, scope: !216, inlinedAt: !222)
!240 = !DILocation(line: 19, column: 7, scope: !216, inlinedAt: !222)
!241 = !DILocation(line: 16, column: 29, scope: !217, inlinedAt: !222)
!242 = !DILocation(line: 16, column: 23, scope: !217, inlinedAt: !222)
!243 = distinct !{!243, !228, !244, !245}
!244 = !DILocation(line: 21, column: 3, scope: !218, inlinedAt: !222)
!245 = !{!"llvm.loop.mustprogress"}
!246 = !DILocation(line: 0, scope: !220, inlinedAt: !222)
!247 = !DILocation(line: 25, column: 10, scope: !220, inlinedAt: !222)
!248 = !DILocation(line: 25, column: 13, scope: !220, inlinedAt: !222)
!249 = !DILocation(line: 25, column: 18, scope: !220, inlinedAt: !222)
!250 = !DILocation(line: 26, column: 10, scope: !220, inlinedAt: !222)
!251 = !DILocation(line: 26, column: 25, scope: !220, inlinedAt: !222)
!252 = !DILocation(line: 26, column: 23, scope: !220, inlinedAt: !222)
!253 = !DILocation(line: 26, column: 34, scope: !220, inlinedAt: !222)
!254 = !DILocation(line: 26, column: 7, scope: !220, inlinedAt: !222)
!255 = !DILocation(line: 30, column: 33, scope: !200, inlinedAt: !222)
!256 = !DILocation(line: 30, column: 37, scope: !200, inlinedAt: !222)
!257 = !DILocation(line: 151, column: 30, scope: !128)
!258 = !DILocation(line: 151, column: 39, scope: !128)
!259 = !DILocation(line: 151, column: 18, scope: !128)
!260 = !DILocation(line: 152, column: 26, scope: !128)
!261 = !DILocation(line: 152, column: 13, scope: !128)
!262 = !DILocation(line: 153, column: 44, scope: !128)
!263 = !DILocation(line: 153, column: 42, scope: !128)
!264 = !DILocation(line: 153, column: 17, scope: !128)
!265 = !DILocation(line: 0, scope: !132)
!266 = !DILocation(line: 159, column: 33, scope: !132)
!267 = !DILocation(line: 0, scope: !200, inlinedAt: !268)
!268 = distinct !DILocation(line: 159, column: 5, scope: !132)
!269 = !DILocation(line: 11, column: 19, scope: !200, inlinedAt: !268)
!270 = !DILocation(line: 11, column: 22, scope: !200, inlinedAt: !268)
!271 = !DILocation(line: 11, column: 30, scope: !200, inlinedAt: !268)
!272 = !DILocation(line: 11, column: 39, scope: !200, inlinedAt: !268)
!273 = !DILocation(line: 12, column: 19, scope: !200, inlinedAt: !268)
!274 = !DILocation(line: 16, column: 3, scope: !218, inlinedAt: !268)
!275 = !DILocation(line: 0, scope: !216, inlinedAt: !268)
!276 = !DILocation(line: 18, column: 11, scope: !216, inlinedAt: !268)
!277 = !DILocation(line: 18, column: 14, scope: !216, inlinedAt: !268)
!278 = !DILocation(line: 18, column: 21, scope: !216, inlinedAt: !268)
!279 = !DILocation(line: 18, column: 19, scope: !216, inlinedAt: !268)
!280 = !DILocation(line: 19, column: 10, scope: !216, inlinedAt: !268)
!281 = !DILocation(line: 19, column: 26, scope: !216, inlinedAt: !268)
!282 = !DILocation(line: 19, column: 24, scope: !216, inlinedAt: !268)
!283 = !DILocation(line: 19, column: 37, scope: !216, inlinedAt: !268)
!284 = !DILocation(line: 19, column: 35, scope: !216, inlinedAt: !268)
!285 = !DILocation(line: 19, column: 7, scope: !216, inlinedAt: !268)
!286 = !DILocation(line: 16, column: 29, scope: !217, inlinedAt: !268)
!287 = !DILocation(line: 16, column: 23, scope: !217, inlinedAt: !268)
!288 = distinct !{!288, !274, !289, !245}
!289 = !DILocation(line: 21, column: 3, scope: !218, inlinedAt: !268)
!290 = !DILocation(line: 0, scope: !220, inlinedAt: !268)
!291 = !DILocation(line: 25, column: 10, scope: !220, inlinedAt: !268)
!292 = !DILocation(line: 25, column: 13, scope: !220, inlinedAt: !268)
!293 = !DILocation(line: 25, column: 18, scope: !220, inlinedAt: !268)
!294 = !DILocation(line: 26, column: 10, scope: !220, inlinedAt: !268)
!295 = !DILocation(line: 26, column: 25, scope: !220, inlinedAt: !268)
!296 = !DILocation(line: 26, column: 23, scope: !220, inlinedAt: !268)
!297 = !DILocation(line: 26, column: 34, scope: !220, inlinedAt: !268)
!298 = !DILocation(line: 26, column: 7, scope: !220, inlinedAt: !268)
!299 = !DILocation(line: 30, column: 33, scope: !200, inlinedAt: !268)
!300 = !DILocation(line: 30, column: 37, scope: !200, inlinedAt: !268)
!301 = !DILocation(line: 160, column: 26, scope: !132)
!302 = !DILocation(line: 160, column: 35, scope: !132)
!303 = !DILocation(line: 160, column: 18, scope: !132)
!304 = !DILocation(line: 161, column: 27, scope: !132)
!305 = !DILocation(line: 161, column: 46, scope: !132)
!306 = !DILocation(line: 161, column: 13, scope: !132)
!307 = !DILocation(line: 162, column: 44, scope: !132)
!308 = !DILocation(line: 162, column: 42, scope: !132)
!309 = !DILocation(line: 162, column: 17, scope: !132)
!310 = !DILocation(line: 0, scope: !124)
!311 = !DILocation(line: 165, column: 1, scope: !107)
!312 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !315, !315, !28, !28}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!317 = !DISubprogram(name: "log", scope: !318, file: !318, line: 104, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!319 = !DISubroutineType(types: !320)
!320 = !{!69, !69}
!321 = !DISubprogram(name: "exp", scope: !318, file: !318, line: 95, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DISubprogram(name: "sqrt", scope: !318, file: !318, line: 143, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!323 = distinct !DISubprogram(name: "gsl_sf_bessel_K0_e", scope: !2, file: !2, line: 168, type: !108, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !324)
!324 = !{!325, !326, !327, !331, !332, !334, !335}
!325 = !DILocalVariable(name: "x", arg: 1, scope: !323, file: !2, line: 168, type: !110)
!326 = !DILocalVariable(name: "result", arg: 2, scope: !323, file: !2, line: 168, type: !111)
!327 = !DILocalVariable(name: "lx", scope: !328, file: !2, line: 176, type: !110)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 175, column: 20)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 175, column: 11)
!330 = distinct !DILexicalBlock(scope: !323, file: !2, line: 172, column: 6)
!331 = !DILocalVariable(name: "x2", scope: !328, file: !2, line: 177, type: !110)
!332 = !DILocalVariable(name: "K0_scaled", scope: !333, file: !2, line: 184, type: !112)
!333 = distinct !DILexicalBlock(scope: !329, file: !2, line: 183, column: 8)
!334 = !DILocalVariable(name: "stat_K0", scope: !333, file: !2, line: 185, type: !28)
!335 = !DILocalVariable(name: "stat_e", scope: !333, file: !2, line: 186, type: !28)
!336 = distinct !DIAssignID()
!337 = !DILocation(line: 0, scope: !333)
!338 = !DILocation(line: 0, scope: !323)
!339 = !DILocation(line: 172, column: 8, scope: !330)
!340 = !DILocation(line: 172, column: 6, scope: !323)
!341 = !DILocation(line: 173, column: 5, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !2, line: 173, column: 5)
!343 = distinct !DILexicalBlock(scope: !330, file: !2, line: 172, column: 16)
!344 = !DILocation(line: 173, column: 5, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !2, line: 173, column: 5)
!346 = !DILocation(line: 175, column: 13, scope: !329)
!347 = !DILocation(line: 175, column: 11, scope: !330)
!348 = !DILocation(line: 176, column: 23, scope: !328)
!349 = !DILocation(line: 0, scope: !328)
!350 = !DILocation(line: 177, column: 24, scope: !328)
!351 = !DILocation(line: 0, scope: !156, inlinedAt: !352)
!352 = distinct !DILocation(line: 178, column: 20, scope: !328)
!353 = !DILocation(line: 65, column: 43, scope: !170, inlinedAt: !352)
!354 = !DILocation(line: 65, column: 39, scope: !170, inlinedAt: !352)
!355 = !DILocation(line: 178, column: 60, scope: !328)
!356 = !DILocation(line: 0, scope: !156, inlinedAt: !357)
!357 = distinct !DILocation(line: 178, column: 64, scope: !328)
!358 = !DILocation(line: 65, column: 43, scope: !170, inlinedAt: !357)
!359 = !DILocation(line: 65, column: 39, scope: !170, inlinedAt: !357)
!360 = !DILocation(line: 178, column: 63, scope: !328)
!361 = !DILocation(line: 178, column: 55, scope: !328)
!362 = !DILocation(line: 178, column: 50, scope: !328)
!363 = !DILocation(line: 178, column: 47, scope: !328)
!364 = !DILocation(line: 178, column: 18, scope: !328)
!365 = !DILocation(line: 179, column: 25, scope: !328)
!366 = !DILocation(line: 179, column: 33, scope: !328)
!367 = !DILocation(line: 179, column: 24, scope: !328)
!368 = !DILocation(line: 179, column: 39, scope: !328)
!369 = !DILocation(line: 179, column: 13, scope: !328)
!370 = !DILocation(line: 180, column: 44, scope: !328)
!371 = !DILocation(line: 180, column: 42, scope: !328)
!372 = !DILocation(line: 180, column: 17, scope: !328)
!373 = !DILocation(line: 184, column: 5, scope: !333)
!374 = !DILocation(line: 185, column: 19, scope: !333)
!375 = !{i32 0, i32 2}
!376 = !DILocation(line: 186, column: 41, scope: !333)
!377 = !DILocation(line: 186, column: 61, scope: !333)
!378 = !DILocation(line: 186, column: 60, scope: !333)
!379 = !DILocation(line: 187, column: 54, scope: !333)
!380 = !DILocation(line: 187, column: 69, scope: !333)
!381 = !DILocation(line: 186, column: 19, scope: !333)
!382 = !DILocation(line: 189, column: 12, scope: !333)
!383 = !DILocation(line: 190, column: 3, scope: !329)
!384 = !DILocation(line: 0, scope: !330)
!385 = !DILocation(line: 191, column: 1, scope: !323)
!386 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !387, file: !387, line: 122, type: !388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!387 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!388 = !DISubroutineType(types: !389)
!389 = !{!28, !110, !110, !110, !110, !111}
!390 = distinct !DISubprogram(name: "gsl_sf_bessel_K0_scaled", scope: !2, file: !2, line: 198, type: !391, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{!69, !110}
!393 = !{!394, !395, !396}
!394 = !DILocalVariable(name: "x", arg: 1, scope: !390, file: !2, line: 198, type: !110)
!395 = !DILocalVariable(name: "result", scope: !390, file: !2, line: 200, type: !112)
!396 = !DILocalVariable(name: "status", scope: !390, file: !2, line: 200, type: !28)
!397 = distinct !DIAssignID()
!398 = !DILocation(line: 0, scope: !390)
!399 = !DILocation(line: 200, column: 3, scope: !390)
!400 = !DILocation(line: 200, column: 3, scope: !401)
!401 = distinct !DILexicalBlock(scope: !390, file: !2, line: 200, column: 3)
!402 = !DILocation(line: 200, column: 3, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !2, line: 200, column: 3)
!404 = distinct !DILexicalBlock(scope: !401, file: !2, line: 200, column: 3)
!405 = !DILocation(line: 201, column: 1, scope: !390)
!406 = distinct !DISubprogram(name: "gsl_sf_bessel_K0", scope: !2, file: !2, line: 203, type: !391, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !407)
!407 = !{!408, !409, !410}
!408 = !DILocalVariable(name: "x", arg: 1, scope: !406, file: !2, line: 203, type: !110)
!409 = !DILocalVariable(name: "result", scope: !406, file: !2, line: 205, type: !112)
!410 = !DILocalVariable(name: "status", scope: !406, file: !2, line: 205, type: !28)
!411 = distinct !DIAssignID()
!412 = !DILocation(line: 0, scope: !406)
!413 = !DILocation(line: 205, column: 3, scope: !406)
!414 = !DILocation(line: 205, column: 3, scope: !415)
!415 = distinct !DILexicalBlock(scope: !406, file: !2, line: 205, column: 3)
!416 = !DILocation(line: 205, column: 3, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !2, line: 205, column: 3)
!418 = distinct !DILexicalBlock(scope: !415, file: !2, line: 205, column: 3)
!419 = !DILocation(line: 206, column: 1, scope: !406)
