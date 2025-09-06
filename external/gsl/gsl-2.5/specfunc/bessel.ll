; ModuleID = 'bessel.c'
source_filename = "bessel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"bessel.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %0, double noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 !dbg !68 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !119
  call void @llvm.dbg.assign(metadata i1 undef, metadata !88, metadata !DIExpression(), metadata !119, metadata ptr %7, metadata !DIExpression()), !dbg !120
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !121
  call void @llvm.dbg.assign(metadata i1 undef, metadata !101, metadata !DIExpression(), metadata !121, metadata ptr %8, metadata !DIExpression()), !dbg !122
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !123
  call void @llvm.dbg.assign(metadata i1 undef, metadata !102, metadata !DIExpression(), metadata !123, metadata ptr %9, metadata !DIExpression()), !dbg !122
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !106, metadata !DIExpression(), metadata !124, metadata ptr %10, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata double %0, metadata !82, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata double %1, metadata !83, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !84, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !85, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata double %4, metadata !86, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !87, metadata !DIExpression()), !dbg !126
  %11 = fcmp olt double %0, 0.000000e+00, !dbg !127
  %12 = fcmp olt double %1, 0.000000e+00
  %13 = or i1 %11, %12, !dbg !128
  br i1 %13, label %14, label %16, !dbg !128

14:                                               ; preds = %6
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !129, !tbaa !132
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !129
  store double 0x7FF8000000000000, ptr %15, align 8, !dbg !129, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 102, i32 noundef 1) #10, !dbg !138
  br label %117, !dbg !138

16:                                               ; preds = %6
  %17 = fcmp oeq double %1, 0.000000e+00, !dbg !140
  br i1 %17, label %18, label %23, !dbg !141

18:                                               ; preds = %16
  %19 = fcmp oeq double %0, 0.000000e+00, !dbg !142
  br i1 %19, label %20, label %22, !dbg !145

20:                                               ; preds = %18
  store double 1.000000e+00, ptr %5, align 8, !dbg !146, !tbaa !132
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !148
  store double 0.000000e+00, ptr %21, align 8, !dbg !149, !tbaa !137
  br label %117, !dbg !150

22:                                               ; preds = %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !151
  br label %117

23:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10, !dbg !153
  %24 = fcmp oeq double %0, 0.000000e+00, !dbg !154
  br i1 %24, label %25, label %27, !dbg !155

25:                                               ; preds = %23
  store double 1.000000e+00, ptr %7, align 8, !dbg !156, !tbaa !132, !DIAssignID !158
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !88, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !158, metadata ptr %7, metadata !DIExpression()), !dbg !120
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !159
  store double 0.000000e+00, ptr %26, align 8, !dbg !160, !tbaa !137, !DIAssignID !161
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !88, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !161, metadata ptr %26, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()), !dbg !120
  br label %77, !dbg !162

27:                                               ; preds = %23
  %28 = fcmp olt double %0, 0x41DFFFFFFF800000, !dbg !163
  br i1 %28, label %29, label %59, !dbg !164

29:                                               ; preds = %27
  %30 = fadd double %0, 5.000000e-01, !dbg !165
  %31 = tail call double @llvm.floor.f64(double %30), !dbg !166
  %32 = fptosi double %31 to i32, !dbg !167
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !96, metadata !DIExpression()), !dbg !122
  %33 = sitofp i32 %32 to double, !dbg !168
  %34 = fsub double %0, %33, !dbg !169
  tail call void @llvm.dbg.value(metadata double %34, metadata !100, metadata !DIExpression()), !dbg !122
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10, !dbg !170
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10, !dbg !171
  %35 = fadd double %33, 1.000000e+00, !dbg !172
  %36 = call i32 @gsl_sf_poch_e(double noundef %35, double noundef %34, ptr noundef nonnull %8) #10, !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !103, metadata !DIExpression()), !dbg !122
  %37 = fmul double %1, 5.000000e-01, !dbg !174
  %38 = call i32 @gsl_sf_taylorcoeff_e(i32 noundef %32, double noundef %37, ptr noundef nonnull %9) #10, !dbg !175
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !104, metadata !DIExpression()), !dbg !122
  %39 = call double @pow(double noundef %37, double noundef %34) #10, !dbg !176
  tail call void @llvm.dbg.value(metadata double %39, metadata !105, metadata !DIExpression()), !dbg !122
  %40 = load double, ptr %9, align 8, !dbg !177, !tbaa !132
  %41 = fmul double %39, %40, !dbg !178
  %42 = load double, ptr %8, align 8, !dbg !179, !tbaa !132
  %43 = fdiv double %41, %42, !dbg !180
  store double %43, ptr %7, align 8, !dbg !181, !tbaa !132, !DIAssignID !182
  call void @llvm.dbg.assign(metadata double %43, metadata !88, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !182, metadata ptr %7, metadata !DIExpression()), !dbg !120
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !183
  %45 = load double, ptr %44, align 8, !dbg !183, !tbaa !137
  %46 = fmul double %39, %45, !dbg !184
  %47 = fdiv double %46, %42, !dbg !185
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !186
  call void @llvm.dbg.assign(metadata double %47, metadata !88, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !187, metadata ptr %48, metadata !DIExpression()), !dbg !120
  %49 = call double @llvm.fabs.f64(double %43), !dbg !188
  %50 = fdiv double %49, %42, !dbg !189
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !190
  %52 = load double, ptr %51, align 8, !dbg !190, !tbaa !137
  %53 = fmul double %50, %52, !dbg !191
  %54 = fadd double %47, %53, !dbg !192
  call void @llvm.dbg.assign(metadata double %54, metadata !88, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !193, metadata ptr %48, metadata !DIExpression()), !dbg !120
  %55 = fmul double %49, 0x3CC0000000000000, !dbg !194
  %56 = fadd double %55, %54, !dbg !195
  store double %56, ptr %48, align 8, !dbg !195, !tbaa !137, !DIAssignID !196
  call void @llvm.dbg.assign(metadata double %56, metadata !88, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !196, metadata ptr %48, metadata !DIExpression()), !dbg !120
  %57 = icmp eq i32 %38, 0, !dbg !197
  %58 = select i1 %57, i32 %36, i32 %38, !dbg !197
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !93, metadata !DIExpression()), !dbg !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10, !dbg !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10, !dbg !198
  br label %77, !dbg !199

59:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #10, !dbg !200
  %60 = fadd double %0, 1.000000e+00, !dbg !201
  %61 = call i32 @gsl_sf_lngamma_e(double noundef %60, ptr noundef nonnull %10) #10, !dbg !202
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !108, metadata !DIExpression()), !dbg !125
  %62 = fmul double %1, 5.000000e-01, !dbg !203
  %63 = call double @log(double noundef %62) #10, !dbg !204
  %64 = fmul double %63, %0, !dbg !205
  tail call void @llvm.dbg.value(metadata double %64, metadata !109, metadata !DIExpression()), !dbg !125
  %65 = load double, ptr %10, align 8, !dbg !206, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %65, metadata !110, metadata !DIExpression()), !dbg !125
  %66 = fsub double %64, %65, !dbg !207
  tail call void @llvm.dbg.value(metadata double %66, metadata !111, metadata !DIExpression()), !dbg !125
  %67 = call double @llvm.fabs.f64(double %64), !dbg !208
  %68 = call double @llvm.fabs.f64(double %65), !dbg !209
  %69 = fadd double %67, %68, !dbg !210
  %70 = fmul double %69, 0x3CB0000000000000, !dbg !211
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !212
  %72 = load double, ptr %71, align 8, !dbg !212, !tbaa !137
  %73 = fadd double %72, %70, !dbg !213
  tail call void @llvm.dbg.value(metadata double %73, metadata !112, metadata !DIExpression()), !dbg !125
  %74 = call i32 @gsl_sf_exp_err_e(double noundef %66, double noundef %73, ptr noundef nonnull %7) #10, !dbg !214
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !113, metadata !DIExpression()), !dbg !125
  %75 = icmp eq i32 %74, 0, !dbg !215
  %76 = select i1 %75, i32 %61, i32 %74, !dbg !215
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !93, metadata !DIExpression()), !dbg !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10, !dbg !216
  br label %77

77:                                               ; preds = %29, %59, %25
  %78 = phi i32 [ 0, %25 ], [ %58, %29 ], [ %76, %59 ], !dbg !217
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !93, metadata !DIExpression()), !dbg !120
  %79 = sitofp i32 %2 to double, !dbg !218
  %80 = fmul double %79, 2.500000e-01, !dbg !219
  %81 = fmul double %80, %1, !dbg !220
  %82 = fmul double %81, %1, !dbg !221
  tail call void @llvm.dbg.value(metadata double %82, metadata !114, metadata !DIExpression()), !dbg !222
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !116, metadata !DIExpression()), !dbg !222
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !117, metadata !DIExpression()), !dbg !222
  tail call void @llvm.dbg.value(metadata i32 1, metadata !118, metadata !DIExpression()), !dbg !222
  %83 = icmp slt i32 %3, 1, !dbg !223
  br i1 %83, label %102, label %84, !dbg !226

84:                                               ; preds = %77
  %85 = add nuw i32 %3, 1, !dbg !226
  br label %86, !dbg !226

86:                                               ; preds = %84, %99
  %87 = phi i32 [ %100, %99 ], [ 1, %84 ]
  %88 = phi double [ %94, %99 ], [ 1.000000e+00, %84 ]
  %89 = phi double [ %95, %99 ], [ 1.000000e+00, %84 ]
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !118, metadata !DIExpression()), !dbg !222
  tail call void @llvm.dbg.value(metadata double %88, metadata !117, metadata !DIExpression()), !dbg !222
  tail call void @llvm.dbg.value(metadata double %89, metadata !116, metadata !DIExpression()), !dbg !222
  %90 = sitofp i32 %87 to double, !dbg !227
  %91 = fadd double %90, %0, !dbg !229
  %92 = fmul double %91, %90, !dbg !230
  %93 = fdiv double %82, %92, !dbg !231
  %94 = fmul double %88, %93, !dbg !232
  tail call void @llvm.dbg.value(metadata double %94, metadata !117, metadata !DIExpression()), !dbg !222
  %95 = fadd double %89, %94, !dbg !233
  tail call void @llvm.dbg.value(metadata double %95, metadata !116, metadata !DIExpression()), !dbg !222
  %96 = fdiv double %94, %95, !dbg !234
  %97 = call double @llvm.fabs.f64(double %96), !dbg !236
  %98 = fcmp olt double %97, %4, !dbg !237
  br i1 %98, label %102, label %99, !dbg !238

99:                                               ; preds = %86
  %100 = add nuw i32 %87, 1, !dbg !239
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !118, metadata !DIExpression()), !dbg !222
  tail call void @llvm.dbg.value(metadata double %94, metadata !117, metadata !DIExpression()), !dbg !222
  tail call void @llvm.dbg.value(metadata double %95, metadata !116, metadata !DIExpression()), !dbg !222
  %101 = icmp eq i32 %87, %3, !dbg !223
  br i1 %101, label %102, label %86, !dbg !226, !llvm.loop !240

102:                                              ; preds = %99, %86, %77
  %103 = phi i32 [ 1, %77 ], [ %87, %86 ], [ %85, %99 ], !dbg !243
  %104 = phi double [ 1.000000e+00, %77 ], [ %95, %86 ], [ %95, %99 ], !dbg !222
  tail call void @llvm.dbg.value(metadata double %104, metadata !116, metadata !DIExpression()), !dbg !222
  tail call void @llvm.dbg.value(metadata double %104, metadata !92, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !120
  %105 = call double @llvm.fabs.f64(double %104), !dbg !244
  %106 = fmul double %105, %4, !dbg !245
  tail call void @llvm.dbg.value(metadata double %106, metadata !92, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !120
  %107 = icmp slt i32 %103, %3, !dbg !246
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !94, metadata !DIExpression()), !dbg !120
  %108 = load double, ptr %7, align 8, !dbg !247, !tbaa !132
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !248
  %110 = load double, ptr %109, align 8, !dbg !248, !tbaa !137
  %111 = call i32 @gsl_sf_multiply_err_e(double noundef %108, double noundef %110, double noundef %104, double noundef %106, ptr noundef %5) #10, !dbg !249
  tail call void @llvm.dbg.value(metadata i32 %111, metadata !95, metadata !DIExpression()), !dbg !120
  %112 = icmp eq i32 %111, 0, !dbg !250
  %113 = icmp eq i32 %78, 0, !dbg !250
  %114 = select i1 %107, i32 0, i32 11, !dbg !250
  %115 = select i1 %113, i32 %114, i32 %78, !dbg !250
  %116 = select i1 %112, i32 %115, i32 %111, !dbg !250
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10, !dbg !251
  br label %117

117:                                              ; preds = %20, %22, %14, %102
  %118 = phi i32 [ 1, %14 ], [ %116, %102 ], [ 0, %22 ], [ 0, %20 ], !dbg !252
  ret i32 %118, !dbg !253
}

declare !dbg !254 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

declare !dbg !259 i32 @gsl_sf_poch_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !263 i32 @gsl_sf_taylorcoeff_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !266 double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !270 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !273 double @log(double noundef) local_unnamed_addr #4

declare !dbg !276 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !278 i32 @gsl_sf_multiply_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 !dbg !282 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !284, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata double %1, metadata !285, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !286, metadata !DIExpression()), !dbg !299
  %4 = fmul double %0, 4.000000e+00, !dbg !300
  %5 = fmul double %4, %0, !dbg !301
  tail call void @llvm.dbg.value(metadata double %5, metadata !287, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata double poison, metadata !288, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !289, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !290, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !291, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !292, metadata !DIExpression()), !dbg !299
  %6 = fmul double %1, 8.000000e+00
  %7 = fmul double %0, 5.000000e-01
  br label %8, !dbg !302

8:                                                ; preds = %22, %3
  %9 = phi double [ 1.000000e+00, %3 ], [ %37, %22 ], !dbg !299
  %10 = phi double [ 0.000000e+00, %3 ], [ %46, %22 ], !dbg !299
  %11 = phi double [ 0.000000e+00, %3 ], [ %42, %22 ], !dbg !299
  %12 = phi double [ 0.000000e+00, %3 ], [ %29, %22 ], !dbg !299
  tail call void @llvm.dbg.value(metadata double %12, metadata !289, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata double %11, metadata !290, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata double %10, metadata !291, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata double %9, metadata !292, metadata !DIExpression()), !dbg !299
  %13 = fcmp oeq double %10, 0.000000e+00, !dbg !303
  br i1 %13, label %22, label %14, !dbg !305

14:                                               ; preds = %8
  %15 = fmul double %10, 2.000000e+00, !dbg !306
  %16 = fadd double %15, -1.000000e+00, !dbg !307
  %17 = fmul double %16, %16, !dbg !308
  %18 = fsub double %5, %17, !dbg !309
  %19 = fneg double %18, !dbg !310
  %20 = fmul double %6, %10, !dbg !311
  %21 = fdiv double %19, %20, !dbg !312
  br label %22, !dbg !305

22:                                               ; preds = %8, %14
  %23 = phi double [ %21, %14 ], [ 1.000000e+00, %8 ], !dbg !305
  %24 = fmul double %9, %23, !dbg !313
  tail call void @llvm.dbg.value(metadata double %24, metadata !292, metadata !DIExpression()), !dbg !299
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !314
  %26 = tail call double @llvm.fabs.f64(double %12), !dbg !315
  %27 = fmul double %26, 0x3CB0000000000000, !dbg !316
  %28 = fcmp olt double %25, %27, !dbg !317
  tail call void @llvm.dbg.value(metadata i1 %28, metadata !293, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !299
  %29 = fadd double %12, %24, !dbg !318
  tail call void @llvm.dbg.value(metadata double %29, metadata !289, metadata !DIExpression()), !dbg !299
  %30 = fadd double %10, 1.000000e+00, !dbg !319
  tail call void @llvm.dbg.value(metadata double %30, metadata !291, metadata !DIExpression()), !dbg !299
  %31 = fmul double %30, 2.000000e+00, !dbg !320
  %32 = fadd double %31, -1.000000e+00, !dbg !321
  %33 = fmul double %32, %32, !dbg !322
  %34 = fsub double %5, %33, !dbg !323
  %35 = fmul double %6, %30, !dbg !324
  %36 = fdiv double %34, %35, !dbg !325
  %37 = fmul double %36, %24, !dbg !326
  tail call void @llvm.dbg.value(metadata double %37, metadata !292, metadata !DIExpression()), !dbg !299
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !327
  %39 = tail call double @llvm.fabs.f64(double %11), !dbg !328
  %40 = fmul double %39, 0x3CB0000000000000, !dbg !329
  %41 = fcmp olt double %38, %40, !dbg !330
  tail call void @llvm.dbg.value(metadata i1 %41, metadata !294, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !299
  %42 = fadd double %11, %37, !dbg !331
  tail call void @llvm.dbg.value(metadata double %42, metadata !290, metadata !DIExpression()), !dbg !299
  %43 = select i1 %28, i1 %41, i1 false, !dbg !332
  %44 = fcmp ogt double %30, %7
  %45 = and i1 %44, %43, !dbg !332
  %46 = fadd double %30, 1.000000e+00
  tail call void @llvm.dbg.value(metadata double %46, metadata !291, metadata !DIExpression()), !dbg !299
  %47 = fcmp uge double %46, 1.000000e+03
  %48 = or i1 %47, %45, !dbg !332
  br i1 %48, label %49, label %8, !dbg !332, !llvm.loop !334

49:                                               ; preds = %22
  %50 = fadd double %7, 2.500000e-01, !dbg !336
  %51 = fmul double %50, 0x400921FB54442D18, !dbg !337
  %52 = fsub double %1, %51, !dbg !338
  tail call void @llvm.dbg.value(metadata double %52, metadata !288, metadata !DIExpression()), !dbg !299
  %53 = fmul double %1, 0x400921FB54442D18, !dbg !339
  %54 = fdiv double 2.000000e+00, %53, !dbg !340
  %55 = tail call double @sqrt(double noundef %54) #10, !dbg !341
  tail call void @llvm.dbg.value(metadata double %55, metadata !295, metadata !DIExpression()), !dbg !342
  %56 = tail call double @cos(double noundef %52) #10, !dbg !343
  tail call void @llvm.dbg.value(metadata double %56, metadata !297, metadata !DIExpression()), !dbg !342
  %57 = tail call double @sin(double noundef %52) #10, !dbg !344
  tail call void @llvm.dbg.value(metadata double %57, metadata !298, metadata !DIExpression()), !dbg !342
  %58 = fmul double %29, %56, !dbg !345
  %59 = fmul double %42, %57, !dbg !346
  %60 = fsub double %58, %59, !dbg !347
  %61 = fmul double %55, %60, !dbg !348
  store double %61, ptr %2, align 8, !dbg !349, !tbaa !132
  %62 = fmul double %55, 0x3CB0000000000000, !dbg !350
  %63 = tail call double @llvm.fabs.f64(double %58), !dbg !351
  %64 = tail call double @llvm.fabs.f64(double %59), !dbg !352
  %65 = fadd double %63, %64, !dbg !353
  %66 = fadd double %38, %65, !dbg !354
  %67 = fmul double %62, %66, !dbg !355
  %68 = tail call double @llvm.fabs.f64(double %1), !dbg !356
  %69 = fadd double %68, 1.000000e+00, !dbg !357
  %70 = fmul double %69, %67, !dbg !358
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !359
  store double %70, ptr %71, align 8, !dbg !360, !tbaa !137
  ret i32 0, !dbg !361
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !362 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !363 double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !364 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Ynu_asympx_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !365 {
  %4 = alloca double, align 8, !DIAssignID !382
  call void @llvm.dbg.assign(metadata i1 undef, metadata !370, metadata !DIExpression(), metadata !382, metadata ptr %4, metadata !DIExpression()), !dbg !383
  %5 = alloca double, align 8, !DIAssignID !384
  call void @llvm.dbg.assign(metadata i1 undef, metadata !371, metadata !DIExpression(), metadata !384, metadata ptr %5, metadata !DIExpression()), !dbg !383
  tail call void @llvm.dbg.value(metadata double %0, metadata !367, metadata !DIExpression()), !dbg !383
  tail call void @llvm.dbg.value(metadata double %1, metadata !368, metadata !DIExpression()), !dbg !383
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !369, metadata !DIExpression()), !dbg !383
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10, !dbg !385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10, !dbg !386
  tail call void @llvm.dbg.value(metadata double %1, metadata !372, metadata !DIExpression()), !dbg !383
  %6 = fmul double %0, -5.000000e-01, !dbg !387
  %7 = fmul double %6, 0x400921FB54442D18, !dbg !388
  tail call void @llvm.dbg.value(metadata double %7, metadata !373, metadata !DIExpression()), !dbg !383
  %8 = call i32 @gsl_sf_bessel_asymp_Mnu_e(double noundef %0, double noundef %1, ptr noundef nonnull %4) #10, !dbg !389
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !374, metadata !DIExpression()), !dbg !383
  %9 = call i32 @gsl_sf_bessel_asymp_thetanu_corr_e(double noundef %0, double noundef %1, ptr noundef nonnull %5) #10, !dbg !390
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !375, metadata !DIExpression()), !dbg !383
  %10 = call double @sin(double noundef %1) #10, !dbg !391
  tail call void @llvm.dbg.value(metadata double %10, metadata !376, metadata !DIExpression()), !dbg !383
  %11 = call double @cos(double noundef %1) #10, !dbg !392
  tail call void @llvm.dbg.value(metadata double %11, metadata !377, metadata !DIExpression()), !dbg !383
  %12 = load double, ptr %5, align 8, !dbg !393, !tbaa !394
  %13 = fadd double %7, %12, !dbg !395
  %14 = call double @sin(double noundef %13) #10, !dbg !396
  tail call void @llvm.dbg.value(metadata double %14, metadata !378, metadata !DIExpression()), !dbg !383
  %15 = load double, ptr %5, align 8, !dbg !397, !tbaa !394
  %16 = fadd double %7, %15, !dbg !398
  %17 = call double @cos(double noundef %16) #10, !dbg !399
  tail call void @llvm.dbg.value(metadata double %17, metadata !379, metadata !DIExpression()), !dbg !383
  %18 = fmul double %10, %17, !dbg !400
  %19 = fmul double %11, %14, !dbg !401
  %20 = fadd double %19, %18, !dbg !402
  tail call void @llvm.dbg.value(metadata double %20, metadata !380, metadata !DIExpression()), !dbg !383
  %21 = call double @llvm.fabs.f64(double %18), !dbg !403
  %22 = call double @llvm.fabs.f64(double %19), !dbg !404
  %23 = fadd double %22, %21, !dbg !405
  tail call void @llvm.dbg.value(metadata double %23, metadata !381, metadata !DIExpression()), !dbg !383
  %24 = load double, ptr %4, align 8, !dbg !406, !tbaa !394
  %25 = fmul double %24, %20, !dbg !407
  store double %25, ptr %2, align 8, !dbg !408, !tbaa !132
  %26 = call double @llvm.fabs.f64(double %24), !dbg !409
  %27 = fmul double %26, 0x3CB0000000000000, !dbg !410
  %28 = fmul double %27, %23, !dbg !411
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !412
  %30 = call double @llvm.fabs.f64(double %25), !dbg !413
  %31 = fmul double %30, 2.000000e+00, !dbg !414
  %32 = fmul double %31, 0x3CB0000000000000, !dbg !415
  %33 = fadd double %28, %32, !dbg !416
  store double %33, ptr %29, align 8, !dbg !416, !tbaa !137
  %34 = call double @llvm.fabs.f64(double %1), !dbg !417
  %35 = fcmp ogt double %34, 0x4330000000000000, !dbg !419
  br i1 %35, label %36, label %38, !dbg !420

36:                                               ; preds = %3
  %37 = fmul double %34, 5.000000e-01, !dbg !421
  br label %43, !dbg !423

38:                                               ; preds = %3
  %39 = fcmp ogt double %34, 0x4190000000000000, !dbg !424
  br i1 %39, label %40, label %46, !dbg !426

40:                                               ; preds = %38
  %41 = fmul double %34, 2.560000e+02, !dbg !427
  %42 = fmul double %41, 0x3E50000000000000, !dbg !429
  br label %43, !dbg !430

43:                                               ; preds = %36, %40
  %44 = phi double [ %42, %40 ], [ %37, %36 ]
  %45 = fmul double %44, %33, !dbg !431
  store double %45, ptr %29, align 8, !dbg !431, !tbaa !137
  br label %46, !dbg !432

46:                                               ; preds = %43, %38
  %47 = icmp eq i32 %9, 0, !dbg !432
  %48 = select i1 %47, i32 %8, i32 %9, !dbg !432
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10, !dbg !433
  ret i32 %48, !dbg !434
}

declare !dbg !435 i32 @gsl_sf_bessel_asymp_Mnu_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !440 i32 @gsl_sf_bessel_asymp_thetanu_corr_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_Inu_scaled_asympx_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 !dbg !441 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !443, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %1, metadata !444, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !445, metadata !DIExpression()), !dbg !451
  %4 = fmul double %0, 4.000000e+00, !dbg !452
  %5 = fmul double %4, %0, !dbg !453
  tail call void @llvm.dbg.value(metadata double %5, metadata !446, metadata !DIExpression()), !dbg !451
  %6 = fadd double %5, -1.000000e+00, !dbg !454
  tail call void @llvm.dbg.value(metadata double %6, metadata !447, metadata !DIExpression()), !dbg !451
  %7 = fadd double %5, -9.000000e+00, !dbg !455
  tail call void @llvm.dbg.value(metadata double %7, metadata !448, metadata !DIExpression()), !dbg !451
  %8 = fmul double %1, 0x401921FB54442D18, !dbg !456
  %9 = tail call double @sqrt(double noundef %8) #10, !dbg !457
  %10 = fdiv double 1.000000e+00, %9, !dbg !458
  tail call void @llvm.dbg.value(metadata double %10, metadata !449, metadata !DIExpression()), !dbg !451
  %11 = fdiv double %5, %1, !dbg !459
  tail call void @llvm.dbg.value(metadata double %11, metadata !450, metadata !DIExpression()), !dbg !451
  %12 = fmul double %1, 8.000000e+00, !dbg !460
  %13 = fdiv double %6, %12, !dbg !461
  %14 = fsub double 1.000000e+00, %13, !dbg !462
  %15 = fmul double %6, %7, !dbg !463
  %16 = fmul double %1, 1.280000e+02, !dbg !464
  %17 = fmul double %16, %1, !dbg !465
  %18 = fdiv double %15, %17, !dbg !466
  %19 = fadd double %14, %18, !dbg !467
  %20 = fmul double %19, %10, !dbg !468
  store double %20, ptr %2, align 8, !dbg !469, !tbaa !132
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !470
  %22 = fmul double %21, 0x3CC0000000000000, !dbg !471
  %23 = fmul double %11, 1.000000e-01, !dbg !472
  %24 = fmul double %11, %23, !dbg !473
  %25 = fmul double %11, %24, !dbg !474
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !475
  %27 = fmul double %26, %10, !dbg !476
  %28 = fadd double %27, %22, !dbg !477
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !478
  store double %28, ptr %29, align 8, !dbg !479, !tbaa !137
  ret i32 0, !dbg !480
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 !dbg !481 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !483, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata double %1, metadata !484, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !485, metadata !DIExpression()), !dbg !491
  %4 = fmul double %0, 4.000000e+00, !dbg !492
  %5 = fmul double %4, %0, !dbg !493
  tail call void @llvm.dbg.value(metadata double %5, metadata !486, metadata !DIExpression()), !dbg !491
  %6 = fadd double %5, -1.000000e+00, !dbg !494
  tail call void @llvm.dbg.value(metadata double %6, metadata !487, metadata !DIExpression()), !dbg !491
  %7 = fadd double %5, -9.000000e+00, !dbg !495
  tail call void @llvm.dbg.value(metadata double %7, metadata !488, metadata !DIExpression()), !dbg !491
  %8 = fmul double %1, 2.000000e+00, !dbg !496
  %9 = fdiv double 0x400921FB54442D18, %8, !dbg !497
  %10 = tail call double @sqrt(double noundef %9) #10, !dbg !498
  tail call void @llvm.dbg.value(metadata double %10, metadata !489, metadata !DIExpression()), !dbg !491
  %11 = fdiv double %0, %1, !dbg !499
  tail call void @llvm.dbg.value(metadata double %11, metadata !490, metadata !DIExpression()), !dbg !491
  %12 = fmul double %1, 8.000000e+00, !dbg !500
  %13 = fdiv double %6, %12, !dbg !501
  %14 = fadd double %13, 1.000000e+00, !dbg !502
  %15 = fmul double %6, %7, !dbg !503
  %16 = fmul double %1, 1.280000e+02, !dbg !504
  %17 = fmul double %16, %1, !dbg !505
  %18 = fdiv double %15, %17, !dbg !506
  %19 = fadd double %14, %18, !dbg !507
  %20 = fmul double %19, %10, !dbg !508
  store double %20, ptr %2, align 8, !dbg !509, !tbaa !132
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !510
  %22 = fmul double %21, 0x3CC0000000000000, !dbg !511
  %23 = fmul double %11, 1.000000e-01, !dbg !512
  %24 = fmul double %11, %23, !dbg !513
  %25 = fmul double %11, %24, !dbg !514
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !515
  %27 = fmul double %26, %10, !dbg !516
  %28 = fadd double %27, %22, !dbg !517
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !518
  store double %28, ptr %29, align 8, !dbg !519, !tbaa !137
  ret i32 0, !dbg !520
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !521 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !542
  call void @llvm.dbg.assign(metadata i1 undef, metadata !532, metadata !DIExpression(), metadata !542, metadata ptr %4, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata double %0, metadata !523, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata double %1, metadata !524, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !525, metadata !DIExpression()), !dbg !543
  %5 = fdiv double %1, %0, !dbg !544
  tail call void @llvm.dbg.value(metadata double %5, metadata !527, metadata !DIExpression()), !dbg !543
  %6 = tail call double @hypot(double noundef 1.000000e+00, double noundef %5) #10, !dbg !545
  tail call void @llvm.dbg.value(metadata double %6, metadata !528, metadata !DIExpression()), !dbg !543
  %7 = fmul double %0, 0x401921FB54442D18, !dbg !546
  %8 = fmul double %7, %6, !dbg !547
  %9 = tail call double @sqrt(double noundef %8) #10, !dbg !548
  %10 = fdiv double 1.000000e+00, %9, !dbg !549
  tail call void @llvm.dbg.value(metadata double %10, metadata !529, metadata !DIExpression()), !dbg !543
  %11 = fadd double %6, 1.000000e+00, !dbg !550
  %12 = fdiv double %5, %11, !dbg !551
  %13 = tail call double @log(double noundef %12) #10, !dbg !552
  tail call void @llvm.dbg.value(metadata double poison, metadata !530, metadata !DIExpression()), !dbg !543
  %14 = fcmp olt double %5, 0x410428A2F98D7287, !dbg !553
  br i1 %14, label %15, label %19, !dbg !554

15:                                               ; preds = %3
  %16 = fadd double %6, %13, !dbg !555
  tail call void @llvm.dbg.value(metadata double %16, metadata !530, metadata !DIExpression()), !dbg !543
  %17 = fsub double %16, %5, !dbg !556
  %18 = fmul double %17, %0, !dbg !557
  br label %27, !dbg !554

19:                                               ; preds = %3
  %20 = fmul double %0, -5.000000e-01, !dbg !558
  %21 = fdiv double %20, %5, !dbg !559
  %22 = fmul double %5, 1.200000e+01, !dbg !560
  %23 = fmul double %5, %22, !dbg !561
  %24 = fdiv double 1.000000e+00, %23, !dbg !562
  %25 = fsub double 1.000000e+00, %24, !dbg !563
  %26 = fmul double %21, %25, !dbg !564
  br label %27, !dbg !554

27:                                               ; preds = %19, %15
  %28 = phi double [ %18, %15 ], [ %26, %19 ], !dbg !554
  tail call void @llvm.dbg.value(metadata double %28, metadata !531, metadata !DIExpression()), !dbg !543
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10, !dbg !565
  %29 = call i32 @gsl_sf_exp_e(double noundef %28, ptr noundef nonnull %4) #10, !dbg !566
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !533, metadata !DIExpression()), !dbg !543
  %30 = icmp eq i32 %29, 0, !dbg !567
  br i1 %30, label %31, label %116, !dbg !568

31:                                               ; preds = %27
  %32 = fdiv double 1.000000e+00, %6, !dbg !569
  tail call void @llvm.dbg.value(metadata double %32, metadata !534, metadata !DIExpression()), !dbg !570
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i32 1, metadata !526, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata i64 1, metadata !526, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata double %32, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 2, metadata !526, metadata !DIExpression()), !dbg !543
  %33 = fmul double %32, %32, !dbg !571
  tail call void @llvm.dbg.value(metadata double %33, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 3, metadata !526, metadata !DIExpression()), !dbg !543
  %34 = fmul double %32, %33, !dbg !571
  tail call void @llvm.dbg.value(metadata double %34, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 4, metadata !526, metadata !DIExpression()), !dbg !543
  %35 = fmul double %32, %34, !dbg !571
  tail call void @llvm.dbg.value(metadata double %35, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 5, metadata !526, metadata !DIExpression()), !dbg !543
  %36 = fmul double %32, %35, !dbg !571
  tail call void @llvm.dbg.value(metadata double %36, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 6, metadata !526, metadata !DIExpression()), !dbg !543
  %37 = fmul double %32, %36, !dbg !571
  tail call void @llvm.dbg.value(metadata double %37, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 7, metadata !526, metadata !DIExpression()), !dbg !543
  %38 = fmul double %32, %37, !dbg !571
  tail call void @llvm.dbg.value(metadata double %38, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 8, metadata !526, metadata !DIExpression()), !dbg !543
  %39 = fmul double %32, %38, !dbg !571
  tail call void @llvm.dbg.value(metadata double %39, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 9, metadata !526, metadata !DIExpression()), !dbg !543
  %40 = fmul double %32, %39, !dbg !571
  tail call void @llvm.dbg.value(metadata double %40, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 10, metadata !526, metadata !DIExpression()), !dbg !543
  %41 = fmul double %32, %40, !dbg !571
  tail call void @llvm.dbg.value(metadata double %41, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 640, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 11, metadata !526, metadata !DIExpression()), !dbg !543
  %42 = fmul double %32, %41, !dbg !571
  tail call void @llvm.dbg.value(metadata double %42, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 704, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 12, metadata !526, metadata !DIExpression()), !dbg !543
  %43 = fmul double %32, %42, !dbg !571
  tail call void @llvm.dbg.value(metadata double %43, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 768, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 13, metadata !526, metadata !DIExpression()), !dbg !543
  %44 = fmul double %32, %43, !dbg !571
  tail call void @llvm.dbg.value(metadata double %44, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 832, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 14, metadata !526, metadata !DIExpression()), !dbg !543
  %45 = fmul double %32, %44, !dbg !571
  tail call void @llvm.dbg.value(metadata double %45, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 896, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 15, metadata !526, metadata !DIExpression()), !dbg !543
  %46 = fmul double %32, %45, !dbg !571
  tail call void @llvm.dbg.value(metadata double %46, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 960, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 16, metadata !526, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !574, metadata !DIExpression()), !dbg !580
  %47 = fmul double %32, 3.000000e+00, !dbg !582
  %48 = fmul double %34, 5.000000e+00, !dbg !583
  %49 = fsub double %47, %48, !dbg !584
  %50 = fdiv double %49, 2.400000e+01, !dbg !585
  %51 = fdiv double %50, %0, !dbg !586
  %52 = fadd double %51, 1.000000e+00, !dbg !587
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !588, metadata !DIExpression()), !dbg !591
  %53 = fmul double %33, 8.100000e+01, !dbg !593
  %54 = fmul double %35, 4.620000e+02, !dbg !594
  %55 = fsub double %53, %54, !dbg !595
  %56 = fmul double %37, 3.850000e+02, !dbg !596
  %57 = fadd double %55, %56, !dbg !597
  %58 = fdiv double %57, 1.152000e+03, !dbg !598
  %59 = fmul double %0, %0, !dbg !599
  %60 = fdiv double %58, %59, !dbg !600
  %61 = fadd double %52, %60, !dbg !601
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !602, metadata !DIExpression()), !dbg !605
  %62 = fmul double %34, 3.037500e+04, !dbg !607
  %63 = fmul double %36, 3.696030e+05, !dbg !608
  %64 = fsub double %62, %63, !dbg !609
  %65 = fmul double %38, 7.657650e+05, !dbg !610
  %66 = fadd double %64, %65, !dbg !611
  %67 = fmul double %40, 4.254250e+05, !dbg !612
  %68 = fsub double %66, %67, !dbg !613
  %69 = fdiv double %68, 4.147200e+05, !dbg !614
  %70 = fmul double %59, %0, !dbg !615
  %71 = fdiv double %69, %70, !dbg !616
  %72 = fadd double %61, %71, !dbg !617
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !618, metadata !DIExpression()), !dbg !621
  %73 = fmul double %35, 0x4151087940000000, !dbg !623
  %74 = fmul double %37, 0x419670BB30000000, !dbg !624
  %75 = fsub double %73, %74, !dbg !625
  %76 = fmul double %39, 0x41B4DB647E000000, !dbg !626
  %77 = fadd double %75, %76, !dbg !627
  %78 = fmul double %41, 0x41BA98410C000000, !dbg !628
  %79 = fsub double %77, %78, !dbg !629
  %80 = fmul double %43, 0x41A6298B8A000000, !dbg !630
  %81 = fadd double %79, %80, !dbg !631
  %82 = fdiv double %81, 0x4182FC0000000000, !dbg !632
  %83 = fmul double %70, %0, !dbg !633
  %84 = fdiv double %82, %83, !dbg !634
  %85 = fadd double %72, %84, !dbg !635
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !636, metadata !DIExpression()), !dbg !639
  %86 = fmul double %36, 0x41D6A2A921400000, !dbg !641
  %87 = fmul double %38, 0x4226F3764DFE0000, !dbg !642
  %88 = fsub double %86, %87, !dbg !643
  %89 = fmul double %40, 0x42508F607E348000, !dbg !644
  %90 = fadd double %88, %89, !dbg !645
  %91 = fmul double %42, 0x4261DFAB376BC000, !dbg !646
  %92 = fsub double %90, %91, !dbg !647
  %93 = fmul double %44, 0x426079C28C072000, !dbg !648
  %94 = fadd double %92, %93, !dbg !649
  %95 = fmul double %46, 0x4245F7AE10098000, !dbg !650
  %96 = fsub double %94, %95, !dbg !651
  %97 = fdiv double %96, 0x41F8EAC000000000, !dbg !652
  %98 = fmul double %83, %0, !dbg !653
  %99 = fdiv double %97, %98, !dbg !654
  %100 = fadd double %85, %99, !dbg !655
  tail call void @llvm.dbg.value(metadata double %100, metadata !537, metadata !DIExpression()), !dbg !570
  %101 = load double, ptr %4, align 8, !dbg !656, !tbaa !132
  %102 = fmul double %10, %101, !dbg !657
  %103 = fmul double %102, %100, !dbg !658
  store double %103, ptr %2, align 8, !dbg !659, !tbaa !132
  %104 = fmul double %98, %0, !dbg !660
  %105 = fdiv double %102, %104, !dbg !661
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !662
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !663
  %108 = load double, ptr %107, align 8, !dbg !663, !tbaa !137
  %109 = fmul double %10, %108, !dbg !664
  %110 = call double @llvm.fabs.f64(double %100), !dbg !665
  %111 = fmul double %109, %110, !dbg !666
  %112 = fadd double %105, %111, !dbg !667
  %113 = call double @llvm.fabs.f64(double %103), !dbg !668
  %114 = fmul double %113, 0x3CC0000000000000, !dbg !669
  %115 = fadd double %112, %114, !dbg !670
  store double %115, ptr %106, align 8, !dbg !670, !tbaa !137
  br label %117

116:                                              ; preds = %27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !671
  br label %117, !dbg !673

117:                                              ; preds = %116, %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10, !dbg !674
  ret i32 %29, !dbg !674
}

; Function Attrs: nounwind
declare !dbg !675 double @hypot(double noundef, double noundef) local_unnamed_addr #7

declare !dbg !676 i32 @gsl_sf_exp_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !679 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !697
  call void @llvm.dbg.assign(metadata i1 undef, metadata !690, metadata !DIExpression(), metadata !697, metadata ptr %4, metadata !DIExpression()), !dbg !698
  tail call void @llvm.dbg.value(metadata double %0, metadata !681, metadata !DIExpression()), !dbg !698
  tail call void @llvm.dbg.value(metadata double %1, metadata !682, metadata !DIExpression()), !dbg !698
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !683, metadata !DIExpression()), !dbg !698
  %5 = fdiv double %1, %0, !dbg !699
  tail call void @llvm.dbg.value(metadata double %5, metadata !685, metadata !DIExpression()), !dbg !698
  %6 = tail call double @hypot(double noundef 1.000000e+00, double noundef %5) #10, !dbg !700
  tail call void @llvm.dbg.value(metadata double %6, metadata !686, metadata !DIExpression()), !dbg !698
  %7 = fmul double %0, 2.000000e+00, !dbg !701
  %8 = fmul double %7, %6, !dbg !702
  %9 = fdiv double 0x400921FB54442D18, %8, !dbg !703
  %10 = tail call double @sqrt(double noundef %9) #10, !dbg !704
  tail call void @llvm.dbg.value(metadata double %10, metadata !687, metadata !DIExpression()), !dbg !698
  %11 = fadd double %6, 1.000000e+00, !dbg !705
  %12 = fdiv double %5, %11, !dbg !706
  %13 = tail call double @log(double noundef %12) #10, !dbg !707
  tail call void @llvm.dbg.value(metadata double poison, metadata !688, metadata !DIExpression()), !dbg !698
  %14 = fcmp olt double %5, 0x410428A2F98D7287, !dbg !708
  br i1 %14, label %15, label %19, !dbg !709

15:                                               ; preds = %3
  %16 = fadd double %6, %13, !dbg !710
  tail call void @llvm.dbg.value(metadata double %16, metadata !688, metadata !DIExpression()), !dbg !698
  %17 = fsub double %5, %16, !dbg !711
  %18 = fmul double %17, %0, !dbg !712
  br label %27, !dbg !709

19:                                               ; preds = %3
  %20 = fmul double %0, 5.000000e-01, !dbg !713
  %21 = fdiv double %20, %5, !dbg !714
  %22 = fmul double %5, 1.200000e+01, !dbg !715
  %23 = fmul double %5, %22, !dbg !716
  %24 = fdiv double 1.000000e+00, %23, !dbg !717
  %25 = fadd double %24, 1.000000e+00, !dbg !718
  %26 = fmul double %21, %25, !dbg !719
  br label %27, !dbg !709

27:                                               ; preds = %19, %15
  %28 = phi double [ %18, %15 ], [ %26, %19 ], !dbg !709
  tail call void @llvm.dbg.value(metadata double %28, metadata !689, metadata !DIExpression()), !dbg !698
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10, !dbg !720
  %29 = call i32 @gsl_sf_exp_e(double noundef %28, ptr noundef nonnull %4) #10, !dbg !721
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !691, metadata !DIExpression()), !dbg !698
  %30 = icmp eq i32 %29, 0, !dbg !722
  br i1 %30, label %31, label %116, !dbg !723

31:                                               ; preds = %27
  %32 = fdiv double 1.000000e+00, %6, !dbg !724
  tail call void @llvm.dbg.value(metadata double %32, metadata !692, metadata !DIExpression()), !dbg !725
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i32 1, metadata !684, metadata !DIExpression()), !dbg !698
  tail call void @llvm.dbg.value(metadata i64 1, metadata !684, metadata !DIExpression()), !dbg !698
  tail call void @llvm.dbg.value(metadata double %32, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 2, metadata !684, metadata !DIExpression()), !dbg !698
  %33 = fmul double %32, %32, !dbg !726
  tail call void @llvm.dbg.value(metadata double %33, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 3, metadata !684, metadata !DIExpression()), !dbg !698
  %34 = fmul double %32, %33, !dbg !726
  tail call void @llvm.dbg.value(metadata double %34, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 4, metadata !684, metadata !DIExpression()), !dbg !698
  %35 = fmul double %32, %34, !dbg !726
  tail call void @llvm.dbg.value(metadata double %35, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 5, metadata !684, metadata !DIExpression()), !dbg !698
  %36 = fmul double %32, %35, !dbg !726
  tail call void @llvm.dbg.value(metadata double %36, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 6, metadata !684, metadata !DIExpression()), !dbg !698
  %37 = fmul double %32, %36, !dbg !726
  tail call void @llvm.dbg.value(metadata double %37, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 7, metadata !684, metadata !DIExpression()), !dbg !698
  %38 = fmul double %32, %37, !dbg !726
  tail call void @llvm.dbg.value(metadata double %38, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 8, metadata !684, metadata !DIExpression()), !dbg !698
  %39 = fmul double %32, %38, !dbg !726
  tail call void @llvm.dbg.value(metadata double %39, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 9, metadata !684, metadata !DIExpression()), !dbg !698
  %40 = fmul double %32, %39, !dbg !726
  tail call void @llvm.dbg.value(metadata double %40, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 10, metadata !684, metadata !DIExpression()), !dbg !698
  %41 = fmul double %32, %40, !dbg !726
  tail call void @llvm.dbg.value(metadata double %41, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 640, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 11, metadata !684, metadata !DIExpression()), !dbg !698
  %42 = fmul double %32, %41, !dbg !726
  tail call void @llvm.dbg.value(metadata double %42, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 704, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 12, metadata !684, metadata !DIExpression()), !dbg !698
  %43 = fmul double %32, %42, !dbg !726
  tail call void @llvm.dbg.value(metadata double %43, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 768, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 13, metadata !684, metadata !DIExpression()), !dbg !698
  %44 = fmul double %32, %43, !dbg !726
  tail call void @llvm.dbg.value(metadata double %44, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 832, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 14, metadata !684, metadata !DIExpression()), !dbg !698
  %45 = fmul double %32, %44, !dbg !726
  tail call void @llvm.dbg.value(metadata double %45, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 896, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 15, metadata !684, metadata !DIExpression()), !dbg !698
  %46 = fmul double %32, %45, !dbg !726
  tail call void @llvm.dbg.value(metadata double %46, metadata !696, metadata !DIExpression(DW_OP_LLVM_fragment, 960, 64)), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 16, metadata !684, metadata !DIExpression()), !dbg !698
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !574, metadata !DIExpression()), !dbg !729
  %47 = fmul double %32, 3.000000e+00, !dbg !731
  %48 = fmul double %34, 5.000000e+00, !dbg !732
  %49 = fsub double %47, %48, !dbg !733
  %50 = fdiv double %49, 2.400000e+01, !dbg !734
  %51 = fdiv double %50, %0, !dbg !735
  %52 = fsub double 1.000000e+00, %51, !dbg !736
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !588, metadata !DIExpression()), !dbg !737
  %53 = fmul double %33, 8.100000e+01, !dbg !739
  %54 = fmul double %35, 4.620000e+02, !dbg !740
  %55 = fsub double %53, %54, !dbg !741
  %56 = fmul double %37, 3.850000e+02, !dbg !742
  %57 = fadd double %55, %56, !dbg !743
  %58 = fdiv double %57, 1.152000e+03, !dbg !744
  %59 = fmul double %0, %0, !dbg !745
  %60 = fdiv double %58, %59, !dbg !746
  %61 = fadd double %52, %60, !dbg !747
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !602, metadata !DIExpression()), !dbg !748
  %62 = fmul double %34, 3.037500e+04, !dbg !750
  %63 = fmul double %36, 3.696030e+05, !dbg !751
  %64 = fsub double %62, %63, !dbg !752
  %65 = fmul double %38, 7.657650e+05, !dbg !753
  %66 = fadd double %64, %65, !dbg !754
  %67 = fmul double %40, 4.254250e+05, !dbg !755
  %68 = fsub double %66, %67, !dbg !756
  %69 = fdiv double %68, 4.147200e+05, !dbg !757
  %70 = fmul double %59, %0, !dbg !758
  %71 = fdiv double %69, %70, !dbg !759
  %72 = fsub double %61, %71, !dbg !760
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !618, metadata !DIExpression()), !dbg !761
  %73 = fmul double %35, 0x4151087940000000, !dbg !763
  %74 = fmul double %37, 0x419670BB30000000, !dbg !764
  %75 = fsub double %73, %74, !dbg !765
  %76 = fmul double %39, 0x41B4DB647E000000, !dbg !766
  %77 = fadd double %75, %76, !dbg !767
  %78 = fmul double %41, 0x41BA98410C000000, !dbg !768
  %79 = fsub double %77, %78, !dbg !769
  %80 = fmul double %43, 0x41A6298B8A000000, !dbg !770
  %81 = fadd double %79, %80, !dbg !771
  %82 = fdiv double %81, 0x4182FC0000000000, !dbg !772
  %83 = fmul double %70, %0, !dbg !773
  %84 = fdiv double %82, %83, !dbg !774
  %85 = fadd double %72, %84, !dbg !775
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !636, metadata !DIExpression()), !dbg !776
  %86 = fmul double %36, 0x41D6A2A921400000, !dbg !778
  %87 = fmul double %38, 0x4226F3764DFE0000, !dbg !779
  %88 = fsub double %86, %87, !dbg !780
  %89 = fmul double %40, 0x42508F607E348000, !dbg !781
  %90 = fadd double %88, %89, !dbg !782
  %91 = fmul double %42, 0x4261DFAB376BC000, !dbg !783
  %92 = fsub double %90, %91, !dbg !784
  %93 = fmul double %44, 0x426079C28C072000, !dbg !785
  %94 = fadd double %92, %93, !dbg !786
  %95 = fmul double %46, 0x4245F7AE10098000, !dbg !787
  %96 = fsub double %94, %95, !dbg !788
  %97 = fdiv double %96, 0x41F8EAC000000000, !dbg !789
  %98 = fmul double %83, %0, !dbg !790
  %99 = fdiv double %97, %98, !dbg !791
  %100 = fsub double %85, %99, !dbg !792
  tail call void @llvm.dbg.value(metadata double %100, metadata !695, metadata !DIExpression()), !dbg !725
  %101 = load double, ptr %4, align 8, !dbg !793, !tbaa !132
  %102 = fmul double %10, %101, !dbg !794
  %103 = fmul double %102, %100, !dbg !795
  store double %103, ptr %2, align 8, !dbg !796, !tbaa !132
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !797
  %105 = load double, ptr %104, align 8, !dbg !797, !tbaa !137
  %106 = fmul double %10, %105, !dbg !798
  %107 = call double @llvm.fabs.f64(double %100), !dbg !799
  %108 = fmul double %106, %107, !dbg !800
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !801
  %110 = fmul double %98, %0, !dbg !802
  %111 = fdiv double %102, %110, !dbg !803
  %112 = fadd double %111, %108, !dbg !804
  %113 = call double @llvm.fabs.f64(double %103), !dbg !805
  %114 = fmul double %113, 0x3CC0000000000000, !dbg !806
  %115 = fadd double %112, %114, !dbg !807
  store double %115, ptr %109, align 8, !dbg !807, !tbaa !137
  br label %117

116:                                              ; preds = %27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !808
  br label %117, !dbg !810

117:                                              ; preds = %116, %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10, !dbg !811
  ret i32 %29, !dbg !811
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_JY_mu_restricted(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !dbg !812 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !848
  call void @llvm.dbg.assign(metadata i1 undef, metadata !827, metadata !DIExpression(), metadata !848, metadata ptr %7, metadata !DIExpression()), !dbg !849
  %8 = alloca double, align 8, !DIAssignID !850
  call void @llvm.dbg.assign(metadata i1 undef, metadata !833, metadata !DIExpression(), metadata !850, metadata ptr %8, metadata !DIExpression()), !dbg !851
  %9 = alloca double, align 8, !DIAssignID !852
  call void @llvm.dbg.assign(metadata i1 undef, metadata !836, metadata !DIExpression(), metadata !852, metadata ptr %9, metadata !DIExpression()), !dbg !851
  %10 = alloca double, align 8, !DIAssignID !853
  call void @llvm.dbg.assign(metadata i1 undef, metadata !837, metadata !DIExpression(), metadata !853, metadata ptr %10, metadata !DIExpression()), !dbg !851
  %11 = alloca double, align 8, !DIAssignID !854
  call void @llvm.dbg.assign(metadata i1 undef, metadata !838, metadata !DIExpression(), metadata !854, metadata ptr %11, metadata !DIExpression()), !dbg !851
  tail call void @llvm.dbg.value(metadata double %0, metadata !816, metadata !DIExpression()), !dbg !855
  tail call void @llvm.dbg.value(metadata double %1, metadata !817, metadata !DIExpression()), !dbg !855
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !818, metadata !DIExpression()), !dbg !855
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !819, metadata !DIExpression()), !dbg !855
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !820, metadata !DIExpression()), !dbg !855
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !821, metadata !DIExpression()), !dbg !855
  %12 = fcmp olt double %1, 0.000000e+00, !dbg !856
  %13 = tail call double @llvm.fabs.f64(double %0)
  %14 = fcmp ogt double %13, 5.000000e-01
  %15 = or i1 %12, %14, !dbg !857
  br i1 %15, label %16, label %17, !dbg !857

16:                                               ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !858
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !860
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !861
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !862
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 1) #10, !dbg !863
  br label %104, !dbg !863

17:                                               ; preds = %6
  %18 = fcmp oeq double %1, 0.000000e+00, !dbg !865
  br i1 %18, label %19, label %23, !dbg !866

19:                                               ; preds = %17
  %20 = fcmp oeq double %0, 0.000000e+00, !dbg !867
  %21 = select i1 %20, double 1.000000e+00, double 0.000000e+00, !dbg !870
  store double %21, ptr %2, align 8, !dbg !871
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !871
  store double 0.000000e+00, ptr %22, align 8, !dbg !871
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !873
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !874
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 464, i32 noundef 1) #10, !dbg !875
  br label %104, !dbg !875

23:                                               ; preds = %17
  %24 = fcmp olt double %1, 2.000000e+00, !dbg !877
  br i1 %24, label %25, label %51, !dbg !878

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10, !dbg !879
  %26 = fadd double %0, 1.000000e+00, !dbg !880
  %27 = tail call i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %26, double noundef %1, i32 noundef -1, i32 noundef 100, double noundef 0x3CB0000000000000, ptr noundef %3), !dbg !881
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !830, metadata !DIExpression()), !dbg !849
  %28 = fadd double %0, 2.000000e+00, !dbg !882
  %29 = call i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %28, double noundef %1, i32 noundef -1, i32 noundef 100, double noundef 0x3CB0000000000000, ptr noundef nonnull %7), !dbg !883
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !831, metadata !DIExpression()), !dbg !849
  %30 = fmul double %26, 2.000000e+00, !dbg !884
  %31 = fdiv double %30, %1, !dbg !885
  tail call void @llvm.dbg.value(metadata double %31, metadata !832, metadata !DIExpression()), !dbg !849
  %32 = load double, ptr %3, align 8, !dbg !886, !tbaa !132
  %33 = fmul double %31, %32, !dbg !887
  %34 = load double, ptr %7, align 8, !dbg !888, !tbaa !132
  %35 = fsub double %33, %34, !dbg !889
  store double %35, ptr %2, align 8, !dbg !890, !tbaa !132
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !891
  %37 = load double, ptr %36, align 8, !dbg !891, !tbaa !137
  %38 = fmul double %31, %37, !dbg !892
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !893
  %40 = load double, ptr %39, align 8, !dbg !893, !tbaa !137
  %41 = fadd double %38, %40, !dbg !894
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !895
  %43 = call double @llvm.fabs.f64(double %35), !dbg !896
  %44 = fmul double %43, 0x3CC0000000000000, !dbg !897
  %45 = fadd double %44, %41, !dbg !898
  store double %45, ptr %42, align 8, !dbg !898, !tbaa !137
  %46 = icmp eq i32 %27, 0, !dbg !899
  %47 = select i1 %46, i32 %29, i32 %27, !dbg !899
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !826, metadata !DIExpression()), !dbg !900
  %48 = call i32 @gsl_sf_bessel_Y_temme(double noundef %0, double noundef %1, ptr noundef %4, ptr noundef %5) #10, !dbg !901
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !822, metadata !DIExpression()), !dbg !900
  %49 = icmp eq i32 %47, 0, !dbg !902
  %50 = select i1 %49, i32 %48, i32 %47, !dbg !902
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10, !dbg !903
  br label %104

51:                                               ; preds = %23
  %52 = fcmp olt double %1, 1.000000e+03, !dbg !904
  br i1 %52, label %53, label %96, !dbg !905

53:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10, !dbg !906
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10, !dbg !906
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10, !dbg !907
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10, !dbg !908
  %54 = call i32 @gsl_sf_bessel_J_CF1(double noundef %0, double noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %11), !dbg !909, !range !910
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !839, metadata !DIExpression()), !dbg !851
  %55 = call i32 @gsl_sf_bessel_JY_steed_CF2(double noundef %0, double noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9), !dbg !911, !range !910
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !840, metadata !DIExpression()), !dbg !851
  %56 = fdiv double %0, %1, !dbg !912
  %57 = load double, ptr %10, align 8, !dbg !913, !tbaa !394
  %58 = fsub double %56, %57, !dbg !914
  tail call void @llvm.dbg.value(metadata double %58, metadata !841, metadata !DIExpression()), !dbg !851
  %59 = load double, ptr %8, align 8, !dbg !915, !tbaa !394
  %60 = fsub double %59, %58, !dbg !916
  %61 = load double, ptr %9, align 8, !dbg !917, !tbaa !394
  %62 = fdiv double %60, %61, !dbg !918
  tail call void @llvm.dbg.value(metadata double %62, metadata !842, metadata !DIExpression()), !dbg !851
  %63 = load double, ptr %11, align 8, !dbg !919, !tbaa !394
  %64 = fmul double %1, 0x400921FB54442D18, !dbg !920
  %65 = fdiv double 2.000000e+00, %64, !dbg !921
  %66 = fmul double %60, %62, !dbg !922
  %67 = fadd double %61, %66, !dbg !923
  %68 = fdiv double %65, %67, !dbg !924
  %69 = tail call double @sqrt(double noundef %68) #10, !dbg !925
  %70 = fmul double %63, %69, !dbg !926
  store double %70, ptr %2, align 8, !dbg !927, !tbaa !132
  %71 = tail call double @llvm.fabs.f64(double %70), !dbg !928
  %72 = fmul double %71, 0x3CD0000000000000, !dbg !929
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !930
  store double %72, ptr %73, align 8, !dbg !931, !tbaa !137
  %74 = fmul double %57, %70, !dbg !932
  store double %74, ptr %3, align 8, !dbg !933, !tbaa !132
  %75 = tail call double @llvm.fabs.f64(double %57), !dbg !934
  %76 = fmul double %75, %72, !dbg !935
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !936
  store double %76, ptr %77, align 8, !dbg !937, !tbaa !137
  %78 = load double, ptr %2, align 8, !dbg !938, !tbaa !132
  %79 = fmul double %62, %78, !dbg !939
  store double %79, ptr %4, align 8, !dbg !940, !tbaa !132
  %80 = tail call double @llvm.fabs.f64(double %62), !dbg !941
  %81 = load double, ptr %73, align 8, !dbg !942, !tbaa !137
  %82 = fmul double %80, %81, !dbg !943
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !944
  store double %82, ptr %83, align 8, !dbg !945, !tbaa !137
  %84 = fsub double %56, %59, !dbg !946
  %85 = fdiv double %61, %62, !dbg !947
  %86 = fsub double %84, %85, !dbg !948
  %87 = fmul double %86, %79, !dbg !949
  store double %87, ptr %5, align 8, !dbg !950, !tbaa !132
  %88 = tail call double @llvm.fabs.f64(double %86), !dbg !951
  %89 = fmul double %88, %82, !dbg !952
  %90 = tail call double @llvm.fabs.f64(double %87), !dbg !953
  %91 = fmul double %90, 0x3CD0000000000000, !dbg !954
  %92 = fadd double %89, %91, !dbg !955
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !956
  store double %92, ptr %93, align 8, !dbg !957, !tbaa !137
  %94 = icmp eq i32 %54, 0, !dbg !958
  %95 = select i1 %94, i32 %55, i32 %54, !dbg !958
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10, !dbg !959
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10, !dbg !959
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10, !dbg !959
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10, !dbg !959
  br label %104

96:                                               ; preds = %51
  %97 = tail call i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef %0, double noundef %1, ptr noundef %2), !dbg !960
  tail call void @llvm.dbg.value(metadata i32 0, metadata !843, metadata !DIExpression()), !dbg !961
  %98 = fadd double %0, 1.000000e+00, !dbg !962
  %99 = tail call i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef %98, double noundef %1, ptr noundef %3), !dbg !963
  tail call void @llvm.dbg.value(metadata i32 0, metadata !845, metadata !DIExpression()), !dbg !961
  %100 = tail call i32 @gsl_sf_bessel_Ynu_asympx_e(double noundef %0, double noundef %1, ptr noundef %4), !dbg !964
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !846, metadata !DIExpression()), !dbg !961
  %101 = tail call i32 @gsl_sf_bessel_Ynu_asympx_e(double noundef %98, double noundef %1, ptr noundef %5), !dbg !965
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !847, metadata !DIExpression()), !dbg !961
  tail call void @llvm.dbg.value(metadata i32 0, metadata !826, metadata !DIExpression()), !dbg !900
  %102 = icmp eq i32 %100, 0, !dbg !966
  %103 = select i1 %102, i32 %101, i32 %100, !dbg !966
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !822, metadata !DIExpression()), !dbg !900
  br label %104

104:                                              ; preds = %25, %53, %96, %16, %19
  %105 = phi i32 [ 1, %16 ], [ 1, %19 ], [ %50, %25 ], [ %95, %53 ], [ %103, %96 ], !dbg !967
  ret i32 %105, !dbg !968
}

declare !dbg !969 i32 @gsl_sf_bessel_Y_temme(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_J_CF1(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !973 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !977, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %1, metadata !978, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !979, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !980, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !981, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !982, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !983, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata i32 1, metadata !984, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !985, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !986, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !987, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !988, metadata !DIExpression()), !dbg !999
  %5 = fadd double %0, 1.000000e+00, !dbg !1000
  %6 = fmul double %5, 2.000000e+00, !dbg !1001
  %7 = fdiv double %1, %6, !dbg !1002
  tail call void @llvm.dbg.value(metadata double %7, metadata !989, metadata !DIExpression()), !dbg !999
  %8 = fadd double %7, 0.000000e+00, !dbg !1003
  tail call void @llvm.dbg.value(metadata double %8, metadata !990, metadata !DIExpression()), !dbg !999
  %9 = fmul double %7, 0.000000e+00, !dbg !1004
  %10 = fadd double %9, 1.000000e+00, !dbg !1005
  tail call void @llvm.dbg.value(metadata double %10, metadata !991, metadata !DIExpression()), !dbg !999
  %11 = fdiv double %8, %10, !dbg !1006
  tail call void @llvm.dbg.value(metadata double %11, metadata !993, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %7, metadata !994, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !995, metadata !DIExpression()), !dbg !999
  %12 = fneg double %1
  %13 = fmul double %12, %1
  br label %14, !dbg !1007

14:                                               ; preds = %56, %4
  %15 = phi double [ 0.000000e+00, %4 ], [ %57, %56 ], !dbg !999
  %16 = phi double [ 1.000000e+00, %4 ], [ %58, %56 ], !dbg !999
  %17 = phi double [ %8, %4 ], [ %59, %56 ], !dbg !999
  %18 = phi double [ %10, %4 ], [ %60, %56 ], !dbg !999
  %19 = phi double [ %11, %4 ], [ %61, %56 ], !dbg !999
  %20 = phi double [ %7, %4 ], [ %66, %56 ], !dbg !999
  %21 = phi double [ 1.000000e+00, %4 ], [ %69, %56 ], !dbg !999
  %22 = phi i32 [ 1, %4 ], [ %26, %56 ], !dbg !999
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !984, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %21, metadata !995, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %20, metadata !994, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %19, metadata !993, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %18, metadata !991, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %17, metadata !990, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %16, metadata !988, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %15, metadata !987, metadata !DIExpression()), !dbg !999
  %23 = icmp eq i32 %22, 10000, !dbg !1008
  br i1 %23, label %24, label %25, !dbg !1007

24:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !984, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %21, metadata !995, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %19, metadata !993, metadata !DIExpression()), !dbg !999
  store double %19, ptr %2, align 8, !dbg !1009, !tbaa !394
  store double %21, ptr %3, align 8, !dbg !1010, !tbaa !394
  br label %75, !dbg !1011

25:                                               ; preds = %14
  %26 = add nuw nsw i32 %22, 1, !dbg !1012
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !984, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %15, metadata !985, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %16, metadata !986, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %17, metadata !987, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %18, metadata !988, metadata !DIExpression()), !dbg !999
  %27 = sitofp i32 %26 to double, !dbg !1013
  %28 = fadd double %27, %0, !dbg !1014
  %29 = fadd double %28, -1.000000e+00, !dbg !1015
  %30 = fmul double %29, 4.000000e+00, !dbg !1016
  %31 = fmul double %28, %30, !dbg !1017
  %32 = fdiv double %13, %31, !dbg !1018
  tail call void @llvm.dbg.value(metadata double %32, metadata !992, metadata !DIExpression()), !dbg !999
  %33 = fmul double %15, %32, !dbg !1019
  %34 = fadd double %17, %33, !dbg !1020
  tail call void @llvm.dbg.value(metadata double %34, metadata !990, metadata !DIExpression()), !dbg !999
  %35 = fmul double %16, %32, !dbg !1021
  %36 = fadd double %18, %35, !dbg !1022
  tail call void @llvm.dbg.value(metadata double %36, metadata !991, metadata !DIExpression()), !dbg !999
  %37 = tail call double @llvm.fabs.f64(double %34), !dbg !1023
  %38 = fcmp ogt double %37, 0x5FEFFFFFFFFFFFFF, !dbg !1025
  br i1 %38, label %42, label %39, !dbg !1026

39:                                               ; preds = %25
  %40 = tail call double @llvm.fabs.f64(double %36), !dbg !1027
  %41 = fcmp ogt double %40, 0x5FEFFFFFFFFFFFFF, !dbg !1028
  br i1 %41, label %42, label %47, !dbg !1029

42:                                               ; preds = %39, %25
  %43 = fdiv double %34, 0x5FEFFFFFFFFFFFFF, !dbg !1030
  tail call void @llvm.dbg.value(metadata double %43, metadata !990, metadata !DIExpression()), !dbg !999
  %44 = fdiv double %36, 0x5FEFFFFFFFFFFFFF, !dbg !1032
  tail call void @llvm.dbg.value(metadata double %44, metadata !991, metadata !DIExpression()), !dbg !999
  %45 = fdiv double %17, 0x5FEFFFFFFFFFFFFF, !dbg !1033
  tail call void @llvm.dbg.value(metadata double %45, metadata !987, metadata !DIExpression()), !dbg !999
  %46 = fdiv double %18, 0x5FEFFFFFFFFFFFFF, !dbg !1034
  tail call void @llvm.dbg.value(metadata double %46, metadata !988, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double poison, metadata !985, metadata !DIExpression()), !dbg !999
  br label %56, !dbg !1035

47:                                               ; preds = %39
  %48 = fcmp olt double %37, 0x2000000000000000, !dbg !1036
  %49 = fcmp olt double %40, 0x2000000000000000
  %50 = or i1 %48, %49, !dbg !1038
  br i1 %50, label %51, label %56, !dbg !1038

51:                                               ; preds = %47
  %52 = fmul double %34, 0x5FE0000000000000, !dbg !1039
  tail call void @llvm.dbg.value(metadata double %52, metadata !990, metadata !DIExpression()), !dbg !999
  %53 = fmul double %36, 0x5FE0000000000000, !dbg !1041
  tail call void @llvm.dbg.value(metadata double %53, metadata !991, metadata !DIExpression()), !dbg !999
  %54 = fmul double %17, 0x5FE0000000000000, !dbg !1042
  tail call void @llvm.dbg.value(metadata double %54, metadata !987, metadata !DIExpression()), !dbg !999
  %55 = fmul double %18, 0x5FE0000000000000, !dbg !1043
  tail call void @llvm.dbg.value(metadata double %55, metadata !988, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double poison, metadata !985, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double poison, metadata !986, metadata !DIExpression()), !dbg !999
  br label %56, !dbg !1044

56:                                               ; preds = %47, %51, %42
  %57 = phi double [ %45, %42 ], [ %54, %51 ], [ %17, %47 ], !dbg !1045
  %58 = phi double [ %46, %42 ], [ %55, %51 ], [ %18, %47 ], !dbg !1045
  %59 = phi double [ %43, %42 ], [ %52, %51 ], [ %34, %47 ], !dbg !1045
  %60 = phi double [ %44, %42 ], [ %53, %51 ], [ %36, %47 ], !dbg !1045
  tail call void @llvm.dbg.value(metadata double %60, metadata !991, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %59, metadata !990, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %58, metadata !988, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %57, metadata !987, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %19, metadata !996, metadata !DIExpression()), !dbg !1045
  %61 = fdiv double %59, %60, !dbg !1046
  tail call void @llvm.dbg.value(metadata double %61, metadata !993, metadata !DIExpression()), !dbg !999
  %62 = fdiv double %19, %61, !dbg !1047
  tail call void @llvm.dbg.value(metadata double %62, metadata !998, metadata !DIExpression()), !dbg !1045
  %63 = fmul double %28, 2.000000e+00, !dbg !1048
  %64 = fdiv double %63, %1, !dbg !1049
  %65 = fsub double %64, %20, !dbg !1050
  %66 = fdiv double 1.000000e+00, %65, !dbg !1051
  tail call void @llvm.dbg.value(metadata double %66, metadata !994, metadata !DIExpression()), !dbg !999
  %67 = fcmp olt double %66, 0.000000e+00, !dbg !1052
  %68 = fneg double %21, !dbg !1054
  %69 = select i1 %67, double %68, double %21, !dbg !1054
  tail call void @llvm.dbg.value(metadata double %69, metadata !995, metadata !DIExpression()), !dbg !999
  %70 = fadd double %62, -1.000000e+00, !dbg !1055
  %71 = tail call double @llvm.fabs.f64(double %70), !dbg !1057
  %72 = fcmp olt double %71, 0x3CC0000000000000, !dbg !1058
  br i1 %72, label %73, label %14

73:                                               ; preds = %56
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !984, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %69, metadata !995, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %61, metadata !993, metadata !DIExpression()), !dbg !999
  store double %61, ptr %2, align 8, !dbg !1009, !tbaa !394
  store double %69, ptr %3, align 8, !dbg !1010, !tbaa !394
  %74 = icmp ugt i32 %22, 9998, !dbg !1059
  br i1 %74, label %75, label %76, !dbg !1011

75:                                               ; preds = %24, %73
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 584, i32 noundef 11) #10, !dbg !1061
  br label %76, !dbg !1061

76:                                               ; preds = %73, %75
  %77 = phi i32 [ 11, %75 ], [ 0, %73 ], !dbg !1063
  ret i32 %77, !dbg !1064
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_JY_steed_CF2(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !1065 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1067, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %1, metadata !1068, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1069, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1070, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !1071, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double 1.000000e-100, metadata !1072, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1073, metadata !DIExpression()), !dbg !1089
  %5 = fdiv double 1.000000e+00, %1, !dbg !1090
  tail call void @llvm.dbg.value(metadata double %5, metadata !1074, metadata !DIExpression()), !dbg !1089
  %6 = fmul double %0, %0, !dbg !1091
  %7 = fsub double 2.500000e-01, %6, !dbg !1092
  tail call void @llvm.dbg.value(metadata double %7, metadata !1075, metadata !DIExpression()), !dbg !1089
  %8 = fmul double %5, -5.000000e-01, !dbg !1093
  tail call void @llvm.dbg.value(metadata double %8, metadata !1076, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1077, metadata !DIExpression()), !dbg !1089
  %9 = fmul double %1, 2.000000e+00, !dbg !1094
  tail call void @llvm.dbg.value(metadata double %9, metadata !1078, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !1079, metadata !DIExpression()), !dbg !1089
  %10 = fmul double %7, %5, !dbg !1095
  %11 = fmul double %8, %8, !dbg !1096
  %12 = fadd double %11, 1.000000e+00, !dbg !1097
  %13 = fdiv double %10, %12, !dbg !1098
  tail call void @llvm.dbg.value(metadata double %13, metadata !1080, metadata !DIExpression()), !dbg !1089
  %14 = fadd double %9, %13, !dbg !1099
  tail call void @llvm.dbg.value(metadata double %14, metadata !1081, metadata !DIExpression()), !dbg !1089
  %15 = fmul double %8, %13, !dbg !1100
  %16 = fadd double %15, 2.000000e+00, !dbg !1101
  tail call void @llvm.dbg.value(metadata double %16, metadata !1082, metadata !DIExpression()), !dbg !1089
  %17 = fmul double %9, %9, !dbg !1102
  %18 = fadd double %17, 4.000000e+00, !dbg !1103
  tail call void @llvm.dbg.value(metadata double %18, metadata !1083, metadata !DIExpression()), !dbg !1089
  %19 = fdiv double %9, %18, !dbg !1104
  tail call void @llvm.dbg.value(metadata double %19, metadata !1084, metadata !DIExpression()), !dbg !1089
  %20 = fdiv double -2.000000e+00, %18, !dbg !1105
  tail call void @llvm.dbg.value(metadata double %20, metadata !1085, metadata !DIExpression()), !dbg !1089
  %21 = fmul double %19, %14, !dbg !1106
  %22 = fmul double %20, %16, !dbg !1107
  %23 = fsub double %21, %22, !dbg !1108
  tail call void @llvm.dbg.value(metadata double %23, metadata !1086, metadata !DIExpression()), !dbg !1089
  %24 = fmul double %20, %14, !dbg !1109
  %25 = fmul double %19, %16, !dbg !1110
  %26 = fadd double %24, %25, !dbg !1111
  tail call void @llvm.dbg.value(metadata double %26, metadata !1087, metadata !DIExpression()), !dbg !1089
  %27 = fmul double %8, %23, !dbg !1112
  %28 = fsub double %27, %26, !dbg !1113
  tail call void @llvm.dbg.value(metadata double %28, metadata !1088, metadata !DIExpression()), !dbg !1089
  %29 = fmul double %8, %26, !dbg !1114
  %30 = fadd double %23, %29, !dbg !1115
  tail call void @llvm.dbg.value(metadata double %30, metadata !1077, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %28, metadata !1076, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1073, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %20, metadata !1085, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %19, metadata !1084, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %16, metadata !1082, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %14, metadata !1081, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !1079, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %7, metadata !1075, metadata !DIExpression()), !dbg !1089
  br label %32, !dbg !1116

31:                                               ; preds = %92
  tail call void @llvm.dbg.value(metadata double %86, metadata !1077, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %83, metadata !1076, metadata !DIExpression()), !dbg !1089
  store double %83, ptr %2, align 8, !dbg !1118, !tbaa !394
  store double %86, ptr %3, align 8, !dbg !1119, !tbaa !394
  br label %98, !dbg !1120

32:                                               ; preds = %4, %92
  %33 = phi double [ %20, %4 ], [ %74, %92 ]
  %34 = phi double [ %19, %4 ], [ %72, %92 ]
  %35 = phi double [ %16, %4 ], [ %63, %92 ]
  %36 = phi double [ %14, %4 ], [ %68, %92 ]
  %37 = phi double [ 2.000000e+00, %4 ], [ %46, %92 ]
  %38 = phi double [ %30, %4 ], [ %86, %92 ]
  %39 = phi double [ %28, %4 ], [ %83, %92 ]
  %40 = phi double [ %7, %4 ], [ %45, %92 ]
  %41 = phi i32 [ 2, %4 ], [ %93, %92 ]
  tail call void @llvm.dbg.value(metadata double %33, metadata !1085, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %34, metadata !1084, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %35, metadata !1082, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %36, metadata !1081, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %37, metadata !1079, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %38, metadata !1077, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %39, metadata !1076, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %40, metadata !1075, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !1073, metadata !DIExpression()), !dbg !1089
  %42 = shl nuw nsw i32 %41, 1, !dbg !1121
  %43 = add nsw i32 %42, -2, !dbg !1121
  %44 = sitofp i32 %43 to double, !dbg !1124
  %45 = fadd double %40, %44, !dbg !1125
  tail call void @llvm.dbg.value(metadata double %45, metadata !1075, metadata !DIExpression()), !dbg !1089
  %46 = fadd double %37, 2.000000e+00, !dbg !1126
  tail call void @llvm.dbg.value(metadata double %46, metadata !1079, metadata !DIExpression()), !dbg !1089
  %47 = fmul double %45, %34, !dbg !1127
  %48 = fadd double %9, %47, !dbg !1128
  tail call void @llvm.dbg.value(metadata double %48, metadata !1084, metadata !DIExpression()), !dbg !1089
  %49 = fmul double %45, %33, !dbg !1129
  %50 = fadd double %46, %49, !dbg !1130
  tail call void @llvm.dbg.value(metadata double %50, metadata !1085, metadata !DIExpression()), !dbg !1089
  %51 = tail call double @llvm.fabs.f64(double %48), !dbg !1131
  %52 = tail call double @llvm.fabs.f64(double %50), !dbg !1133
  %53 = fadd double %51, %52, !dbg !1134
  %54 = fcmp olt double %53, 1.000000e-100, !dbg !1135
  %55 = select i1 %54, double 1.000000e-100, double %48, !dbg !1136
  tail call void @llvm.dbg.value(metadata double %55, metadata !1084, metadata !DIExpression()), !dbg !1089
  %56 = fmul double %36, %36, !dbg !1137
  %57 = fmul double %35, %35, !dbg !1138
  %58 = fadd double %56, %57, !dbg !1139
  %59 = fdiv double %45, %58, !dbg !1140
  tail call void @llvm.dbg.value(metadata double %59, metadata !1080, metadata !DIExpression()), !dbg !1089
  %60 = fmul double %36, %59, !dbg !1141
  %61 = fadd double %9, %60, !dbg !1142
  tail call void @llvm.dbg.value(metadata double %61, metadata !1081, metadata !DIExpression()), !dbg !1089
  %62 = fmul double %35, %59, !dbg !1143
  %63 = fsub double %46, %62, !dbg !1144
  tail call void @llvm.dbg.value(metadata double %63, metadata !1082, metadata !DIExpression()), !dbg !1089
  %64 = tail call double @llvm.fabs.f64(double %61), !dbg !1145
  %65 = tail call double @llvm.fabs.f64(double %63), !dbg !1147
  %66 = fadd double %64, %65, !dbg !1148
  %67 = fcmp olt double %66, 1.000000e-100, !dbg !1149
  %68 = select i1 %67, double 1.000000e-100, double %61, !dbg !1150
  tail call void @llvm.dbg.value(metadata double %68, metadata !1081, metadata !DIExpression()), !dbg !1089
  %69 = fmul double %55, %55, !dbg !1151
  %70 = fmul double %50, %50, !dbg !1152
  %71 = fadd double %70, %69, !dbg !1153
  tail call void @llvm.dbg.value(metadata double %71, metadata !1083, metadata !DIExpression()), !dbg !1089
  %72 = fdiv double %55, %71, !dbg !1154
  tail call void @llvm.dbg.value(metadata double %72, metadata !1084, metadata !DIExpression()), !dbg !1089
  %73 = fneg double %71, !dbg !1155
  %74 = fdiv double %50, %73, !dbg !1156
  tail call void @llvm.dbg.value(metadata double %74, metadata !1085, metadata !DIExpression()), !dbg !1089
  %75 = fmul double %68, %72, !dbg !1157
  %76 = fmul double %63, %74, !dbg !1158
  %77 = fsub double %75, %76, !dbg !1159
  tail call void @llvm.dbg.value(metadata double %77, metadata !1086, metadata !DIExpression()), !dbg !1089
  %78 = fmul double %68, %74, !dbg !1160
  %79 = fmul double %63, %72, !dbg !1161
  %80 = fadd double %78, %79, !dbg !1162
  tail call void @llvm.dbg.value(metadata double %80, metadata !1087, metadata !DIExpression()), !dbg !1089
  %81 = fmul double %39, %77, !dbg !1163
  %82 = fmul double %38, %80, !dbg !1164
  %83 = fsub double %81, %82, !dbg !1165
  tail call void @llvm.dbg.value(metadata double %83, metadata !1088, metadata !DIExpression()), !dbg !1089
  %84 = fmul double %39, %80, !dbg !1166
  %85 = fmul double %38, %77, !dbg !1167
  %86 = fadd double %84, %85, !dbg !1168
  tail call void @llvm.dbg.value(metadata double %86, metadata !1077, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %83, metadata !1076, metadata !DIExpression()), !dbg !1089
  %87 = fadd double %77, -1.000000e+00, !dbg !1169
  %88 = tail call double @llvm.fabs.f64(double %87), !dbg !1171
  %89 = tail call double @llvm.fabs.f64(double %80), !dbg !1172
  %90 = fadd double %89, %88, !dbg !1173
  %91 = fcmp olt double %90, 0x3CB0000000000000, !dbg !1174
  br i1 %91, label %95, label %92, !dbg !1175

92:                                               ; preds = %32
  %93 = add nuw nsw i32 %41, 1, !dbg !1176
  tail call void @llvm.dbg.value(metadata double %74, metadata !1085, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %72, metadata !1084, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %63, metadata !1082, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %68, metadata !1081, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %46, metadata !1079, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %86, metadata !1077, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %83, metadata !1076, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %45, metadata !1075, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata i32 %93, metadata !1073, metadata !DIExpression()), !dbg !1089
  %94 = icmp eq i32 %93, 10001, !dbg !1177
  br i1 %94, label %31, label %32, !dbg !1116, !llvm.loop !1178

95:                                               ; preds = %32
  tail call void @llvm.dbg.value(metadata double %86, metadata !1077, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata double %83, metadata !1076, metadata !DIExpression()), !dbg !1089
  store double %83, ptr %2, align 8, !dbg !1118, !tbaa !394
  store double %86, ptr %3, align 8, !dbg !1119, !tbaa !394
  %96 = icmp eq i32 %41, 10000, !dbg !1180
  br i1 %96, label %97, label %98, !dbg !1120

97:                                               ; preds = %95
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 713, i32 noundef 11) #10, !dbg !1182
  br label %98, !dbg !1182

98:                                               ; preds = %31, %95, %97
  %99 = phi i32 [ 11, %97 ], [ 0, %95 ], [ 0, %31 ], !dbg !1184
  ret i32 %99, !dbg !1185
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_I_CF1_ser(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1186 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1188, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata double %1, metadata !1189, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1190, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata i32 20000, metadata !1191, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1192, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1193, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1194, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1195, metadata !DIExpression()), !dbg !1200
  br label %4, !dbg !1201

4:                                                ; preds = %3, %32
  %5 = phi i32 [ 1, %3 ], [ %33, %32 ]
  %6 = phi double [ 0.000000e+00, %3 ], [ %21, %32 ]
  %7 = phi double [ 1.000000e+00, %3 ], [ %23, %32 ]
  %8 = phi double [ 1.000000e+00, %3 ], [ %22, %32 ]
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1195, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata double %6, metadata !1194, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata double %7, metadata !1193, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata double %8, metadata !1192, metadata !DIExpression()), !dbg !1200
  %9 = sitofp i32 %5 to double, !dbg !1202
  %10 = fadd double %9, %0, !dbg !1203
  %11 = fdiv double %1, %10, !dbg !1204
  %12 = fmul double %11, 2.500000e-01, !dbg !1205
  %13 = fmul double %12, %1, !dbg !1206
  %14 = fadd double %10, 1.000000e+00, !dbg !1207
  %15 = fdiv double %13, %14, !dbg !1208
  tail call void @llvm.dbg.value(metadata double %15, metadata !1196, metadata !DIExpression()), !dbg !1209
  %16 = fneg double %15, !dbg !1210
  %17 = fadd double %6, 1.000000e+00, !dbg !1211
  %18 = fmul double %17, %16, !dbg !1212
  %19 = fmul double %17, %15, !dbg !1213
  %20 = fadd double %19, 1.000000e+00, !dbg !1214
  %21 = fdiv double %18, %20, !dbg !1215
  tail call void @llvm.dbg.value(metadata double %21, metadata !1194, metadata !DIExpression()), !dbg !1200
  %22 = fmul double %8, %21, !dbg !1216
  tail call void @llvm.dbg.value(metadata double %22, metadata !1192, metadata !DIExpression()), !dbg !1200
  %23 = fadd double %7, %22, !dbg !1217
  tail call void @llvm.dbg.value(metadata double %23, metadata !1193, metadata !DIExpression()), !dbg !1200
  %24 = fdiv double %22, %23, !dbg !1218
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !1220
  %26 = fcmp olt double %25, 0x3CB0000000000000, !dbg !1221
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata double %23, metadata !1193, metadata !DIExpression()), !dbg !1200
  %28 = fadd double %0, 1.000000e+00, !dbg !1222
  %29 = fmul double %28, 2.000000e+00, !dbg !1223
  %30 = fdiv double %1, %29, !dbg !1224
  %31 = fmul double %30, %23, !dbg !1225
  store double %31, ptr %2, align 8, !dbg !1226, !tbaa !394
  br label %40, !dbg !1227

32:                                               ; preds = %4
  %33 = add nuw nsw i32 %5, 1, !dbg !1228
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !1195, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata double %21, metadata !1194, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata double %23, metadata !1193, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata double %22, metadata !1192, metadata !DIExpression()), !dbg !1200
  %34 = icmp eq i32 %33, 20000, !dbg !1229
  br i1 %34, label %35, label %4, !dbg !1201, !llvm.loop !1230

35:                                               ; preds = %32
  tail call void @llvm.dbg.value(metadata double %23, metadata !1193, metadata !DIExpression()), !dbg !1200
  %36 = fadd double %0, 1.000000e+00, !dbg !1222
  %37 = fmul double %36, 2.000000e+00, !dbg !1223
  %38 = fdiv double %1, %37, !dbg !1224
  %39 = fmul double %38, %23, !dbg !1225
  store double %39, ptr %2, align 8, !dbg !1226, !tbaa !394
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 656, i32 noundef 11) #10, !dbg !1232
  br label %40, !dbg !1232

40:                                               ; preds = %27, %35
  %41 = phi i32 [ 11, %35 ], [ 0, %27 ], !dbg !1235
  ret i32 %41, !dbg !1236
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_K_scaled_steed_temme_CF2(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !1237 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1241, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %1, metadata !1242, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1243, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1244, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1245, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !1246, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1247, metadata !DIExpression()), !dbg !1264
  %6 = fadd double %1, 1.000000e+00, !dbg !1265
  %7 = fmul double %6, 2.000000e+00, !dbg !1266
  tail call void @llvm.dbg.value(metadata double %7, metadata !1248, metadata !DIExpression()), !dbg !1264
  %8 = fdiv double 1.000000e+00, %7, !dbg !1267
  tail call void @llvm.dbg.value(metadata double %8, metadata !1249, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %8, metadata !1250, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %8, metadata !1251, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1252, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1253, metadata !DIExpression()), !dbg !1264
  %9 = fmul double %0, %0, !dbg !1268
  %10 = fsub double 2.500000e-01, %9, !dbg !1269
  %11 = fneg double %10, !dbg !1270
  tail call void @llvm.dbg.value(metadata double %11, metadata !1254, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %11, metadata !1255, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %10, metadata !1256, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %10, metadata !1257, metadata !DIExpression()), !dbg !1264
  %12 = fmul double %10, %8, !dbg !1271
  %13 = fadd double %12, 1.000000e+00, !dbg !1272
  tail call void @llvm.dbg.value(metadata double %13, metadata !1258, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1247, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %10, metadata !1257, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %10, metadata !1256, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %7, metadata !1248, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %11, metadata !1254, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1253, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1252, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %8, metadata !1251, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %8, metadata !1250, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %8, metadata !1249, metadata !DIExpression()), !dbg !1264
  br label %14, !dbg !1273

14:                                               ; preds = %5, %52
  %15 = phi i32 [ 2, %5 ], [ %53, %52 ]
  %16 = phi double [ %13, %5 ], [ %48, %52 ]
  %17 = phi double [ %10, %5 ], [ %38, %52 ]
  %18 = phi double [ %10, %5 ], [ %33, %52 ]
  %19 = phi double [ %7, %5 ], [ %39, %52 ]
  %20 = phi double [ %11, %5 ], [ %29, %52 ]
  %21 = phi double [ 1.000000e+00, %5 ], [ %36, %52 ]
  %22 = phi double [ 0.000000e+00, %5 ], [ %21, %52 ]
  %23 = phi double [ %8, %5 ], [ %46, %52 ]
  %24 = phi double [ %8, %5 ], [ %45, %52 ]
  %25 = phi double [ %8, %5 ], [ %42, %52 ]
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1247, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %16, metadata !1258, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %17, metadata !1257, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %18, metadata !1256, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %19, metadata !1248, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %20, metadata !1254, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %21, metadata !1253, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %22, metadata !1252, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %23, metadata !1251, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %24, metadata !1250, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %25, metadata !1249, metadata !DIExpression()), !dbg !1264
  %26 = add nsw i32 %15, -1, !dbg !1274
  %27 = sitofp i32 %26 to double, !dbg !1275
  %28 = fmul double %27, 2.000000e+00, !dbg !1276
  %29 = fsub double %20, %28, !dbg !1277
  tail call void @llvm.dbg.value(metadata double %29, metadata !1254, metadata !DIExpression()), !dbg !1264
  %30 = fneg double %29, !dbg !1278
  %31 = fmul double %18, %30, !dbg !1279
  %32 = sitofp i32 %15 to double, !dbg !1280
  %33 = fdiv double %31, %32, !dbg !1281
  tail call void @llvm.dbg.value(metadata double %33, metadata !1256, metadata !DIExpression()), !dbg !1264
  %34 = fmul double %21, %19, !dbg !1282
  %35 = fsub double %22, %34, !dbg !1283
  %36 = fdiv double %35, %29, !dbg !1284
  tail call void @llvm.dbg.value(metadata double %36, metadata !1263, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %21, metadata !1252, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %36, metadata !1253, metadata !DIExpression()), !dbg !1264
  %37 = fmul double %36, %33, !dbg !1286
  %38 = fadd double %17, %37, !dbg !1287
  tail call void @llvm.dbg.value(metadata double %38, metadata !1257, metadata !DIExpression()), !dbg !1264
  %39 = fadd double %19, 2.000000e+00, !dbg !1288
  tail call void @llvm.dbg.value(metadata double %39, metadata !1248, metadata !DIExpression()), !dbg !1264
  %40 = fmul double %25, %29, !dbg !1289
  %41 = fadd double %39, %40, !dbg !1290
  %42 = fdiv double 1.000000e+00, %41, !dbg !1291
  tail call void @llvm.dbg.value(metadata double %42, metadata !1249, metadata !DIExpression()), !dbg !1264
  %43 = fmul double %39, %42, !dbg !1292
  %44 = fadd double %43, -1.000000e+00, !dbg !1293
  %45 = fmul double %24, %44, !dbg !1294
  tail call void @llvm.dbg.value(metadata double %45, metadata !1250, metadata !DIExpression()), !dbg !1264
  %46 = fadd double %23, %45, !dbg !1295
  tail call void @llvm.dbg.value(metadata double %46, metadata !1251, metadata !DIExpression()), !dbg !1264
  %47 = fmul double %38, %45, !dbg !1296
  tail call void @llvm.dbg.value(metadata double %47, metadata !1259, metadata !DIExpression()), !dbg !1285
  %48 = fadd double %16, %47, !dbg !1297
  tail call void @llvm.dbg.value(metadata double %48, metadata !1258, metadata !DIExpression()), !dbg !1264
  %49 = fdiv double %47, %48, !dbg !1298
  %50 = tail call double @llvm.fabs.f64(double %49), !dbg !1300
  %51 = fcmp olt double %50, 0x3CB0000000000000, !dbg !1301
  br i1 %51, label %55, label %52

52:                                               ; preds = %14
  %53 = add nuw nsw i32 %15, 1, !dbg !1302
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1247, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %48, metadata !1258, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %38, metadata !1257, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %33, metadata !1256, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %39, metadata !1248, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %29, metadata !1254, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %36, metadata !1253, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %21, metadata !1252, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %46, metadata !1251, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %45, metadata !1250, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %42, metadata !1249, metadata !DIExpression()), !dbg !1264
  %54 = icmp eq i32 %53, 10001, !dbg !1303
  br i1 %54, label %55, label %14, !dbg !1273, !llvm.loop !1304

55:                                               ; preds = %14, %52
  %56 = phi i32 [ %15, %14 ], [ 10001, %52 ], !dbg !1306
  tail call void @llvm.dbg.value(metadata double %48, metadata !1258, metadata !DIExpression()), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %46, metadata !1251, metadata !DIExpression()), !dbg !1264
  %57 = fmul double %10, %46, !dbg !1307
  tail call void @llvm.dbg.value(metadata double %57, metadata !1251, metadata !DIExpression()), !dbg !1264
  %58 = fmul double %1, 2.000000e+00, !dbg !1308
  %59 = fdiv double 0x400921FB54442D18, %58, !dbg !1309
  %60 = tail call double @sqrt(double noundef %59) #10, !dbg !1310
  %61 = fdiv double %60, %48, !dbg !1311
  store double %61, ptr %2, align 8, !dbg !1312, !tbaa !394
  %62 = fadd double %0, %1, !dbg !1313
  %63 = fadd double %62, 5.000000e-01, !dbg !1314
  %64 = fsub double %63, %57, !dbg !1315
  %65 = fmul double %64, %61, !dbg !1316
  %66 = fdiv double %65, %1, !dbg !1317
  store double %66, ptr %3, align 8, !dbg !1318, !tbaa !394
  %67 = fdiv double %0, %1, !dbg !1319
  %68 = load double, ptr %2, align 8, !dbg !1320, !tbaa !394
  %69 = fmul double %67, %68, !dbg !1321
  %70 = fsub double %69, %66, !dbg !1322
  store double %70, ptr %4, align 8, !dbg !1323, !tbaa !394
  %71 = icmp eq i32 %56, 10000, !dbg !1324
  br i1 %71, label %72, label %73, !dbg !1326

72:                                               ; preds = %55
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 772, i32 noundef 11) #10, !dbg !1327
  br label %73, !dbg !1327

73:                                               ; preds = %55, %72
  %74 = phi i32 [ 11, %72 ], [ 0, %55 ], !dbg !1329
  ret i32 %74, !dbg !1330
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_cos_pi4_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 !dbg !1331 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1335, metadata !DIExpression()), !dbg !1348
  tail call void @llvm.dbg.value(metadata double %1, metadata !1336, metadata !DIExpression()), !dbg !1348
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1337, metadata !DIExpression()), !dbg !1348
  %4 = tail call double @sin(double noundef %0) #10, !dbg !1349
  tail call void @llvm.dbg.value(metadata double %4, metadata !1338, metadata !DIExpression()), !dbg !1348
  %5 = tail call double @cos(double noundef %0) #10, !dbg !1350
  tail call void @llvm.dbg.value(metadata double %5, metadata !1339, metadata !DIExpression()), !dbg !1348
  %6 = fadd double %4, %5, !dbg !1351
  tail call void @llvm.dbg.value(metadata double %6, metadata !1340, metadata !DIExpression()), !dbg !1348
  %7 = fsub double %4, %5, !dbg !1352
  tail call void @llvm.dbg.value(metadata double %7, metadata !1341, metadata !DIExpression()), !dbg !1348
  %8 = tail call double @llvm.fabs.f64(double %5), !dbg !1353
  %9 = tail call double @llvm.fabs.f64(double %4), !dbg !1354
  %10 = fadd double %9, %8, !dbg !1355
  tail call void @llvm.dbg.value(metadata double %10, metadata !1342, metadata !DIExpression()), !dbg !1348
  %11 = tail call double @llvm.fabs.f64(double %1), !dbg !1356
  %12 = fcmp olt double %11, 0x3F48406003B2AE5A, !dbg !1357
  br i1 %12, label %13, label %26, !dbg !1358

13:                                               ; preds = %3
  %14 = fmul double %1, %1, !dbg !1359
  tail call void @llvm.dbg.value(metadata double %14, metadata !1345, metadata !DIExpression()), !dbg !1360
  %15 = fdiv double %14, 6.000000e+00, !dbg !1361
  %16 = fdiv double %14, 2.000000e+01, !dbg !1362
  %17 = fsub double 1.000000e+00, %16, !dbg !1363
  %18 = fmul double %15, %17, !dbg !1364
  %19 = fsub double 1.000000e+00, %18, !dbg !1365
  %20 = fmul double %19, %1, !dbg !1366
  tail call void @llvm.dbg.value(metadata double %20, metadata !1343, metadata !DIExpression()), !dbg !1348
  %21 = fmul double %14, 5.000000e-01, !dbg !1367
  %22 = fdiv double %14, 1.200000e+01, !dbg !1368
  %23 = fsub double 1.000000e+00, %22, !dbg !1369
  %24 = fmul double %21, %23, !dbg !1370
  %25 = fsub double 1.000000e+00, %24, !dbg !1371
  tail call void @llvm.dbg.value(metadata double %25, metadata !1344, metadata !DIExpression()), !dbg !1348
  br label %29, !dbg !1372

26:                                               ; preds = %3
  %27 = tail call double @sin(double noundef %1) #10, !dbg !1373
  tail call void @llvm.dbg.value(metadata double %27, metadata !1343, metadata !DIExpression()), !dbg !1348
  %28 = tail call double @cos(double noundef %1) #10, !dbg !1375
  tail call void @llvm.dbg.value(metadata double %28, metadata !1344, metadata !DIExpression()), !dbg !1348
  br label %29

29:                                               ; preds = %26, %13
  %30 = phi double [ %25, %13 ], [ %28, %26 ], !dbg !1376
  %31 = phi double [ %20, %13 ], [ %27, %26 ], !dbg !1376
  tail call void @llvm.dbg.value(metadata double %31, metadata !1343, metadata !DIExpression()), !dbg !1348
  tail call void @llvm.dbg.value(metadata double %30, metadata !1344, metadata !DIExpression()), !dbg !1348
  %32 = fmul double %6, %30, !dbg !1377
  %33 = fmul double %7, %31, !dbg !1378
  %34 = fsub double %32, %33, !dbg !1379
  %35 = fdiv double %34, 0x3FF6A09E667F3BCD, !dbg !1380
  store double %35, ptr %2, align 8, !dbg !1381, !tbaa !132
  %36 = tail call double @llvm.fabs.f64(double %30), !dbg !1382
  %37 = tail call double @llvm.fabs.f64(double %31), !dbg !1383
  %38 = fadd double %36, %37, !dbg !1384
  %39 = fmul double %38, 0x3CC0000000000000, !dbg !1385
  %40 = fmul double %10, %39, !dbg !1386
  %41 = fdiv double %40, 0x3FF6A09E667F3BCD, !dbg !1387
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1388
  store double %41, ptr %42, align 8, !dbg !1389, !tbaa !137
  %43 = fcmp ogt double %0, 0x4330000000000000, !dbg !1390
  br i1 %43, label %44, label %46, !dbg !1392

44:                                               ; preds = %29
  %45 = fmul double %0, 5.000000e-01, !dbg !1393
  br label %51, !dbg !1395

46:                                               ; preds = %29
  %47 = fcmp ogt double %0, 0x4190000000000000, !dbg !1396
  br i1 %47, label %48, label %54, !dbg !1398

48:                                               ; preds = %46
  %49 = fmul double %0, 2.560000e+02, !dbg !1399
  %50 = fmul double %49, 0x3E50000000000000, !dbg !1401
  br label %51, !dbg !1402

51:                                               ; preds = %44, %48
  %52 = phi double [ %50, %48 ], [ %45, %44 ]
  %53 = fmul double %52, %41, !dbg !1403
  store double %53, ptr %42, align 8, !dbg !1403, !tbaa !137
  br label %54, !dbg !1404

54:                                               ; preds = %51, %46
  ret i32 0, !dbg !1404
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_sin_pi4_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 !dbg !1405 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1407, metadata !DIExpression()), !dbg !1420
  tail call void @llvm.dbg.value(metadata double %1, metadata !1408, metadata !DIExpression()), !dbg !1420
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1409, metadata !DIExpression()), !dbg !1420
  %4 = tail call double @sin(double noundef %0) #10, !dbg !1421
  tail call void @llvm.dbg.value(metadata double %4, metadata !1410, metadata !DIExpression()), !dbg !1420
  %5 = tail call double @cos(double noundef %0) #10, !dbg !1422
  tail call void @llvm.dbg.value(metadata double %5, metadata !1411, metadata !DIExpression()), !dbg !1420
  %6 = fadd double %4, %5, !dbg !1423
  tail call void @llvm.dbg.value(metadata double %6, metadata !1412, metadata !DIExpression()), !dbg !1420
  %7 = fsub double %4, %5, !dbg !1424
  tail call void @llvm.dbg.value(metadata double %7, metadata !1413, metadata !DIExpression()), !dbg !1420
  %8 = tail call double @llvm.fabs.f64(double %5), !dbg !1425
  %9 = tail call double @llvm.fabs.f64(double %4), !dbg !1426
  %10 = fadd double %9, %8, !dbg !1427
  tail call void @llvm.dbg.value(metadata double %10, metadata !1414, metadata !DIExpression()), !dbg !1420
  %11 = tail call double @llvm.fabs.f64(double %1), !dbg !1428
  %12 = fcmp olt double %11, 0x3F48406003B2AE5A, !dbg !1429
  br i1 %12, label %13, label %26, !dbg !1430

13:                                               ; preds = %3
  %14 = fmul double %1, %1, !dbg !1431
  tail call void @llvm.dbg.value(metadata double %14, metadata !1417, metadata !DIExpression()), !dbg !1432
  %15 = fdiv double %14, 6.000000e+00, !dbg !1433
  %16 = fdiv double %14, 2.000000e+01, !dbg !1434
  %17 = fsub double 1.000000e+00, %16, !dbg !1435
  %18 = fmul double %15, %17, !dbg !1436
  %19 = fsub double 1.000000e+00, %18, !dbg !1437
  %20 = fmul double %19, %1, !dbg !1438
  tail call void @llvm.dbg.value(metadata double %20, metadata !1415, metadata !DIExpression()), !dbg !1420
  %21 = fmul double %14, 5.000000e-01, !dbg !1439
  %22 = fdiv double %14, 1.200000e+01, !dbg !1440
  %23 = fsub double 1.000000e+00, %22, !dbg !1441
  %24 = fmul double %21, %23, !dbg !1442
  %25 = fsub double 1.000000e+00, %24, !dbg !1443
  tail call void @llvm.dbg.value(metadata double %25, metadata !1416, metadata !DIExpression()), !dbg !1420
  br label %29, !dbg !1444

26:                                               ; preds = %3
  %27 = tail call double @sin(double noundef %1) #10, !dbg !1445
  tail call void @llvm.dbg.value(metadata double %27, metadata !1415, metadata !DIExpression()), !dbg !1420
  %28 = tail call double @cos(double noundef %1) #10, !dbg !1447
  tail call void @llvm.dbg.value(metadata double %28, metadata !1416, metadata !DIExpression()), !dbg !1420
  br label %29

29:                                               ; preds = %26, %13
  %30 = phi double [ %25, %13 ], [ %28, %26 ], !dbg !1448
  %31 = phi double [ %20, %13 ], [ %27, %26 ], !dbg !1448
  tail call void @llvm.dbg.value(metadata double %31, metadata !1415, metadata !DIExpression()), !dbg !1420
  tail call void @llvm.dbg.value(metadata double %30, metadata !1416, metadata !DIExpression()), !dbg !1420
  %32 = fmul double %7, %30, !dbg !1449
  %33 = fmul double %6, %31, !dbg !1450
  %34 = fadd double %32, %33, !dbg !1451
  %35 = fdiv double %34, 0x3FF6A09E667F3BCD, !dbg !1452
  store double %35, ptr %2, align 8, !dbg !1453, !tbaa !132
  %36 = tail call double @llvm.fabs.f64(double %30), !dbg !1454
  %37 = tail call double @llvm.fabs.f64(double %31), !dbg !1455
  %38 = fadd double %36, %37, !dbg !1456
  %39 = fmul double %38, 0x3CC0000000000000, !dbg !1457
  %40 = fmul double %10, %39, !dbg !1458
  %41 = fdiv double %40, 0x3FF6A09E667F3BCD, !dbg !1459
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1460
  store double %41, ptr %42, align 8, !dbg !1461, !tbaa !137
  %43 = fcmp ogt double %0, 0x4330000000000000, !dbg !1462
  br i1 %43, label %44, label %46, !dbg !1464

44:                                               ; preds = %29
  %45 = fmul double %0, 5.000000e-01, !dbg !1465
  br label %51, !dbg !1467

46:                                               ; preds = %29
  %47 = fcmp ogt double %0, 0x4190000000000000, !dbg !1468
  br i1 %47, label %48, label %54, !dbg !1470

48:                                               ; preds = %46
  %49 = fmul double %0, 2.560000e+02, !dbg !1471
  %50 = fmul double %49, 0x3E50000000000000, !dbg !1473
  br label %51, !dbg !1474

51:                                               ; preds = %44, %48
  %52 = phi double [ %50, %48 ], [ %45, %44 ]
  %53 = fmul double %52, %41, !dbg !1475
  store double %53, ptr %42, align 8, !dbg !1475, !tbaa !137
  br label %54, !dbg !1476

54:                                               ; preds = %51, %46
  ret i32 0, !dbg !1476
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "69b26b6bb8e6a493be1be7b1f990ec4e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !58, globals: !59, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 39, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!23 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!24 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!25 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!26 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!27 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!28 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!29 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!30 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!31 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!32 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!33 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!34 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!35 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!36 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!37 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!38 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!39 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!40 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!41 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!42 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!43 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!44 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!45 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!46 = !DIEnumerator(name: "GSL_ESING", value: 21)
!47 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!48 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!49 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!50 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!51 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!52 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!53 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!54 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!55 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!56 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!57 = !DIEnumerator(name: "GSL_EOF", value: 32)
!58 = !{!21}
!59 = !{!0, !7, !12}
!60 = !{i32 7, !"Dwarf Version", i32 5}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{i32 8, !"PIC Level", i32 2}
!64 = !{i32 7, !"PIE Level", i32 2}
!65 = !{i32 7, !"uwtable", i32 2}
!66 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!67 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!68 = distinct !DISubprogram(name: "gsl_sf_bessel_IJ_taylor_e", scope: !2, file: !2, line: 92, type: !69, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !81)
!69 = !DISubroutineType(types: !70)
!70 = !{!21, !71, !71, !73, !73, !71, !74}
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !76, line: 41, baseType: !77)
!76 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !76, line: 37, size: 128, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !77, file: !76, line: 38, baseType: !72, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !77, file: !76, line: 39, baseType: !72, size: 64, offset: 64)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !92, !93, !94, !95, !96, !100, !101, !102, !103, !104, !105, !106, !108, !109, !110, !111, !112, !113, !114, !116, !117, !118}
!82 = !DILocalVariable(name: "nu", arg: 1, scope: !68, file: !2, line: 92, type: !71)
!83 = !DILocalVariable(name: "x", arg: 2, scope: !68, file: !2, line: 92, type: !71)
!84 = !DILocalVariable(name: "sign", arg: 3, scope: !68, file: !2, line: 93, type: !73)
!85 = !DILocalVariable(name: "kmax", arg: 4, scope: !68, file: !2, line: 94, type: !73)
!86 = !DILocalVariable(name: "threshold", arg: 5, scope: !68, file: !2, line: 95, type: !71)
!87 = !DILocalVariable(name: "result", arg: 6, scope: !68, file: !2, line: 96, type: !74)
!88 = !DILocalVariable(name: "prefactor", scope: !89, file: !2, line: 116, type: !75)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 115, column: 8)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 104, column: 11)
!91 = distinct !DILexicalBlock(scope: !68, file: !2, line: 101, column: 6)
!92 = !DILocalVariable(name: "sum", scope: !89, file: !2, line: 117, type: !75)
!93 = !DILocalVariable(name: "stat_pre", scope: !89, file: !2, line: 119, type: !21)
!94 = !DILocalVariable(name: "stat_sum", scope: !89, file: !2, line: 120, type: !21)
!95 = !DILocalVariable(name: "stat_mul", scope: !89, file: !2, line: 121, type: !21)
!96 = !DILocalVariable(name: "N", scope: !97, file: !2, line: 133, type: !73)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 128, column: 29)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 128, column: 13)
!99 = distinct !DILexicalBlock(scope: !89, file: !2, line: 123, column: 8)
!100 = !DILocalVariable(name: "f", scope: !97, file: !2, line: 134, type: !71)
!101 = !DILocalVariable(name: "poch_factor", scope: !97, file: !2, line: 135, type: !75)
!102 = !DILocalVariable(name: "tc_factor", scope: !97, file: !2, line: 136, type: !75)
!103 = !DILocalVariable(name: "stat_poch", scope: !97, file: !2, line: 137, type: !73)
!104 = !DILocalVariable(name: "stat_tc", scope: !97, file: !2, line: 138, type: !73)
!105 = !DILocalVariable(name: "p", scope: !97, file: !2, line: 139, type: !71)
!106 = !DILocalVariable(name: "lg", scope: !107, file: !2, line: 147, type: !75)
!107 = distinct !DILexicalBlock(scope: !98, file: !2, line: 146, column: 10)
!108 = !DILocalVariable(name: "stat_lg", scope: !107, file: !2, line: 148, type: !73)
!109 = !DILocalVariable(name: "term1", scope: !107, file: !2, line: 149, type: !71)
!110 = !DILocalVariable(name: "term2", scope: !107, file: !2, line: 150, type: !71)
!111 = !DILocalVariable(name: "ln_pre", scope: !107, file: !2, line: 151, type: !71)
!112 = !DILocalVariable(name: "ln_pre_err", scope: !107, file: !2, line: 152, type: !71)
!113 = !DILocalVariable(name: "stat_ex", scope: !107, file: !2, line: 153, type: !73)
!114 = !DILocalVariable(name: "y", scope: !115, file: !2, line: 162, type: !71)
!115 = distinct !DILexicalBlock(scope: !89, file: !2, line: 161, column: 5)
!116 = !DILocalVariable(name: "sumk", scope: !115, file: !2, line: 163, type: !72)
!117 = !DILocalVariable(name: "term", scope: !115, file: !2, line: 164, type: !72)
!118 = !DILocalVariable(name: "k", scope: !115, file: !2, line: 165, type: !21)
!119 = distinct !DIAssignID()
!120 = !DILocation(line: 0, scope: !89)
!121 = distinct !DIAssignID()
!122 = !DILocation(line: 0, scope: !97)
!123 = distinct !DIAssignID()
!124 = distinct !DIAssignID()
!125 = !DILocation(line: 0, scope: !107)
!126 = !DILocation(line: 0, scope: !68)
!127 = !DILocation(line: 101, column: 9, scope: !91)
!128 = !DILocation(line: 101, column: 15, scope: !91)
!129 = !DILocation(line: 102, column: 5, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 102, column: 5)
!131 = distinct !DILexicalBlock(scope: !91, file: !2, line: 101, column: 27)
!132 = !{!133, !134, i64 0}
!133 = !{!"gsl_sf_result_struct", !134, i64 0, !134, i64 8}
!134 = !{!"double", !135, i64 0}
!135 = !{!"omnipotent char", !136, i64 0}
!136 = !{!"Simple C/C++ TBAA"}
!137 = !{!133, !134, i64 8}
!138 = !DILocation(line: 102, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !130, file: !2, line: 102, column: 5)
!140 = !DILocation(line: 104, column: 13, scope: !90)
!141 = !DILocation(line: 104, column: 11, scope: !91)
!142 = !DILocation(line: 105, column: 11, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !2, line: 105, column: 8)
!144 = distinct !DILexicalBlock(scope: !90, file: !2, line: 104, column: 21)
!145 = !DILocation(line: 105, column: 8, scope: !144)
!146 = !DILocation(line: 106, column: 19, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !2, line: 105, column: 19)
!148 = !DILocation(line: 107, column: 15, scope: !147)
!149 = !DILocation(line: 107, column: 19, scope: !147)
!150 = !DILocation(line: 108, column: 5, scope: !147)
!151 = !DILocation(line: 111, column: 19, scope: !152)
!152 = distinct !DILexicalBlock(scope: !143, file: !2, line: 109, column: 10)
!153 = !DILocation(line: 116, column: 5, scope: !89)
!154 = !DILocation(line: 123, column: 11, scope: !99)
!155 = !DILocation(line: 123, column: 8, scope: !89)
!156 = !DILocation(line: 124, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !99, file: !2, line: 123, column: 19)
!158 = distinct !DIAssignID()
!159 = !DILocation(line: 125, column: 17, scope: !157)
!160 = !DILocation(line: 125, column: 21, scope: !157)
!161 = distinct !DIAssignID()
!162 = !DILocation(line: 127, column: 5, scope: !157)
!163 = !DILocation(line: 128, column: 16, scope: !98)
!164 = !DILocation(line: 128, column: 13, scope: !99)
!165 = !DILocation(line: 133, column: 38, scope: !97)
!166 = !DILocation(line: 133, column: 29, scope: !97)
!167 = !DILocation(line: 133, column: 24, scope: !97)
!168 = !DILocation(line: 134, column: 29, scope: !97)
!169 = !DILocation(line: 134, column: 27, scope: !97)
!170 = !DILocation(line: 135, column: 7, scope: !97)
!171 = !DILocation(line: 136, column: 7, scope: !97)
!172 = !DILocation(line: 137, column: 44, scope: !97)
!173 = !DILocation(line: 137, column: 29, scope: !97)
!174 = !DILocation(line: 138, column: 56, scope: !97)
!175 = !DILocation(line: 138, column: 29, scope: !97)
!176 = !DILocation(line: 139, column: 24, scope: !97)
!177 = !DILocation(line: 140, column: 34, scope: !97)
!178 = !DILocation(line: 140, column: 38, scope: !97)
!179 = !DILocation(line: 140, column: 56, scope: !97)
!180 = !DILocation(line: 140, column: 42, scope: !97)
!181 = !DILocation(line: 140, column: 22, scope: !97)
!182 = distinct !DIAssignID()
!183 = !DILocation(line: 141, column: 34, scope: !97)
!184 = !DILocation(line: 141, column: 38, scope: !97)
!185 = !DILocation(line: 141, column: 42, scope: !97)
!186 = !DILocation(line: 141, column: 17, scope: !97)
!187 = distinct !DIAssignID()
!188 = !DILocation(line: 142, column: 24, scope: !97)
!189 = !DILocation(line: 142, column: 44, scope: !97)
!190 = !DILocation(line: 142, column: 76, scope: !97)
!191 = !DILocation(line: 142, column: 62, scope: !97)
!192 = !DILocation(line: 142, column: 21, scope: !97)
!193 = distinct !DIAssignID()
!194 = !DILocation(line: 143, column: 46, scope: !97)
!195 = !DILocation(line: 143, column: 21, scope: !97)
!196 = distinct !DIAssignID()
!197 = !DILocation(line: 144, column: 18, scope: !97)
!198 = !DILocation(line: 145, column: 5, scope: !98)
!199 = !DILocation(line: 145, column: 5, scope: !97)
!200 = !DILocation(line: 147, column: 7, scope: !107)
!201 = !DILocation(line: 148, column: 46, scope: !107)
!202 = !DILocation(line: 148, column: 27, scope: !107)
!203 = !DILocation(line: 149, column: 39, scope: !107)
!204 = !DILocation(line: 149, column: 32, scope: !107)
!205 = !DILocation(line: 149, column: 31, scope: !107)
!206 = !DILocation(line: 150, column: 32, scope: !107)
!207 = !DILocation(line: 151, column: 35, scope: !107)
!208 = !DILocation(line: 152, column: 52, scope: !107)
!209 = !DILocation(line: 152, column: 64, scope: !107)
!210 = !DILocation(line: 152, column: 63, scope: !107)
!211 = !DILocation(line: 152, column: 49, scope: !107)
!212 = !DILocation(line: 152, column: 82, scope: !107)
!213 = !DILocation(line: 152, column: 77, scope: !107)
!214 = !DILocation(line: 153, column: 27, scope: !107)
!215 = !DILocation(line: 154, column: 18, scope: !107)
!216 = !DILocation(line: 155, column: 5, scope: !98)
!217 = !DILocation(line: 0, scope: !99)
!218 = !DILocation(line: 162, column: 24, scope: !115)
!219 = !DILocation(line: 162, column: 29, scope: !115)
!220 = !DILocation(line: 162, column: 36, scope: !115)
!221 = !DILocation(line: 162, column: 39, scope: !115)
!222 = !DILocation(line: 0, scope: !115)
!223 = !DILocation(line: 167, column: 17, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !2, line: 167, column: 7)
!225 = distinct !DILexicalBlock(scope: !115, file: !2, line: 167, column: 7)
!226 = !DILocation(line: 167, column: 7, scope: !225)
!227 = !DILocation(line: 168, column: 24, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !2, line: 167, column: 30)
!229 = !DILocation(line: 168, column: 23, scope: !228)
!230 = !DILocation(line: 168, column: 26, scope: !228)
!231 = !DILocation(line: 168, column: 18, scope: !228)
!232 = !DILocation(line: 168, column: 14, scope: !228)
!233 = !DILocation(line: 169, column: 14, scope: !228)
!234 = !DILocation(line: 170, column: 21, scope: !235)
!235 = distinct !DILexicalBlock(scope: !228, file: !2, line: 170, column: 12)
!236 = !DILocation(line: 170, column: 12, scope: !235)
!237 = !DILocation(line: 170, column: 28, scope: !235)
!238 = !DILocation(line: 170, column: 12, scope: !228)
!239 = !DILocation(line: 167, column: 26, scope: !224)
!240 = distinct !{!240, !226, !241, !242}
!241 = !DILocation(line: 171, column: 7, scope: !225)
!242 = !{!"llvm.loop.mustprogress"}
!243 = !DILocation(line: 167, scope: !225)
!244 = !DILocation(line: 174, column: 29, scope: !115)
!245 = !DILocation(line: 174, column: 27, scope: !115)
!246 = !DILocation(line: 176, column: 22, scope: !115)
!247 = !DILocation(line: 179, column: 48, scope: !89)
!248 = !DILocation(line: 179, column: 63, scope: !89)
!249 = !DILocation(line: 179, column: 16, scope: !89)
!250 = !DILocation(line: 183, column: 12, scope: !89)
!251 = !DILocation(line: 184, column: 3, scope: !90)
!252 = !DILocation(line: 0, scope: !91)
!253 = !DILocation(line: 185, column: 1, scope: !68)
!254 = !DISubprogram(name: "gsl_error", scope: !20, file: !20, line: 77, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !257, !257, !21, !21}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!259 = !DISubprogram(name: "gsl_sf_poch_e", scope: !260, file: !260, line: 195, type: !261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!260 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!261 = !DISubroutineType(types: !262)
!262 = !{!21, !71, !71, !74}
!263 = !DISubprogram(name: "gsl_sf_taylorcoeff_e", scope: !260, file: !260, line: 111, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DISubroutineType(types: !265)
!265 = !{!21, !73, !71, !74}
!266 = !DISubprogram(name: "pow", scope: !267, file: !267, line: 140, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!268 = !DISubroutineType(types: !269)
!269 = !{!72, !72, !72}
!270 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !260, file: !260, line: 47, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubroutineType(types: !272)
!272 = !{!21, !72, !74}
!273 = !DISubprogram(name: "log", scope: !267, file: !267, line: 104, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DISubroutineType(types: !275)
!275 = !{!72, !72}
!276 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !277, file: !277, line: 110, type: !261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!278 = !DISubprogram(name: "gsl_sf_multiply_err_e", scope: !279, file: !279, line: 52, type: !280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!279 = !DIFile(filename: "../gsl/gsl_sf_elementary.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "24579d359b4176c41b805fec4d3d9c1d")
!280 = !DISubroutineType(types: !281)
!281 = !{!21, !71, !71, !71, !71, !74}
!282 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnu_asympx_e", scope: !2, file: !2, line: 215, type: !261, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !283)
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !297, !298}
!284 = !DILocalVariable(name: "nu", arg: 1, scope: !282, file: !2, line: 215, type: !71)
!285 = !DILocalVariable(name: "x", arg: 2, scope: !282, file: !2, line: 215, type: !71)
!286 = !DILocalVariable(name: "result", arg: 3, scope: !282, file: !2, line: 215, type: !74)
!287 = !DILocalVariable(name: "mu", scope: !282, file: !2, line: 217, type: !72)
!288 = !DILocalVariable(name: "chi", scope: !282, file: !2, line: 218, type: !72)
!289 = !DILocalVariable(name: "P", scope: !282, file: !2, line: 220, type: !72)
!290 = !DILocalVariable(name: "Q", scope: !282, file: !2, line: 221, type: !72)
!291 = !DILocalVariable(name: "k", scope: !282, file: !2, line: 223, type: !72)
!292 = !DILocalVariable(name: "t", scope: !282, file: !2, line: 223, type: !72)
!293 = !DILocalVariable(name: "convP", scope: !282, file: !2, line: 224, type: !21)
!294 = !DILocalVariable(name: "convQ", scope: !282, file: !2, line: 224, type: !21)
!295 = !DILocalVariable(name: "pre", scope: !296, file: !2, line: 249, type: !72)
!296 = distinct !DILexicalBlock(scope: !282, file: !2, line: 248, column: 3)
!297 = !DILocalVariable(name: "c", scope: !296, file: !2, line: 250, type: !72)
!298 = !DILocalVariable(name: "s", scope: !296, file: !2, line: 251, type: !72)
!299 = !DILocation(line: 0, scope: !282)
!300 = !DILocation(line: 217, column: 19, scope: !282)
!301 = !DILocation(line: 217, column: 22, scope: !282)
!302 = !DILocation(line: 226, column: 3, scope: !282)
!303 = !DILocation(line: 228, column: 15, scope: !304)
!304 = distinct !DILexicalBlock(scope: !282, file: !2, line: 227, column: 5)
!305 = !DILocation(line: 228, column: 12, scope: !304)
!306 = !DILocation(line: 228, column: 36, scope: !304)
!307 = !DILocation(line: 228, column: 38, scope: !304)
!308 = !DILocation(line: 228, column: 41, scope: !304)
!309 = !DILocation(line: 228, column: 32, scope: !304)
!310 = !DILocation(line: 228, column: 27, scope: !304)
!311 = !DILocation(line: 228, column: 56, scope: !304)
!312 = !DILocation(line: 228, column: 51, scope: !304)
!313 = !DILocation(line: 228, column: 9, scope: !304)
!314 = !DILocation(line: 229, column: 15, scope: !304)
!315 = !DILocation(line: 229, column: 43, scope: !304)
!316 = !DILocation(line: 229, column: 41, scope: !304)
!317 = !DILocation(line: 229, column: 23, scope: !304)
!318 = !DILocation(line: 230, column: 9, scope: !304)
!319 = !DILocation(line: 232, column: 8, scope: !304)
!320 = !DILocation(line: 234, column: 20, scope: !304)
!321 = !DILocation(line: 234, column: 22, scope: !304)
!322 = !DILocation(line: 234, column: 25, scope: !304)
!323 = !DILocation(line: 234, column: 16, scope: !304)
!324 = !DILocation(line: 234, column: 40, scope: !304)
!325 = !DILocation(line: 234, column: 35, scope: !304)
!326 = !DILocation(line: 234, column: 9, scope: !304)
!327 = !DILocation(line: 235, column: 15, scope: !304)
!328 = !DILocation(line: 235, column: 43, scope: !304)
!329 = !DILocation(line: 235, column: 41, scope: !304)
!330 = !DILocation(line: 235, column: 23, scope: !304)
!331 = !DILocation(line: 236, column: 9, scope: !304)
!332 = !DILocation(line: 241, column: 17, scope: !333)
!333 = distinct !DILexicalBlock(scope: !304, file: !2, line: 241, column: 11)
!334 = distinct !{!334, !302, !335, !242}
!335 = !DILocation(line: 246, column: 18, scope: !282)
!336 = !DILocation(line: 218, column: 28, scope: !282)
!337 = !DILocation(line: 218, column: 35, scope: !282)
!338 = !DILocation(line: 218, column: 18, scope: !282)
!339 = !DILocation(line: 249, column: 32, scope: !296)
!340 = !DILocation(line: 249, column: 26, scope: !296)
!341 = !DILocation(line: 249, column: 18, scope: !296)
!342 = !DILocation(line: 0, scope: !296)
!343 = !DILocation(line: 250, column: 18, scope: !296)
!344 = !DILocation(line: 251, column: 18, scope: !296)
!345 = !DILocation(line: 253, column: 28, scope: !296)
!346 = !DILocation(line: 253, column: 34, scope: !296)
!347 = !DILocation(line: 253, column: 31, scope: !296)
!348 = !DILocation(line: 253, column: 24, scope: !296)
!349 = !DILocation(line: 253, column: 18, scope: !296)
!350 = !DILocation(line: 254, column: 24, scope: !296)
!351 = !DILocation(line: 254, column: 45, scope: !296)
!352 = !DILocation(line: 254, column: 57, scope: !296)
!353 = !DILocation(line: 254, column: 55, scope: !296)
!354 = !DILocation(line: 254, column: 67, scope: !296)
!355 = !DILocation(line: 254, column: 42, scope: !296)
!356 = !DILocation(line: 254, column: 85, scope: !296)
!357 = !DILocation(line: 254, column: 83, scope: !296)
!358 = !DILocation(line: 254, column: 78, scope: !296)
!359 = !DILocation(line: 254, column: 13, scope: !296)
!360 = !DILocation(line: 254, column: 18, scope: !296)
!361 = !DILocation(line: 258, column: 3, scope: !282)
!362 = !DISubprogram(name: "sqrt", scope: !267, file: !267, line: 143, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DISubprogram(name: "cos", scope: !267, file: !267, line: 62, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!364 = !DISubprogram(name: "sin", scope: !267, file: !267, line: 64, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!365 = distinct !DISubprogram(name: "gsl_sf_bessel_Ynu_asympx_e", scope: !2, file: !2, line: 265, type: !261, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !366)
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381}
!367 = !DILocalVariable(name: "nu", arg: 1, scope: !365, file: !2, line: 265, type: !71)
!368 = !DILocalVariable(name: "x", arg: 2, scope: !365, file: !2, line: 265, type: !71)
!369 = !DILocalVariable(name: "result", arg: 3, scope: !365, file: !2, line: 265, type: !74)
!370 = !DILocalVariable(name: "ampl", scope: !365, file: !2, line: 267, type: !72)
!371 = !DILocalVariable(name: "theta", scope: !365, file: !2, line: 268, type: !72)
!372 = !DILocalVariable(name: "alpha", scope: !365, file: !2, line: 269, type: !72)
!373 = !DILocalVariable(name: "beta", scope: !365, file: !2, line: 270, type: !72)
!374 = !DILocalVariable(name: "stat_a", scope: !365, file: !2, line: 271, type: !21)
!375 = !DILocalVariable(name: "stat_t", scope: !365, file: !2, line: 272, type: !21)
!376 = !DILocalVariable(name: "sin_alpha", scope: !365, file: !2, line: 273, type: !72)
!377 = !DILocalVariable(name: "cos_alpha", scope: !365, file: !2, line: 274, type: !72)
!378 = !DILocalVariable(name: "sin_chi", scope: !365, file: !2, line: 275, type: !72)
!379 = !DILocalVariable(name: "cos_chi", scope: !365, file: !2, line: 276, type: !72)
!380 = !DILocalVariable(name: "sin_term", scope: !365, file: !2, line: 277, type: !72)
!381 = !DILocalVariable(name: "sin_term_mag", scope: !365, file: !2, line: 278, type: !72)
!382 = distinct !DIAssignID()
!383 = !DILocation(line: 0, scope: !365)
!384 = distinct !DIAssignID()
!385 = !DILocation(line: 267, column: 3, scope: !365)
!386 = !DILocation(line: 268, column: 3, scope: !365)
!387 = !DILocation(line: 270, column: 22, scope: !365)
!388 = !DILocation(line: 270, column: 25, scope: !365)
!389 = !DILocation(line: 271, column: 16, scope: !365)
!390 = !DILocation(line: 272, column: 16, scope: !365)
!391 = !DILocation(line: 273, column: 22, scope: !365)
!392 = !DILocation(line: 274, column: 22, scope: !365)
!393 = !DILocation(line: 275, column: 33, scope: !365)
!394 = !{!134, !134, i64 0}
!395 = !DILocation(line: 275, column: 31, scope: !365)
!396 = !DILocation(line: 275, column: 22, scope: !365)
!397 = !DILocation(line: 276, column: 33, scope: !365)
!398 = !DILocation(line: 276, column: 31, scope: !365)
!399 = !DILocation(line: 276, column: 22, scope: !365)
!400 = !DILocation(line: 277, column: 35, scope: !365)
!401 = !DILocation(line: 277, column: 55, scope: !365)
!402 = !DILocation(line: 277, column: 45, scope: !365)
!403 = !DILocation(line: 278, column: 25, scope: !365)
!404 = !DILocation(line: 278, column: 53, scope: !365)
!405 = !DILocation(line: 278, column: 51, scope: !365)
!406 = !DILocation(line: 279, column: 18, scope: !365)
!407 = !DILocation(line: 279, column: 23, scope: !365)
!408 = !DILocation(line: 279, column: 16, scope: !365)
!409 = !DILocation(line: 280, column: 18, scope: !365)
!410 = !DILocation(line: 280, column: 29, scope: !365)
!411 = !DILocation(line: 280, column: 47, scope: !365)
!412 = !DILocation(line: 280, column: 11, scope: !365)
!413 = !DILocation(line: 281, column: 18, scope: !365)
!414 = !DILocation(line: 281, column: 36, scope: !365)
!415 = !DILocation(line: 281, column: 42, scope: !365)
!416 = !DILocation(line: 281, column: 15, scope: !365)
!417 = !DILocation(line: 283, column: 6, scope: !418)
!418 = distinct !DILexicalBlock(scope: !365, file: !2, line: 283, column: 6)
!419 = !DILocation(line: 283, column: 18, scope: !418)
!420 = !DILocation(line: 283, column: 6, scope: !365)
!421 = !DILocation(line: 284, column: 24, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !2, line: 283, column: 41)
!423 = !DILocation(line: 285, column: 3, scope: !422)
!424 = !DILocation(line: 286, column: 23, scope: !425)
!425 = distinct !DILexicalBlock(scope: !418, file: !2, line: 286, column: 11)
!426 = !DILocation(line: 286, column: 11, scope: !418)
!427 = !DILocation(line: 287, column: 26, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !2, line: 286, column: 51)
!429 = !DILocation(line: 287, column: 40, scope: !428)
!430 = !DILocation(line: 288, column: 3, scope: !428)
!431 = !DILocation(line: 0, scope: !418)
!432 = !DILocation(line: 290, column: 10, scope: !365)
!433 = !DILocation(line: 291, column: 1, scope: !365)
!434 = !DILocation(line: 290, column: 3, scope: !365)
!435 = !DISubprogram(name: "gsl_sf_bessel_asymp_Mnu_e", scope: !436, file: !436, line: 41, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DIFile(filename: "./bessel_amp_phase.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "a6f628b2e93e39c104b915d4e6f717e5")
!437 = !DISubroutineType(types: !438)
!438 = !{!21, !71, !71, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!440 = !DISubprogram(name: "gsl_sf_bessel_asymp_thetanu_corr_e", scope: !436, file: !436, line: 42, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!441 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_asympx_e", scope: !2, file: !2, line: 297, type: !261, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !442)
!442 = !{!443, !444, !445, !446, !447, !448, !449, !450}
!443 = !DILocalVariable(name: "nu", arg: 1, scope: !441, file: !2, line: 297, type: !71)
!444 = !DILocalVariable(name: "x", arg: 2, scope: !441, file: !2, line: 297, type: !71)
!445 = !DILocalVariable(name: "result", arg: 3, scope: !441, file: !2, line: 297, type: !74)
!446 = !DILocalVariable(name: "mu", scope: !441, file: !2, line: 299, type: !72)
!447 = !DILocalVariable(name: "mum1", scope: !441, file: !2, line: 300, type: !72)
!448 = !DILocalVariable(name: "mum9", scope: !441, file: !2, line: 301, type: !72)
!449 = !DILocalVariable(name: "pre", scope: !441, file: !2, line: 302, type: !72)
!450 = !DILocalVariable(name: "r", scope: !441, file: !2, line: 303, type: !72)
!451 = !DILocation(line: 0, scope: !441)
!452 = !DILocation(line: 299, column: 20, scope: !441)
!453 = !DILocation(line: 299, column: 23, scope: !441)
!454 = !DILocation(line: 300, column: 19, scope: !441)
!455 = !DILocation(line: 301, column: 19, scope: !441)
!456 = !DILocation(line: 302, column: 34, scope: !441)
!457 = !DILocation(line: 302, column: 21, scope: !441)
!458 = !DILocation(line: 302, column: 20, scope: !441)
!459 = !DILocation(line: 303, column: 19, scope: !441)
!460 = !DILocation(line: 304, column: 39, scope: !441)
!461 = !DILocation(line: 304, column: 34, scope: !441)
!462 = !DILocation(line: 304, column: 28, scope: !441)
!463 = !DILocation(line: 304, column: 49, scope: !441)
!464 = !DILocation(line: 304, column: 61, scope: !441)
!465 = !DILocation(line: 304, column: 63, scope: !441)
!466 = !DILocation(line: 304, column: 54, scope: !441)
!467 = !DILocation(line: 304, column: 43, scope: !441)
!468 = !DILocation(line: 304, column: 21, scope: !441)
!469 = !DILocation(line: 304, column: 15, scope: !441)
!470 = !DILocation(line: 305, column: 41, scope: !441)
!471 = !DILocation(line: 305, column: 39, scope: !441)
!472 = !DILocation(line: 305, column: 75, scope: !441)
!473 = !DILocation(line: 305, column: 77, scope: !441)
!474 = !DILocation(line: 305, column: 79, scope: !441)
!475 = !DILocation(line: 305, column: 67, scope: !441)
!476 = !DILocation(line: 305, column: 65, scope: !441)
!477 = !DILocation(line: 305, column: 59, scope: !441)
!478 = !DILocation(line: 305, column: 11, scope: !441)
!479 = !DILocation(line: 305, column: 15, scope: !441)
!480 = !DILocation(line: 306, column: 3, scope: !441)
!481 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_asympx_e", scope: !2, file: !2, line: 312, type: !261, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490}
!483 = !DILocalVariable(name: "nu", arg: 1, scope: !481, file: !2, line: 312, type: !71)
!484 = !DILocalVariable(name: "x", arg: 2, scope: !481, file: !2, line: 312, type: !71)
!485 = !DILocalVariable(name: "result", arg: 3, scope: !481, file: !2, line: 312, type: !74)
!486 = !DILocalVariable(name: "mu", scope: !481, file: !2, line: 314, type: !72)
!487 = !DILocalVariable(name: "mum1", scope: !481, file: !2, line: 315, type: !72)
!488 = !DILocalVariable(name: "mum9", scope: !481, file: !2, line: 316, type: !72)
!489 = !DILocalVariable(name: "pre", scope: !481, file: !2, line: 317, type: !72)
!490 = !DILocalVariable(name: "r", scope: !481, file: !2, line: 318, type: !72)
!491 = !DILocation(line: 0, scope: !481)
!492 = !DILocation(line: 314, column: 20, scope: !481)
!493 = !DILocation(line: 314, column: 23, scope: !481)
!494 = !DILocation(line: 315, column: 19, scope: !481)
!495 = !DILocation(line: 316, column: 19, scope: !481)
!496 = !DILocation(line: 317, column: 31, scope: !481)
!497 = !DILocation(line: 317, column: 26, scope: !481)
!498 = !DILocation(line: 317, column: 17, scope: !481)
!499 = !DILocation(line: 318, column: 19, scope: !481)
!500 = !DILocation(line: 319, column: 39, scope: !481)
!501 = !DILocation(line: 319, column: 34, scope: !481)
!502 = !DILocation(line: 319, column: 28, scope: !481)
!503 = !DILocation(line: 319, column: 49, scope: !481)
!504 = !DILocation(line: 319, column: 61, scope: !481)
!505 = !DILocation(line: 319, column: 63, scope: !481)
!506 = !DILocation(line: 319, column: 54, scope: !481)
!507 = !DILocation(line: 319, column: 43, scope: !481)
!508 = !DILocation(line: 319, column: 21, scope: !481)
!509 = !DILocation(line: 319, column: 15, scope: !481)
!510 = !DILocation(line: 320, column: 41, scope: !481)
!511 = !DILocation(line: 320, column: 39, scope: !481)
!512 = !DILocation(line: 320, column: 75, scope: !481)
!513 = !DILocation(line: 320, column: 77, scope: !481)
!514 = !DILocation(line: 320, column: 79, scope: !481)
!515 = !DILocation(line: 320, column: 67, scope: !481)
!516 = !DILocation(line: 320, column: 65, scope: !481)
!517 = !DILocation(line: 320, column: 59, scope: !481)
!518 = !DILocation(line: 320, column: 11, scope: !481)
!519 = !DILocation(line: 320, column: 15, scope: !481)
!520 = !DILocation(line: 321, column: 3, scope: !481)
!521 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_asymp_unif_e", scope: !2, file: !2, line: 356, type: !261, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !522)
!522 = !{!523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !537, !538}
!523 = !DILocalVariable(name: "nu", arg: 1, scope: !521, file: !2, line: 356, type: !71)
!524 = !DILocalVariable(name: "x", arg: 2, scope: !521, file: !2, line: 356, type: !71)
!525 = !DILocalVariable(name: "result", arg: 3, scope: !521, file: !2, line: 356, type: !74)
!526 = !DILocalVariable(name: "i", scope: !521, file: !2, line: 358, type: !21)
!527 = !DILocalVariable(name: "z", scope: !521, file: !2, line: 359, type: !72)
!528 = !DILocalVariable(name: "root_term", scope: !521, file: !2, line: 360, type: !72)
!529 = !DILocalVariable(name: "pre", scope: !521, file: !2, line: 361, type: !72)
!530 = !DILocalVariable(name: "eta", scope: !521, file: !2, line: 362, type: !72)
!531 = !DILocalVariable(name: "ex_arg", scope: !521, file: !2, line: 363, type: !72)
!532 = !DILocalVariable(name: "ex_result", scope: !521, file: !2, line: 364, type: !75)
!533 = !DILocalVariable(name: "stat_ex", scope: !521, file: !2, line: 365, type: !21)
!534 = !DILocalVariable(name: "t", scope: !535, file: !2, line: 367, type: !72)
!535 = distinct !DILexicalBlock(scope: !536, file: !2, line: 366, column: 30)
!536 = distinct !DILexicalBlock(scope: !521, file: !2, line: 366, column: 6)
!537 = !DILocalVariable(name: "sum", scope: !535, file: !2, line: 368, type: !72)
!538 = !DILocalVariable(name: "tpow", scope: !535, file: !2, line: 369, type: !539)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1024, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 16)
!542 = distinct !DIAssignID()
!543 = !DILocation(line: 0, scope: !521)
!544 = !DILocation(line: 359, column: 15, scope: !521)
!545 = !DILocation(line: 360, column: 22, scope: !521)
!546 = !DILocation(line: 361, column: 33, scope: !521)
!547 = !DILocation(line: 361, column: 37, scope: !521)
!548 = !DILocation(line: 361, column: 20, scope: !521)
!549 = !DILocation(line: 361, column: 19, scope: !521)
!550 = !DILocation(line: 362, column: 38, scope: !521)
!551 = !DILocation(line: 362, column: 33, scope: !521)
!552 = !DILocation(line: 362, column: 28, scope: !521)
!553 = !DILocation(line: 363, column: 23, scope: !521)
!554 = !DILocation(line: 363, column: 21, scope: !521)
!555 = !DILocation(line: 362, column: 26, scope: !521)
!556 = !DILocation(line: 363, column: 60, scope: !521)
!557 = !DILocation(line: 363, column: 55, scope: !521)
!558 = !DILocation(line: 363, column: 73, scope: !521)
!559 = !DILocation(line: 363, column: 76, scope: !521)
!560 = !DILocation(line: 363, column: 95, scope: !521)
!561 = !DILocation(line: 363, column: 97, scope: !521)
!562 = !DILocation(line: 363, column: 89, scope: !521)
!563 = !DILocation(line: 363, column: 84, scope: !521)
!564 = !DILocation(line: 363, column: 78, scope: !521)
!565 = !DILocation(line: 364, column: 3, scope: !521)
!566 = !DILocation(line: 365, column: 17, scope: !521)
!567 = !DILocation(line: 366, column: 14, scope: !536)
!568 = !DILocation(line: 366, column: 6, scope: !521)
!569 = !DILocation(line: 367, column: 19, scope: !535)
!570 = !DILocation(line: 0, scope: !535)
!571 = !DILocation(line: 371, column: 37, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !2, line: 371, column: 5)
!573 = distinct !DILexicalBlock(scope: !535, file: !2, line: 371, column: 5)
!574 = !DILocalVariable(name: "tpow", arg: 1, scope: !575, file: !2, line: 45, type: !578)
!575 = distinct !DISubprogram(name: "debye_u1", scope: !2, file: !2, line: 45, type: !576, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !579)
!576 = !DISubroutineType(types: !577)
!577 = !{!72, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!579 = !{!574}
!580 = !DILocation(line: 0, scope: !575, inlinedAt: !581)
!581 = distinct !DILocation(line: 372, column: 17, scope: !535)
!582 = !DILocation(line: 47, column: 14, scope: !575, inlinedAt: !581)
!583 = !DILocation(line: 47, column: 28, scope: !575, inlinedAt: !581)
!584 = !DILocation(line: 47, column: 23, scope: !575, inlinedAt: !581)
!585 = !DILocation(line: 47, column: 37, scope: !575, inlinedAt: !581)
!586 = !DILocation(line: 372, column: 31, scope: !535)
!587 = !DILocation(line: 372, column: 15, scope: !535)
!588 = !DILocalVariable(name: "tpow", arg: 1, scope: !589, file: !2, line: 51, type: !578)
!589 = distinct !DISubprogram(name: "debye_u2", scope: !2, file: !2, line: 51, type: !576, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !590)
!590 = !{!588}
!591 = !DILocation(line: 0, scope: !589, inlinedAt: !592)
!592 = distinct !DILocation(line: 372, column: 37, scope: !535)
!593 = !DILocation(line: 53, column: 15, scope: !589, inlinedAt: !592)
!594 = !DILocation(line: 53, column: 31, scope: !589, inlinedAt: !592)
!595 = !DILocation(line: 53, column: 24, scope: !589, inlinedAt: !592)
!596 = !DILocation(line: 53, column: 47, scope: !589, inlinedAt: !592)
!597 = !DILocation(line: 53, column: 40, scope: !589, inlinedAt: !592)
!598 = !DILocation(line: 53, column: 56, scope: !589, inlinedAt: !592)
!599 = !DILocation(line: 372, column: 55, scope: !535)
!600 = !DILocation(line: 372, column: 51, scope: !535)
!601 = !DILocation(line: 372, column: 35, scope: !535)
!602 = !DILocalVariable(name: "tpow", arg: 1, scope: !603, file: !2, line: 57, type: !578)
!603 = distinct !DISubprogram(name: "debye_u3", scope: !2, file: !2, line: 57, type: !576, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !604)
!604 = !{!602}
!605 = !DILocation(line: 0, scope: !603, inlinedAt: !606)
!606 = distinct !DILocation(line: 372, column: 62, scope: !535)
!607 = !DILocation(line: 59, column: 18, scope: !603, inlinedAt: !606)
!608 = !DILocation(line: 59, column: 37, scope: !603, inlinedAt: !606)
!609 = !DILocation(line: 59, column: 27, scope: !603, inlinedAt: !606)
!610 = !DILocation(line: 59, column: 56, scope: !603, inlinedAt: !606)
!611 = !DILocation(line: 59, column: 46, scope: !603, inlinedAt: !606)
!612 = !DILocation(line: 59, column: 75, scope: !603, inlinedAt: !606)
!613 = !DILocation(line: 59, column: 65, scope: !603, inlinedAt: !606)
!614 = !DILocation(line: 59, column: 84, scope: !603, inlinedAt: !606)
!615 = !DILocation(line: 372, column: 83, scope: !535)
!616 = !DILocation(line: 372, column: 76, scope: !535)
!617 = !DILocation(line: 372, column: 60, scope: !535)
!618 = !DILocalVariable(name: "tpow", arg: 1, scope: !619, file: !2, line: 63, type: !578)
!619 = distinct !DISubprogram(name: "debye_u4", scope: !2, file: !2, line: 63, type: !576, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !620)
!620 = !{!618}
!621 = !DILocation(line: 0, scope: !619, inlinedAt: !622)
!622 = distinct !DILocation(line: 373, column: 13, scope: !535)
!623 = !DILocation(line: 65, column: 20, scope: !619, inlinedAt: !622)
!624 = !DILocation(line: 65, column: 41, scope: !619, inlinedAt: !622)
!625 = !DILocation(line: 65, column: 29, scope: !619, inlinedAt: !622)
!626 = !DILocation(line: 65, column: 63, scope: !619, inlinedAt: !622)
!627 = !DILocation(line: 65, column: 50, scope: !619, inlinedAt: !622)
!628 = !DILocation(line: 66, column: 22, scope: !619, inlinedAt: !622)
!629 = !DILocation(line: 65, column: 72, scope: !619, inlinedAt: !622)
!630 = !DILocation(line: 66, column: 45, scope: !619, inlinedAt: !622)
!631 = !DILocation(line: 66, column: 32, scope: !619, inlinedAt: !622)
!632 = !DILocation(line: 66, column: 55, scope: !619, inlinedAt: !622)
!633 = !DILocation(line: 373, column: 37, scope: !535)
!634 = !DILocation(line: 373, column: 27, scope: !535)
!635 = !DILocation(line: 373, column: 11, scope: !535)
!636 = !DILocalVariable(name: "tpow", arg: 1, scope: !637, file: !2, line: 70, type: !578)
!637 = distinct !DISubprogram(name: "debye_u5", scope: !2, file: !2, line: 70, type: !576, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !638)
!638 = !{!636}
!639 = !DILocation(line: 0, scope: !637, inlinedAt: !640)
!640 = distinct !DILocation(line: 373, column: 44, scope: !535)
!641 = !DILocation(line: 72, column: 23, scope: !637, inlinedAt: !640)
!642 = !DILocation(line: 72, column: 51, scope: !637, inlinedAt: !640)
!643 = !DILocation(line: 72, column: 36, scope: !637, inlinedAt: !640)
!644 = !DILocation(line: 73, column: 25, scope: !637, inlinedAt: !640)
!645 = !DILocation(line: 72, column: 60, scope: !637, inlinedAt: !640)
!646 = !DILocation(line: 73, column: 52, scope: !637, inlinedAt: !640)
!647 = !DILocation(line: 73, column: 36, scope: !637, inlinedAt: !640)
!648 = !DILocation(line: 74, column: 25, scope: !637, inlinedAt: !640)
!649 = !DILocation(line: 73, column: 62, scope: !637, inlinedAt: !640)
!650 = !DILocation(line: 74, column: 52, scope: !637, inlinedAt: !640)
!651 = !DILocation(line: 74, column: 36, scope: !637, inlinedAt: !640)
!652 = !DILocation(line: 74, column: 62, scope: !637, inlinedAt: !640)
!653 = !DILocation(line: 373, column: 71, scope: !535)
!654 = !DILocation(line: 373, column: 58, scope: !535)
!655 = !DILocation(line: 373, column: 42, scope: !535)
!656 = !DILocation(line: 374, column: 36, scope: !535)
!657 = !DILocation(line: 374, column: 24, scope: !535)
!658 = !DILocation(line: 374, column: 40, scope: !535)
!659 = !DILocation(line: 374, column: 18, scope: !535)
!660 = !DILocation(line: 375, column: 57, scope: !535)
!661 = !DILocation(line: 375, column: 40, scope: !535)
!662 = !DILocation(line: 375, column: 13, scope: !535)
!663 = !DILocation(line: 376, column: 36, scope: !535)
!664 = !DILocation(line: 376, column: 24, scope: !535)
!665 = !DILocation(line: 376, column: 42, scope: !535)
!666 = !DILocation(line: 376, column: 40, scope: !535)
!667 = !DILocation(line: 376, column: 17, scope: !535)
!668 = !DILocation(line: 377, column: 44, scope: !535)
!669 = !DILocation(line: 377, column: 42, scope: !535)
!670 = !DILocation(line: 377, column: 17, scope: !535)
!671 = !DILocation(line: 382, column: 17, scope: !672)
!672 = distinct !DILexicalBlock(scope: !536, file: !2, line: 380, column: 8)
!673 = !DILocation(line: 383, column: 5, scope: !672)
!674 = !DILocation(line: 385, column: 1, scope: !521)
!675 = !DISubprogram(name: "hypot", scope: !267, file: !267, line: 147, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!676 = !DISubprogram(name: "gsl_sf_exp_e", scope: !277, file: !277, line: 45, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!677 = !DISubroutineType(types: !678)
!678 = !{!21, !71, !74}
!679 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_asymp_unif_e", scope: !2, file: !2, line: 394, type: !261, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !695, !696}
!681 = !DILocalVariable(name: "nu", arg: 1, scope: !679, file: !2, line: 394, type: !71)
!682 = !DILocalVariable(name: "x", arg: 2, scope: !679, file: !2, line: 394, type: !71)
!683 = !DILocalVariable(name: "result", arg: 3, scope: !679, file: !2, line: 394, type: !74)
!684 = !DILocalVariable(name: "i", scope: !679, file: !2, line: 396, type: !21)
!685 = !DILocalVariable(name: "z", scope: !679, file: !2, line: 397, type: !72)
!686 = !DILocalVariable(name: "root_term", scope: !679, file: !2, line: 398, type: !72)
!687 = !DILocalVariable(name: "pre", scope: !679, file: !2, line: 399, type: !72)
!688 = !DILocalVariable(name: "eta", scope: !679, file: !2, line: 400, type: !72)
!689 = !DILocalVariable(name: "ex_arg", scope: !679, file: !2, line: 401, type: !72)
!690 = !DILocalVariable(name: "ex_result", scope: !679, file: !2, line: 402, type: !75)
!691 = !DILocalVariable(name: "stat_ex", scope: !679, file: !2, line: 403, type: !21)
!692 = !DILocalVariable(name: "t", scope: !693, file: !2, line: 405, type: !72)
!693 = distinct !DILexicalBlock(scope: !694, file: !2, line: 404, column: 30)
!694 = distinct !DILexicalBlock(scope: !679, file: !2, line: 404, column: 6)
!695 = !DILocalVariable(name: "sum", scope: !693, file: !2, line: 406, type: !72)
!696 = !DILocalVariable(name: "tpow", scope: !693, file: !2, line: 407, type: !539)
!697 = distinct !DIAssignID()
!698 = !DILocation(line: 0, scope: !679)
!699 = !DILocation(line: 397, column: 15, scope: !679)
!700 = !DILocation(line: 398, column: 22, scope: !679)
!701 = !DILocation(line: 399, column: 30, scope: !679)
!702 = !DILocation(line: 399, column: 33, scope: !679)
!703 = !DILocation(line: 399, column: 25, scope: !679)
!704 = !DILocation(line: 399, column: 16, scope: !679)
!705 = !DILocation(line: 400, column: 38, scope: !679)
!706 = !DILocation(line: 400, column: 33, scope: !679)
!707 = !DILocation(line: 400, column: 28, scope: !679)
!708 = !DILocation(line: 401, column: 23, scope: !679)
!709 = !DILocation(line: 401, column: 21, scope: !679)
!710 = !DILocation(line: 400, column: 26, scope: !679)
!711 = !DILocation(line: 401, column: 59, scope: !679)
!712 = !DILocation(line: 401, column: 55, scope: !679)
!713 = !DILocation(line: 401, column: 71, scope: !679)
!714 = !DILocation(line: 401, column: 74, scope: !679)
!715 = !DILocation(line: 401, column: 93, scope: !679)
!716 = !DILocation(line: 401, column: 95, scope: !679)
!717 = !DILocation(line: 401, column: 87, scope: !679)
!718 = !DILocation(line: 401, column: 82, scope: !679)
!719 = !DILocation(line: 401, column: 76, scope: !679)
!720 = !DILocation(line: 402, column: 3, scope: !679)
!721 = !DILocation(line: 403, column: 17, scope: !679)
!722 = !DILocation(line: 404, column: 14, scope: !694)
!723 = !DILocation(line: 404, column: 6, scope: !679)
!724 = !DILocation(line: 405, column: 19, scope: !693)
!725 = !DILocation(line: 0, scope: !693)
!726 = !DILocation(line: 409, column: 37, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !2, line: 409, column: 5)
!728 = distinct !DILexicalBlock(scope: !693, file: !2, line: 409, column: 5)
!729 = !DILocation(line: 0, scope: !575, inlinedAt: !730)
!730 = distinct !DILocation(line: 410, column: 17, scope: !693)
!731 = !DILocation(line: 47, column: 14, scope: !575, inlinedAt: !730)
!732 = !DILocation(line: 47, column: 28, scope: !575, inlinedAt: !730)
!733 = !DILocation(line: 47, column: 23, scope: !575, inlinedAt: !730)
!734 = !DILocation(line: 47, column: 37, scope: !575, inlinedAt: !730)
!735 = !DILocation(line: 410, column: 31, scope: !693)
!736 = !DILocation(line: 410, column: 15, scope: !693)
!737 = !DILocation(line: 0, scope: !589, inlinedAt: !738)
!738 = distinct !DILocation(line: 410, column: 37, scope: !693)
!739 = !DILocation(line: 53, column: 15, scope: !589, inlinedAt: !738)
!740 = !DILocation(line: 53, column: 31, scope: !589, inlinedAt: !738)
!741 = !DILocation(line: 53, column: 24, scope: !589, inlinedAt: !738)
!742 = !DILocation(line: 53, column: 47, scope: !589, inlinedAt: !738)
!743 = !DILocation(line: 53, column: 40, scope: !589, inlinedAt: !738)
!744 = !DILocation(line: 53, column: 56, scope: !589, inlinedAt: !738)
!745 = !DILocation(line: 410, column: 55, scope: !693)
!746 = !DILocation(line: 410, column: 51, scope: !693)
!747 = !DILocation(line: 410, column: 35, scope: !693)
!748 = !DILocation(line: 0, scope: !603, inlinedAt: !749)
!749 = distinct !DILocation(line: 410, column: 62, scope: !693)
!750 = !DILocation(line: 59, column: 18, scope: !603, inlinedAt: !749)
!751 = !DILocation(line: 59, column: 37, scope: !603, inlinedAt: !749)
!752 = !DILocation(line: 59, column: 27, scope: !603, inlinedAt: !749)
!753 = !DILocation(line: 59, column: 56, scope: !603, inlinedAt: !749)
!754 = !DILocation(line: 59, column: 46, scope: !603, inlinedAt: !749)
!755 = !DILocation(line: 59, column: 75, scope: !603, inlinedAt: !749)
!756 = !DILocation(line: 59, column: 65, scope: !603, inlinedAt: !749)
!757 = !DILocation(line: 59, column: 84, scope: !603, inlinedAt: !749)
!758 = !DILocation(line: 410, column: 83, scope: !693)
!759 = !DILocation(line: 410, column: 76, scope: !693)
!760 = !DILocation(line: 410, column: 60, scope: !693)
!761 = !DILocation(line: 0, scope: !619, inlinedAt: !762)
!762 = distinct !DILocation(line: 411, column: 13, scope: !693)
!763 = !DILocation(line: 65, column: 20, scope: !619, inlinedAt: !762)
!764 = !DILocation(line: 65, column: 41, scope: !619, inlinedAt: !762)
!765 = !DILocation(line: 65, column: 29, scope: !619, inlinedAt: !762)
!766 = !DILocation(line: 65, column: 63, scope: !619, inlinedAt: !762)
!767 = !DILocation(line: 65, column: 50, scope: !619, inlinedAt: !762)
!768 = !DILocation(line: 66, column: 22, scope: !619, inlinedAt: !762)
!769 = !DILocation(line: 65, column: 72, scope: !619, inlinedAt: !762)
!770 = !DILocation(line: 66, column: 45, scope: !619, inlinedAt: !762)
!771 = !DILocation(line: 66, column: 32, scope: !619, inlinedAt: !762)
!772 = !DILocation(line: 66, column: 55, scope: !619, inlinedAt: !762)
!773 = !DILocation(line: 411, column: 37, scope: !693)
!774 = !DILocation(line: 411, column: 27, scope: !693)
!775 = !DILocation(line: 411, column: 11, scope: !693)
!776 = !DILocation(line: 0, scope: !637, inlinedAt: !777)
!777 = distinct !DILocation(line: 411, column: 44, scope: !693)
!778 = !DILocation(line: 72, column: 23, scope: !637, inlinedAt: !777)
!779 = !DILocation(line: 72, column: 51, scope: !637, inlinedAt: !777)
!780 = !DILocation(line: 72, column: 36, scope: !637, inlinedAt: !777)
!781 = !DILocation(line: 73, column: 25, scope: !637, inlinedAt: !777)
!782 = !DILocation(line: 72, column: 60, scope: !637, inlinedAt: !777)
!783 = !DILocation(line: 73, column: 52, scope: !637, inlinedAt: !777)
!784 = !DILocation(line: 73, column: 36, scope: !637, inlinedAt: !777)
!785 = !DILocation(line: 74, column: 25, scope: !637, inlinedAt: !777)
!786 = !DILocation(line: 73, column: 62, scope: !637, inlinedAt: !777)
!787 = !DILocation(line: 74, column: 52, scope: !637, inlinedAt: !777)
!788 = !DILocation(line: 74, column: 36, scope: !637, inlinedAt: !777)
!789 = !DILocation(line: 74, column: 62, scope: !637, inlinedAt: !777)
!790 = !DILocation(line: 411, column: 71, scope: !693)
!791 = !DILocation(line: 411, column: 58, scope: !693)
!792 = !DILocation(line: 411, column: 42, scope: !693)
!793 = !DILocation(line: 412, column: 36, scope: !693)
!794 = !DILocation(line: 412, column: 24, scope: !693)
!795 = !DILocation(line: 412, column: 40, scope: !693)
!796 = !DILocation(line: 412, column: 18, scope: !693)
!797 = !DILocation(line: 413, column: 36, scope: !693)
!798 = !DILocation(line: 413, column: 24, scope: !693)
!799 = !DILocation(line: 413, column: 42, scope: !693)
!800 = !DILocation(line: 413, column: 40, scope: !693)
!801 = !DILocation(line: 413, column: 13, scope: !693)
!802 = !DILocation(line: 414, column: 57, scope: !693)
!803 = !DILocation(line: 414, column: 40, scope: !693)
!804 = !DILocation(line: 414, column: 17, scope: !693)
!805 = !DILocation(line: 415, column: 44, scope: !693)
!806 = !DILocation(line: 415, column: 42, scope: !693)
!807 = !DILocation(line: 415, column: 17, scope: !693)
!808 = !DILocation(line: 420, column: 17, scope: !809)
!809 = distinct !DILexicalBlock(scope: !694, file: !2, line: 418, column: 8)
!810 = !DILocation(line: 421, column: 5, scope: !809)
!811 = !DILocation(line: 423, column: 1, scope: !679)
!812 = distinct !DISubprogram(name: "gsl_sf_bessel_JY_mu_restricted", scope: !2, file: !2, line: 429, type: !813, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{!21, !71, !71, !74, !74, !74, !74}
!815 = !{!816, !817, !818, !819, !820, !821, !822, !826, !827, !830, !831, !832, !833, !836, !837, !838, !839, !840, !841, !842, !843, !845, !846, !847}
!816 = !DILocalVariable(name: "mu", arg: 1, scope: !812, file: !2, line: 429, type: !71)
!817 = !DILocalVariable(name: "x", arg: 2, scope: !812, file: !2, line: 429, type: !71)
!818 = !DILocalVariable(name: "Jmu", arg: 3, scope: !812, file: !2, line: 430, type: !74)
!819 = !DILocalVariable(name: "Jmup1", arg: 4, scope: !812, file: !2, line: 430, type: !74)
!820 = !DILocalVariable(name: "Ymu", arg: 5, scope: !812, file: !2, line: 431, type: !74)
!821 = !DILocalVariable(name: "Ymup1", arg: 6, scope: !812, file: !2, line: 431, type: !74)
!822 = !DILocalVariable(name: "stat_Y", scope: !823, file: !2, line: 467, type: !21)
!823 = distinct !DILexicalBlock(scope: !824, file: !2, line: 466, column: 8)
!824 = distinct !DILexicalBlock(scope: !825, file: !2, line: 449, column: 11)
!825 = distinct !DILexicalBlock(scope: !812, file: !2, line: 438, column: 6)
!826 = !DILocalVariable(name: "stat_J", scope: !823, file: !2, line: 468, type: !21)
!827 = !DILocalVariable(name: "Jmup2", scope: !828, file: !2, line: 476, type: !75)
!828 = distinct !DILexicalBlock(scope: !829, file: !2, line: 470, column: 17)
!829 = distinct !DILexicalBlock(scope: !823, file: !2, line: 470, column: 8)
!830 = !DILocalVariable(name: "stat_J1", scope: !828, file: !2, line: 477, type: !21)
!831 = !DILocalVariable(name: "stat_J2", scope: !828, file: !2, line: 478, type: !21)
!832 = !DILocalVariable(name: "c", scope: !828, file: !2, line: 479, type: !72)
!833 = !DILocalVariable(name: "P", scope: !834, file: !2, line: 488, type: !72)
!834 = distinct !DILexicalBlock(scope: !835, file: !2, line: 487, column: 25)
!835 = distinct !DILexicalBlock(scope: !829, file: !2, line: 487, column: 13)
!836 = !DILocalVariable(name: "Q", scope: !834, file: !2, line: 488, type: !72)
!837 = !DILocalVariable(name: "J_ratio", scope: !834, file: !2, line: 489, type: !72)
!838 = !DILocalVariable(name: "J_sgn", scope: !834, file: !2, line: 490, type: !72)
!839 = !DILocalVariable(name: "stat_CF1", scope: !834, file: !2, line: 491, type: !73)
!840 = !DILocalVariable(name: "stat_CF2", scope: !834, file: !2, line: 492, type: !73)
!841 = !DILocalVariable(name: "Jprime_J_ratio", scope: !834, file: !2, line: 493, type: !72)
!842 = !DILocalVariable(name: "gamma", scope: !834, file: !2, line: 494, type: !72)
!843 = !DILocalVariable(name: "stat_J0", scope: !844, file: !2, line: 508, type: !73)
!844 = distinct !DILexicalBlock(scope: !835, file: !2, line: 505, column: 10)
!845 = !DILocalVariable(name: "stat_J1", scope: !844, file: !2, line: 509, type: !73)
!846 = !DILocalVariable(name: "stat_Y0", scope: !844, file: !2, line: 510, type: !73)
!847 = !DILocalVariable(name: "stat_Y1", scope: !844, file: !2, line: 511, type: !73)
!848 = distinct !DIAssignID()
!849 = !DILocation(line: 0, scope: !828)
!850 = distinct !DIAssignID()
!851 = !DILocation(line: 0, scope: !834)
!852 = distinct !DIAssignID()
!853 = distinct !DIAssignID()
!854 = distinct !DIAssignID()
!855 = !DILocation(line: 0, scope: !812)
!856 = !DILocation(line: 438, column: 8, scope: !825)
!857 = !DILocation(line: 438, column: 14, scope: !825)
!858 = !DILocation(line: 440, column: 16, scope: !859)
!859 = distinct !DILexicalBlock(scope: !825, file: !2, line: 438, column: 33)
!860 = !DILocation(line: 442, column: 16, scope: !859)
!861 = !DILocation(line: 444, column: 16, scope: !859)
!862 = !DILocation(line: 446, column: 16, scope: !859)
!863 = !DILocation(line: 447, column: 5, scope: !864)
!864 = distinct !DILexicalBlock(scope: !859, file: !2, line: 447, column: 5)
!865 = !DILocation(line: 449, column: 13, scope: !824)
!866 = !DILocation(line: 449, column: 11, scope: !825)
!867 = !DILocation(line: 450, column: 11, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !2, line: 450, column: 8)
!869 = distinct !DILexicalBlock(scope: !824, file: !2, line: 449, column: 21)
!870 = !DILocation(line: 450, column: 8, scope: !869)
!871 = !DILocation(line: 0, scope: !868)
!872 = !DILocation(line: 459, column: 16, scope: !869)
!873 = !DILocation(line: 461, column: 16, scope: !869)
!874 = !DILocation(line: 463, column: 16, scope: !869)
!875 = !DILocation(line: 464, column: 5, scope: !876)
!876 = distinct !DILexicalBlock(scope: !869, file: !2, line: 464, column: 5)
!877 = !DILocation(line: 470, column: 10, scope: !829)
!878 = !DILocation(line: 470, column: 8, scope: !823)
!879 = !DILocation(line: 476, column: 7, scope: !828)
!880 = !DILocation(line: 477, column: 49, scope: !828)
!881 = !DILocation(line: 477, column: 21, scope: !828)
!882 = !DILocation(line: 478, column: 49, scope: !828)
!883 = !DILocation(line: 478, column: 21, scope: !828)
!884 = !DILocation(line: 479, column: 21, scope: !828)
!885 = !DILocation(line: 479, column: 30, scope: !828)
!886 = !DILocation(line: 480, column: 30, scope: !828)
!887 = !DILocation(line: 480, column: 21, scope: !828)
!888 = !DILocation(line: 480, column: 42, scope: !828)
!889 = !DILocation(line: 480, column: 34, scope: !828)
!890 = !DILocation(line: 480, column: 17, scope: !828)
!891 = !DILocation(line: 481, column: 30, scope: !828)
!892 = !DILocation(line: 481, column: 21, scope: !828)
!893 = !DILocation(line: 481, column: 42, scope: !828)
!894 = !DILocation(line: 481, column: 34, scope: !828)
!895 = !DILocation(line: 481, column: 12, scope: !828)
!896 = !DILocation(line: 482, column: 43, scope: !828)
!897 = !DILocation(line: 482, column: 41, scope: !828)
!898 = !DILocation(line: 482, column: 16, scope: !828)
!899 = !DILocation(line: 483, column: 16, scope: !828)
!900 = !DILocation(line: 0, scope: !823)
!901 = !DILocation(line: 484, column: 16, scope: !828)
!902 = !DILocation(line: 485, column: 14, scope: !828)
!903 = !DILocation(line: 486, column: 5, scope: !829)
!904 = !DILocation(line: 487, column: 15, scope: !835)
!905 = !DILocation(line: 487, column: 13, scope: !829)
!906 = !DILocation(line: 488, column: 7, scope: !834)
!907 = !DILocation(line: 489, column: 7, scope: !834)
!908 = !DILocation(line: 490, column: 7, scope: !834)
!909 = !DILocation(line: 491, column: 28, scope: !834)
!910 = !{i32 0, i32 12}
!911 = !DILocation(line: 492, column: 28, scope: !834)
!912 = !DILocation(line: 493, column: 33, scope: !834)
!913 = !DILocation(line: 493, column: 38, scope: !834)
!914 = !DILocation(line: 493, column: 36, scope: !834)
!915 = !DILocation(line: 494, column: 23, scope: !834)
!916 = !DILocation(line: 494, column: 25, scope: !834)
!917 = !DILocation(line: 494, column: 43, scope: !834)
!918 = !DILocation(line: 494, column: 42, scope: !834)
!919 = !DILocation(line: 495, column: 18, scope: !834)
!920 = !DILocation(line: 495, column: 40, scope: !834)
!921 = !DILocation(line: 495, column: 34, scope: !834)
!922 = !DILocation(line: 495, column: 56, scope: !834)
!923 = !DILocation(line: 495, column: 49, scope: !834)
!924 = !DILocation(line: 495, column: 44, scope: !834)
!925 = !DILocation(line: 495, column: 26, scope: !834)
!926 = !DILocation(line: 495, column: 24, scope: !834)
!927 = !DILocation(line: 495, column: 16, scope: !834)
!928 = !DILocation(line: 496, column: 42, scope: !834)
!929 = !DILocation(line: 496, column: 40, scope: !834)
!930 = !DILocation(line: 496, column: 12, scope: !834)
!931 = !DILocation(line: 496, column: 16, scope: !834)
!932 = !DILocation(line: 497, column: 28, scope: !834)
!933 = !DILocation(line: 497, column: 18, scope: !834)
!934 = !DILocation(line: 498, column: 20, scope: !834)
!935 = !DILocation(line: 498, column: 34, scope: !834)
!936 = !DILocation(line: 498, column: 14, scope: !834)
!937 = !DILocation(line: 498, column: 18, scope: !834)
!938 = !DILocation(line: 499, column: 31, scope: !834)
!939 = !DILocation(line: 499, column: 24, scope: !834)
!940 = !DILocation(line: 499, column: 16, scope: !834)
!941 = !DILocation(line: 500, column: 18, scope: !834)
!942 = !DILocation(line: 500, column: 37, scope: !834)
!943 = !DILocation(line: 500, column: 30, scope: !834)
!944 = !DILocation(line: 500, column: 12, scope: !834)
!945 = !DILocation(line: 500, column: 16, scope: !834)
!946 = !DILocation(line: 501, column: 37, scope: !834)
!947 = !DILocation(line: 501, column: 44, scope: !834)
!948 = !DILocation(line: 501, column: 41, scope: !834)
!949 = !DILocation(line: 501, column: 29, scope: !834)
!950 = !DILocation(line: 501, column: 18, scope: !834)
!951 = !DILocation(line: 502, column: 31, scope: !834)
!952 = !DILocation(line: 502, column: 29, scope: !834)
!953 = !DILocation(line: 502, column: 78, scope: !834)
!954 = !DILocation(line: 502, column: 77, scope: !834)
!955 = !DILocation(line: 502, column: 56, scope: !834)
!956 = !DILocation(line: 502, column: 14, scope: !834)
!957 = !DILocation(line: 502, column: 18, scope: !834)
!958 = !DILocation(line: 503, column: 14, scope: !834)
!959 = !DILocation(line: 504, column: 5, scope: !835)
!960 = !DILocation(line: 508, column: 27, scope: !844)
!961 = !DILocation(line: 0, scope: !844)
!962 = !DILocation(line: 509, column: 56, scope: !844)
!963 = !DILocation(line: 509, column: 27, scope: !844)
!964 = !DILocation(line: 510, column: 27, scope: !844)
!965 = !DILocation(line: 511, column: 27, scope: !844)
!966 = !DILocation(line: 513, column: 16, scope: !844)
!967 = !DILocation(line: 0, scope: !825)
!968 = !DILocation(line: 517, column: 1, scope: !812)
!969 = !DISubprogram(name: "gsl_sf_bessel_Y_temme", scope: !970, file: !970, line: 29, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DIFile(filename: "./bessel_temme.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "896353903515c0fd2eba1477c11cb66c")
!971 = !DISubroutineType(types: !972)
!972 = !{!21, !71, !71, !74, !74}
!973 = distinct !DISubprogram(name: "gsl_sf_bessel_J_CF1", scope: !2, file: !2, line: 521, type: !974, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{!21, !71, !71, !439, !439}
!976 = !{!977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !998}
!977 = !DILocalVariable(name: "nu", arg: 1, scope: !973, file: !2, line: 521, type: !71)
!978 = !DILocalVariable(name: "x", arg: 2, scope: !973, file: !2, line: 521, type: !71)
!979 = !DILocalVariable(name: "ratio", arg: 3, scope: !973, file: !2, line: 522, type: !439)
!980 = !DILocalVariable(name: "sgn", arg: 4, scope: !973, file: !2, line: 522, type: !439)
!981 = !DILocalVariable(name: "RECUR_BIG", scope: !973, file: !2, line: 524, type: !71)
!982 = !DILocalVariable(name: "RECUR_SMALL", scope: !973, file: !2, line: 525, type: !71)
!983 = !DILocalVariable(name: "maxiter", scope: !973, file: !2, line: 526, type: !73)
!984 = !DILocalVariable(name: "n", scope: !973, file: !2, line: 527, type: !21)
!985 = !DILocalVariable(name: "Anm2", scope: !973, file: !2, line: 528, type: !72)
!986 = !DILocalVariable(name: "Bnm2", scope: !973, file: !2, line: 529, type: !72)
!987 = !DILocalVariable(name: "Anm1", scope: !973, file: !2, line: 530, type: !72)
!988 = !DILocalVariable(name: "Bnm1", scope: !973, file: !2, line: 531, type: !72)
!989 = !DILocalVariable(name: "a1", scope: !973, file: !2, line: 532, type: !72)
!990 = !DILocalVariable(name: "An", scope: !973, file: !2, line: 533, type: !72)
!991 = !DILocalVariable(name: "Bn", scope: !973, file: !2, line: 534, type: !72)
!992 = !DILocalVariable(name: "an", scope: !973, file: !2, line: 535, type: !72)
!993 = !DILocalVariable(name: "fn", scope: !973, file: !2, line: 536, type: !72)
!994 = !DILocalVariable(name: "dn", scope: !973, file: !2, line: 537, type: !72)
!995 = !DILocalVariable(name: "s", scope: !973, file: !2, line: 538, type: !72)
!996 = !DILocalVariable(name: "old_fn", scope: !997, file: !2, line: 541, type: !72)
!997 = distinct !DILexicalBlock(scope: !973, file: !2, line: 540, column: 22)
!998 = !DILocalVariable(name: "del", scope: !997, file: !2, line: 542, type: !72)
!999 = !DILocation(line: 0, scope: !973)
!1000 = !DILocation(line: 532, column: 25, scope: !973)
!1001 = !DILocation(line: 532, column: 21, scope: !973)
!1002 = !DILocation(line: 532, column: 16, scope: !973)
!1003 = !DILocation(line: 533, column: 20, scope: !973)
!1004 = !DILocation(line: 534, column: 24, scope: !973)
!1005 = !DILocation(line: 534, column: 20, scope: !973)
!1006 = !DILocation(line: 536, column: 17, scope: !973)
!1007 = !DILocation(line: 540, column: 3, scope: !973)
!1008 = !DILocation(line: 540, column: 11, scope: !973)
!1009 = !DILocation(line: 580, column: 10, scope: !973)
!1010 = !DILocation(line: 581, column: 10, scope: !973)
!1011 = !DILocation(line: 583, column: 6, scope: !973)
!1012 = !DILocation(line: 543, column: 6, scope: !997)
!1013 = !DILocation(line: 548, column: 24, scope: !997)
!1014 = !DILocation(line: 548, column: 23, scope: !997)
!1015 = !DILocation(line: 548, column: 25, scope: !997)
!1016 = !DILocation(line: 548, column: 19, scope: !997)
!1017 = !DILocation(line: 548, column: 30, scope: !997)
!1018 = !DILocation(line: 548, column: 14, scope: !997)
!1019 = !DILocation(line: 549, column: 19, scope: !997)
!1020 = !DILocation(line: 549, column: 15, scope: !997)
!1021 = !DILocation(line: 550, column: 19, scope: !997)
!1022 = !DILocation(line: 550, column: 15, scope: !997)
!1023 = !DILocation(line: 552, column: 8, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !997, file: !2, line: 552, column: 8)
!1025 = !DILocation(line: 552, column: 17, scope: !1024)
!1026 = !DILocation(line: 552, column: 29, scope: !1024)
!1027 = !DILocation(line: 552, column: 32, scope: !1024)
!1028 = !DILocation(line: 552, column: 41, scope: !1024)
!1029 = !DILocation(line: 552, column: 8, scope: !997)
!1030 = !DILocation(line: 553, column: 10, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 552, column: 54)
!1032 = !DILocation(line: 554, column: 10, scope: !1031)
!1033 = !DILocation(line: 555, column: 12, scope: !1031)
!1034 = !DILocation(line: 556, column: 12, scope: !1031)
!1035 = !DILocation(line: 558, column: 5, scope: !1031)
!1036 = !DILocation(line: 558, column: 24, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 558, column: 15)
!1038 = !DILocation(line: 558, column: 38, scope: !1037)
!1039 = !DILocation(line: 559, column: 10, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 558, column: 65)
!1041 = !DILocation(line: 560, column: 10, scope: !1040)
!1042 = !DILocation(line: 561, column: 12, scope: !1040)
!1043 = !DILocation(line: 562, column: 12, scope: !1040)
!1044 = !DILocation(line: 565, column: 5, scope: !1040)
!1045 = !DILocation(line: 0, scope: !997)
!1046 = !DILocation(line: 568, column: 12, scope: !997)
!1047 = !DILocation(line: 569, column: 17, scope: !997)
!1048 = !DILocation(line: 571, column: 20, scope: !997)
!1049 = !DILocation(line: 571, column: 27, scope: !997)
!1050 = !DILocation(line: 571, column: 30, scope: !997)
!1051 = !DILocation(line: 571, column: 14, scope: !997)
!1052 = !DILocation(line: 572, column: 11, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !997, file: !2, line: 572, column: 8)
!1054 = !DILocation(line: 572, column: 8, scope: !997)
!1055 = !DILocation(line: 574, column: 17, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !997, file: !2, line: 574, column: 8)
!1057 = !DILocation(line: 574, column: 8, scope: !1056)
!1058 = !DILocation(line: 574, column: 24, scope: !1056)
!1059 = !DILocation(line: 583, column: 8, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !973, file: !2, line: 583, column: 6)
!1061 = !DILocation(line: 584, column: 5, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 584, column: 5)
!1063 = !DILocation(line: 0, scope: !1060)
!1064 = !DILocation(line: 587, column: 1, scope: !973)
!1065 = distinct !DISubprogram(name: "gsl_sf_bessel_JY_steed_CF2", scope: !2, file: !2, line: 663, type: !974, scopeLine: 665, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088}
!1067 = !DILocalVariable(name: "nu", arg: 1, scope: !1065, file: !2, line: 663, type: !71)
!1068 = !DILocalVariable(name: "x", arg: 2, scope: !1065, file: !2, line: 663, type: !71)
!1069 = !DILocalVariable(name: "P", arg: 3, scope: !1065, file: !2, line: 664, type: !439)
!1070 = !DILocalVariable(name: "Q", arg: 4, scope: !1065, file: !2, line: 664, type: !439)
!1071 = !DILocalVariable(name: "max_iter", scope: !1065, file: !2, line: 666, type: !73)
!1072 = !DILocalVariable(name: "SMALL", scope: !1065, file: !2, line: 667, type: !71)
!1073 = !DILocalVariable(name: "i", scope: !1065, file: !2, line: 669, type: !21)
!1074 = !DILocalVariable(name: "x_inv", scope: !1065, file: !2, line: 671, type: !72)
!1075 = !DILocalVariable(name: "a", scope: !1065, file: !2, line: 672, type: !72)
!1076 = !DILocalVariable(name: "p", scope: !1065, file: !2, line: 673, type: !72)
!1077 = !DILocalVariable(name: "q", scope: !1065, file: !2, line: 674, type: !72)
!1078 = !DILocalVariable(name: "br", scope: !1065, file: !2, line: 675, type: !72)
!1079 = !DILocalVariable(name: "bi", scope: !1065, file: !2, line: 676, type: !72)
!1080 = !DILocalVariable(name: "fact", scope: !1065, file: !2, line: 677, type: !72)
!1081 = !DILocalVariable(name: "cr", scope: !1065, file: !2, line: 678, type: !72)
!1082 = !DILocalVariable(name: "ci", scope: !1065, file: !2, line: 679, type: !72)
!1083 = !DILocalVariable(name: "den", scope: !1065, file: !2, line: 680, type: !72)
!1084 = !DILocalVariable(name: "dr", scope: !1065, file: !2, line: 681, type: !72)
!1085 = !DILocalVariable(name: "di", scope: !1065, file: !2, line: 682, type: !72)
!1086 = !DILocalVariable(name: "dlr", scope: !1065, file: !2, line: 683, type: !72)
!1087 = !DILocalVariable(name: "dli", scope: !1065, file: !2, line: 684, type: !72)
!1088 = !DILocalVariable(name: "temp", scope: !1065, file: !2, line: 685, type: !72)
!1089 = !DILocation(line: 0, scope: !1065)
!1090 = !DILocation(line: 671, column: 21, scope: !1065)
!1091 = !DILocation(line: 672, column: 23, scope: !1065)
!1092 = !DILocation(line: 672, column: 19, scope: !1065)
!1093 = !DILocation(line: 673, column: 18, scope: !1065)
!1094 = !DILocation(line: 675, column: 18, scope: !1065)
!1095 = !DILocation(line: 677, column: 18, scope: !1065)
!1096 = !DILocation(line: 677, column: 27, scope: !1065)
!1097 = !DILocation(line: 677, column: 30, scope: !1065)
!1098 = !DILocation(line: 677, column: 24, scope: !1065)
!1099 = !DILocation(line: 678, column: 18, scope: !1065)
!1100 = !DILocation(line: 679, column: 21, scope: !1065)
!1101 = !DILocation(line: 679, column: 18, scope: !1065)
!1102 = !DILocation(line: 680, column: 18, scope: !1065)
!1103 = !DILocation(line: 680, column: 22, scope: !1065)
!1104 = !DILocation(line: 681, column: 17, scope: !1065)
!1105 = !DILocation(line: 682, column: 18, scope: !1065)
!1106 = !DILocation(line: 683, column: 18, scope: !1065)
!1107 = !DILocation(line: 683, column: 26, scope: !1065)
!1108 = !DILocation(line: 683, column: 22, scope: !1065)
!1109 = !DILocation(line: 684, column: 18, scope: !1065)
!1110 = !DILocation(line: 684, column: 26, scope: !1065)
!1111 = !DILocation(line: 684, column: 22, scope: !1065)
!1112 = !DILocation(line: 685, column: 18, scope: !1065)
!1113 = !DILocation(line: 685, column: 23, scope: !1065)
!1114 = !DILocation(line: 686, column: 8, scope: !1065)
!1115 = !DILocation(line: 686, column: 13, scope: !1065)
!1116 = !DILocation(line: 688, column: 3, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 688, column: 3)
!1118 = !DILocation(line: 709, column: 6, scope: !1065)
!1119 = !DILocation(line: 710, column: 6, scope: !1065)
!1120 = !DILocation(line: 712, column: 6, scope: !1065)
!1121 = !DILocation(line: 689, column: 12, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 688, column: 31)
!1123 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 688, column: 3)
!1124 = !DILocation(line: 689, column: 11, scope: !1122)
!1125 = !DILocation(line: 689, column: 8, scope: !1122)
!1126 = !DILocation(line: 690, column: 8, scope: !1122)
!1127 = !DILocation(line: 691, column: 11, scope: !1122)
!1128 = !DILocation(line: 691, column: 15, scope: !1122)
!1129 = !DILocation(line: 692, column: 11, scope: !1122)
!1130 = !DILocation(line: 692, column: 15, scope: !1122)
!1131 = !DILocation(line: 693, column: 8, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 693, column: 8)
!1133 = !DILocation(line: 693, column: 17, scope: !1132)
!1134 = !DILocation(line: 693, column: 16, scope: !1132)
!1135 = !DILocation(line: 693, column: 26, scope: !1132)
!1136 = !DILocation(line: 693, column: 8, scope: !1122)
!1137 = !DILocation(line: 694, column: 17, scope: !1122)
!1138 = !DILocation(line: 694, column: 23, scope: !1122)
!1139 = !DILocation(line: 694, column: 20, scope: !1122)
!1140 = !DILocation(line: 694, column: 13, scope: !1122)
!1141 = !DILocation(line: 695, column: 17, scope: !1122)
!1142 = !DILocation(line: 695, column: 13, scope: !1122)
!1143 = !DILocation(line: 696, column: 17, scope: !1122)
!1144 = !DILocation(line: 696, column: 13, scope: !1122)
!1145 = !DILocation(line: 697, column: 8, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 697, column: 8)
!1147 = !DILocation(line: 697, column: 17, scope: !1146)
!1148 = !DILocation(line: 697, column: 16, scope: !1146)
!1149 = !DILocation(line: 697, column: 26, scope: !1146)
!1150 = !DILocation(line: 697, column: 8, scope: !1122)
!1151 = !DILocation(line: 698, column: 13, scope: !1122)
!1152 = !DILocation(line: 698, column: 21, scope: !1122)
!1153 = !DILocation(line: 698, column: 17, scope: !1122)
!1154 = !DILocation(line: 699, column: 8, scope: !1122)
!1155 = !DILocation(line: 700, column: 11, scope: !1122)
!1156 = !DILocation(line: 700, column: 8, scope: !1122)
!1157 = !DILocation(line: 701, column: 13, scope: !1122)
!1158 = !DILocation(line: 701, column: 21, scope: !1122)
!1159 = !DILocation(line: 701, column: 17, scope: !1122)
!1160 = !DILocation(line: 702, column: 13, scope: !1122)
!1161 = !DILocation(line: 702, column: 21, scope: !1122)
!1162 = !DILocation(line: 702, column: 17, scope: !1122)
!1163 = !DILocation(line: 703, column: 13, scope: !1122)
!1164 = !DILocation(line: 703, column: 21, scope: !1122)
!1165 = !DILocation(line: 703, column: 18, scope: !1122)
!1166 = !DILocation(line: 704, column: 10, scope: !1122)
!1167 = !DILocation(line: 704, column: 18, scope: !1122)
!1168 = !DILocation(line: 704, column: 15, scope: !1122)
!1169 = !DILocation(line: 706, column: 16, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 706, column: 8)
!1171 = !DILocation(line: 706, column: 8, scope: !1170)
!1172 = !DILocation(line: 706, column: 22, scope: !1170)
!1173 = !DILocation(line: 706, column: 21, scope: !1170)
!1174 = !DILocation(line: 706, column: 32, scope: !1170)
!1175 = !DILocation(line: 706, column: 8, scope: !1122)
!1176 = !DILocation(line: 688, column: 27, scope: !1123)
!1177 = !DILocation(line: 688, column: 14, scope: !1123)
!1178 = distinct !{!1178, !1116, !1179, !242}
!1179 = !DILocation(line: 707, column: 3, scope: !1117)
!1180 = !DILocation(line: 712, column: 8, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 712, column: 6)
!1182 = !DILocation(line: 713, column: 5, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 713, column: 5)
!1184 = !DILocation(line: 0, scope: !1181)
!1185 = !DILocation(line: 716, column: 1, scope: !1065)
!1186 = distinct !DISubprogram(name: "gsl_sf_bessel_I_CF1_ser", scope: !2, file: !2, line: 637, type: !437, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1187)
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196}
!1188 = !DILocalVariable(name: "nu", arg: 1, scope: !1186, file: !2, line: 637, type: !71)
!1189 = !DILocalVariable(name: "x", arg: 2, scope: !1186, file: !2, line: 637, type: !71)
!1190 = !DILocalVariable(name: "ratio", arg: 3, scope: !1186, file: !2, line: 637, type: !439)
!1191 = !DILocalVariable(name: "maxk", scope: !1186, file: !2, line: 639, type: !73)
!1192 = !DILocalVariable(name: "tk", scope: !1186, file: !2, line: 640, type: !72)
!1193 = !DILocalVariable(name: "sum", scope: !1186, file: !2, line: 641, type: !72)
!1194 = !DILocalVariable(name: "rhok", scope: !1186, file: !2, line: 642, type: !72)
!1195 = !DILocalVariable(name: "k", scope: !1186, file: !2, line: 643, type: !21)
!1196 = !DILocalVariable(name: "ak", scope: !1197, file: !2, line: 646, type: !72)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 645, column: 25)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 645, column: 3)
!1199 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 645, column: 3)
!1200 = !DILocation(line: 0, scope: !1186)
!1201 = !DILocation(line: 645, column: 3, scope: !1199)
!1202 = !DILocation(line: 646, column: 31, scope: !1197)
!1203 = !DILocation(line: 646, column: 30, scope: !1197)
!1204 = !DILocation(line: 646, column: 26, scope: !1197)
!1205 = !DILocation(line: 646, column: 22, scope: !1197)
!1206 = !DILocation(line: 646, column: 35, scope: !1197)
!1207 = !DILocation(line: 646, column: 44, scope: !1197)
!1208 = !DILocation(line: 646, column: 38, scope: !1197)
!1209 = !DILocation(line: 0, scope: !1197)
!1210 = !DILocation(line: 647, column: 12, scope: !1197)
!1211 = !DILocation(line: 647, column: 21, scope: !1197)
!1212 = !DILocation(line: 647, column: 15, scope: !1197)
!1213 = !DILocation(line: 647, column: 38, scope: !1197)
!1214 = !DILocation(line: 647, column: 34, scope: !1197)
!1215 = !DILocation(line: 647, column: 28, scope: !1197)
!1216 = !DILocation(line: 648, column: 9, scope: !1197)
!1217 = !DILocation(line: 649, column: 9, scope: !1197)
!1218 = !DILocation(line: 650, column: 15, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 650, column: 8)
!1220 = !DILocation(line: 650, column: 8, scope: !1219)
!1221 = !DILocation(line: 650, column: 21, scope: !1219)
!1222 = !DILocation(line: 653, column: 22, scope: !1186)
!1223 = !DILocation(line: 653, column: 18, scope: !1186)
!1224 = !DILocation(line: 653, column: 13, scope: !1186)
!1225 = !DILocation(line: 653, column: 29, scope: !1186)
!1226 = !DILocation(line: 653, column: 10, scope: !1186)
!1227 = !DILocation(line: 655, column: 6, scope: !1186)
!1228 = !DILocation(line: 645, column: 21, scope: !1198)
!1229 = !DILocation(line: 645, column: 13, scope: !1198)
!1230 = distinct !{!1230, !1201, !1231, !242}
!1231 = !DILocation(line: 651, column: 3, scope: !1199)
!1232 = !DILocation(line: 656, column: 5, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 656, column: 5)
!1234 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 655, column: 6)
!1235 = !DILocation(line: 0, scope: !1234)
!1236 = !DILocation(line: 659, column: 1, scope: !1186)
!1237 = distinct !DISubprogram(name: "gsl_sf_bessel_K_scaled_steed_temme_CF2", scope: !2, file: !2, line: 726, type: !1238, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1240)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!21, !71, !71, !439, !439, !439}
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1263}
!1241 = !DILocalVariable(name: "nu", arg: 1, scope: !1237, file: !2, line: 726, type: !71)
!1242 = !DILocalVariable(name: "x", arg: 2, scope: !1237, file: !2, line: 726, type: !71)
!1243 = !DILocalVariable(name: "K_nu", arg: 3, scope: !1237, file: !2, line: 727, type: !439)
!1244 = !DILocalVariable(name: "K_nup1", arg: 4, scope: !1237, file: !2, line: 727, type: !439)
!1245 = !DILocalVariable(name: "Kp_nu", arg: 5, scope: !1237, file: !2, line: 728, type: !439)
!1246 = !DILocalVariable(name: "maxiter", scope: !1237, file: !2, line: 730, type: !73)
!1247 = !DILocalVariable(name: "i", scope: !1237, file: !2, line: 732, type: !21)
!1248 = !DILocalVariable(name: "bi", scope: !1237, file: !2, line: 733, type: !72)
!1249 = !DILocalVariable(name: "di", scope: !1237, file: !2, line: 734, type: !72)
!1250 = !DILocalVariable(name: "delhi", scope: !1237, file: !2, line: 735, type: !72)
!1251 = !DILocalVariable(name: "hi", scope: !1237, file: !2, line: 736, type: !72)
!1252 = !DILocalVariable(name: "qi", scope: !1237, file: !2, line: 738, type: !72)
!1253 = !DILocalVariable(name: "qip1", scope: !1237, file: !2, line: 739, type: !72)
!1254 = !DILocalVariable(name: "ai", scope: !1237, file: !2, line: 741, type: !72)
!1255 = !DILocalVariable(name: "a1", scope: !1237, file: !2, line: 742, type: !72)
!1256 = !DILocalVariable(name: "ci", scope: !1237, file: !2, line: 743, type: !72)
!1257 = !DILocalVariable(name: "Qi", scope: !1237, file: !2, line: 744, type: !72)
!1258 = !DILocalVariable(name: "s", scope: !1237, file: !2, line: 746, type: !72)
!1259 = !DILocalVariable(name: "dels", scope: !1260, file: !2, line: 749, type: !72)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 748, column: 29)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 748, column: 3)
!1262 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 748, column: 3)
!1263 = !DILocalVariable(name: "tmp", scope: !1260, file: !2, line: 750, type: !72)
!1264 = !DILocation(line: 0, scope: !1237)
!1265 = !DILocation(line: 733, column: 24, scope: !1237)
!1266 = !DILocation(line: 733, column: 18, scope: !1237)
!1267 = !DILocation(line: 734, column: 18, scope: !1237)
!1268 = !DILocation(line: 741, column: 26, scope: !1237)
!1269 = !DILocation(line: 741, column: 22, scope: !1237)
!1270 = !DILocation(line: 741, column: 15, scope: !1237)
!1271 = !DILocation(line: 746, column: 22, scope: !1237)
!1272 = !DILocation(line: 746, column: 18, scope: !1237)
!1273 = !DILocation(line: 748, column: 3, scope: !1262)
!1274 = !DILocation(line: 751, column: 17, scope: !1260)
!1275 = !DILocation(line: 751, column: 15, scope: !1260)
!1276 = !DILocation(line: 751, column: 14, scope: !1260)
!1277 = !DILocation(line: 751, column: 8, scope: !1260)
!1278 = !DILocation(line: 752, column: 11, scope: !1260)
!1279 = !DILocation(line: 752, column: 14, scope: !1260)
!1280 = !DILocation(line: 752, column: 18, scope: !1260)
!1281 = !DILocation(line: 752, column: 17, scope: !1260)
!1282 = !DILocation(line: 753, column: 20, scope: !1260)
!1283 = !DILocation(line: 753, column: 16, scope: !1260)
!1284 = !DILocation(line: 753, column: 26, scope: !1260)
!1285 = !DILocation(line: 0, scope: !1260)
!1286 = !DILocation(line: 756, column: 13, scope: !1260)
!1287 = !DILocation(line: 756, column: 8, scope: !1260)
!1288 = !DILocation(line: 757, column: 8, scope: !1260)
!1289 = !DILocation(line: 758, column: 23, scope: !1260)
!1290 = !DILocation(line: 758, column: 19, scope: !1260)
!1291 = !DILocation(line: 758, column: 14, scope: !1260)
!1292 = !DILocation(line: 759, column: 16, scope: !1260)
!1293 = !DILocation(line: 759, column: 20, scope: !1260)
!1294 = !DILocation(line: 759, column: 27, scope: !1260)
!1295 = !DILocation(line: 760, column: 8, scope: !1260)
!1296 = !DILocation(line: 761, column: 14, scope: !1260)
!1297 = !DILocation(line: 762, column: 7, scope: !1260)
!1298 = !DILocation(line: 763, column: 17, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1260, file: !2, line: 763, column: 8)
!1300 = !DILocation(line: 763, column: 8, scope: !1299)
!1301 = !DILocation(line: 763, column: 21, scope: !1299)
!1302 = !DILocation(line: 748, column: 25, scope: !1261)
!1303 = !DILocation(line: 748, column: 13, scope: !1261)
!1304 = distinct !{!1304, !1273, !1305, !242}
!1305 = !DILocation(line: 764, column: 3, scope: !1262)
!1306 = !DILocation(line: 748, scope: !1262)
!1307 = !DILocation(line: 766, column: 6, scope: !1237)
!1308 = !DILocation(line: 768, column: 27, scope: !1237)
!1309 = !DILocation(line: 768, column: 22, scope: !1237)
!1310 = !DILocation(line: 768, column: 13, scope: !1237)
!1311 = !DILocation(line: 768, column: 32, scope: !1237)
!1312 = !DILocation(line: 768, column: 11, scope: !1237)
!1313 = !DILocation(line: 769, column: 25, scope: !1237)
!1314 = !DILocation(line: 769, column: 29, scope: !1237)
!1315 = !DILocation(line: 769, column: 35, scope: !1237)
!1316 = !DILocation(line: 769, column: 19, scope: !1237)
!1317 = !DILocation(line: 769, column: 40, scope: !1237)
!1318 = !DILocation(line: 769, column: 11, scope: !1237)
!1319 = !DILocation(line: 770, column: 27, scope: !1237)
!1320 = !DILocation(line: 770, column: 32, scope: !1237)
!1321 = !DILocation(line: 770, column: 30, scope: !1237)
!1322 = !DILocation(line: 770, column: 23, scope: !1237)
!1323 = !DILocation(line: 770, column: 11, scope: !1237)
!1324 = !DILocation(line: 771, column: 8, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 771, column: 6)
!1326 = !DILocation(line: 771, column: 6, scope: !1237)
!1327 = !DILocation(line: 772, column: 5, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 772, column: 5)
!1329 = !DILocation(line: 0, scope: !1325)
!1330 = !DILocation(line: 775, column: 1, scope: !1237)
!1331 = distinct !DISubprogram(name: "gsl_sf_bessel_cos_pi4_e", scope: !2, file: !2, line: 778, type: !1332, scopeLine: 779, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1334)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!21, !72, !72, !74}
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345}
!1335 = !DILocalVariable(name: "y", arg: 1, scope: !1331, file: !2, line: 778, type: !72)
!1336 = !DILocalVariable(name: "eps", arg: 2, scope: !1331, file: !2, line: 778, type: !72)
!1337 = !DILocalVariable(name: "result", arg: 3, scope: !1331, file: !2, line: 778, type: !74)
!1338 = !DILocalVariable(name: "sy", scope: !1331, file: !2, line: 780, type: !71)
!1339 = !DILocalVariable(name: "cy", scope: !1331, file: !2, line: 781, type: !71)
!1340 = !DILocalVariable(name: "s", scope: !1331, file: !2, line: 782, type: !71)
!1341 = !DILocalVariable(name: "d", scope: !1331, file: !2, line: 783, type: !71)
!1342 = !DILocalVariable(name: "abs_sum", scope: !1331, file: !2, line: 784, type: !71)
!1343 = !DILocalVariable(name: "seps", scope: !1331, file: !2, line: 785, type: !72)
!1344 = !DILocalVariable(name: "ceps", scope: !1331, file: !2, line: 786, type: !72)
!1345 = !DILocalVariable(name: "e2", scope: !1346, file: !2, line: 788, type: !71)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 787, column: 41)
!1347 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 787, column: 6)
!1348 = !DILocation(line: 0, scope: !1331)
!1349 = !DILocation(line: 780, column: 21, scope: !1331)
!1350 = !DILocation(line: 781, column: 21, scope: !1331)
!1351 = !DILocation(line: 782, column: 23, scope: !1331)
!1352 = !DILocation(line: 783, column: 23, scope: !1331)
!1353 = !DILocation(line: 784, column: 26, scope: !1331)
!1354 = !DILocation(line: 784, column: 37, scope: !1331)
!1355 = !DILocation(line: 784, column: 35, scope: !1331)
!1356 = !DILocation(line: 787, column: 6, scope: !1347)
!1357 = !DILocation(line: 787, column: 16, scope: !1347)
!1358 = !DILocation(line: 787, column: 6, scope: !1331)
!1359 = !DILocation(line: 788, column: 26, scope: !1346)
!1360 = !DILocation(line: 0, scope: !1346)
!1361 = !DILocation(line: 789, column: 27, scope: !1346)
!1362 = !DILocation(line: 789, column: 43, scope: !1346)
!1363 = !DILocation(line: 789, column: 39, scope: !1346)
!1364 = !DILocation(line: 789, column: 32, scope: !1346)
!1365 = !DILocation(line: 789, column: 23, scope: !1346)
!1366 = !DILocation(line: 789, column: 16, scope: !1346)
!1367 = !DILocation(line: 790, column: 20, scope: !1346)
!1368 = !DILocation(line: 790, column: 36, scope: !1346)
!1369 = !DILocation(line: 790, column: 32, scope: !1346)
!1370 = !DILocation(line: 790, column: 25, scope: !1346)
!1371 = !DILocation(line: 790, column: 16, scope: !1346)
!1372 = !DILocation(line: 791, column: 3, scope: !1346)
!1373 = !DILocation(line: 793, column: 12, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 792, column: 8)
!1375 = !DILocation(line: 794, column: 12, scope: !1374)
!1376 = !DILocation(line: 0, scope: !1347)
!1377 = !DILocation(line: 796, column: 23, scope: !1331)
!1378 = !DILocation(line: 796, column: 34, scope: !1331)
!1379 = !DILocation(line: 796, column: 27, scope: !1331)
!1380 = !DILocation(line: 796, column: 38, scope: !1331)
!1381 = !DILocation(line: 796, column: 15, scope: !1331)
!1382 = !DILocation(line: 797, column: 42, scope: !1331)
!1383 = !DILocation(line: 797, column: 55, scope: !1331)
!1384 = !DILocation(line: 797, column: 53, scope: !1331)
!1385 = !DILocation(line: 797, column: 39, scope: !1331)
!1386 = !DILocation(line: 797, column: 67, scope: !1331)
!1387 = !DILocation(line: 797, column: 77, scope: !1331)
!1388 = !DILocation(line: 797, column: 11, scope: !1331)
!1389 = !DILocation(line: 797, column: 15, scope: !1331)
!1390 = !DILocation(line: 805, column: 8, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 805, column: 6)
!1392 = !DILocation(line: 805, column: 6, scope: !1331)
!1393 = !DILocation(line: 806, column: 24, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !2, line: 805, column: 31)
!1395 = !DILocation(line: 807, column: 3, scope: !1394)
!1396 = !DILocation(line: 808, column: 13, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1391, file: !2, line: 808, column: 11)
!1398 = !DILocation(line: 808, column: 11, scope: !1391)
!1399 = !DILocation(line: 809, column: 26, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 808, column: 41)
!1401 = !DILocation(line: 809, column: 30, scope: !1400)
!1402 = !DILocation(line: 810, column: 3, scope: !1400)
!1403 = !DILocation(line: 0, scope: !1391)
!1404 = !DILocation(line: 812, column: 3, scope: !1331)
!1405 = distinct !DISubprogram(name: "gsl_sf_bessel_sin_pi4_e", scope: !2, file: !2, line: 816, type: !1332, scopeLine: 817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1406)
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417}
!1407 = !DILocalVariable(name: "y", arg: 1, scope: !1405, file: !2, line: 816, type: !72)
!1408 = !DILocalVariable(name: "eps", arg: 2, scope: !1405, file: !2, line: 816, type: !72)
!1409 = !DILocalVariable(name: "result", arg: 3, scope: !1405, file: !2, line: 816, type: !74)
!1410 = !DILocalVariable(name: "sy", scope: !1405, file: !2, line: 818, type: !71)
!1411 = !DILocalVariable(name: "cy", scope: !1405, file: !2, line: 819, type: !71)
!1412 = !DILocalVariable(name: "s", scope: !1405, file: !2, line: 820, type: !71)
!1413 = !DILocalVariable(name: "d", scope: !1405, file: !2, line: 821, type: !71)
!1414 = !DILocalVariable(name: "abs_sum", scope: !1405, file: !2, line: 822, type: !71)
!1415 = !DILocalVariable(name: "seps", scope: !1405, file: !2, line: 823, type: !72)
!1416 = !DILocalVariable(name: "ceps", scope: !1405, file: !2, line: 824, type: !72)
!1417 = !DILocalVariable(name: "e2", scope: !1418, file: !2, line: 826, type: !71)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 825, column: 41)
!1419 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 825, column: 6)
!1420 = !DILocation(line: 0, scope: !1405)
!1421 = !DILocation(line: 818, column: 21, scope: !1405)
!1422 = !DILocation(line: 819, column: 21, scope: !1405)
!1423 = !DILocation(line: 820, column: 23, scope: !1405)
!1424 = !DILocation(line: 821, column: 23, scope: !1405)
!1425 = !DILocation(line: 822, column: 26, scope: !1405)
!1426 = !DILocation(line: 822, column: 37, scope: !1405)
!1427 = !DILocation(line: 822, column: 35, scope: !1405)
!1428 = !DILocation(line: 825, column: 6, scope: !1419)
!1429 = !DILocation(line: 825, column: 16, scope: !1419)
!1430 = !DILocation(line: 825, column: 6, scope: !1405)
!1431 = !DILocation(line: 826, column: 26, scope: !1418)
!1432 = !DILocation(line: 0, scope: !1418)
!1433 = !DILocation(line: 827, column: 27, scope: !1418)
!1434 = !DILocation(line: 827, column: 43, scope: !1418)
!1435 = !DILocation(line: 827, column: 39, scope: !1418)
!1436 = !DILocation(line: 827, column: 32, scope: !1418)
!1437 = !DILocation(line: 827, column: 23, scope: !1418)
!1438 = !DILocation(line: 827, column: 16, scope: !1418)
!1439 = !DILocation(line: 828, column: 20, scope: !1418)
!1440 = !DILocation(line: 828, column: 36, scope: !1418)
!1441 = !DILocation(line: 828, column: 32, scope: !1418)
!1442 = !DILocation(line: 828, column: 25, scope: !1418)
!1443 = !DILocation(line: 828, column: 16, scope: !1418)
!1444 = !DILocation(line: 829, column: 3, scope: !1418)
!1445 = !DILocation(line: 831, column: 12, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 830, column: 8)
!1447 = !DILocation(line: 832, column: 12, scope: !1446)
!1448 = !DILocation(line: 0, scope: !1419)
!1449 = !DILocation(line: 834, column: 23, scope: !1405)
!1450 = !DILocation(line: 834, column: 34, scope: !1405)
!1451 = !DILocation(line: 834, column: 27, scope: !1405)
!1452 = !DILocation(line: 834, column: 38, scope: !1405)
!1453 = !DILocation(line: 834, column: 15, scope: !1405)
!1454 = !DILocation(line: 835, column: 42, scope: !1405)
!1455 = !DILocation(line: 835, column: 55, scope: !1405)
!1456 = !DILocation(line: 835, column: 53, scope: !1405)
!1457 = !DILocation(line: 835, column: 39, scope: !1405)
!1458 = !DILocation(line: 835, column: 67, scope: !1405)
!1459 = !DILocation(line: 835, column: 77, scope: !1405)
!1460 = !DILocation(line: 835, column: 11, scope: !1405)
!1461 = !DILocation(line: 835, column: 15, scope: !1405)
!1462 = !DILocation(line: 841, column: 8, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 841, column: 6)
!1464 = !DILocation(line: 841, column: 6, scope: !1405)
!1465 = !DILocation(line: 842, column: 24, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1463, file: !2, line: 841, column: 31)
!1467 = !DILocation(line: 843, column: 3, scope: !1466)
!1468 = !DILocation(line: 844, column: 13, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1463, file: !2, line: 844, column: 11)
!1470 = !DILocation(line: 844, column: 11, scope: !1463)
!1471 = !DILocation(line: 845, column: 26, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 844, column: 41)
!1473 = !DILocation(line: 845, column: 30, scope: !1472)
!1474 = !DILocation(line: 846, column: 3, scope: !1472)
!1475 = !DILocation(line: 0, scope: !1463)
!1476 = !DILocation(line: 848, column: 3, scope: !1405)
