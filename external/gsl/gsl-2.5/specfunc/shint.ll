; ModuleID = 'shint.c'
source_filename = "shint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"shint.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [25 x i8] c"gsl_sf_Shi_e(x, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [25 x i8] c"gsl_sf_Chi_e(x, &result)\00", align 1, !dbg !27

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_Shi_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !97 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !117, metadata !DIExpression(), metadata !122, metadata ptr %3, metadata !DIExpression()), !dbg !123
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !119, metadata !DIExpression(), metadata !124, metadata ptr %4, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata double %0, metadata !109, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !110, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata double 0x3E50000000000000, metadata !111, metadata !DIExpression()), !dbg !125
  %5 = tail call double @llvm.fabs.f64(double %0), !dbg !126
  tail call void @llvm.dbg.value(metadata double %5, metadata !112, metadata !DIExpression()), !dbg !125
  %6 = fcmp olt double %5, 0x3E50000000000000, !dbg !127
  br i1 %6, label %7, label %9, !dbg !128

7:                                                ; preds = %2
  store double %0, ptr %1, align 8, !dbg !129, !tbaa !131
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !136
  store double 0.000000e+00, ptr %8, align 8, !dbg !137, !tbaa !138
  br label %107, !dbg !139

9:                                                ; preds = %2
  %10 = fcmp ugt double %5, 3.750000e-01, !dbg !140
  br i1 %10, label %79, label %11, !dbg !141

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata !142, metadata !143, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double poison, metadata !151, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata ptr undef, metadata !152, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !154, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double poison, metadata !156, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double poison, metadata !157, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 6, metadata !153, metadata !DIExpression()), !dbg !165
  %12 = fmul double %0, 1.280000e+02, !dbg !167
  %13 = fmul double %12, %0, !dbg !168
  %14 = fdiv double %13, 9.000000e+00, !dbg !169
  %15 = fadd double %14, -1.000000e+00, !dbg !170
  call void @llvm.dbg.value(metadata double %15, metadata !151, metadata !DIExpression()), !dbg !165
  %16 = fmul double %15, 2.000000e+00, !dbg !171
  %17 = fadd double %16, 1.000000e+00, !dbg !172
  %18 = fadd double %17, -1.000000e+00, !dbg !173
  %19 = fmul double %18, 5.000000e-01, !dbg !174
  call void @llvm.dbg.value(metadata double %19, metadata !156, metadata !DIExpression()), !dbg !165
  %20 = fmul double %19, 2.000000e+00, !dbg !175
  call void @llvm.dbg.value(metadata double %20, metadata !157, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 6, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !154, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !176
  %21 = fmul double %20, 0.000000e+00, !dbg !177
  %22 = fadd double %21, 4.670000e-20, !dbg !178
  call void @llvm.dbg.value(metadata double %22, metadata !154, metadata !DIExpression()), !dbg !165
  %23 = tail call double @llvm.fabs.f64(double %21), !dbg !179
  %24 = fadd double %23, 4.670000e-20, !dbg !180
  call void @llvm.dbg.value(metadata double %24, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 5, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 5, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %22, metadata !154, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %24, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %22, metadata !159, metadata !DIExpression()), !dbg !176
  %25 = fmul double %20, %22, !dbg !177
  %26 = fadd double %25, 0x3CB1AACDD7A0839B, !dbg !178
  call void @llvm.dbg.value(metadata double %26, metadata !154, metadata !DIExpression()), !dbg !165
  %27 = tail call double @llvm.fabs.f64(double %25), !dbg !179
  %28 = fadd double %27, 0x3CB1AACDD7A0839B, !dbg !180
  %29 = fadd double %24, %28, !dbg !181
  call void @llvm.dbg.value(metadata double %29, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %22, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 4, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 4, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %26, metadata !154, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %29, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %22, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %26, metadata !159, metadata !DIExpression()), !dbg !176
  %30 = fmul double %20, %26, !dbg !177
  %31 = fsub double %30, %22, !dbg !182
  %32 = fadd double %31, 0x3D70800F2892FC16, !dbg !178
  call void @llvm.dbg.value(metadata double %32, metadata !154, metadata !DIExpression()), !dbg !165
  %33 = tail call double @llvm.fabs.f64(double %30), !dbg !179
  %34 = tail call double @llvm.fabs.f64(double %22), !dbg !183
  %35 = fadd double %33, %34, !dbg !184
  %36 = fadd double %35, 0x3D70800F2892FC16, !dbg !180
  %37 = fadd double %29, %36, !dbg !181
  call void @llvm.dbg.value(metadata double %37, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %26, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 3, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 3, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %32, metadata !154, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %37, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %26, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %32, metadata !159, metadata !DIExpression()), !dbg !176
  %38 = fmul double %20, %32, !dbg !177
  %39 = fsub double %38, %26, !dbg !182
  %40 = fadd double %39, 0x3E25393B7E14F475, !dbg !178
  call void @llvm.dbg.value(metadata double %40, metadata !154, metadata !DIExpression()), !dbg !165
  %41 = tail call double @llvm.fabs.f64(double %38), !dbg !179
  %42 = tail call double @llvm.fabs.f64(double %26), !dbg !183
  %43 = fadd double %41, %42, !dbg !184
  %44 = fadd double %43, 0x3E25393B7E14F475, !dbg !180
  %45 = fadd double %37, %44, !dbg !181
  call void @llvm.dbg.value(metadata double %45, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %32, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 2, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 2, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %40, metadata !154, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %45, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %32, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %40, metadata !159, metadata !DIExpression()), !dbg !176
  %46 = fmul double %20, %40, !dbg !177
  %47 = fsub double %46, %32, !dbg !182
  %48 = fadd double %47, 0x3ED15793D9F174BE, !dbg !178
  call void @llvm.dbg.value(metadata double %48, metadata !154, metadata !DIExpression()), !dbg !165
  %49 = tail call double @llvm.fabs.f64(double %46), !dbg !179
  %50 = tail call double @llvm.fabs.f64(double %32), !dbg !183
  %51 = fadd double %49, %50, !dbg !184
  %52 = fadd double %51, 0x3ED15793D9F174BE, !dbg !180
  %53 = fadd double %45, %52, !dbg !181
  call void @llvm.dbg.value(metadata double %53, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %40, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 1, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 1, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %48, metadata !154, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %53, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %40, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %48, metadata !159, metadata !DIExpression()), !dbg !176
  %54 = fmul double %20, %48, !dbg !177
  %55 = fsub double %54, %40, !dbg !182
  %56 = fadd double %55, 0x3F7011519CC91B58, !dbg !178
  call void @llvm.dbg.value(metadata double %56, metadata !154, metadata !DIExpression()), !dbg !165
  %57 = tail call double @llvm.fabs.f64(double %54), !dbg !179
  %58 = tail call double @llvm.fabs.f64(double %40), !dbg !183
  %59 = fadd double %57, %58, !dbg !184
  %60 = fadd double %59, 0x3F7011519CC91B58, !dbg !180
  %61 = fadd double %53, %60, !dbg !181
  call void @llvm.dbg.value(metadata double %61, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %48, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 0, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %56, metadata !163, metadata !DIExpression()), !dbg !185
  %62 = fmul double %19, %56, !dbg !186
  %63 = fsub double %62, %48, !dbg !187
  %64 = fadd double %63, 0x3F700CFC618BFBF7, !dbg !188
  call void @llvm.dbg.value(metadata double %64, metadata !154, metadata !DIExpression()), !dbg !165
  %65 = tail call double @llvm.fabs.f64(double %62), !dbg !189
  %66 = tail call double @llvm.fabs.f64(double %48), !dbg !190
  %67 = fadd double %66, %65, !dbg !191
  %68 = fadd double %67, 0x3F700CFC618BFBF7, !dbg !192
  %69 = fadd double %61, %68, !dbg !193
  call void @llvm.dbg.value(metadata double %69, metadata !158, metadata !DIExpression()), !dbg !165
  tail call void @llvm.dbg.value(metadata double %64, metadata !113, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !194
  %70 = fmul double %69, 0x3CB0000000000000, !dbg !195
  %71 = fadd double %70, 4.670000e-20, !dbg !196
  tail call void @llvm.dbg.value(metadata double %71, metadata !113, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !194
  %72 = fadd double %64, 1.000000e+00, !dbg !197
  %73 = fmul double %72, %0, !dbg !198
  store double %73, ptr %1, align 8, !dbg !199, !tbaa !131
  %74 = fmul double %71, %0, !dbg !200
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !201
  %76 = tail call double @llvm.fabs.f64(double %73), !dbg !202
  %77 = fmul double %76, 0x3CC0000000000000, !dbg !203
  %78 = fadd double %77, %74, !dbg !204
  store double %78, ptr %75, align 8, !dbg !204, !tbaa !138
  br label %107

79:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !205
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !206
  %80 = call i32 @gsl_sf_expint_Ei_e(double noundef %0, ptr noundef nonnull %3) #5, !dbg !207
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !120, metadata !DIExpression()), !dbg !123
  %81 = call i32 @gsl_sf_expint_E1_e(double noundef %0, ptr noundef nonnull %4) #5, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !121, metadata !DIExpression()), !dbg !123
  %82 = load double, ptr %3, align 8, !dbg !209, !tbaa !131
  %83 = load double, ptr %4, align 8, !dbg !210, !tbaa !131
  %84 = fadd double %82, %83, !dbg !211
  %85 = fmul double %84, 5.000000e-01, !dbg !212
  store double %85, ptr %1, align 8, !dbg !213, !tbaa !131
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !214
  %87 = load double, ptr %86, align 8, !dbg !214, !tbaa !138
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !215
  %89 = load double, ptr %88, align 8, !dbg !215, !tbaa !138
  %90 = fadd double %87, %89, !dbg !216
  %91 = fmul double %90, 5.000000e-01, !dbg !217
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !218
  %93 = call double @llvm.fabs.f64(double %85), !dbg !219
  %94 = fmul double %93, 0x3CC0000000000000, !dbg !220
  %95 = fadd double %94, %91, !dbg !221
  store double %95, ptr %92, align 8, !dbg !221, !tbaa !138
  %96 = icmp eq i32 %80, 15, !dbg !222
  %97 = icmp eq i32 %81, 15
  %98 = select i1 %96, i1 %97, i1 false, !dbg !224
  br i1 %98, label %99, label %100, !dbg !224

99:                                               ; preds = %79
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 88, i32 noundef 15) #5, !dbg !225
  br label %105, !dbg !225

100:                                              ; preds = %79
  %101 = icmp eq i32 %80, 16, !dbg !228
  %102 = icmp eq i32 %81, 16
  %103 = select i1 %101, i1 true, i1 %102, !dbg !230
  br i1 %103, label %104, label %105, !dbg !230

104:                                              ; preds = %100
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 91, i32 noundef 16) #5, !dbg !231
  br label %105, !dbg !231

105:                                              ; preds = %100, %104, %99
  %106 = phi i32 [ 15, %99 ], [ 16, %104 ], [ 0, %100 ], !dbg !234
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !235
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !235
  br label %107

107:                                              ; preds = %105, %11, %7
  %108 = phi i32 [ 0, %7 ], [ 0, %11 ], [ %106, %105 ], !dbg !236
  ret i32 %108, !dbg !237
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !238 i32 @gsl_sf_expint_Ei_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !240 i32 @gsl_sf_expint_E1_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !241 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_Chi_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !246 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !254
  call void @llvm.dbg.assign(metadata i1 undef, metadata !250, metadata !DIExpression(), metadata !254, metadata ptr %3, metadata !DIExpression()), !dbg !255
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !256
  call void @llvm.dbg.assign(metadata i1 undef, metadata !251, metadata !DIExpression(), metadata !256, metadata ptr %4, metadata !DIExpression()), !dbg !255
  tail call void @llvm.dbg.value(metadata double %0, metadata !248, metadata !DIExpression()), !dbg !255
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !249, metadata !DIExpression()), !dbg !255
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !257
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !258
  %5 = call i32 @gsl_sf_expint_Ei_e(double noundef %0, ptr noundef nonnull %3) #5, !dbg !259
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !252, metadata !DIExpression()), !dbg !255
  %6 = call i32 @gsl_sf_expint_E1_e(double noundef %0, ptr noundef nonnull %4) #5, !dbg !260
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !253, metadata !DIExpression()), !dbg !255
  %7 = icmp eq i32 %5, 1, !dbg !261
  %8 = icmp eq i32 %6, 1
  %9 = select i1 %7, i1 true, i1 %8, !dbg !263
  br i1 %9, label %10, label %12, !dbg !263

10:                                               ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !264, !tbaa !131
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !264
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !264, !tbaa !138
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 107, i32 noundef 1) #5, !dbg !267
  br label %39, !dbg !267

12:                                               ; preds = %2
  %13 = icmp eq i32 %5, 15, !dbg !269
  %14 = icmp eq i32 %6, 15
  %15 = select i1 %13, i1 %14, i1 false, !dbg !271
  br i1 %15, label %16, label %18, !dbg !271

16:                                               ; preds = %12
  store double 0.000000e+00, ptr %1, align 8, !dbg !272, !tbaa !131
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !272
  store double 0x10000000000000, ptr %17, align 8, !dbg !272, !tbaa !138
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 15) #5, !dbg !275
  br label %39, !dbg !275

18:                                               ; preds = %12
  %19 = icmp eq i32 %5, 16, !dbg !277
  %20 = icmp eq i32 %6, 16
  %21 = select i1 %19, i1 true, i1 %20, !dbg !279
  br i1 %21, label %22, label %24, !dbg !279

22:                                               ; preds = %18
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !280, !tbaa !131
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !280
  store double 0x7FF0000000000000, ptr %23, align 8, !dbg !280, !tbaa !138
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 16) #5, !dbg !283
  br label %39, !dbg !283

24:                                               ; preds = %18
  %25 = load double, ptr %3, align 8, !dbg !285, !tbaa !131
  %26 = load double, ptr %4, align 8, !dbg !287, !tbaa !131
  %27 = fsub double %25, %26, !dbg !288
  %28 = fmul double %27, 5.000000e-01, !dbg !289
  store double %28, ptr %1, align 8, !dbg !290, !tbaa !131
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !291
  %30 = load double, ptr %29, align 8, !dbg !291, !tbaa !138
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !292
  %32 = load double, ptr %31, align 8, !dbg !292, !tbaa !138
  %33 = fadd double %30, %32, !dbg !293
  %34 = fmul double %33, 5.000000e-01, !dbg !294
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !295
  %36 = call double @llvm.fabs.f64(double %28), !dbg !296
  %37 = fmul double %36, 0x3CC0000000000000, !dbg !297
  %38 = fadd double %37, %34, !dbg !298
  store double %38, ptr %35, align 8, !dbg !298, !tbaa !138
  br label %39, !dbg !299

39:                                               ; preds = %24, %22, %16, %10
  %40 = phi i32 [ 1, %10 ], [ 15, %16 ], [ 16, %22 ], [ 0, %24 ], !dbg !300
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !301
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !301
  ret i32 %40, !dbg !301
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_Shi(double noundef %0) local_unnamed_addr #0 !dbg !302 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !309
  call void @llvm.dbg.assign(metadata i1 undef, metadata !307, metadata !DIExpression(), metadata !309, metadata ptr %2, metadata !DIExpression()), !dbg !310
  tail call void @llvm.dbg.value(metadata double %0, metadata !306, metadata !DIExpression()), !dbg !310
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !311
  %3 = call i32 @gsl_sf_Shi_e(double noundef %0, ptr noundef nonnull %2), !dbg !311, !range !312
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !308, metadata !DIExpression()), !dbg !310
  %4 = icmp eq i32 %3, 0, !dbg !313
  br i1 %4, label %6, label %5, !dbg !311

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 129, i32 noundef %3) #5, !dbg !315
  br label %6, !dbg !315

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !311, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !318
  ret double %7, !dbg !318
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_Chi(double noundef %0) local_unnamed_addr #0 !dbg !319 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !324
  call void @llvm.dbg.assign(metadata i1 undef, metadata !322, metadata !DIExpression(), metadata !324, metadata ptr %2, metadata !DIExpression()), !dbg !325
  tail call void @llvm.dbg.value(metadata double %0, metadata !321, metadata !DIExpression()), !dbg !325
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !326
  %3 = call i32 @gsl_sf_Chi_e(double noundef %0, ptr noundef nonnull %2), !dbg !326, !range !312
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !323, metadata !DIExpression()), !dbg !325
  %4 = icmp eq i32 %3, 0, !dbg !327
  br i1 %4, label %6, label %5, !dbg !326

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 134, i32 noundef %3) #5, !dbg !329
  br label %6, !dbg !329

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !326, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !332
  ret double %7, !dbg !332
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!29}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "shint.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "da8e0d5efe42efa44351498caedc091e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 13)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 25)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !24, isLocal: true, isDefinition: true)
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
!70 = !{!0, !7, !12, !17, !22, !27, !71, !84}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "shi_cs", scope: !29, file: !2, line: 51, type: !73, isLocal: true, isDefinition: true)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !74, line: 29, baseType: !75)
!74 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !74, line: 22, size: 320, elements: !76)
!76 = !{!77, !80, !81, !82, !83}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !75, file: !74, line: 23, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !75, file: !74, line: 24, baseType: !33, size: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !75, file: !74, line: 25, baseType: !79, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !75, file: !74, line: 26, baseType: !79, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !75, file: !74, line: 27, baseType: !33, size: 32, offset: 256)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "shi_data", scope: !29, file: !2, line: 42, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 448, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 7)
!89 = !{i32 7, !"Dwarf Version", i32 5}
!90 = !{i32 2, !"Debug Info Version", i32 3}
!91 = !{i32 1, !"wchar_size", i32 4}
!92 = !{i32 8, !"PIC Level", i32 2}
!93 = !{i32 7, !"PIE Level", i32 2}
!94 = !{i32 7, !"uwtable", i32 2}
!95 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!96 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!97 = distinct !DISubprogram(name: "gsl_sf_Shi_e", scope: !2, file: !2, line: 61, type: !98, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !108)
!98 = !DISubroutineType(types: !99)
!99 = !{!33, !100, !101}
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !103, line: 41, baseType: !104)
!103 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !103, line: 37, size: 128, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !104, file: !103, line: 38, baseType: !79, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !104, file: !103, line: 39, baseType: !79, size: 64, offset: 64)
!108 = !{!109, !110, !111, !112, !113, !117, !119, !120, !121}
!109 = !DILocalVariable(name: "x", arg: 1, scope: !97, file: !2, line: 61, type: !100)
!110 = !DILocalVariable(name: "result", arg: 2, scope: !97, file: !2, line: 61, type: !101)
!111 = !DILocalVariable(name: "xsml", scope: !97, file: !2, line: 63, type: !100)
!112 = !DILocalVariable(name: "ax", scope: !97, file: !2, line: 64, type: !100)
!113 = !DILocalVariable(name: "result_c", scope: !114, file: !2, line: 72, type: !102)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 71, column: 24)
!115 = distinct !DILexicalBlock(scope: !116, file: !2, line: 71, column: 11)
!116 = distinct !DILexicalBlock(scope: !97, file: !2, line: 66, column: 6)
!117 = !DILocalVariable(name: "result_Ei", scope: !118, file: !2, line: 80, type: !102)
!118 = distinct !DILexicalBlock(scope: !115, file: !2, line: 79, column: 8)
!119 = !DILocalVariable(name: "result_E1", scope: !118, file: !2, line: 81, type: !102)
!120 = !DILocalVariable(name: "status_Ei", scope: !118, file: !2, line: 82, type: !33)
!121 = !DILocalVariable(name: "status_E1", scope: !118, file: !2, line: 83, type: !33)
!122 = distinct !DIAssignID()
!123 = !DILocation(line: 0, scope: !118)
!124 = distinct !DIAssignID()
!125 = !DILocation(line: 0, scope: !97)
!126 = !DILocation(line: 64, column: 23, scope: !97)
!127 = !DILocation(line: 66, column: 9, scope: !116)
!128 = !DILocation(line: 66, column: 6, scope: !97)
!129 = !DILocation(line: 67, column: 17, scope: !130)
!130 = distinct !DILexicalBlock(scope: !116, file: !2, line: 66, column: 17)
!131 = !{!132, !133, i64 0}
!132 = !{!"gsl_sf_result_struct", !133, i64 0, !133, i64 8}
!133 = !{!"double", !134, i64 0}
!134 = !{!"omnipotent char", !135, i64 0}
!135 = !{!"Simple C/C++ TBAA"}
!136 = !DILocation(line: 68, column: 13, scope: !130)
!137 = !DILocation(line: 68, column: 17, scope: !130)
!138 = !{!132, !133, i64 8}
!139 = !DILocation(line: 69, column: 5, scope: !130)
!140 = !DILocation(line: 71, column: 14, scope: !115)
!141 = !DILocation(line: 71, column: 11, scope: !116)
!142 = !{}
!143 = !DILocalVariable(name: "cs", arg: 1, scope: !144, file: !145, line: 3, type: !148)
!144 = distinct !DISubprogram(name: "cheb_eval_e", scope: !145, file: !145, line: 3, type: !146, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !150)
!145 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!146 = !DISubroutineType(types: !147)
!147 = !{!33, !148, !100, !101}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!150 = !{!143, !151, !152, !153, !154, !155, !156, !157, !158, !159, !163}
!151 = !DILocalVariable(name: "x", arg: 2, scope: !144, file: !145, line: 4, type: !100)
!152 = !DILocalVariable(name: "result", arg: 3, scope: !144, file: !145, line: 5, type: !101)
!153 = !DILocalVariable(name: "j", scope: !144, file: !145, line: 7, type: !33)
!154 = !DILocalVariable(name: "d", scope: !144, file: !145, line: 8, type: !79)
!155 = !DILocalVariable(name: "dd", scope: !144, file: !145, line: 9, type: !79)
!156 = !DILocalVariable(name: "y", scope: !144, file: !145, line: 11, type: !79)
!157 = !DILocalVariable(name: "y2", scope: !144, file: !145, line: 12, type: !79)
!158 = !DILocalVariable(name: "e", scope: !144, file: !145, line: 14, type: !79)
!159 = !DILocalVariable(name: "temp", scope: !160, file: !145, line: 17, type: !79)
!160 = distinct !DILexicalBlock(scope: !161, file: !145, line: 16, column: 33)
!161 = distinct !DILexicalBlock(scope: !162, file: !145, line: 16, column: 3)
!162 = distinct !DILexicalBlock(scope: !144, file: !145, line: 16, column: 3)
!163 = !DILocalVariable(name: "temp", scope: !164, file: !145, line: 24, type: !79)
!164 = distinct !DILexicalBlock(scope: !144, file: !145, line: 23, column: 3)
!165 = !DILocation(line: 0, scope: !144, inlinedAt: !166)
!166 = distinct !DILocation(line: 73, column: 5, scope: !114)
!167 = !DILocation(line: 73, column: 31, scope: !114)
!168 = !DILocation(line: 73, column: 33, scope: !114)
!169 = !DILocation(line: 73, column: 35, scope: !114)
!170 = !DILocation(line: 73, column: 39, scope: !114)
!171 = !DILocation(line: 11, column: 19, scope: !144, inlinedAt: !166)
!172 = !DILocation(line: 11, column: 22, scope: !144, inlinedAt: !166)
!173 = !DILocation(line: 11, column: 30, scope: !144, inlinedAt: !166)
!174 = !DILocation(line: 11, column: 39, scope: !144, inlinedAt: !166)
!175 = !DILocation(line: 12, column: 19, scope: !144, inlinedAt: !166)
!176 = !DILocation(line: 0, scope: !160, inlinedAt: !166)
!177 = !DILocation(line: 18, column: 11, scope: !160, inlinedAt: !166)
!178 = !DILocation(line: 18, column: 19, scope: !160, inlinedAt: !166)
!179 = !DILocation(line: 19, column: 10, scope: !160, inlinedAt: !166)
!180 = !DILocation(line: 19, column: 35, scope: !160, inlinedAt: !166)
!181 = !DILocation(line: 19, column: 7, scope: !160, inlinedAt: !166)
!182 = !DILocation(line: 18, column: 14, scope: !160, inlinedAt: !166)
!183 = !DILocation(line: 19, column: 26, scope: !160, inlinedAt: !166)
!184 = !DILocation(line: 19, column: 24, scope: !160, inlinedAt: !166)
!185 = !DILocation(line: 0, scope: !164, inlinedAt: !166)
!186 = !DILocation(line: 25, column: 10, scope: !164, inlinedAt: !166)
!187 = !DILocation(line: 25, column: 13, scope: !164, inlinedAt: !166)
!188 = !DILocation(line: 25, column: 18, scope: !164, inlinedAt: !166)
!189 = !DILocation(line: 26, column: 10, scope: !164, inlinedAt: !166)
!190 = !DILocation(line: 26, column: 25, scope: !164, inlinedAt: !166)
!191 = !DILocation(line: 26, column: 23, scope: !164, inlinedAt: !166)
!192 = !DILocation(line: 26, column: 34, scope: !164, inlinedAt: !166)
!193 = !DILocation(line: 26, column: 7, scope: !164, inlinedAt: !166)
!194 = !DILocation(line: 0, scope: !114)
!195 = !DILocation(line: 30, column: 33, scope: !144, inlinedAt: !166)
!196 = !DILocation(line: 30, column: 37, scope: !144, inlinedAt: !166)
!197 = !DILocation(line: 74, column: 29, scope: !114)
!198 = !DILocation(line: 74, column: 22, scope: !114)
!199 = !DILocation(line: 74, column: 18, scope: !114)
!200 = !DILocation(line: 75, column: 22, scope: !114)
!201 = !DILocation(line: 75, column: 13, scope: !114)
!202 = !DILocation(line: 76, column: 44, scope: !114)
!203 = !DILocation(line: 76, column: 42, scope: !114)
!204 = !DILocation(line: 76, column: 17, scope: !114)
!205 = !DILocation(line: 80, column: 5, scope: !118)
!206 = !DILocation(line: 81, column: 5, scope: !118)
!207 = !DILocation(line: 82, column: 21, scope: !118)
!208 = !DILocation(line: 83, column: 21, scope: !118)
!209 = !DILocation(line: 84, column: 35, scope: !118)
!210 = !DILocation(line: 84, column: 51, scope: !118)
!211 = !DILocation(line: 84, column: 39, scope: !118)
!212 = !DILocation(line: 84, column: 23, scope: !118)
!213 = !DILocation(line: 84, column: 18, scope: !118)
!214 = !DILocation(line: 85, column: 35, scope: !118)
!215 = !DILocation(line: 85, column: 51, scope: !118)
!216 = !DILocation(line: 85, column: 39, scope: !118)
!217 = !DILocation(line: 85, column: 23, scope: !118)
!218 = !DILocation(line: 85, column: 13, scope: !118)
!219 = !DILocation(line: 86, column: 44, scope: !118)
!220 = !DILocation(line: 86, column: 42, scope: !118)
!221 = !DILocation(line: 86, column: 17, scope: !118)
!222 = !DILocation(line: 87, column: 18, scope: !223)
!223 = distinct !DILexicalBlock(scope: !118, file: !2, line: 87, column: 8)
!224 = !DILocation(line: 87, column: 34, scope: !223)
!225 = !DILocation(line: 88, column: 7, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !2, line: 88, column: 7)
!227 = distinct !DILexicalBlock(scope: !223, file: !2, line: 87, column: 64)
!228 = !DILocation(line: 90, column: 23, scope: !229)
!229 = distinct !DILexicalBlock(scope: !223, file: !2, line: 90, column: 13)
!230 = !DILocation(line: 90, column: 38, scope: !229)
!231 = !DILocation(line: 91, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !2, line: 91, column: 7)
!233 = distinct !DILexicalBlock(scope: !229, file: !2, line: 90, column: 67)
!234 = !DILocation(line: 0, scope: !223)
!235 = !DILocation(line: 96, column: 3, scope: !115)
!236 = !DILocation(line: 0, scope: !116)
!237 = !DILocation(line: 97, column: 1, scope: !97)
!238 = !DISubprogram(name: "gsl_sf_expint_Ei_e", scope: !239, file: !239, line: 100, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DIFile(filename: "../gsl/gsl_sf_expint.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "fa6433b039d5ce651e3386bd71654e9c")
!240 = !DISubprogram(name: "gsl_sf_expint_E1_e", scope: !239, file: !239, line: 46, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubprogram(name: "gsl_error", scope: !32, file: !32, line: 77, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !244, !244, !33, !33}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!246 = distinct !DISubprogram(name: "gsl_sf_Chi_e", scope: !2, file: !2, line: 100, type: !98, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !247)
!247 = !{!248, !249, !250, !251, !252, !253}
!248 = !DILocalVariable(name: "x", arg: 1, scope: !246, file: !2, line: 100, type: !100)
!249 = !DILocalVariable(name: "result", arg: 2, scope: !246, file: !2, line: 100, type: !101)
!250 = !DILocalVariable(name: "result_Ei", scope: !246, file: !2, line: 102, type: !102)
!251 = !DILocalVariable(name: "result_E1", scope: !246, file: !2, line: 103, type: !102)
!252 = !DILocalVariable(name: "status_Ei", scope: !246, file: !2, line: 104, type: !33)
!253 = !DILocalVariable(name: "status_E1", scope: !246, file: !2, line: 105, type: !33)
!254 = distinct !DIAssignID()
!255 = !DILocation(line: 0, scope: !246)
!256 = distinct !DIAssignID()
!257 = !DILocation(line: 102, column: 3, scope: !246)
!258 = !DILocation(line: 103, column: 3, scope: !246)
!259 = !DILocation(line: 104, column: 19, scope: !246)
!260 = !DILocation(line: 105, column: 19, scope: !246)
!261 = !DILocation(line: 106, column: 16, scope: !262)
!262 = distinct !DILexicalBlock(scope: !246, file: !2, line: 106, column: 6)
!263 = !DILocation(line: 106, column: 28, scope: !262)
!264 = !DILocation(line: 107, column: 5, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !2, line: 107, column: 5)
!266 = distinct !DILexicalBlock(scope: !262, file: !2, line: 106, column: 54)
!267 = !DILocation(line: 107, column: 5, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !2, line: 107, column: 5)
!269 = !DILocation(line: 109, column: 21, scope: !270)
!270 = distinct !DILexicalBlock(scope: !262, file: !2, line: 109, column: 11)
!271 = !DILocation(line: 109, column: 37, scope: !270)
!272 = !DILocation(line: 110, column: 5, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !2, line: 110, column: 5)
!274 = distinct !DILexicalBlock(scope: !270, file: !2, line: 109, column: 67)
!275 = !DILocation(line: 110, column: 5, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !2, line: 110, column: 5)
!277 = !DILocation(line: 112, column: 21, scope: !278)
!278 = distinct !DILexicalBlock(scope: !270, file: !2, line: 112, column: 11)
!279 = !DILocation(line: 112, column: 36, scope: !278)
!280 = !DILocation(line: 113, column: 5, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !2, line: 113, column: 5)
!282 = distinct !DILexicalBlock(scope: !278, file: !2, line: 112, column: 65)
!283 = !DILocation(line: 113, column: 5, scope: !284)
!284 = distinct !DILexicalBlock(scope: !281, file: !2, line: 113, column: 5)
!285 = !DILocation(line: 116, column: 37, scope: !286)
!286 = distinct !DILexicalBlock(scope: !278, file: !2, line: 115, column: 8)
!287 = !DILocation(line: 116, column: 53, scope: !286)
!288 = !DILocation(line: 116, column: 41, scope: !286)
!289 = !DILocation(line: 116, column: 24, scope: !286)
!290 = !DILocation(line: 116, column: 18, scope: !286)
!291 = !DILocation(line: 117, column: 37, scope: !286)
!292 = !DILocation(line: 117, column: 53, scope: !286)
!293 = !DILocation(line: 117, column: 41, scope: !286)
!294 = !DILocation(line: 117, column: 24, scope: !286)
!295 = !DILocation(line: 117, column: 13, scope: !286)
!296 = !DILocation(line: 118, column: 44, scope: !286)
!297 = !DILocation(line: 118, column: 42, scope: !286)
!298 = !DILocation(line: 118, column: 17, scope: !286)
!299 = !DILocation(line: 119, column: 5, scope: !286)
!300 = !DILocation(line: 0, scope: !262)
!301 = !DILocation(line: 121, column: 1, scope: !246)
!302 = distinct !DISubprogram(name: "gsl_sf_Shi", scope: !2, file: !2, line: 127, type: !303, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !305)
!303 = !DISubroutineType(types: !304)
!304 = !{!79, !100}
!305 = !{!306, !307, !308}
!306 = !DILocalVariable(name: "x", arg: 1, scope: !302, file: !2, line: 127, type: !100)
!307 = !DILocalVariable(name: "result", scope: !302, file: !2, line: 129, type: !102)
!308 = !DILocalVariable(name: "status", scope: !302, file: !2, line: 129, type: !33)
!309 = distinct !DIAssignID()
!310 = !DILocation(line: 0, scope: !302)
!311 = !DILocation(line: 129, column: 3, scope: !302)
!312 = !{i32 0, i32 17}
!313 = !DILocation(line: 129, column: 3, scope: !314)
!314 = distinct !DILexicalBlock(scope: !302, file: !2, line: 129, column: 3)
!315 = !DILocation(line: 129, column: 3, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 129, column: 3)
!317 = distinct !DILexicalBlock(scope: !314, file: !2, line: 129, column: 3)
!318 = !DILocation(line: 130, column: 1, scope: !302)
!319 = distinct !DISubprogram(name: "gsl_sf_Chi", scope: !2, file: !2, line: 132, type: !303, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !320)
!320 = !{!321, !322, !323}
!321 = !DILocalVariable(name: "x", arg: 1, scope: !319, file: !2, line: 132, type: !100)
!322 = !DILocalVariable(name: "result", scope: !319, file: !2, line: 134, type: !102)
!323 = !DILocalVariable(name: "status", scope: !319, file: !2, line: 134, type: !33)
!324 = distinct !DIAssignID()
!325 = !DILocation(line: 0, scope: !319)
!326 = !DILocation(line: 134, column: 3, scope: !319)
!327 = !DILocation(line: 134, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !319, file: !2, line: 134, column: 3)
!329 = !DILocation(line: 134, column: 3, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !2, line: 134, column: 3)
!331 = distinct !DILexicalBlock(scope: !328, file: !2, line: 134, column: 3)
!332 = !DILocation(line: 135, column: 1, scope: !319)
