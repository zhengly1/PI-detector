; ModuleID = 'bessel_Yn.c'
source_filename = "bessel_Yn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Yn.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_Yn_e(n, x, &result)\00", align 1, !dbg !17

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Yn_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !75 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !117
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !118
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !119
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !120
  call void @llvm.dbg.assign(metadata i1 undef, metadata !109, metadata !DIExpression(), metadata !120, metadata ptr %7, metadata !DIExpression()), !dbg !121
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !110, metadata !DIExpression(), metadata !122, metadata ptr %8, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !87, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata double %1, metadata !88, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !89, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 1, metadata !90, metadata !DIExpression()), !dbg !123
  %9 = icmp slt i32 %0, 0, !dbg !124
  br i1 %9, label %10, label %15, !dbg !126

10:                                               ; preds = %3
  %11 = sub nsw i32 0, %0, !dbg !127
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !87, metadata !DIExpression()), !dbg !123
  %12 = and i32 %11, 1, !dbg !129
  %13 = icmp eq i32 %12, 0, !dbg !129
  br i1 %13, label %15, label %14, !dbg !131

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !90, metadata !DIExpression()), !dbg !123
  br label %15, !dbg !132

15:                                               ; preds = %10, %14, %3
  %16 = phi double [ -1.000000e+00, %14 ], [ 1.000000e+00, %10 ], [ 1.000000e+00, %3 ], !dbg !123
  %17 = phi i32 [ %11, %14 ], [ %11, %10 ], [ %0, %3 ]
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !87, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !90, metadata !DIExpression()), !dbg !123
  switch i32 %17, label %26 [
    i32 0, label %18
    i32 1, label %22
  ], !dbg !133

18:                                               ; preds = %15
  %19 = tail call i32 @gsl_sf_bessel_Y0_e(double noundef %1, ptr noundef %2) #7, !dbg !134
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !91, metadata !DIExpression()), !dbg !135
  %20 = load double, ptr %2, align 8, !dbg !136, !tbaa !137
  %21 = fmul double %16, %20, !dbg !136
  store double %21, ptr %2, align 8, !dbg !136, !tbaa !137
  br label %248

22:                                               ; preds = %15
  %23 = tail call i32 @gsl_sf_bessel_Y1_e(double noundef %1, ptr noundef %2) #7, !dbg !142
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !94, metadata !DIExpression()), !dbg !143
  %24 = load double, ptr %2, align 8, !dbg !144, !tbaa !137
  %25 = fmul double %16, %24, !dbg !144
  store double %25, ptr %2, align 8, !dbg !144, !tbaa !137
  br label %248

26:                                               ; preds = %15
  %27 = fcmp ugt double %1, 0.000000e+00, !dbg !145
  br i1 %27, label %30, label %28, !dbg !147

28:                                               ; preds = %26
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !148, !tbaa !137
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !148
  store double 0x7FF8000000000000, ptr %29, align 8, !dbg !148, !tbaa !151
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 125, i32 noundef 1) #7, !dbg !152
  br label %248, !dbg !152

30:                                               ; preds = %26
  %31 = fcmp olt double %1, 5.000000e+00, !dbg !154
  br i1 %31, label %32, label %154, !dbg !155

32:                                               ; preds = %30
  call void @llvm.dbg.assign(metadata i1 undef, metadata !156, metadata !DIExpression(), metadata !117, metadata ptr %4, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.assign(metadata i1 undef, metadata !178, metadata !DIExpression(), metadata !118, metadata ptr %5, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.assign(metadata i1 undef, metadata !179, metadata !DIExpression(), metadata !119, metadata ptr %6, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 %17, metadata !162, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %1, metadata !163, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata ptr %2, metadata !164, metadata !DIExpression()), !dbg !184
  %33 = fmul double %1, 2.500000e-01, !dbg !187
  %34 = fmul double %33, %1, !dbg !188
  call void @llvm.dbg.value(metadata double %34, metadata !166, metadata !DIExpression()), !dbg !184
  %35 = fmul double %1, 5.000000e-01, !dbg !189
  %36 = tail call double @log(double noundef %35) #7, !dbg !190
  call void @llvm.dbg.value(metadata double %36, metadata !167, metadata !DIExpression()), !dbg !184
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !191
  %37 = add nsw i32 %17, -1, !dbg !192
  %38 = call i32 @gsl_sf_lnfact_e(i32 noundef %37, ptr noundef nonnull %4) #7, !dbg !193
  %39 = sub nsw i32 0, %17, !dbg !194
  %40 = sitofp i32 %39 to double, !dbg !194
  %41 = fmul double %36, %40, !dbg !195
  %42 = load double, ptr %4, align 8, !dbg !196, !tbaa !137
  %43 = fadd double %41, %42, !dbg !197
  call void @llvm.dbg.value(metadata double %43, metadata !171, metadata !DIExpression()), !dbg !184
  %44 = fcmp ogt double %43, 0x40861642FEFA39EF, !dbg !198
  br i1 %44, label %51, label %45, !dbg !200

45:                                               ; preds = %32
  %46 = add i32 %17, -1, !dbg !201
  %47 = and i32 %46, 1, !dbg !201
  %48 = icmp eq i32 %17, 2, !dbg !201
  br i1 %48, label %74, label %49, !dbg !201

49:                                               ; preds = %45
  %50 = and i32 %46, -2, !dbg !201
  br label %53, !dbg !201

51:                                               ; preds = %32
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 51, i32 noundef 16) #7, !dbg !203
  %52 = load double, ptr %2, align 8, !dbg !205, !tbaa !137
  br label %150, !dbg !203

53:                                               ; preds = %53, %49
  %54 = phi i32 [ 1, %49 ], [ %71, %53 ]
  %55 = phi double [ 1.000000e+00, %49 ], [ %69, %53 ]
  %56 = phi double [ 1.000000e+00, %49 ], [ %70, %53 ]
  %57 = phi i32 [ 0, %49 ], [ %72, %53 ]
  call void @llvm.dbg.value(metadata i32 %54, metadata !165, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %55, metadata !168, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %56, metadata !170, metadata !DIExpression()), !dbg !184
  %58 = sub nsw i32 %17, %54, !dbg !206
  %59 = mul nsw i32 %58, %54, !dbg !209
  %60 = sitofp i32 %59 to double, !dbg !210
  %61 = fdiv double %34, %60, !dbg !211
  %62 = fmul double %55, %61, !dbg !212
  call void @llvm.dbg.value(metadata double %62, metadata !168, metadata !DIExpression()), !dbg !184
  %63 = fadd double %56, %62, !dbg !213
  call void @llvm.dbg.value(metadata double %63, metadata !170, metadata !DIExpression()), !dbg !184
  %64 = add nuw nsw i32 %54, 1, !dbg !214
  call void @llvm.dbg.value(metadata i32 %64, metadata !165, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32 %64, metadata !165, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %62, metadata !168, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %63, metadata !170, metadata !DIExpression()), !dbg !184
  %65 = sub nsw i32 %17, %64, !dbg !206
  %66 = mul nsw i32 %65, %64, !dbg !209
  %67 = sitofp i32 %66 to double, !dbg !210
  %68 = fdiv double %34, %67, !dbg !211
  %69 = fmul double %62, %68, !dbg !212
  call void @llvm.dbg.value(metadata double %69, metadata !168, metadata !DIExpression()), !dbg !184
  %70 = fadd double %63, %69, !dbg !213
  call void @llvm.dbg.value(metadata double %70, metadata !170, metadata !DIExpression()), !dbg !184
  %71 = add nuw nsw i32 %54, 2, !dbg !214
  call void @llvm.dbg.value(metadata i32 %71, metadata !165, metadata !DIExpression()), !dbg !184
  %72 = add i32 %57, 2, !dbg !201
  %73 = icmp eq i32 %72, %50, !dbg !201
  br i1 %73, label %74, label %53, !dbg !201, !llvm.loop !215

74:                                               ; preds = %53, %45
  %75 = phi double [ undef, %45 ], [ %70, %53 ]
  %76 = phi i32 [ 1, %45 ], [ %71, %53 ]
  %77 = phi double [ 1.000000e+00, %45 ], [ %69, %53 ]
  %78 = phi double [ 1.000000e+00, %45 ], [ %70, %53 ]
  %79 = icmp eq i32 %47, 0, !dbg !201
  br i1 %79, label %87, label %80, !dbg !201

80:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i32 %76, metadata !165, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %77, metadata !168, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %78, metadata !170, metadata !DIExpression()), !dbg !184
  %81 = sub nsw i32 %17, %76, !dbg !206
  %82 = mul nsw i32 %81, %76, !dbg !209
  %83 = sitofp i32 %82 to double, !dbg !210
  %84 = fdiv double %34, %83, !dbg !211
  %85 = fmul double %77, %84, !dbg !212
  call void @llvm.dbg.value(metadata double %85, metadata !168, metadata !DIExpression()), !dbg !184
  %86 = fadd double %78, %85, !dbg !213
  call void @llvm.dbg.value(metadata double %86, metadata !170, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32 %76, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !184
  br label %87, !dbg !218

87:                                               ; preds = %74, %80
  %88 = phi double [ %75, %74 ], [ %86, %80 ], !dbg !213
  %89 = call double @exp(double noundef %43) #7, !dbg !218
  %90 = fneg double %89, !dbg !219
  %91 = fmul double %88, %90, !dbg !220
  %92 = fdiv double %91, 0x400921FB54442D18, !dbg !221
  call void @llvm.dbg.value(metadata double %92, metadata !169, metadata !DIExpression()), !dbg !184
  %93 = sitofp i32 %17 to double, !dbg !222
  %94 = fmul double %36, %93, !dbg !223
  %95 = call double @exp(double noundef %94) #7, !dbg !224
  %96 = fdiv double %95, 0xC00921FB54442D18, !dbg !225
  call void @llvm.dbg.value(metadata double %96, metadata !174, metadata !DIExpression()), !dbg !184
  %97 = fcmp ueq double %96, 0.000000e+00, !dbg !226
  br i1 %97, label %138, label %98, !dbg !227

98:                                               ; preds = %87
  call void @llvm.dbg.value(metadata i32 20, metadata !175, metadata !DIExpression()), !dbg !186
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !228
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !229
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !180, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !181, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double 0xBFE2788CFC6FB619, metadata !182, metadata !DIExpression()), !dbg !186
  %99 = call i32 @gsl_sf_psi_int_e(i32 noundef %17, ptr noundef nonnull %5) #7, !dbg !230
  %100 = call i32 @gsl_sf_fact_e(i32 noundef %17, ptr noundef nonnull %6) #7, !dbg !231
  %101 = load double, ptr %5, align 8, !dbg !232, !tbaa !137
  %102 = fdiv double 1.000000e+00, %93, !dbg !233
  %103 = fadd double %102, %101, !dbg !234
  call void @llvm.dbg.value(metadata double %103, metadata !183, metadata !DIExpression()), !dbg !186
  %104 = fadd double %103, 0xBFE2788CFC6FB619, !dbg !235
  %105 = fmul double %36, 2.000000e+00, !dbg !236
  %106 = fsub double %104, %105, !dbg !237
  %107 = load double, ptr %6, align 8, !dbg !238, !tbaa !137
  %108 = fdiv double %106, %107, !dbg !239
  call void @llvm.dbg.value(metadata double %108, metadata !173, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32 1, metadata !165, metadata !DIExpression()), !dbg !184
  %109 = fneg double %34
  br label %110, !dbg !240

110:                                              ; preds = %110, %98
  %111 = phi double [ %103, %98 ], [ %124, %110 ]
  %112 = phi double [ 0xBFE2788CFC6FB619, %98 ], [ %120, %110 ]
  %113 = phi double [ 1.000000e+00, %98 ], [ %125, %110 ]
  %114 = phi double [ 1.000000e+00, %98 ], [ %127, %110 ]
  %115 = phi i32 [ 1, %98 ], [ %134, %110 ]
  %116 = phi double [ %108, %98 ], [ %133, %110 ]
  %117 = phi double [ %107, %98 ], [ %126, %110 ]
  call void @llvm.dbg.value(metadata double %111, metadata !183, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %112, metadata !182, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %113, metadata !181, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %114, metadata !180, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 %115, metadata !165, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %116, metadata !173, metadata !DIExpression()), !dbg !184
  %118 = sitofp i32 %115 to double, !dbg !242
  %119 = fdiv double 1.000000e+00, %118, !dbg !245
  %120 = fadd double %112, %119, !dbg !246
  call void @llvm.dbg.value(metadata double %120, metadata !182, metadata !DIExpression()), !dbg !186
  %121 = add nsw i32 %115, %17, !dbg !247
  %122 = sitofp i32 %121 to double, !dbg !248
  %123 = fdiv double 1.000000e+00, %122, !dbg !249
  %124 = fadd double %111, %123, !dbg !250
  call void @llvm.dbg.value(metadata double %124, metadata !183, metadata !DIExpression()), !dbg !186
  %125 = fmul double %113, %118, !dbg !251
  call void @llvm.dbg.value(metadata double %125, metadata !181, metadata !DIExpression()), !dbg !186
  %126 = fmul double %117, %122, !dbg !252
  call void @llvm.dbg.assign(metadata double %126, metadata !179, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !253, metadata ptr %6, metadata !DIExpression()), !dbg !186
  %127 = fmul double %114, %109, !dbg !254
  call void @llvm.dbg.value(metadata double %127, metadata !180, metadata !DIExpression()), !dbg !186
  %128 = fadd double %120, %124, !dbg !255
  %129 = fsub double %128, %105, !dbg !256
  %130 = fmul double %127, %129, !dbg !257
  %131 = fmul double %125, %126, !dbg !258
  %132 = fdiv double %130, %131, !dbg !259
  call void @llvm.dbg.value(metadata double %132, metadata !168, metadata !DIExpression()), !dbg !184
  %133 = fadd double %116, %132, !dbg !260
  call void @llvm.dbg.value(metadata double %133, metadata !173, metadata !DIExpression()), !dbg !184
  %134 = add nuw nsw i32 %115, 1, !dbg !261
  call void @llvm.dbg.value(metadata i32 %134, metadata !165, metadata !DIExpression()), !dbg !184
  %135 = icmp eq i32 %134, 20, !dbg !262
  br i1 %135, label %136, label %110, !dbg !240, !llvm.loop !263

136:                                              ; preds = %110
  %137 = fmul double %96, %133, !dbg !265
  call void @llvm.dbg.value(metadata double %137, metadata !172, metadata !DIExpression()), !dbg !184
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !266
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !266
  br label %138, !dbg !267

138:                                              ; preds = %136, %87
  %139 = phi double [ %137, %136 ], [ 0.000000e+00, %87 ], !dbg !268
  call void @llvm.dbg.value(metadata double %139, metadata !172, metadata !DIExpression()), !dbg !184
  %140 = fadd double %92, %139, !dbg !269
  %141 = fmul double %43, %92, !dbg !270
  %142 = call double @llvm.fabs.f64(double %141), !dbg !270
  %143 = call double @llvm.fabs.f64(double %139), !dbg !271
  %144 = fadd double %142, %143, !dbg !272
  %145 = fmul double %144, 0x3CB0000000000000, !dbg !273
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !274
  %147 = call double @llvm.fabs.f64(double %140), !dbg !275
  %148 = fmul double %147, 0x3CC0000000000000, !dbg !276
  %149 = fadd double %145, %148, !dbg !277
  store double %149, ptr %146, align 8, !dbg !277, !tbaa !151
  br label %150, !dbg !278

150:                                              ; preds = %51, %138
  %151 = phi double [ %52, %51 ], [ %140, %138 ], !dbg !205
  %152 = phi i32 [ 16, %51 ], [ 0, %138 ], !dbg !184
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !279
  tail call void @llvm.dbg.value(metadata i32 %152, metadata !97, metadata !DIExpression()), !dbg !280
  %153 = fmul double %16, %151, !dbg !205
  store double %153, ptr %2, align 8, !dbg !205, !tbaa !137
  br label %248

154:                                              ; preds = %30
  %155 = fmul double %1, 0x3ED965FEA53D6E41, !dbg !281
  %156 = mul nsw i32 %17, %17, !dbg !282
  %157 = add nuw nsw i32 %156, 1, !dbg !283
  %158 = sitofp i32 %157 to double, !dbg !283
  %159 = fcmp ogt double %155, %158, !dbg !284
  br i1 %159, label %160, label %165, !dbg !285

160:                                              ; preds = %154
  %161 = sitofp i32 %17 to double, !dbg !286
  %162 = tail call i32 @gsl_sf_bessel_Ynu_asympx_e(double noundef %161, double noundef %1, ptr noundef %2) #7, !dbg !287
  tail call void @llvm.dbg.value(metadata i32 %162, metadata !101, metadata !DIExpression()), !dbg !288
  %163 = load double, ptr %2, align 8, !dbg !289, !tbaa !137
  %164 = fmul double %16, %163, !dbg !289
  store double %164, ptr %2, align 8, !dbg !289, !tbaa !137
  br label %248

165:                                              ; preds = %154
  %166 = icmp ugt i32 %17, 50, !dbg !290
  br i1 %166, label %167, label %172, !dbg !291

167:                                              ; preds = %165
  %168 = sitofp i32 %17 to double, !dbg !292
  %169 = tail call i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double noundef %168, double noundef %1, ptr noundef %2) #7, !dbg !293
  tail call void @llvm.dbg.value(metadata i32 %169, metadata !104, metadata !DIExpression()), !dbg !294
  %170 = load double, ptr %2, align 8, !dbg !295, !tbaa !137
  %171 = fmul double %16, %170, !dbg !295
  store double %171, ptr %2, align 8, !dbg !295, !tbaa !137
  br label %248

172:                                              ; preds = %165
  %173 = fdiv double 2.000000e+00, %1, !dbg !296
  tail call void @llvm.dbg.value(metadata double %173, metadata !107, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !297
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !298
  %174 = call i32 @gsl_sf_bessel_Y1_e(double noundef %1, ptr noundef nonnull %7) #7, !dbg !299
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !111, metadata !DIExpression()), !dbg !121
  %175 = call i32 @gsl_sf_bessel_Y0_e(double noundef %1, ptr noundef nonnull %8) #7, !dbg !300
  tail call void @llvm.dbg.value(metadata i32 %175, metadata !112, metadata !DIExpression()), !dbg !121
  %176 = load double, ptr %8, align 8, !dbg !301, !tbaa !137
  tail call void @llvm.dbg.value(metadata double %176, metadata !113, metadata !DIExpression()), !dbg !121
  %177 = load double, ptr %7, align 8, !dbg !302, !tbaa !137
  tail call void @llvm.dbg.value(metadata double %177, metadata !114, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 1, metadata !116, metadata !DIExpression()), !dbg !121
  %178 = add nsw i32 %17, -1, !dbg !303
  %179 = add nsw i32 %17, -2, !dbg !303
  %180 = and i32 %178, 3, !dbg !303
  %181 = icmp ult i32 %179, 3, !dbg !303
  br i1 %181, label %211, label %182, !dbg !303

182:                                              ; preds = %172
  %183 = and i32 %178, -4, !dbg !303
  br label %184, !dbg !303

184:                                              ; preds = %184, %182
  %185 = phi i32 [ 1, %182 ], [ %208, %184 ]
  %186 = phi double [ %177, %182 ], [ %207, %184 ]
  %187 = phi double [ %176, %182 ], [ %202, %184 ]
  %188 = phi i32 [ 0, %182 ], [ %209, %184 ]
  tail call void @llvm.dbg.value(metadata i32 %185, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %186, metadata !114, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %187, metadata !113, metadata !DIExpression()), !dbg !121
  %189 = sitofp i32 %185 to double, !dbg !305
  %190 = fmul double %173, %189, !dbg !308
  %191 = fmul double %186, %190, !dbg !309
  %192 = fsub double %191, %187, !dbg !310
  tail call void @llvm.dbg.value(metadata double %192, metadata !115, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %186, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %192, metadata !114, metadata !DIExpression()), !dbg !121
  %193 = add nuw nsw i32 %185, 1, !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %193, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %193, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %192, metadata !114, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %186, metadata !113, metadata !DIExpression()), !dbg !121
  %194 = sitofp i32 %193 to double, !dbg !305
  %195 = fmul double %173, %194, !dbg !308
  %196 = fmul double %192, %195, !dbg !309
  %197 = fsub double %196, %186, !dbg !310
  tail call void @llvm.dbg.value(metadata double %197, metadata !115, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %192, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %197, metadata !114, metadata !DIExpression()), !dbg !121
  %198 = add nuw nsw i32 %185, 2, !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %198, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %198, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %197, metadata !114, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %192, metadata !113, metadata !DIExpression()), !dbg !121
  %199 = sitofp i32 %198 to double, !dbg !305
  %200 = fmul double %173, %199, !dbg !308
  %201 = fmul double %197, %200, !dbg !309
  %202 = fsub double %201, %192, !dbg !310
  tail call void @llvm.dbg.value(metadata double %202, metadata !115, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %197, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %202, metadata !114, metadata !DIExpression()), !dbg !121
  %203 = add nuw nsw i32 %185, 3, !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %203, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %203, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %202, metadata !114, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %197, metadata !113, metadata !DIExpression()), !dbg !121
  %204 = sitofp i32 %203 to double, !dbg !305
  %205 = fmul double %173, %204, !dbg !308
  %206 = fmul double %202, %205, !dbg !309
  %207 = fsub double %206, %197, !dbg !310
  tail call void @llvm.dbg.value(metadata double %207, metadata !115, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %202, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %207, metadata !114, metadata !DIExpression()), !dbg !121
  %208 = add nuw nsw i32 %185, 4, !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %208, metadata !116, metadata !DIExpression()), !dbg !121
  %209 = add i32 %188, 4, !dbg !303
  %210 = icmp eq i32 %209, %183, !dbg !303
  br i1 %210, label %211, label %184, !dbg !303, !llvm.loop !312

211:                                              ; preds = %184, %172
  %212 = phi double [ undef, %172 ], [ %207, %184 ]
  %213 = phi i32 [ 1, %172 ], [ %208, %184 ]
  %214 = phi double [ %177, %172 ], [ %207, %184 ]
  %215 = phi double [ %176, %172 ], [ %202, %184 ]
  %216 = icmp eq i32 %180, 0, !dbg !303
  br i1 %216, label %229, label %217, !dbg !303

217:                                              ; preds = %211, %217
  %218 = phi i32 [ %226, %217 ], [ %213, %211 ]
  %219 = phi double [ %225, %217 ], [ %214, %211 ]
  %220 = phi double [ %219, %217 ], [ %215, %211 ]
  %221 = phi i32 [ %227, %217 ], [ 0, %211 ]
  tail call void @llvm.dbg.value(metadata i32 %218, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %219, metadata !114, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %220, metadata !113, metadata !DIExpression()), !dbg !121
  %222 = sitofp i32 %218 to double, !dbg !305
  %223 = fmul double %173, %222, !dbg !308
  %224 = fmul double %219, %223, !dbg !309
  %225 = fsub double %224, %220, !dbg !310
  tail call void @llvm.dbg.value(metadata double %225, metadata !115, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %219, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %225, metadata !114, metadata !DIExpression()), !dbg !121
  %226 = add nuw nsw i32 %218, 1, !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %226, metadata !116, metadata !DIExpression()), !dbg !121
  %227 = add i32 %221, 1, !dbg !303
  %228 = icmp eq i32 %227, %180, !dbg !303
  br i1 %228, label %229, label %217, !dbg !303, !llvm.loop !314

229:                                              ; preds = %217, %211
  %230 = phi double [ %212, %211 ], [ %225, %217 ], !dbg !310
  %231 = fmul double %16, %230, !dbg !316
  store double %231, ptr %2, align 8, !dbg !317, !tbaa !137
  %232 = call double @llvm.fabs.f64(double %231), !dbg !318
  %233 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !319
  %234 = load double, ptr %233, align 8, !dbg !319, !tbaa !151
  %235 = fdiv double %234, %177, !dbg !320
  %236 = call double @llvm.fabs.f64(double %235), !dbg !321
  %237 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !322
  %238 = load double, ptr %237, align 8, !dbg !322, !tbaa !151
  %239 = fdiv double %238, %176, !dbg !323
  %240 = call double @llvm.fabs.f64(double %239), !dbg !324
  %241 = fadd double %236, %240, !dbg !325
  %242 = fmul double %232, %241, !dbg !326
  %243 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !327
  %244 = fmul double %232, 0x3CC0000000000000, !dbg !328
  %245 = fadd double %244, %242, !dbg !329
  store double %245, ptr %243, align 8, !dbg !329, !tbaa !151
  %246 = icmp eq i32 %174, 0, !dbg !330
  %247 = select i1 %246, i32 %175, i32 %174, !dbg !330
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !331
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !331
  br label %248

248:                                              ; preds = %229, %167, %160, %150, %28, %22, %18
  %249 = phi i32 [ %19, %18 ], [ %23, %22 ], [ 1, %28 ], [ %152, %150 ], [ %162, %160 ], [ %169, %167 ], [ %247, %229 ], !dbg !332
  ret i32 %249, !dbg !333
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !334 i32 @gsl_sf_bessel_Y0_e(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !338 i32 @gsl_sf_bessel_Y1_e(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !339 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !344 i32 @gsl_sf_bessel_Ynu_asympx_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !348 i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Yn_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !352 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !374
  call void @llvm.dbg.assign(metadata i1 undef, metadata !364, metadata !DIExpression(), metadata !374, metadata ptr %5, metadata !DIExpression()), !dbg !375
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !376
  call void @llvm.dbg.assign(metadata i1 undef, metadata !366, metadata !DIExpression(), metadata !376, metadata ptr %6, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !357, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !358, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata double %2, metadata !359, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !360, metadata !DIExpression()), !dbg !377
  %7 = icmp slt i32 %0, 0, !dbg !378
  br i1 %7, label %12, label %8, !dbg !379

8:                                                ; preds = %4
  %9 = icmp slt i32 %1, %0, !dbg !380
  %10 = fcmp ole double %2, 0.000000e+00
  %11 = or i1 %9, %10, !dbg !381
  br i1 %11, label %12, label %20, !dbg !381

12:                                               ; preds = %8, %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !361, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i32 0, metadata !361, metadata !DIExpression()), !dbg !382
  %13 = icmp slt i32 %1, %0, !dbg !383
  br i1 %13, label %19, label %14, !dbg !386

14:                                               ; preds = %12
  %15 = add i32 %1, 1, !dbg !386
  %16 = sub i32 %15, %0, !dbg !386
  %17 = zext i32 %16 to i64, !dbg !386
  %18 = shl nuw nsw i64 %17, 3, !dbg !386
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %18, i1 false), !dbg !387, !tbaa !388
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !361, metadata !DIExpression()), !dbg !382
  br label %19, !dbg !389

19:                                               ; preds = %14, %12
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 176, i32 noundef 1) #7, !dbg !389
  br label %54

20:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !391
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !392
  %21 = call i32 @gsl_sf_bessel_Yn_e(i32 noundef %0, double noundef %2, ptr noundef nonnull %5), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !367, metadata !DIExpression()), !dbg !375
  %22 = add nuw nsw i32 %0, 1, !dbg !394
  %23 = call i32 @gsl_sf_bessel_Yn_e(i32 noundef %22, double noundef %2, ptr noundef nonnull %6), !dbg !395
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !368, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double poison, metadata !370, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double poison, metadata !371, metadata !DIExpression()), !dbg !375
  %24 = icmp eq i32 %21, 0, !dbg !396
  %25 = select i1 %24, i32 %23, i32 %21, !dbg !396
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !373, metadata !DIExpression()), !dbg !375
  %26 = icmp eq i32 %25, 0, !dbg !397
  br i1 %26, label %32, label %27, !dbg !399

27:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !372, metadata !DIExpression()), !dbg !375
  %28 = sub nsw i32 %1, %0, !dbg !400
  %29 = zext i32 %28 to i64, !dbg !400
  %30 = shl nuw nsw i64 %29, 3, !dbg !400
  %31 = add nuw nsw i64 %30, 8, !dbg !400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, i8 0, i64 %31, i1 false), !dbg !403, !tbaa !388
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !372, metadata !DIExpression()), !dbg !375
  br label %53, !dbg !406

32:                                               ; preds = %20
  %33 = load double, ptr %5, align 8, !dbg !407, !tbaa !137
  tail call void @llvm.dbg.value(metadata double %33, metadata !371, metadata !DIExpression()), !dbg !375
  %34 = load double, ptr %6, align 8, !dbg !408, !tbaa !137
  tail call void @llvm.dbg.value(metadata double %34, metadata !370, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !372, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %33, metadata !371, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %34, metadata !370, metadata !DIExpression()), !dbg !375
  %35 = xor i32 %0, -1
  %36 = zext nneg i32 %22 to i64, !dbg !409
  %37 = sext i32 %35 to i64, !dbg !409
  %38 = zext nneg i32 %1 to i64, !dbg !409
  %39 = getelementptr double, ptr %3, i64 %37, !dbg !409
  br label %40, !dbg !409

40:                                               ; preds = %32, %40
  %41 = phi i64 [ %36, %32 ], [ %51, %40 ]
  %42 = phi double [ %33, %32 ], [ %43, %40 ]
  %43 = phi double [ %34, %32 ], [ %50, %40 ]
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !372, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %42, metadata !371, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %43, metadata !370, metadata !DIExpression()), !dbg !375
  %44 = getelementptr double, ptr %39, i64 %41, !dbg !412
  store double %42, ptr %44, align 8, !dbg !415, !tbaa !388
  %45 = trunc i64 %41 to i32, !dbg !416
  %46 = sitofp i32 %45 to double, !dbg !416
  %47 = fmul double %46, 2.000000e+00, !dbg !417
  %48 = fdiv double %47, %2, !dbg !418
  %49 = fmul double %43, %48, !dbg !419
  %50 = fsub double %49, %42, !dbg !420
  tail call void @llvm.dbg.value(metadata double %50, metadata !369, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %43, metadata !371, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %50, metadata !370, metadata !DIExpression()), !dbg !375
  %51 = add nuw nsw i64 %41, 1, !dbg !421
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !372, metadata !DIExpression()), !dbg !375
  %52 = icmp ugt i64 %41, %38, !dbg !422
  br i1 %52, label %53, label %40, !dbg !409, !llvm.loop !423

53:                                               ; preds = %40, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !406
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !406
  br label %54

54:                                               ; preds = %19, %53
  %55 = phi i32 [ 1, %19 ], [ %25, %53 ], !dbg !425
  ret i32 %55, !dbg !426
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Yn(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !427 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !435
  call void @llvm.dbg.assign(metadata i1 undef, metadata !433, metadata !DIExpression(), metadata !435, metadata ptr %3, metadata !DIExpression()), !dbg !436
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !431, metadata !DIExpression()), !dbg !436
  tail call void @llvm.dbg.value(metadata double %1, metadata !432, metadata !DIExpression()), !dbg !436
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !437
  %4 = call i32 @gsl_sf_bessel_Yn_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !437
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !434, metadata !DIExpression()), !dbg !436
  %5 = icmp eq i32 %4, 0, !dbg !438
  br i1 %5, label %7, label %6, !dbg !437

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 215, i32 noundef %4) #7, !dbg !440
  br label %7, !dbg !440

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !437, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !443
  ret double %8, !dbg !443
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !444 double @log(double noundef) local_unnamed_addr #4

declare !dbg !448 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !453 double @exp(double noundef) local_unnamed_addr #4

declare !dbg !454 i32 @gsl_sf_psi_int_e(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !458 i32 @gsl_sf_fact_e(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_Yn.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "fe67e651099499d9b80387dde9c8ee6d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 215, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 34)
!22 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !63, globals: !66, splitDebugInlining: false, nameTableKind: None)
!23 = !{!24}
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 39, baseType: !26, size: 32, elements: !27)
!25 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!28 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!29 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!30 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!31 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!32 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!33 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!34 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!35 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!36 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!37 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!38 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!39 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!40 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!41 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!42 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!43 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!44 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!45 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!46 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!47 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!48 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!49 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!50 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!51 = !DIEnumerator(name: "GSL_ESING", value: 21)
!52 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!53 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!54 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!55 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!56 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!57 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!58 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!59 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!60 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!61 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!62 = !DIEnumerator(name: "GSL_EOF", value: 32)
!63 = !{!64, !65}
!64 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !{!0, !7, !12, !17}
!67 = !{i32 7, !"Dwarf Version", i32 5}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 8, !"PIC Level", i32 2}
!71 = !{i32 7, !"PIE Level", i32 2}
!72 = !{i32 7, !"uwtable", i32 2}
!73 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!74 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!75 = distinct !DISubprogram(name: "gsl_sf_bessel_Yn_e", scope: !2, file: !2, line: 101, type: !76, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !86)
!76 = !DISubroutineType(types: !77)
!77 = !{!26, !26, !78, !79}
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !81, line: 41, baseType: !82)
!81 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !81, line: 37, size: 128, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !82, file: !81, line: 38, baseType: !64, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !82, file: !81, line: 39, baseType: !64, size: 64, offset: 64)
!86 = !{!87, !88, !89, !90, !91, !94, !97, !101, !104, !107, !109, !110, !111, !112, !113, !114, !115, !116}
!87 = !DILocalVariable(name: "n", arg: 1, scope: !75, file: !2, line: 101, type: !26)
!88 = !DILocalVariable(name: "x", arg: 2, scope: !75, file: !2, line: 101, type: !78)
!89 = !DILocalVariable(name: "result", arg: 3, scope: !75, file: !2, line: 101, type: !79)
!90 = !DILocalVariable(name: "sign", scope: !75, file: !2, line: 103, type: !26)
!91 = !DILocalVariable(name: "status", scope: !92, file: !2, line: 114, type: !26)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 113, column: 14)
!93 = distinct !DILexicalBlock(scope: !75, file: !2, line: 113, column: 6)
!94 = !DILocalVariable(name: "status", scope: !95, file: !2, line: 119, type: !26)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 118, column: 19)
!96 = distinct !DILexicalBlock(scope: !93, file: !2, line: 118, column: 11)
!97 = !DILocalVariable(name: "status", scope: !98, file: !2, line: 128, type: !26)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 127, column: 17)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 127, column: 8)
!100 = distinct !DILexicalBlock(scope: !96, file: !2, line: 123, column: 8)
!101 = !DILocalVariable(name: "status", scope: !102, file: !2, line: 133, type: !26)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 132, column: 54)
!103 = distinct !DILexicalBlock(scope: !99, file: !2, line: 132, column: 13)
!104 = !DILocalVariable(name: "status", scope: !105, file: !2, line: 138, type: !26)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 137, column: 21)
!106 = distinct !DILexicalBlock(scope: !103, file: !2, line: 137, column: 13)
!107 = !DILocalVariable(name: "two_over_x", scope: !108, file: !2, line: 143, type: !64)
!108 = distinct !DILexicalBlock(scope: !106, file: !2, line: 142, column: 10)
!109 = !DILocalVariable(name: "r_by", scope: !108, file: !2, line: 144, type: !80)
!110 = !DILocalVariable(name: "r_bym", scope: !108, file: !2, line: 145, type: !80)
!111 = !DILocalVariable(name: "stat_1", scope: !108, file: !2, line: 146, type: !26)
!112 = !DILocalVariable(name: "stat_0", scope: !108, file: !2, line: 147, type: !26)
!113 = !DILocalVariable(name: "bym", scope: !108, file: !2, line: 148, type: !64)
!114 = !DILocalVariable(name: "by", scope: !108, file: !2, line: 149, type: !64)
!115 = !DILocalVariable(name: "byp", scope: !108, file: !2, line: 150, type: !64)
!116 = !DILocalVariable(name: "j", scope: !108, file: !2, line: 151, type: !26)
!117 = distinct !DIAssignID()
!118 = distinct !DIAssignID()
!119 = distinct !DIAssignID()
!120 = distinct !DIAssignID()
!121 = !DILocation(line: 0, scope: !108)
!122 = distinct !DIAssignID()
!123 = !DILocation(line: 0, scope: !75)
!124 = !DILocation(line: 105, column: 8, scope: !125)
!125 = distinct !DILexicalBlock(scope: !75, file: !2, line: 105, column: 6)
!126 = !DILocation(line: 105, column: 6, scope: !75)
!127 = !DILocation(line: 107, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !2, line: 105, column: 13)
!129 = !DILocation(line: 108, column: 8, scope: !130)
!130 = distinct !DILexicalBlock(scope: !128, file: !2, line: 108, column: 8)
!131 = !DILocation(line: 108, column: 8, scope: !128)
!132 = !DILocation(line: 108, column: 23, scope: !130)
!133 = !DILocation(line: 113, column: 6, scope: !75)
!134 = !DILocation(line: 114, column: 18, scope: !92)
!135 = !DILocation(line: 0, scope: !92)
!136 = !DILocation(line: 115, column: 17, scope: !92)
!137 = !{!138, !139, i64 0}
!138 = !{!"gsl_sf_result_struct", !139, i64 0, !139, i64 8}
!139 = !{!"double", !140, i64 0}
!140 = !{!"omnipotent char", !141, i64 0}
!141 = !{!"Simple C/C++ TBAA"}
!142 = !DILocation(line: 119, column: 18, scope: !95)
!143 = !DILocation(line: 0, scope: !95)
!144 = !DILocation(line: 120, column: 17, scope: !95)
!145 = !DILocation(line: 124, column: 10, scope: !146)
!146 = distinct !DILexicalBlock(scope: !100, file: !2, line: 124, column: 8)
!147 = !DILocation(line: 124, column: 8, scope: !100)
!148 = !DILocation(line: 125, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !2, line: 125, column: 7)
!150 = distinct !DILexicalBlock(scope: !146, file: !2, line: 124, column: 18)
!151 = !{!138, !139, i64 8}
!152 = !DILocation(line: 125, column: 7, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !2, line: 125, column: 7)
!154 = !DILocation(line: 127, column: 10, scope: !99)
!155 = !DILocation(line: 127, column: 8, scope: !100)
!156 = !DILocalVariable(name: "ln_nm1_fact", scope: !157, file: !2, line: 43, type: !80)
!157 = distinct !DISubprogram(name: "bessel_Yn_small_x", scope: !2, file: !2, line: 38, type: !158, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !161)
!158 = !DISubroutineType(types: !159)
!159 = !{!26, !160, !78, !79}
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!161 = !{!162, !163, !164, !165, !166, !167, !156, !168, !169, !170, !171, !172, !173, !174, !175, !178, !179, !180, !181, !182, !183}
!162 = !DILocalVariable(name: "n", arg: 1, scope: !157, file: !2, line: 38, type: !160)
!163 = !DILocalVariable(name: "x", arg: 2, scope: !157, file: !2, line: 38, type: !78)
!164 = !DILocalVariable(name: "result", arg: 3, scope: !157, file: !2, line: 38, type: !79)
!165 = !DILocalVariable(name: "k", scope: !157, file: !2, line: 40, type: !26)
!166 = !DILocalVariable(name: "y", scope: !157, file: !2, line: 41, type: !64)
!167 = !DILocalVariable(name: "ln_x_2", scope: !157, file: !2, line: 42, type: !64)
!168 = !DILocalVariable(name: "k_term", scope: !157, file: !2, line: 44, type: !64)
!169 = !DILocalVariable(name: "term1", scope: !157, file: !2, line: 45, type: !64)
!170 = !DILocalVariable(name: "sum1", scope: !157, file: !2, line: 45, type: !64)
!171 = !DILocalVariable(name: "ln_pre1", scope: !157, file: !2, line: 45, type: !64)
!172 = !DILocalVariable(name: "term2", scope: !157, file: !2, line: 46, type: !64)
!173 = !DILocalVariable(name: "sum2", scope: !157, file: !2, line: 46, type: !64)
!174 = !DILocalVariable(name: "pre2", scope: !157, file: !2, line: 46, type: !64)
!175 = !DILocalVariable(name: "KMAX", scope: !176, file: !2, line: 63, type: !160)
!176 = distinct !DILexicalBlock(scope: !177, file: !2, line: 62, column: 24)
!177 = distinct !DILexicalBlock(scope: !157, file: !2, line: 62, column: 6)
!178 = !DILocalVariable(name: "psi_n", scope: !176, file: !2, line: 64, type: !80)
!179 = !DILocalVariable(name: "npk_fact", scope: !176, file: !2, line: 65, type: !80)
!180 = !DILocalVariable(name: "yk", scope: !176, file: !2, line: 66, type: !64)
!181 = !DILocalVariable(name: "k_fact", scope: !176, file: !2, line: 67, type: !64)
!182 = !DILocalVariable(name: "psi_kp1", scope: !176, file: !2, line: 68, type: !64)
!183 = !DILocalVariable(name: "psi_npkp1", scope: !176, file: !2, line: 69, type: !64)
!184 = !DILocation(line: 0, scope: !157, inlinedAt: !185)
!185 = distinct !DILocation(line: 128, column: 20, scope: !98)
!186 = !DILocation(line: 0, scope: !176, inlinedAt: !185)
!187 = !DILocation(line: 41, column: 19, scope: !157, inlinedAt: !185)
!188 = !DILocation(line: 41, column: 23, scope: !157, inlinedAt: !185)
!189 = !DILocation(line: 42, column: 26, scope: !157, inlinedAt: !185)
!190 = !DILocation(line: 42, column: 19, scope: !157, inlinedAt: !185)
!191 = !DILocation(line: 43, column: 3, scope: !157, inlinedAt: !185)
!192 = !DILocation(line: 48, column: 35, scope: !157, inlinedAt: !185)
!193 = !DILocation(line: 48, column: 3, scope: !157, inlinedAt: !185)
!194 = !DILocation(line: 50, column: 13, scope: !157, inlinedAt: !185)
!195 = !DILocation(line: 50, column: 15, scope: !157, inlinedAt: !185)
!196 = !DILocation(line: 50, column: 37, scope: !157, inlinedAt: !185)
!197 = !DILocation(line: 50, column: 23, scope: !157, inlinedAt: !185)
!198 = !DILocation(line: 51, column: 14, scope: !199, inlinedAt: !185)
!199 = distinct !DILexicalBlock(scope: !157, file: !2, line: 51, column: 6)
!200 = !DILocation(line: 51, column: 6, scope: !157, inlinedAt: !185)
!201 = !DILocation(line: 55, column: 3, scope: !202, inlinedAt: !185)
!202 = distinct !DILexicalBlock(scope: !157, file: !2, line: 55, column: 3)
!203 = !DILocation(line: 51, column: 39, scope: !204, inlinedAt: !185)
!204 = distinct !DILexicalBlock(scope: !199, file: !2, line: 51, column: 39)
!205 = !DILocation(line: 129, column: 19, scope: !98)
!206 = !DILocation(line: 56, column: 24, scope: !207, inlinedAt: !185)
!207 = distinct !DILexicalBlock(scope: !208, file: !2, line: 55, column: 25)
!208 = distinct !DILexicalBlock(scope: !202, file: !2, line: 55, column: 3)
!209 = !DILocation(line: 56, column: 20, scope: !207, inlinedAt: !185)
!210 = !DILocation(line: 56, column: 17, scope: !207, inlinedAt: !185)
!211 = !DILocation(line: 56, column: 16, scope: !207, inlinedAt: !185)
!212 = !DILocation(line: 56, column: 12, scope: !207, inlinedAt: !185)
!213 = !DILocation(line: 57, column: 10, scope: !207, inlinedAt: !185)
!214 = !DILocation(line: 55, column: 21, scope: !208, inlinedAt: !185)
!215 = distinct !{!215, !201, !216, !217}
!216 = !DILocation(line: 58, column: 3, scope: !202, inlinedAt: !185)
!217 = !{!"llvm.loop.mustprogress"}
!218 = !DILocation(line: 59, column: 12, scope: !157, inlinedAt: !185)
!219 = !DILocation(line: 59, column: 11, scope: !157, inlinedAt: !185)
!220 = !DILocation(line: 59, column: 25, scope: !157, inlinedAt: !185)
!221 = !DILocation(line: 59, column: 32, scope: !157, inlinedAt: !185)
!222 = !DILocation(line: 61, column: 15, scope: !157, inlinedAt: !185)
!223 = !DILocation(line: 61, column: 16, scope: !157, inlinedAt: !185)
!224 = !DILocation(line: 61, column: 11, scope: !157, inlinedAt: !185)
!225 = !DILocation(line: 61, column: 25, scope: !157, inlinedAt: !185)
!226 = !DILocation(line: 62, column: 17, scope: !177, inlinedAt: !185)
!227 = !DILocation(line: 62, column: 6, scope: !157, inlinedAt: !185)
!228 = !DILocation(line: 64, column: 5, scope: !176, inlinedAt: !185)
!229 = !DILocation(line: 65, column: 5, scope: !176, inlinedAt: !185)
!230 = !DILocation(line: 70, column: 5, scope: !176, inlinedAt: !185)
!231 = !DILocation(line: 71, column: 5, scope: !176, inlinedAt: !185)
!232 = !DILocation(line: 72, column: 23, scope: !176, inlinedAt: !185)
!233 = !DILocation(line: 72, column: 32, scope: !176, inlinedAt: !185)
!234 = !DILocation(line: 72, column: 27, scope: !176, inlinedAt: !185)
!235 = !DILocation(line: 73, column: 21, scope: !176, inlinedAt: !185)
!236 = !DILocation(line: 73, column: 38, scope: !176, inlinedAt: !185)
!237 = !DILocation(line: 73, column: 33, scope: !176, inlinedAt: !185)
!238 = !DILocation(line: 73, column: 56, scope: !176, inlinedAt: !185)
!239 = !DILocation(line: 73, column: 46, scope: !176, inlinedAt: !185)
!240 = !DILocation(line: 74, column: 5, scope: !241, inlinedAt: !185)
!241 = distinct !DILexicalBlock(scope: !176, file: !2, line: 74, column: 5)
!242 = !DILocation(line: 75, column: 23, scope: !243, inlinedAt: !185)
!243 = distinct !DILexicalBlock(scope: !244, file: !2, line: 74, column: 27)
!244 = distinct !DILexicalBlock(scope: !241, file: !2, line: 74, column: 5)
!245 = !DILocation(line: 75, column: 22, scope: !243, inlinedAt: !185)
!246 = !DILocation(line: 75, column: 17, scope: !243, inlinedAt: !185)
!247 = !DILocation(line: 76, column: 25, scope: !243, inlinedAt: !185)
!248 = !DILocation(line: 76, column: 23, scope: !243, inlinedAt: !185)
!249 = !DILocation(line: 76, column: 22, scope: !243, inlinedAt: !185)
!250 = !DILocation(line: 76, column: 17, scope: !243, inlinedAt: !185)
!251 = !DILocation(line: 77, column: 16, scope: !243, inlinedAt: !185)
!252 = !DILocation(line: 78, column: 20, scope: !243, inlinedAt: !185)
!253 = distinct !DIAssignID()
!254 = !DILocation(line: 79, column: 10, scope: !243, inlinedAt: !185)
!255 = !DILocation(line: 80, column: 28, scope: !243, inlinedAt: !185)
!256 = !DILocation(line: 80, column: 40, scope: !243, inlinedAt: !185)
!257 = !DILocation(line: 80, column: 18, scope: !243, inlinedAt: !185)
!258 = !DILocation(line: 80, column: 61, scope: !243, inlinedAt: !185)
!259 = !DILocation(line: 80, column: 53, scope: !243, inlinedAt: !185)
!260 = !DILocation(line: 81, column: 12, scope: !243, inlinedAt: !185)
!261 = !DILocation(line: 74, column: 23, scope: !244, inlinedAt: !185)
!262 = !DILocation(line: 74, column: 15, scope: !244, inlinedAt: !185)
!263 = distinct !{!263, !240, !264, !217}
!264 = !DILocation(line: 82, column: 5, scope: !241, inlinedAt: !185)
!265 = !DILocation(line: 83, column: 18, scope: !176, inlinedAt: !185)
!266 = !DILocation(line: 84, column: 3, scope: !177, inlinedAt: !185)
!267 = !DILocation(line: 84, column: 3, scope: !176, inlinedAt: !185)
!268 = !DILocation(line: 0, scope: !177, inlinedAt: !185)
!269 = !DILocation(line: 89, column: 24, scope: !157, inlinedAt: !185)
!270 = !DILocation(line: 90, column: 50, scope: !157, inlinedAt: !185)
!271 = !DILocation(line: 90, column: 65, scope: !157, inlinedAt: !185)
!272 = !DILocation(line: 90, column: 63, scope: !157, inlinedAt: !185)
!273 = !DILocation(line: 90, column: 34, scope: !157, inlinedAt: !185)
!274 = !DILocation(line: 90, column: 11, scope: !157, inlinedAt: !185)
!275 = !DILocation(line: 91, column: 42, scope: !157, inlinedAt: !185)
!276 = !DILocation(line: 91, column: 40, scope: !157, inlinedAt: !185)
!277 = !DILocation(line: 91, column: 15, scope: !157, inlinedAt: !185)
!278 = !DILocation(line: 93, column: 3, scope: !157, inlinedAt: !185)
!279 = !DILocation(line: 94, column: 1, scope: !157, inlinedAt: !185)
!280 = !DILocation(line: 0, scope: !98)
!281 = !DILocation(line: 132, column: 35, scope: !103)
!282 = !DILocation(line: 132, column: 43, scope: !103)
!283 = !DILocation(line: 132, column: 46, scope: !103)
!284 = !DILocation(line: 132, column: 39, scope: !103)
!285 = !DILocation(line: 132, column: 13, scope: !99)
!286 = !DILocation(line: 133, column: 47, scope: !102)
!287 = !DILocation(line: 133, column: 20, scope: !102)
!288 = !DILocation(line: 0, scope: !102)
!289 = !DILocation(line: 134, column: 19, scope: !102)
!290 = !DILocation(line: 137, column: 15, scope: !106)
!291 = !DILocation(line: 137, column: 13, scope: !103)
!292 = !DILocation(line: 138, column: 52, scope: !105)
!293 = !DILocation(line: 138, column: 20, scope: !105)
!294 = !DILocation(line: 0, scope: !105)
!295 = !DILocation(line: 139, column: 19, scope: !105)
!296 = !DILocation(line: 143, column: 30, scope: !108)
!297 = !DILocation(line: 144, column: 7, scope: !108)
!298 = !DILocation(line: 145, column: 7, scope: !108)
!299 = !DILocation(line: 146, column: 20, scope: !108)
!300 = !DILocation(line: 147, column: 20, scope: !108)
!301 = !DILocation(line: 148, column: 26, scope: !108)
!302 = !DILocation(line: 149, column: 25, scope: !108)
!303 = !DILocation(line: 153, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !108, file: !2, line: 153, column: 7)
!305 = !DILocation(line: 154, column: 15, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !2, line: 153, column: 26)
!307 = distinct !DILexicalBlock(scope: !304, file: !2, line: 153, column: 7)
!308 = !DILocation(line: 154, column: 16, scope: !306)
!309 = !DILocation(line: 154, column: 27, scope: !306)
!310 = !DILocation(line: 154, column: 31, scope: !306)
!311 = !DILocation(line: 153, column: 22, scope: !307)
!312 = distinct !{!312, !303, !313, !217}
!313 = !DILocation(line: 157, column: 7, scope: !304)
!314 = distinct !{!314, !315}
!315 = !{!"llvm.loop.unroll.disable"}
!316 = !DILocation(line: 158, column: 27, scope: !108)
!317 = !DILocation(line: 158, column: 20, scope: !108)
!318 = !DILocation(line: 159, column: 22, scope: !108)
!319 = !DILocation(line: 159, column: 53, scope: !108)
!320 = !DILocation(line: 159, column: 56, scope: !108)
!321 = !DILocation(line: 159, column: 43, scope: !108)
!322 = !DILocation(line: 159, column: 80, scope: !108)
!323 = !DILocation(line: 159, column: 83, scope: !108)
!324 = !DILocation(line: 159, column: 69, scope: !108)
!325 = !DILocation(line: 159, column: 67, scope: !108)
!326 = !DILocation(line: 159, column: 40, scope: !108)
!327 = !DILocation(line: 159, column: 15, scope: !108)
!328 = !DILocation(line: 160, column: 44, scope: !108)
!329 = !DILocation(line: 160, column: 19, scope: !108)
!330 = !DILocation(line: 162, column: 14, scope: !108)
!331 = !DILocation(line: 163, column: 5, scope: !106)
!332 = !DILocation(line: 0, scope: !93)
!333 = !DILocation(line: 165, column: 1, scope: !75)
!334 = !DISubprogram(name: "gsl_sf_bessel_Y0_e", scope: !335, file: !335, line: 79, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!335 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!336 = !DISubroutineType(types: !337)
!337 = !{!26, !78, !79}
!338 = !DISubprogram(name: "gsl_sf_bessel_Y1_e", scope: !335, file: !335, line: 88, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!339 = !DISubprogram(name: "gsl_error", scope: !25, file: !25, line: 77, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !342, !342, !26, !26}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!344 = !DISubprogram(name: "gsl_sf_bessel_Ynu_asympx_e", scope: !345, file: !345, line: 40, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!346 = !DISubroutineType(types: !347)
!347 = !{!26, !78, !78, !79}
!348 = !DISubprogram(name: "gsl_sf_bessel_Ynu_asymp_Olver_e", scope: !349, file: !349, line: 28, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!349 = !DIFile(filename: "./bessel_olver.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ec509d1b6cab5ef68906304c5e69a8d7")
!350 = !DISubroutineType(types: !351)
!351 = !{!26, !64, !64, !79}
!352 = distinct !DISubprogram(name: "gsl_sf_bessel_Yn_array", scope: !2, file: !2, line: 169, type: !353, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !356)
!353 = !DISubroutineType(types: !354)
!354 = !{!26, !160, !160, !78, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!356 = !{!357, !358, !359, !360, !361, !364, !366, !367, !368, !369, !370, !371, !372, !373}
!357 = !DILocalVariable(name: "nmin", arg: 1, scope: !352, file: !2, line: 169, type: !160)
!358 = !DILocalVariable(name: "nmax", arg: 2, scope: !352, file: !2, line: 169, type: !160)
!359 = !DILocalVariable(name: "x", arg: 3, scope: !352, file: !2, line: 169, type: !78)
!360 = !DILocalVariable(name: "result_array", arg: 4, scope: !352, file: !2, line: 169, type: !355)
!361 = !DILocalVariable(name: "j", scope: !362, file: !2, line: 174, type: !26)
!362 = distinct !DILexicalBlock(scope: !363, file: !2, line: 173, column: 43)
!363 = distinct !DILexicalBlock(scope: !352, file: !2, line: 173, column: 6)
!364 = !DILocalVariable(name: "r_Ynm1", scope: !365, file: !2, line: 179, type: !80)
!365 = distinct !DILexicalBlock(scope: !363, file: !2, line: 178, column: 8)
!366 = !DILocalVariable(name: "r_Yn", scope: !365, file: !2, line: 180, type: !80)
!367 = !DILocalVariable(name: "stat_nm1", scope: !365, file: !2, line: 181, type: !26)
!368 = !DILocalVariable(name: "stat_n", scope: !365, file: !2, line: 182, type: !26)
!369 = !DILocalVariable(name: "Ynp1", scope: !365, file: !2, line: 183, type: !64)
!370 = !DILocalVariable(name: "Yn", scope: !365, file: !2, line: 184, type: !64)
!371 = !DILocalVariable(name: "Ynm1", scope: !365, file: !2, line: 185, type: !64)
!372 = !DILocalVariable(name: "n", scope: !365, file: !2, line: 186, type: !26)
!373 = !DILocalVariable(name: "stat", scope: !365, file: !2, line: 188, type: !26)
!374 = distinct !DIAssignID()
!375 = !DILocation(line: 0, scope: !365)
!376 = distinct !DIAssignID()
!377 = !DILocation(line: 0, scope: !352)
!378 = !DILocation(line: 173, column: 11, scope: !363)
!379 = !DILocation(line: 173, column: 15, scope: !363)
!380 = !DILocation(line: 173, column: 23, scope: !363)
!381 = !DILocation(line: 173, column: 30, scope: !363)
!382 = !DILocation(line: 0, scope: !362)
!383 = !DILocation(line: 175, column: 15, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !2, line: 175, column: 5)
!385 = distinct !DILexicalBlock(scope: !362, file: !2, line: 175, column: 5)
!386 = !DILocation(line: 175, column: 5, scope: !385)
!387 = !DILocation(line: 175, column: 49, scope: !384)
!388 = !{!139, !139, i64 0}
!389 = !DILocation(line: 176, column: 5, scope: !390)
!390 = distinct !DILexicalBlock(scope: !362, file: !2, line: 176, column: 5)
!391 = !DILocation(line: 179, column: 5, scope: !365)
!392 = !DILocation(line: 180, column: 5, scope: !365)
!393 = !DILocation(line: 181, column: 20, scope: !365)
!394 = !DILocation(line: 182, column: 43, scope: !365)
!395 = !DILocation(line: 182, column: 20, scope: !365)
!396 = !DILocation(line: 188, column: 16, scope: !365)
!397 = !DILocation(line: 190, column: 13, scope: !398)
!398 = distinct !DILexicalBlock(scope: !365, file: !2, line: 190, column: 8)
!399 = !DILocation(line: 190, column: 8, scope: !365)
!400 = !DILocation(line: 199, column: 7, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !2, line: 199, column: 7)
!402 = distinct !DILexicalBlock(scope: !398, file: !2, line: 198, column: 10)
!403 = !DILocation(line: 200, column: 30, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !2, line: 199, column: 33)
!405 = distinct !DILexicalBlock(scope: !401, file: !2, line: 199, column: 7)
!406 = !DILocation(line: 205, column: 3, scope: !363)
!407 = !DILocation(line: 185, column: 26, scope: !365)
!408 = !DILocation(line: 184, column: 24, scope: !365)
!409 = !DILocation(line: 191, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !2, line: 191, column: 7)
!411 = distinct !DILexicalBlock(scope: !398, file: !2, line: 190, column: 29)
!412 = !DILocation(line: 192, column: 9, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !2, line: 191, column: 37)
!414 = distinct !DILexicalBlock(scope: !410, file: !2, line: 191, column: 7)
!415 = !DILocation(line: 192, column: 32, scope: !413)
!416 = !DILocation(line: 193, column: 28, scope: !413)
!417 = !DILocation(line: 193, column: 27, scope: !413)
!418 = !DILocation(line: 193, column: 29, scope: !413)
!419 = !DILocation(line: 193, column: 32, scope: !413)
!420 = !DILocation(line: 193, column: 22, scope: !413)
!421 = !DILocation(line: 191, column: 33, scope: !414)
!422 = !DILocation(line: 191, column: 22, scope: !414)
!423 = distinct !{!423, !409, !424, !217}
!424 = !DILocation(line: 196, column: 7, scope: !410)
!425 = !DILocation(line: 0, scope: !363)
!426 = !DILocation(line: 206, column: 1, scope: !352)
!427 = distinct !DISubprogram(name: "gsl_sf_bessel_Yn", scope: !2, file: !2, line: 213, type: !428, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{!64, !160, !78}
!430 = !{!431, !432, !433, !434}
!431 = !DILocalVariable(name: "n", arg: 1, scope: !427, file: !2, line: 213, type: !160)
!432 = !DILocalVariable(name: "x", arg: 2, scope: !427, file: !2, line: 213, type: !78)
!433 = !DILocalVariable(name: "result", scope: !427, file: !2, line: 215, type: !80)
!434 = !DILocalVariable(name: "status", scope: !427, file: !2, line: 215, type: !26)
!435 = distinct !DIAssignID()
!436 = !DILocation(line: 0, scope: !427)
!437 = !DILocation(line: 215, column: 3, scope: !427)
!438 = !DILocation(line: 215, column: 3, scope: !439)
!439 = distinct !DILexicalBlock(scope: !427, file: !2, line: 215, column: 3)
!440 = !DILocation(line: 215, column: 3, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !2, line: 215, column: 3)
!442 = distinct !DILexicalBlock(scope: !439, file: !2, line: 215, column: 3)
!443 = !DILocation(line: 216, column: 1, scope: !427)
!444 = !DISubprogram(name: "log", scope: !445, file: !445, line: 104, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!445 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!446 = !DISubroutineType(types: !447)
!447 = !{!64, !64}
!448 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !449, file: !449, line: 136, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!449 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!450 = !DISubroutineType(types: !451)
!451 = !{!26, !452, !79}
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!453 = !DISubprogram(name: "exp", scope: !445, file: !445, line: 95, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubprogram(name: "gsl_sf_psi_int_e", scope: !455, file: !455, line: 51, type: !456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DIFile(filename: "../gsl/gsl_sf_psi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "991a41b1033bad74a63fe4c86bbfa6a4")
!456 = !DISubroutineType(types: !457)
!457 = !{!26, !160, !79}
!458 = !DISubprogram(name: "gsl_sf_fact_e", scope: !449, file: !449, line: 119, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
