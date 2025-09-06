; ModuleID = 'mathieu_radfunc.ll'
source_filename = "mathieu_radfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct.gsl_sf_mathieu_workspace = type { i64, i64, i64, i32, double, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [28 x i8] c"q must be greater than zero\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c"mathieu_radfunc.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [20 x i8] c"kind must be 1 or 2\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [50 x i8] c"gsl_sf_mathieu_Mc_e(kind, order, qq, zz, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"gsl_sf_mathieu_Ms_e(kind, order, qq, zz, &result)\00", align 1, !dbg !22

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_Mc_e(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !74 {
  %6 = alloca [100 x double], align 16, !DIAssignID !112
  call void @llvm.dbg.assign(metadata i1 undef, metadata !100, metadata !DIExpression(), metadata !112, metadata ptr %6, metadata !DIExpression()), !dbg !113
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !114
  call void @llvm.dbg.assign(metadata i1 undef, metadata !111, metadata !DIExpression(), metadata !114, metadata ptr %7, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !86, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !87, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %2, metadata !88, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %3, metadata !89, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !90, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0x3D06849B86A12B9B, metadata !95, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0x400921FB54442D18, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %6) #6, !dbg !115
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !116
  %8 = fcmp ugt double %2, 0.000000e+00, !dbg !117
  br i1 %8, label %10, label %9, !dbg !119

9:                                                ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 44, i32 noundef 4) #6, !dbg !120
  br label %111, !dbg !120

10:                                               ; preds = %5
  %11 = add i32 %0, -3, !dbg !123
  %12 = icmp ult i32 %11, -2, !dbg !123
  br i1 %12, label %13, label %14, !dbg !123

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 48, i32 noundef 4) #6, !dbg !125
  br label %111, !dbg !125

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !96, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !113
  %15 = tail call double @sqrt(double noundef %2) #6, !dbg !128
  %16 = fneg double %3, !dbg !129
  %17 = tail call double @exp(double noundef %16) #6, !dbg !130
  %18 = fmul double %15, %17, !dbg !131
  tail call void @llvm.dbg.value(metadata double %18, metadata !109, metadata !DIExpression()), !dbg !113
  %19 = tail call double @sqrt(double noundef %2) #6, !dbg !132
  %20 = tail call double @exp(double noundef %3) #6, !dbg !133
  %21 = fmul double %19, %20, !dbg !134
  tail call void @llvm.dbg.value(metadata double %21, metadata !110, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, metadata !91, metadata !DIExpression()), !dbg !113
  %22 = and i32 %1, 1, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !91, metadata !DIExpression()), !dbg !113
  %23 = call i32 @gsl_sf_mathieu_a_e(i32 noundef %1, double noundef %2, ptr noundef nonnull %7) #6, !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !94, metadata !DIExpression()), !dbg !113
  %24 = icmp eq i32 %23, 0, !dbg !138
  br i1 %24, label %25, label %111, !dbg !140

25:                                               ; preds = %14
  %26 = load double, ptr %7, align 8, !dbg !141, !tbaa !142
  %27 = call i32 @gsl_sf_mathieu_a_coeff(i32 noundef %1, double noundef %2, double noundef %26, ptr noundef nonnull %6) #6, !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !94, metadata !DIExpression()), !dbg !113
  %28 = icmp eq i32 %27, 0, !dbg !148
  br i1 %28, label %29, label %111, !dbg !150

29:                                               ; preds = %25
  %30 = icmp eq i32 %22, 0, !dbg !151
  tail call void @llvm.dbg.value(metadata i32 0, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !96, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !96, metadata !DIExpression()), !dbg !113
  %31 = icmp eq i32 %0, 1
  br i1 %30, label %36, label %32, !dbg !153

32:                                               ; preds = %29
  %33 = add nsw i32 %1, -1
  %34 = sitofp i32 %33 to double
  %35 = fmul double %34, 5.000000e-01
  br label %67, !dbg !154

36:                                               ; preds = %29
  %37 = sitofp i32 %1 to double
  %38 = fmul double %37, 5.000000e-01
  br label %39, !dbg !157

39:                                               ; preds = %57, %36
  %40 = phi i64 [ 0, %36 ], [ %65, %57 ]
  %41 = phi double [ 0.000000e+00, %36 ], [ %handler_result1, %57 ]
  %42 = phi double [ 0.000000e+00, %36 ], [ %47, %57 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %41, metadata !98, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %42, metadata !96, metadata !DIExpression()), !dbg !113
  %43 = getelementptr inbounds [100 x double], ptr %6, i64 0, i64 %40, !dbg !160
  %44 = load double, ptr %43, align 8, !dbg !160, !tbaa !163
  %45 = call double @llvm.fabs.f64(double %44), !dbg !160
  %46 = fcmp ogt double %42, %45, !dbg !160
  %47 = select i1 %46, double %42, double %45, !dbg !160
  tail call void @llvm.dbg.value(metadata double %47, metadata !96, metadata !DIExpression()), !dbg !113
  %48 = fdiv double %45, %47, !dbg !164
  %49 = fcmp olt double %48, 0x3D06849B86A12B9B, !dbg !166
  br i1 %49, label %101, label %50, !dbg !167

50:                                               ; preds = %39
  %51 = trunc i64 %40 to i32, !dbg !168
  %52 = call double @gsl_sf_bessel_Jn(i32 noundef %51, double noundef %18) #6, !dbg !168
  tail call void @llvm.dbg.value(metadata double %52, metadata !105, metadata !DIExpression()), !dbg !113
  br i1 %31, label %53, label %55, !dbg !169

53:                                               ; preds = %50
  %54 = call double @gsl_sf_bessel_Jn(i32 noundef %51, double noundef %21) #6, !dbg !170
  tail call void @llvm.dbg.value(metadata double %54, metadata !106, metadata !DIExpression()), !dbg !113
  br label %57, !dbg !173

55:                                               ; preds = %50
  %56 = call double @gsl_sf_bessel_Yn(i32 noundef %51, double noundef %21) #6, !dbg !174
  tail call void @llvm.dbg.value(metadata double %56, metadata !106, metadata !DIExpression()), !dbg !113
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi double [ %54, %53 ], [ %56, %55 ], !dbg !176
  tail call void @llvm.dbg.value(metadata double %58, metadata !106, metadata !DIExpression()), !dbg !113
  %59 = sitofp i32 %51 to double, !dbg !177
  %handler_result = call double @fAddHandlerDouble(double %38, double %59), !dbg !178
  %60 = call double @pow(double noundef -1.000000e+00, double noundef %handler_result) #6, !dbg !178
  %61 = load double, ptr %43, align 8, !dbg !179, !tbaa !163
  %62 = fmul double %60, %61, !dbg !180
  tail call void @llvm.dbg.value(metadata double %62, metadata !104, metadata !DIExpression()), !dbg !113
  %63 = fmul double %52, %62, !dbg !181
  %64 = fmul double %58, %63, !dbg !182
  %handler_result1 = call double @fAddHandlerDouble(double %41, double %64), !dbg !183
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !98, metadata !DIExpression()), !dbg !113
  %65 = add nuw nsw i64 %40, 1, !dbg !183
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %47, metadata !96, metadata !DIExpression()), !dbg !113
  %66 = icmp eq i64 %65, 100, !dbg !184
  br i1 %66, label %101, label %39, !dbg !157, !llvm.loop !185

67:                                               ; preds = %90, %32
  %68 = phi i64 [ 0, %32 ], [ %81, %90 ]
  %69 = phi double [ 0.000000e+00, %32 ], [ %handler_result4, %90 ]
  %70 = phi double [ 0.000000e+00, %32 ], [ %75, %90 ]
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %69, metadata !98, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %70, metadata !96, metadata !DIExpression()), !dbg !113
  %71 = getelementptr inbounds [100 x double], ptr %6, i64 0, i64 %68, !dbg !188
  %72 = load double, ptr %71, align 8, !dbg !188, !tbaa !163
  %73 = call double @llvm.fabs.f64(double %72), !dbg !188
  %74 = fcmp ogt double %70, %73, !dbg !188
  %75 = select i1 %74, double %70, double %73, !dbg !188
  tail call void @llvm.dbg.value(metadata double %75, metadata !96, metadata !DIExpression()), !dbg !113
  %76 = fdiv double %73, %75, !dbg !191
  %77 = fcmp olt double %76, 0x3D06849B86A12B9B, !dbg !193
  br i1 %77, label %101, label %78, !dbg !194

78:                                               ; preds = %67
  %79 = trunc i64 %68 to i32, !dbg !195
  %80 = call double @gsl_sf_bessel_Jn(i32 noundef %79, double noundef %18) #6, !dbg !195
  tail call void @llvm.dbg.value(metadata double %80, metadata !105, metadata !DIExpression()), !dbg !113
  %81 = add nuw nsw i64 %68, 1, !dbg !196
  %82 = trunc i64 %81 to i32, !dbg !197
  %83 = call double @gsl_sf_bessel_Jn(i32 noundef %82, double noundef %18) #6, !dbg !197
  tail call void @llvm.dbg.value(metadata double %83, metadata !107, metadata !DIExpression()), !dbg !113
  br i1 %31, label %84, label %87, !dbg !198

84:                                               ; preds = %78
  %85 = call double @gsl_sf_bessel_Jn(i32 noundef %79, double noundef %21) #6, !dbg !199
  tail call void @llvm.dbg.value(metadata double %85, metadata !106, metadata !DIExpression()), !dbg !113
  %86 = call double @gsl_sf_bessel_Jn(i32 noundef %82, double noundef %21) #6, !dbg !202
  tail call void @llvm.dbg.value(metadata double %86, metadata !108, metadata !DIExpression()), !dbg !113
  br label %90, !dbg !203

87:                                               ; preds = %78
  %88 = call double @gsl_sf_bessel_Yn(i32 noundef %79, double noundef %21) #6, !dbg !204
  tail call void @llvm.dbg.value(metadata double %88, metadata !106, metadata !DIExpression()), !dbg !113
  %89 = call double @gsl_sf_bessel_Yn(i32 noundef %82, double noundef %21) #6, !dbg !206
  tail call void @llvm.dbg.value(metadata double %89, metadata !108, metadata !DIExpression()), !dbg !113
  br label %90

90:                                               ; preds = %87, %84
  %91 = phi double [ %85, %84 ], [ %88, %87 ], !dbg !207
  %92 = phi double [ %86, %84 ], [ %89, %87 ], !dbg !207
  tail call void @llvm.dbg.value(metadata double %92, metadata !108, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %91, metadata !106, metadata !DIExpression()), !dbg !113
  %93 = sitofp i32 %79 to double, !dbg !208
  %handler_result2 = call double @fAddHandlerDouble(double %35, double %93), !dbg !209
  %94 = call double @pow(double noundef -1.000000e+00, double noundef %handler_result2) #6, !dbg !209
  %95 = load double, ptr %71, align 8, !dbg !210, !tbaa !163
  %96 = fmul double %94, %95, !dbg !211
  tail call void @llvm.dbg.value(metadata double %96, metadata !104, metadata !DIExpression()), !dbg !113
  %97 = fmul double %80, %92, !dbg !212
  %98 = fmul double %83, %91, !dbg !213
  %handler_result3 = call double @fAddHandlerDouble(double %98, double %97), !dbg !214
  %99 = fmul double %handler_result3, %96, !dbg !214
  %handler_result4 = call double @fAddHandlerDouble(double %69, double %99), !dbg !215
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !98, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %75, metadata !96, metadata !DIExpression()), !dbg !113
  %100 = icmp eq i64 %81, 100, !dbg !215
  br i1 %100, label %101, label %67, !dbg !154, !llvm.loop !216

101:                                              ; preds = %90, %67, %57, %39
  %102 = phi double [ %handler_result1, %57 ], [ %41, %39 ], [ %handler_result4, %90 ], [ %69, %67 ]
  %103 = load double, ptr %6, align 16, !dbg !218, !tbaa !163
  %104 = fdiv double 0x3FF40D931FF62705, %103, !dbg !218
  %105 = fmul double %102, %104, !dbg !218
  tail call void @llvm.dbg.value(metadata double %105, metadata !98, metadata !DIExpression()), !dbg !113
  store double %105, ptr %4, align 8, !dbg !219, !tbaa !142
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !220
  %107 = call double @llvm.fabs.f64(double %105), !dbg !221
  tail call void @llvm.dbg.value(metadata double %107, metadata !99, metadata !DIExpression()), !dbg !113
  %108 = fcmp ogt double %107, 1.000000e+00, !dbg !222
  %109 = fmul double %107, 0x3CC0000000000000, !dbg !224
  %110 = select i1 %108, double %109, double 0x3CC0000000000000, !dbg !224
  store double %110, ptr %106, align 8, !dbg !113, !tbaa !225
  br label %111, !dbg !226

111:                                              ; preds = %101, %25, %14, %13, %9
  %112 = phi i32 [ 4, %9 ], [ 4, %13 ], [ 0, %101 ], [ %23, %14 ], [ %27, %25 ], !dbg !113
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !227
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %6) #6, !dbg !227
  ret i32 %112, !dbg !227
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !228 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !233 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !237 double @exp(double noundef) local_unnamed_addr #3

declare !dbg !238 i32 @gsl_sf_mathieu_a_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !242 i32 @gsl_sf_mathieu_a_coeff(i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare !dbg !246 double @gsl_sf_bessel_Jn(i32 noundef, double noundef) local_unnamed_addr #2

declare !dbg !252 double @gsl_sf_bessel_Yn(i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !253 double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_Ms_e(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !256 {
  %6 = alloca [100 x double], align 16, !DIAssignID !283
  call void @llvm.dbg.assign(metadata i1 undef, metadata !272, metadata !DIExpression(), metadata !283, metadata ptr %6, metadata !DIExpression()), !dbg !284
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !285
  call void @llvm.dbg.assign(metadata i1 undef, metadata !282, metadata !DIExpression(), metadata !285, metadata ptr %7, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !258, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %2, metadata !260, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %3, metadata !261, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !262, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double 0x3D06849B86A12B9B, metadata !267, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double 0x400921FB54442D18, metadata !269, metadata !DIExpression()), !dbg !284
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %6) #6, !dbg !286
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !287
  %8 = fcmp ugt double %2, 0.000000e+00, !dbg !288
  br i1 %8, label %10, label %9, !dbg !290

9:                                                ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 150, i32 noundef 4) #6, !dbg !291
  br label %121, !dbg !291

10:                                               ; preds = %5
  %11 = add i32 %0, -3, !dbg !294
  %12 = icmp ult i32 %11, -2, !dbg !294
  br i1 %12, label %13, label %14, !dbg !294

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 154, i32 noundef 4) #6, !dbg !296
  br label %121, !dbg !296

14:                                               ; preds = %10
  %15 = icmp eq i32 %1, 0, !dbg !299
  br i1 %15, label %16, label %17, !dbg !301

16:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !302
  br label %121, !dbg !304

17:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i32 0, metadata !265, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !270, metadata !DIExpression()), !dbg !284
  %18 = tail call double @sqrt(double noundef %2) #6, !dbg !305
  %19 = fneg double %3, !dbg !306
  %20 = tail call double @exp(double noundef %19) #6, !dbg !307
  %21 = fmul double %18, %20, !dbg !308
  tail call void @llvm.dbg.value(metadata double %21, metadata !280, metadata !DIExpression()), !dbg !284
  %22 = tail call double @sqrt(double noundef %2) #6, !dbg !309
  %23 = tail call double @exp(double noundef %3) #6, !dbg !310
  %24 = fmul double %22, %23, !dbg !311
  tail call void @llvm.dbg.value(metadata double %24, metadata !281, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i32 0, metadata !263, metadata !DIExpression()), !dbg !284
  %25 = and i32 %1, 1, !dbg !312
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !263, metadata !DIExpression()), !dbg !284
  %26 = call i32 @gsl_sf_mathieu_b_e(i32 noundef %1, double noundef %2, ptr noundef nonnull %7) #6, !dbg !314
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !266, metadata !DIExpression()), !dbg !284
  %27 = icmp eq i32 %26, 0, !dbg !315
  br i1 %27, label %28, label %121, !dbg !317

28:                                               ; preds = %17
  %29 = load double, ptr %7, align 8, !dbg !318, !tbaa !142
  %30 = call i32 @gsl_sf_mathieu_b_coeff(i32 noundef %1, double noundef %2, double noundef %29, ptr noundef nonnull %6) #6, !dbg !319
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !266, metadata !DIExpression()), !dbg !284
  %31 = icmp eq i32 %30, 0, !dbg !320
  br i1 %31, label %32, label %121, !dbg !322

32:                                               ; preds = %28
  %33 = icmp eq i32 %25, 0, !dbg !323
  tail call void @llvm.dbg.value(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !270, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !270, metadata !DIExpression()), !dbg !284
  %34 = icmp eq i32 %0, 1
  br i1 %33, label %39, label %35, !dbg !325

35:                                               ; preds = %32
  %36 = add nsw i32 %1, -1
  %37 = sitofp i32 %36 to double
  %38 = fmul double %37, 5.000000e-01
  br label %77, !dbg !326

39:                                               ; preds = %32
  %40 = sitofp i32 %1 to double
  %41 = fmul double %40, 5.000000e-01
  br label %42, !dbg !329

42:                                               ; preds = %65, %39
  %43 = phi i64 [ 0, %39 ], [ %75, %65 ]
  %44 = phi double [ 0.000000e+00, %39 ], [ %50, %65 ]
  %45 = phi double [ 0.000000e+00, %39 ], [ %handler_result3, %65 ]
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !264, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %44, metadata !268, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %45, metadata !270, metadata !DIExpression()), !dbg !284
  %46 = getelementptr inbounds [100 x double], ptr %6, i64 0, i64 %43, !dbg !332
  %47 = load double, ptr %46, align 8, !dbg !332, !tbaa !163
  %48 = call double @llvm.fabs.f64(double %47), !dbg !332
  %49 = fcmp ogt double %44, %48, !dbg !332
  %50 = select i1 %49, double %44, double %48, !dbg !332
  tail call void @llvm.dbg.value(metadata double %50, metadata !268, metadata !DIExpression()), !dbg !284
  %51 = fdiv double %48, %50, !dbg !335
  %52 = fcmp olt double %51, 0x3D06849B86A12B9B, !dbg !337
  br i1 %52, label %111, label %53, !dbg !338

53:                                               ; preds = %42
  %54 = trunc i64 %43 to i32, !dbg !339
  %55 = call double @gsl_sf_bessel_Jn(i32 noundef %54, double noundef %21) #6, !dbg !339
  tail call void @llvm.dbg.value(metadata double %55, metadata !276, metadata !DIExpression()), !dbg !284
  %56 = trunc i64 %43 to i32, !dbg !340
  %57 = add i32 %56, 2, !dbg !340
  %58 = call double @gsl_sf_bessel_Jn(i32 noundef %57, double noundef %21) #6, !dbg !340
  tail call void @llvm.dbg.value(metadata double %58, metadata !278, metadata !DIExpression()), !dbg !284
  br i1 %34, label %59, label %62, !dbg !341

59:                                               ; preds = %53
  %60 = call double @gsl_sf_bessel_Jn(i32 noundef %54, double noundef %24) #6, !dbg !342
  tail call void @llvm.dbg.value(metadata double %60, metadata !277, metadata !DIExpression()), !dbg !284
  %61 = call double @gsl_sf_bessel_Jn(i32 noundef %57, double noundef %24) #6, !dbg !345
  tail call void @llvm.dbg.value(metadata double %61, metadata !279, metadata !DIExpression()), !dbg !284
  br label %65, !dbg !346

62:                                               ; preds = %53
  %63 = call double @gsl_sf_bessel_Yn(i32 noundef %54, double noundef %24) #6, !dbg !347
  tail call void @llvm.dbg.value(metadata double %63, metadata !277, metadata !DIExpression()), !dbg !284
  %64 = call double @gsl_sf_bessel_Yn(i32 noundef %57, double noundef %24) #6, !dbg !349
  tail call void @llvm.dbg.value(metadata double %64, metadata !279, metadata !DIExpression()), !dbg !284
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi double [ %60, %59 ], [ %63, %62 ], !dbg !350
  %67 = phi double [ %61, %59 ], [ %64, %62 ], !dbg !350
  tail call void @llvm.dbg.value(metadata double %67, metadata !279, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %66, metadata !277, metadata !DIExpression()), !dbg !284
  %68 = sitofp i32 %54 to double, !dbg !351
  %handler_result = call double @fAddHandlerDouble(double %41, double %68), !dbg !352
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double 1.000000e+00), !dbg !353
  %69 = call double @pow(double noundef -1.000000e+00, double noundef %handler_result1) #6, !dbg !353
  %70 = load double, ptr %46, align 8, !dbg !354, !tbaa !163
  %71 = fmul double %69, %70, !dbg !355
  tail call void @llvm.dbg.value(metadata double %71, metadata !273, metadata !DIExpression()), !dbg !284
  %72 = fmul double %55, %67, !dbg !356
  %73 = fmul double %58, %66, !dbg !357
  %handler_result2 = call double @fSubHandlerDouble(double %72, double %73), !dbg !358
  %74 = fmul double %handler_result2, %71, !dbg !358
  %handler_result3 = call double @fAddHandlerDouble(double %45, double %74), !dbg !359
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !270, metadata !DIExpression()), !dbg !284
  %75 = add nuw nsw i64 %43, 1, !dbg !359
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !264, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %50, metadata !268, metadata !DIExpression()), !dbg !284
  %76 = icmp eq i64 %75, 100, !dbg !360
  br i1 %76, label %111, label %42, !dbg !329, !llvm.loop !361

77:                                               ; preds = %100, %35
  %78 = phi i64 [ 0, %35 ], [ %91, %100 ]
  %79 = phi double [ 0.000000e+00, %35 ], [ %85, %100 ]
  %80 = phi double [ 0.000000e+00, %35 ], [ %handler_result6, %100 ]
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !264, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %79, metadata !268, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %80, metadata !270, metadata !DIExpression()), !dbg !284
  %81 = getelementptr inbounds [100 x double], ptr %6, i64 0, i64 %78, !dbg !363
  %82 = load double, ptr %81, align 8, !dbg !363, !tbaa !163
  %83 = call double @llvm.fabs.f64(double %82), !dbg !363
  %84 = fcmp ogt double %79, %83, !dbg !363
  %85 = select i1 %84, double %79, double %83, !dbg !363
  tail call void @llvm.dbg.value(metadata double %85, metadata !268, metadata !DIExpression()), !dbg !284
  %86 = fdiv double %83, %85, !dbg !366
  %87 = fcmp olt double %86, 0x3D06849B86A12B9B, !dbg !368
  br i1 %87, label %111, label %88, !dbg !369

88:                                               ; preds = %77
  %89 = trunc i64 %78 to i32, !dbg !370
  %90 = call double @gsl_sf_bessel_Jn(i32 noundef %89, double noundef %21) #6, !dbg !370
  tail call void @llvm.dbg.value(metadata double %90, metadata !274, metadata !DIExpression()), !dbg !284
  %91 = add nuw nsw i64 %78, 1, !dbg !371
  %92 = trunc i64 %91 to i32, !dbg !372
  %93 = call double @gsl_sf_bessel_Jn(i32 noundef %92, double noundef %21) #6, !dbg !372
  tail call void @llvm.dbg.value(metadata double %93, metadata !278, metadata !DIExpression()), !dbg !284
  br i1 %34, label %94, label %97, !dbg !373

94:                                               ; preds = %88
  %95 = call double @gsl_sf_bessel_Jn(i32 noundef %89, double noundef %24) #6, !dbg !374
  tail call void @llvm.dbg.value(metadata double %95, metadata !275, metadata !DIExpression()), !dbg !284
  %96 = call double @gsl_sf_bessel_Jn(i32 noundef %92, double noundef %24) #6, !dbg !377
  tail call void @llvm.dbg.value(metadata double %96, metadata !279, metadata !DIExpression()), !dbg !284
  br label %100, !dbg !378

97:                                               ; preds = %88
  %98 = call double @gsl_sf_bessel_Yn(i32 noundef %89, double noundef %24) #6, !dbg !379
  tail call void @llvm.dbg.value(metadata double %98, metadata !275, metadata !DIExpression()), !dbg !284
  %99 = call double @gsl_sf_bessel_Yn(i32 noundef %92, double noundef %24) #6, !dbg !381
  tail call void @llvm.dbg.value(metadata double %99, metadata !279, metadata !DIExpression()), !dbg !284
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi double [ %95, %94 ], [ %98, %97 ], !dbg !382
  %102 = phi double [ %96, %94 ], [ %99, %97 ], !dbg !382
  tail call void @llvm.dbg.value(metadata double %102, metadata !279, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %101, metadata !275, metadata !DIExpression()), !dbg !284
  %103 = sitofp i32 %89 to double, !dbg !383
  %handler_result4 = call double @fAddHandlerDouble(double %38, double %103), !dbg !384
  %104 = call double @pow(double noundef -1.000000e+00, double noundef %handler_result4) #6, !dbg !384
  %105 = load double, ptr %81, align 8, !dbg !385, !tbaa !163
  %106 = fmul double %104, %105, !dbg !386
  tail call void @llvm.dbg.value(metadata double %106, metadata !273, metadata !DIExpression()), !dbg !284
  %107 = fmul double %90, %102, !dbg !387
  %108 = fmul double %93, %101, !dbg !388
  %handler_result5 = call double @fSubHandlerDouble(double %107, double %108), !dbg !389
  %109 = fmul double %handler_result5, %106, !dbg !389
  %handler_result6 = call double @fAddHandlerDouble(double %80, double %109), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !264, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %85, metadata !268, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !270, metadata !DIExpression()), !dbg !284
  %110 = icmp eq i64 %91, 100, !dbg !390
  br i1 %110, label %111, label %77, !dbg !326, !llvm.loop !391

111:                                              ; preds = %100, %77, %65, %42
  %112 = phi double [ %handler_result3, %65 ], [ %45, %42 ], [ %handler_result6, %100 ], [ %80, %77 ]
  %113 = load double, ptr %6, align 16, !dbg !393, !tbaa !163
  %114 = fdiv double 0x3FF40D931FF62705, %113, !dbg !393
  %115 = fmul double %112, %114, !dbg !393
  tail call void @llvm.dbg.value(metadata double %115, metadata !270, metadata !DIExpression()), !dbg !284
  store double %115, ptr %4, align 8, !dbg !394, !tbaa !142
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !395
  %117 = call double @llvm.fabs.f64(double %115), !dbg !396
  tail call void @llvm.dbg.value(metadata double %117, metadata !271, metadata !DIExpression()), !dbg !284
  %118 = fcmp ogt double %117, 1.000000e+00, !dbg !397
  %119 = fmul double %117, 0x3CC0000000000000, !dbg !399
  %120 = select i1 %118, double %119, double 0x3CC0000000000000, !dbg !399
  store double %120, ptr %116, align 8, !dbg !284, !tbaa !225
  br label %121, !dbg !400

121:                                              ; preds = %111, %28, %17, %16, %13, %9
  %122 = phi i32 [ 4, %9 ], [ 4, %13 ], [ 0, %16 ], [ 0, %111 ], [ %26, %17 ], [ %30, %28 ], !dbg !284
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !401
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %6) #6, !dbg !401
  ret i32 %122, !dbg !401
}

declare !dbg !402 i32 @gsl_sf_mathieu_b_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !403 i32 @gsl_sf_mathieu_b_coeff(i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_Mc_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 !dbg !404 {
  %8 = alloca [100 x double], align 16, !DIAssignID !495
  call void @llvm.dbg.assign(metadata i1 undef, metadata !486, metadata !DIExpression(), metadata !495, metadata ptr %8, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !469, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !470, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !471, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %3, metadata !472, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %4, metadata !473, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !474, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !475, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double 0x3D06849B86A12B9B, metadata !482, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double 0x400921FB54442D18, metadata !484, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %8) #6, !dbg !497
  %9 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %5, i64 0, i32 6, !dbg !498
  %10 = load ptr, ptr %9, align 8, !dbg !498, !tbaa !499
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !494, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 0, metadata !478, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 0, metadata !478, metadata !DIExpression()), !dbg !496
  %11 = icmp slt i32 %2, %1, !dbg !504
  br i1 %11, label %17, label %12, !dbg !507

12:                                               ; preds = %7
  %13 = add i32 %2, 1, !dbg !507
  %14 = sub i32 %13, %1, !dbg !507
  %15 = zext i32 %14 to i64, !dbg !507
  %16 = shl nuw nsw i64 %15, 3, !dbg !507
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %16, i1 false), !dbg !508, !tbaa !163
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !478, metadata !DIExpression()), !dbg !496
  br label %17, !dbg !509

17:                                               ; preds = %12, %7
  %18 = fcmp ugt double %3, 0.000000e+00, !dbg !509
  br i1 %18, label %20, label %19, !dbg !511

19:                                               ; preds = %17
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 273, i32 noundef 4) #6, !dbg !512
  br label %132, !dbg !512

20:                                               ; preds = %17
  %21 = add i32 %0, -3, !dbg !515
  %22 = icmp ult i32 %21, -2, !dbg !515
  br i1 %22, label %23, label %24, !dbg !515

23:                                               ; preds = %20
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 277, i32 noundef 4) #6, !dbg !517
  br label %132, !dbg !517

24:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i32 0, metadata !480, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !483, metadata !DIExpression()), !dbg !496
  %25 = tail call double @sqrt(double noundef %3) #6, !dbg !520
  %26 = fneg double %4, !dbg !521
  %27 = tail call double @exp(double noundef %26) #6, !dbg !522
  %28 = fmul double %25, %27, !dbg !523
  tail call void @llvm.dbg.value(metadata double %28, metadata !492, metadata !DIExpression()), !dbg !496
  %29 = tail call double @sqrt(double noundef %3) #6, !dbg !524
  %30 = tail call double @exp(double noundef %4) #6, !dbg !525
  %31 = fmul double %29, %30, !dbg !526
  tail call void @llvm.dbg.value(metadata double %31, metadata !493, metadata !DIExpression()), !dbg !496
  %32 = tail call i32 @gsl_sf_mathieu_a_array(i32 noundef 0, i32 noundef %2, double noundef %3, ptr noundef nonnull %5, ptr noundef %10) #6, !dbg !527
  tail call void @llvm.dbg.value(metadata i32 0, metadata !478, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !477, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !483, metadata !DIExpression()), !dbg !496
  %33 = icmp sgt i32 %1, %2, !dbg !528
  br i1 %33, label %132, label %34, !dbg !531

34:                                               ; preds = %24
  %35 = icmp eq i32 %0, 1
  %36 = sext i32 %1 to i64, !dbg !531
  %37 = add i32 %2, 1, !dbg !531
  %38 = sub i32 %37, %1, !dbg !531
  %39 = zext i32 %38 to i64, !dbg !528
  br label %40, !dbg !531

40:                                               ; preds = %122, %34
  %41 = phi i64 [ 0, %34 ], [ %129, %122 ]
  %42 = phi i64 [ %36, %34 ], [ %130, %122 ]
  %43 = phi double [ 0.000000e+00, %34 ], [ %124, %122 ]
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !477, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !478, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %43, metadata !483, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !485, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 0, metadata !476, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !476, metadata !DIExpression()), !dbg !496
  %44 = getelementptr inbounds double, ptr %10, i64 %42, !dbg !532
  %45 = load double, ptr %44, align 8, !dbg !532, !tbaa !163
  %46 = trunc i64 %42 to i32, !dbg !534
  %47 = call i32 @gsl_sf_mathieu_a_coeff(i32 noundef %46, double noundef %3, double noundef %45, ptr noundef nonnull %8) #6, !dbg !534
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !481, metadata !DIExpression()), !dbg !496
  %48 = icmp eq i32 %47, 0, !dbg !535
  br i1 %48, label %49, label %132, !dbg !537

49:                                               ; preds = %40
  %50 = and i32 %46, 1, !dbg !538
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !476, metadata !DIExpression()), !dbg !496
  %51 = icmp eq i32 %50, 0, !dbg !540
  tail call void @llvm.dbg.value(metadata i32 0, metadata !479, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 0, metadata !479, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !485, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !485, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 0, metadata !479, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 0, metadata !479, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %43, metadata !483, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %43, metadata !483, metadata !DIExpression()), !dbg !496
  br i1 %51, label %57, label %52, !dbg !542

52:                                               ; preds = %49
  %53 = trunc i64 %42 to i32
  %54 = add i32 %53, -1
  %55 = sitofp i32 %54 to double
  %56 = fmul double %55, 5.000000e-01
  br label %88, !dbg !543

57:                                               ; preds = %49
  %58 = sitofp i32 %46 to double
  %59 = fmul double %58, 5.000000e-01
  br label %60, !dbg !546

60:                                               ; preds = %78, %57
  %61 = phi i64 [ 0, %57 ], [ %86, %78 ]
  %62 = phi double [ 0.000000e+00, %57 ], [ %handler_result1, %78 ]
  %63 = phi double [ %43, %57 ], [ %68, %78 ]
  tail call void @llvm.dbg.value(metadata double %62, metadata !485, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !479, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %63, metadata !483, metadata !DIExpression()), !dbg !496
  %64 = getelementptr inbounds [100 x double], ptr %8, i64 0, i64 %61, !dbg !549
  %65 = load double, ptr %64, align 8, !dbg !549, !tbaa !163
  %66 = call double @llvm.fabs.f64(double %65), !dbg !549
  %67 = fcmp ogt double %63, %66, !dbg !549
  %68 = select i1 %67, double %63, double %66, !dbg !549
  tail call void @llvm.dbg.value(metadata double %68, metadata !483, metadata !DIExpression()), !dbg !496
  %69 = fdiv double %66, %68, !dbg !552
  %70 = fcmp olt double %69, 0x3D06849B86A12B9B, !dbg !554
  br i1 %70, label %122, label %71, !dbg !555

71:                                               ; preds = %60
  %72 = trunc i64 %61 to i32, !dbg !556
  %73 = call double @gsl_sf_bessel_Jn(i32 noundef %72, double noundef %28) #6, !dbg !556
  tail call void @llvm.dbg.value(metadata double %73, metadata !488, metadata !DIExpression()), !dbg !496
  br i1 %35, label %74, label %76, !dbg !557

74:                                               ; preds = %71
  %75 = call double @gsl_sf_bessel_Jn(i32 noundef %72, double noundef %31) #6, !dbg !558
  tail call void @llvm.dbg.value(metadata double %75, metadata !489, metadata !DIExpression()), !dbg !496
  br label %78, !dbg !561

76:                                               ; preds = %71
  %77 = call double @gsl_sf_bessel_Yn(i32 noundef %72, double noundef %31) #6, !dbg !562
  tail call void @llvm.dbg.value(metadata double %77, metadata !489, metadata !DIExpression()), !dbg !496
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi double [ %75, %74 ], [ %77, %76 ], !dbg !564
  tail call void @llvm.dbg.value(metadata double %79, metadata !489, metadata !DIExpression()), !dbg !496
  %80 = sitofp i32 %72 to double, !dbg !565
  %handler_result = call double @fAddHandlerDouble(double %59, double %80), !dbg !566
  %81 = call double @pow(double noundef -1.000000e+00, double noundef %handler_result) #6, !dbg !566
  %82 = load double, ptr %64, align 8, !dbg !567, !tbaa !163
  %83 = fmul double %81, %82, !dbg !568
  tail call void @llvm.dbg.value(metadata double %83, metadata !487, metadata !DIExpression()), !dbg !496
  %84 = fmul double %73, %83, !dbg !569
  %85 = fmul double %79, %84, !dbg !570
  %handler_result1 = call double @fAddHandlerDouble(double %62, double %85), !dbg !571
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !485, metadata !DIExpression()), !dbg !496
  %86 = add nuw nsw i64 %61, 1, !dbg !571
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !479, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %68, metadata !483, metadata !DIExpression()), !dbg !496
  %87 = icmp eq i64 %86, 100, !dbg !572
  br i1 %87, label %122, label %60, !dbg !546, !llvm.loop !573

88:                                               ; preds = %111, %52
  %89 = phi i64 [ 0, %52 ], [ %102, %111 ]
  %90 = phi double [ 0.000000e+00, %52 ], [ %handler_result4, %111 ]
  %91 = phi double [ %43, %52 ], [ %96, %111 ]
  tail call void @llvm.dbg.value(metadata double %90, metadata !485, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !479, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %91, metadata !483, metadata !DIExpression()), !dbg !496
  %92 = getelementptr inbounds [100 x double], ptr %8, i64 0, i64 %89, !dbg !575
  %93 = load double, ptr %92, align 8, !dbg !575, !tbaa !163
  %94 = call double @llvm.fabs.f64(double %93), !dbg !575
  %95 = fcmp ogt double %91, %94, !dbg !575
  %96 = select i1 %95, double %91, double %94, !dbg !575
  tail call void @llvm.dbg.value(metadata double %96, metadata !483, metadata !DIExpression()), !dbg !496
  %97 = fdiv double %94, %96, !dbg !578
  %98 = fcmp olt double %97, 0x3D06849B86A12B9B, !dbg !580
  br i1 %98, label %122, label %99, !dbg !581

99:                                               ; preds = %88
  %100 = trunc i64 %89 to i32, !dbg !582
  %101 = call double @gsl_sf_bessel_Jn(i32 noundef %100, double noundef %28) #6, !dbg !582
  tail call void @llvm.dbg.value(metadata double %101, metadata !488, metadata !DIExpression()), !dbg !496
  %102 = add nuw nsw i64 %89, 1, !dbg !583
  %103 = trunc i64 %102 to i32, !dbg !584
  %104 = call double @gsl_sf_bessel_Jn(i32 noundef %103, double noundef %28) #6, !dbg !584
  tail call void @llvm.dbg.value(metadata double %104, metadata !490, metadata !DIExpression()), !dbg !496
  br i1 %35, label %105, label %108, !dbg !585

105:                                              ; preds = %99
  %106 = call double @gsl_sf_bessel_Jn(i32 noundef %100, double noundef %31) #6, !dbg !586
  tail call void @llvm.dbg.value(metadata double %106, metadata !489, metadata !DIExpression()), !dbg !496
  %107 = call double @gsl_sf_bessel_Jn(i32 noundef %103, double noundef %31) #6, !dbg !589
  tail call void @llvm.dbg.value(metadata double %107, metadata !491, metadata !DIExpression()), !dbg !496
  br label %111, !dbg !590

108:                                              ; preds = %99
  %109 = call double @gsl_sf_bessel_Yn(i32 noundef %100, double noundef %31) #6, !dbg !591
  tail call void @llvm.dbg.value(metadata double %109, metadata !489, metadata !DIExpression()), !dbg !496
  %110 = call double @gsl_sf_bessel_Yn(i32 noundef %103, double noundef %31) #6, !dbg !593
  tail call void @llvm.dbg.value(metadata double %110, metadata !491, metadata !DIExpression()), !dbg !496
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi double [ %106, %105 ], [ %109, %108 ], !dbg !594
  %113 = phi double [ %107, %105 ], [ %110, %108 ], !dbg !594
  tail call void @llvm.dbg.value(metadata double %113, metadata !491, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %112, metadata !489, metadata !DIExpression()), !dbg !496
  %114 = sitofp i32 %100 to double, !dbg !595
  %handler_result2 = call double @fAddHandlerDouble(double %56, double %114), !dbg !596
  %115 = call double @pow(double noundef -1.000000e+00, double noundef %handler_result2) #6, !dbg !596
  %116 = load double, ptr %92, align 8, !dbg !597, !tbaa !163
  %117 = fmul double %115, %116, !dbg !598
  tail call void @llvm.dbg.value(metadata double %117, metadata !487, metadata !DIExpression()), !dbg !496
  %118 = fmul double %101, %113, !dbg !599
  %119 = fmul double %104, %112, !dbg !600
  %handler_result3 = call double @fAddHandlerDouble(double %119, double %118), !dbg !601
  %120 = fmul double %handler_result3, %117, !dbg !601
  %handler_result4 = call double @fAddHandlerDouble(double %90, double %120), !dbg !602
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !485, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !479, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %96, metadata !483, metadata !DIExpression()), !dbg !496
  %121 = icmp eq i64 %102, 100, !dbg !602
  br i1 %121, label %122, label %88, !dbg !543, !llvm.loop !603

122:                                              ; preds = %111, %88, %78, %60
  %123 = phi double [ %handler_result1, %78 ], [ %62, %60 ], [ %handler_result4, %111 ], [ %90, %88 ]
  %124 = phi double [ %68, %60 ], [ %68, %78 ], [ %96, %88 ], [ %96, %111 ], !dbg !605
  %125 = load double, ptr %8, align 16, !dbg !605, !tbaa !163
  %126 = fdiv double 0x3FF40D931FF62705, %125, !dbg !605
  %127 = fmul double %123, %126, !dbg !605
  tail call void @llvm.dbg.value(metadata double %127, metadata !485, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %124, metadata !483, metadata !DIExpression()), !dbg !496
  %128 = getelementptr inbounds double, ptr %6, i64 %41, !dbg !606
  store double %127, ptr %128, align 8, !dbg !607, !tbaa !163
  %129 = add nuw nsw i64 %41, 1, !dbg !608
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !478, metadata !DIExpression()), !dbg !496
  %130 = add nsw i64 %42, 1, !dbg !609
  tail call void @llvm.dbg.value(metadata i64 %130, metadata !477, metadata !DIExpression()), !dbg !496
  %131 = icmp eq i64 %129, %39, !dbg !528
  br i1 %131, label %132, label %40, !dbg !531, !llvm.loop !610

132:                                              ; preds = %122, %40, %24, %23, %19
  %133 = phi i32 [ 4, %19 ], [ 4, %23 ], [ 0, %24 ], [ %47, %40 ], [ 0, %122 ], !dbg !496
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %8) #6, !dbg !612
  ret i32 %133, !dbg !612
}

declare !dbg !613 i32 @gsl_sf_mathieu_a_array(i32 noundef, i32 noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_Ms_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 !dbg !616 {
  %8 = alloca [100 x double], align 16, !DIAssignID !646
  call void @llvm.dbg.assign(metadata i1 undef, metadata !635, metadata !DIExpression(), metadata !646, metadata ptr %8, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !618, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !619, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !620, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %3, metadata !621, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %4, metadata !622, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !623, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !624, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double 0x3D06849B86A12B9B, metadata !631, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double 0x400921FB54442D18, metadata !633, metadata !DIExpression()), !dbg !647
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %8) #6, !dbg !648
  %9 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %5, i64 0, i32 7, !dbg !649
  %10 = load ptr, ptr %9, align 8, !dbg !649, !tbaa !650
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !645, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata i32 0, metadata !627, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata i32 0, metadata !627, metadata !DIExpression()), !dbg !647
  %11 = icmp slt i32 %2, %1, !dbg !651
  br i1 %11, label %17, label %12, !dbg !654

12:                                               ; preds = %7
  %13 = add i32 %2, 1, !dbg !654
  %14 = sub i32 %13, %1, !dbg !654
  %15 = zext i32 %14 to i64, !dbg !654
  %16 = shl nuw nsw i64 %15, 3, !dbg !654
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %16, i1 false), !dbg !655, !tbaa !163
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !627, metadata !DIExpression()), !dbg !647
  br label %17, !dbg !656

17:                                               ; preds = %12, %7
  %18 = fcmp ugt double %3, 0.000000e+00, !dbg !656
  br i1 %18, label %20, label %19, !dbg !658

19:                                               ; preds = %17
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 379, i32 noundef 4) #6, !dbg !659
  br label %144, !dbg !659

20:                                               ; preds = %17
  %21 = add i32 %0, -3, !dbg !662
  %22 = icmp ult i32 %21, -2, !dbg !662
  br i1 %22, label %23, label %24, !dbg !662

23:                                               ; preds = %20
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 383, i32 noundef 4) #6, !dbg !664
  br label %144, !dbg !664

24:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i32 0, metadata !629, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !632, metadata !DIExpression()), !dbg !647
  %25 = tail call double @sqrt(double noundef %3) #6, !dbg !667
  %26 = fneg double %4, !dbg !668
  %27 = tail call double @exp(double noundef %26) #6, !dbg !669
  %28 = fmul double %25, %27, !dbg !670
  tail call void @llvm.dbg.value(metadata double %28, metadata !643, metadata !DIExpression()), !dbg !647
  %29 = tail call double @sqrt(double noundef %3) #6, !dbg !671
  %30 = tail call double @exp(double noundef %4) #6, !dbg !672
  %31 = fmul double %29, %30, !dbg !673
  tail call void @llvm.dbg.value(metadata double %31, metadata !644, metadata !DIExpression()), !dbg !647
  %32 = tail call i32 @gsl_sf_mathieu_b_array(i32 noundef 0, i32 noundef %2, double noundef %3, ptr noundef nonnull %5, ptr noundef %10) #6, !dbg !674
  tail call void @llvm.dbg.value(metadata i32 0, metadata !627, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !626, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !632, metadata !DIExpression()), !dbg !647
  %33 = icmp sgt i32 %1, %2, !dbg !675
  br i1 %33, label %144, label %34, !dbg !678

34:                                               ; preds = %24
  %35 = icmp eq i32 %0, 1
  %36 = sext i32 %1 to i64, !dbg !678
  %37 = add i32 %2, 1, !dbg !678
  %38 = sub i32 %37, %1, !dbg !678
  %39 = zext i32 %38 to i64, !dbg !675
  br label %40, !dbg !678

40:                                               ; preds = %137, %34
  %41 = phi i64 [ 0, %34 ], [ %141, %137 ]
  %42 = phi i64 [ %36, %34 ], [ %142, %137 ]
  %43 = phi double [ 0.000000e+00, %34 ], [ %139, %137 ]
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !626, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !627, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %43, metadata !632, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !634, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata i32 0, metadata !625, metadata !DIExpression()), !dbg !647
  %44 = trunc i64 %42 to i32, !dbg !679
  %45 = and i32 %44, 1, !dbg !679
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !625, metadata !DIExpression()), !dbg !647
  %46 = icmp eq i64 %42, 0, !dbg !682
  br i1 %46, label %137, label %47, !dbg !684

47:                                               ; preds = %40
  %48 = getelementptr inbounds double, ptr %10, i64 %42, !dbg !685
  %49 = load double, ptr %48, align 8, !dbg !685, !tbaa !163
  %50 = call i32 @gsl_sf_mathieu_b_coeff(i32 noundef %44, double noundef %3, double noundef %49, ptr noundef nonnull %8) #6, !dbg !686
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !630, metadata !DIExpression()), !dbg !647
  %51 = icmp eq i32 %50, 0, !dbg !687
  br i1 %51, label %52, label %144, !dbg !689

52:                                               ; preds = %47
  %53 = icmp eq i32 %45, 0, !dbg !690
  tail call void @llvm.dbg.value(metadata i32 0, metadata !628, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata i32 0, metadata !628, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata i32 0, metadata !628, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata i32 0, metadata !628, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !634, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !634, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %43, metadata !632, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %43, metadata !632, metadata !DIExpression()), !dbg !647
  br i1 %53, label %59, label %54, !dbg !692

54:                                               ; preds = %52
  %55 = trunc i64 %42 to i32
  %56 = add i32 %55, -1
  %57 = sitofp i32 %56 to double
  %58 = fmul double %57, 5.000000e-01
  br label %97, !dbg !693

59:                                               ; preds = %52
  %60 = sitofp i32 %44 to double
  %61 = fmul double %60, 5.000000e-01
  br label %62, !dbg !696

62:                                               ; preds = %85, %59
  %63 = phi i64 [ 0, %59 ], [ %95, %85 ]
  %64 = phi double [ 0.000000e+00, %59 ], [ %handler_result3, %85 ]
  %65 = phi double [ %43, %59 ], [ %70, %85 ]
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !628, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %64, metadata !634, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %65, metadata !632, metadata !DIExpression()), !dbg !647
  %66 = getelementptr inbounds [100 x double], ptr %8, i64 0, i64 %63, !dbg !699
  %67 = load double, ptr %66, align 8, !dbg !699, !tbaa !163
  %68 = call double @llvm.fabs.f64(double %67), !dbg !699
  %69 = fcmp ogt double %65, %68, !dbg !699
  %70 = select i1 %69, double %65, double %68, !dbg !699
  tail call void @llvm.dbg.value(metadata double %70, metadata !632, metadata !DIExpression()), !dbg !647
  %71 = fdiv double %68, %70, !dbg !702
  %72 = fcmp olt double %71, 0x3D06849B86A12B9B, !dbg !704
  br i1 %72, label %131, label %73, !dbg !705

73:                                               ; preds = %62
  %74 = trunc i64 %63 to i32, !dbg !706
  %75 = call double @gsl_sf_bessel_Jn(i32 noundef %74, double noundef %28) #6, !dbg !706
  tail call void @llvm.dbg.value(metadata double %75, metadata !639, metadata !DIExpression()), !dbg !647
  %76 = trunc i64 %63 to i32, !dbg !707
  %77 = add i32 %76, 2, !dbg !707
  %78 = call double @gsl_sf_bessel_Jn(i32 noundef %77, double noundef %28) #6, !dbg !707
  tail call void @llvm.dbg.value(metadata double %78, metadata !641, metadata !DIExpression()), !dbg !647
  br i1 %35, label %79, label %82, !dbg !708

79:                                               ; preds = %73
  %80 = call double @gsl_sf_bessel_Jn(i32 noundef %74, double noundef %31) #6, !dbg !709
  tail call void @llvm.dbg.value(metadata double %80, metadata !640, metadata !DIExpression()), !dbg !647
  %81 = call double @gsl_sf_bessel_Jn(i32 noundef %77, double noundef %31) #6, !dbg !712
  tail call void @llvm.dbg.value(metadata double %81, metadata !642, metadata !DIExpression()), !dbg !647
  br label %85, !dbg !713

82:                                               ; preds = %73
  %83 = call double @gsl_sf_bessel_Yn(i32 noundef %74, double noundef %31) #6, !dbg !714
  tail call void @llvm.dbg.value(metadata double %83, metadata !640, metadata !DIExpression()), !dbg !647
  %84 = call double @gsl_sf_bessel_Yn(i32 noundef %77, double noundef %31) #6, !dbg !716
  tail call void @llvm.dbg.value(metadata double %84, metadata !642, metadata !DIExpression()), !dbg !647
  br label %85

85:                                               ; preds = %82, %79
  %86 = phi double [ %80, %79 ], [ %83, %82 ], !dbg !717
  %87 = phi double [ %81, %79 ], [ %84, %82 ], !dbg !717
  tail call void @llvm.dbg.value(metadata double %87, metadata !642, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %86, metadata !640, metadata !DIExpression()), !dbg !647
  %88 = sitofp i32 %74 to double, !dbg !718
  %handler_result = call double @fAddHandlerDouble(double %61, double %88), !dbg !719
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double 1.000000e+00), !dbg !720
  %89 = call double @pow(double noundef -1.000000e+00, double noundef %handler_result1) #6, !dbg !720
  %90 = load double, ptr %66, align 8, !dbg !721, !tbaa !163
  %91 = fmul double %89, %90, !dbg !722
  tail call void @llvm.dbg.value(metadata double %91, metadata !636, metadata !DIExpression()), !dbg !647
  %92 = fmul double %75, %87, !dbg !723
  %93 = fmul double %78, %86, !dbg !724
  %handler_result2 = call double @fSubHandlerDouble(double %92, double %93), !dbg !725
  %94 = fmul double %handler_result2, %91, !dbg !725
  %handler_result3 = call double @fAddHandlerDouble(double %64, double %94), !dbg !726
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !634, metadata !DIExpression()), !dbg !647
  %95 = add nuw nsw i64 %63, 1, !dbg !726
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !628, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %70, metadata !632, metadata !DIExpression()), !dbg !647
  %96 = icmp eq i64 %95, 100, !dbg !727
  br i1 %96, label %131, label %62, !dbg !696, !llvm.loop !728

97:                                               ; preds = %120, %54
  %98 = phi i64 [ 0, %54 ], [ %111, %120 ]
  %99 = phi double [ 0.000000e+00, %54 ], [ %handler_result6, %120 ]
  %100 = phi double [ %43, %54 ], [ %105, %120 ]
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !628, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %99, metadata !634, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %100, metadata !632, metadata !DIExpression()), !dbg !647
  %101 = getelementptr inbounds [100 x double], ptr %8, i64 0, i64 %98, !dbg !730
  %102 = load double, ptr %101, align 8, !dbg !730, !tbaa !163
  %103 = call double @llvm.fabs.f64(double %102), !dbg !730
  %104 = fcmp ogt double %100, %103, !dbg !730
  %105 = select i1 %104, double %100, double %103, !dbg !730
  tail call void @llvm.dbg.value(metadata double %105, metadata !632, metadata !DIExpression()), !dbg !647
  %106 = fdiv double %103, %105, !dbg !733
  %107 = fcmp olt double %106, 0x3D06849B86A12B9B, !dbg !735
  br i1 %107, label %131, label %108, !dbg !736

108:                                              ; preds = %97
  %109 = trunc i64 %98 to i32, !dbg !737
  %110 = call double @gsl_sf_bessel_Jn(i32 noundef %109, double noundef %28) #6, !dbg !737
  tail call void @llvm.dbg.value(metadata double %110, metadata !637, metadata !DIExpression()), !dbg !647
  %111 = add nuw nsw i64 %98, 1, !dbg !738
  %112 = trunc i64 %111 to i32, !dbg !739
  %113 = call double @gsl_sf_bessel_Jn(i32 noundef %112, double noundef %28) #6, !dbg !739
  tail call void @llvm.dbg.value(metadata double %113, metadata !641, metadata !DIExpression()), !dbg !647
  br i1 %35, label %114, label %117, !dbg !740

114:                                              ; preds = %108
  %115 = call double @gsl_sf_bessel_Jn(i32 noundef %109, double noundef %31) #6, !dbg !741
  tail call void @llvm.dbg.value(metadata double %115, metadata !638, metadata !DIExpression()), !dbg !647
  %116 = call double @gsl_sf_bessel_Jn(i32 noundef %112, double noundef %31) #6, !dbg !744
  tail call void @llvm.dbg.value(metadata double %116, metadata !642, metadata !DIExpression()), !dbg !647
  br label %120, !dbg !745

117:                                              ; preds = %108
  %118 = call double @gsl_sf_bessel_Yn(i32 noundef %109, double noundef %31) #6, !dbg !746
  tail call void @llvm.dbg.value(metadata double %118, metadata !638, metadata !DIExpression()), !dbg !647
  %119 = call double @gsl_sf_bessel_Yn(i32 noundef %112, double noundef %31) #6, !dbg !748
  tail call void @llvm.dbg.value(metadata double %119, metadata !642, metadata !DIExpression()), !dbg !647
  br label %120

120:                                              ; preds = %117, %114
  %121 = phi double [ %115, %114 ], [ %118, %117 ], !dbg !749
  %122 = phi double [ %116, %114 ], [ %119, %117 ], !dbg !749
  tail call void @llvm.dbg.value(metadata double %122, metadata !642, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %121, metadata !638, metadata !DIExpression()), !dbg !647
  %123 = sitofp i32 %109 to double, !dbg !750
  %handler_result4 = call double @fAddHandlerDouble(double %58, double %123), !dbg !751
  %124 = call double @pow(double noundef -1.000000e+00, double noundef %handler_result4) #6, !dbg !751
  %125 = load double, ptr %101, align 8, !dbg !752, !tbaa !163
  %126 = fmul double %124, %125, !dbg !753
  tail call void @llvm.dbg.value(metadata double %126, metadata !636, metadata !DIExpression()), !dbg !647
  %127 = fmul double %110, %122, !dbg !754
  %128 = fmul double %113, %121, !dbg !755
  %handler_result5 = call double @fSubHandlerDouble(double %127, double %128), !dbg !756
  %129 = fmul double %handler_result5, %126, !dbg !756
  %handler_result6 = call double @fAddHandlerDouble(double %99, double %129), !dbg !757
  tail call void @llvm.dbg.value(metadata i64 %111, metadata !628, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !634, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %105, metadata !632, metadata !DIExpression()), !dbg !647
  %130 = icmp eq i64 %111, 100, !dbg !757
  br i1 %130, label %131, label %97, !dbg !693, !llvm.loop !758

131:                                              ; preds = %120, %97, %85, %62
  %132 = phi double [ %handler_result3, %85 ], [ %64, %62 ], [ %handler_result6, %120 ], [ %99, %97 ]
  %133 = phi double [ %70, %62 ], [ %70, %85 ], [ %105, %97 ], [ %105, %120 ], !dbg !760
  %134 = load double, ptr %8, align 16, !dbg !760, !tbaa !163
  %135 = fdiv double 0x3FF40D931FF62705, %134, !dbg !760
  %136 = fmul double %132, %135, !dbg !760
  tail call void @llvm.dbg.value(metadata double %136, metadata !634, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %133, metadata !632, metadata !DIExpression()), !dbg !647
  br label %137, !dbg !761

137:                                              ; preds = %131, %40
  %138 = phi double [ %136, %131 ], [ 0.000000e+00, %40 ]
  %139 = phi double [ %133, %131 ], [ %43, %40 ], !dbg !647
  %140 = getelementptr inbounds double, ptr %6, i64 %41, !dbg !762
  store double %138, ptr %140, align 8, !dbg !762, !tbaa !163
  tail call void @llvm.dbg.value(metadata double %139, metadata !632, metadata !DIExpression()), !dbg !647
  %141 = add nuw nsw i64 %41, 1, !dbg !763
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !627, metadata !DIExpression()), !dbg !647
  %142 = add nsw i64 %42, 1, !dbg !764
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !626, metadata !DIExpression()), !dbg !647
  %143 = icmp eq i64 %141, %39, !dbg !675
  br i1 %143, label %144, label %40, !dbg !678, !llvm.loop !765

144:                                              ; preds = %137, %47, %24, %23, %19
  %145 = phi i32 [ 4, %19 ], [ 4, %23 ], [ 0, %24 ], [ %50, %47 ], [ 0, %137 ], !dbg !647
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %8) #6, !dbg !767
  ret i32 %145, !dbg !767
}

declare !dbg !768 i32 @gsl_sf_mathieu_b_array(i32 noundef, i32 noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_mathieu_Mc(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 !dbg !769 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !779
  call void @llvm.dbg.assign(metadata i1 undef, metadata !777, metadata !DIExpression(), metadata !779, metadata ptr %5, metadata !DIExpression()), !dbg !780
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !773, metadata !DIExpression()), !dbg !780
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !774, metadata !DIExpression()), !dbg !780
  tail call void @llvm.dbg.value(metadata double %2, metadata !775, metadata !DIExpression()), !dbg !780
  tail call void @llvm.dbg.value(metadata double %3, metadata !776, metadata !DIExpression()), !dbg !780
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !781
  %6 = call i32 @gsl_sf_mathieu_Mc_e(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %5), !dbg !781
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !778, metadata !DIExpression()), !dbg !780
  %7 = icmp eq i32 %6, 0, !dbg !782
  br i1 %7, label %9, label %8, !dbg !781

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 483, i32 noundef %6) #6, !dbg !784
  br label %9, !dbg !784

9:                                                ; preds = %8, %4
  %10 = load double, ptr %5, align 8, !dbg !781, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !787
  ret double %10, !dbg !787
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_mathieu_Ms(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 !dbg !788 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !796
  call void @llvm.dbg.assign(metadata i1 undef, metadata !794, metadata !DIExpression(), metadata !796, metadata ptr %5, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !790, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !791, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %2, metadata !792, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %3, metadata !793, metadata !DIExpression()), !dbg !797
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !798
  %6 = call i32 @gsl_sf_mathieu_Ms_e(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %5), !dbg !798
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !795, metadata !DIExpression()), !dbg !797
  %7 = icmp eq i32 %6, 0, !dbg !799
  br i1 %7, label %9, label %8, !dbg !798

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 488, i32 noundef %6) #6, !dbg !801
  br label %9, !dbg !801

9:                                                ; preds = %8, %4
  %10 = load double, ptr %5, align 8, !dbg !798, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !804
  ret double %10, !dbg !804
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "mathieu_radfunc.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c83bc809c3966cbb1ea0ac498a8361dd")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 18)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 20)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 483, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 50)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 488, type: !19, isLocal: true, isDefinition: true)
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
!65 = !{!0, !7, !12, !17, !22}
!66 = !{i32 7, !"Dwarf Version", i32 5}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 8, !"PIC Level", i32 2}
!70 = !{i32 7, !"PIE Level", i32 2}
!71 = !{i32 7, !"uwtable", i32 2}
!72 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!73 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!74 = distinct !DISubprogram(name: "gsl_sf_mathieu_Mc_e", scope: !2, file: !2, line: 30, type: !75, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !85)
!75 = !DISubroutineType(types: !76)
!76 = !{!28, !28, !28, !77, !77, !78}
!77 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !80, line: 41, baseType: !81)
!80 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !80, line: 37, size: 128, elements: !82)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !81, file: !80, line: 38, baseType: !77, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !81, file: !80, line: 39, baseType: !77, size: 64, offset: 64)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !104, !105, !106, !107, !108, !109, !110, !111}
!86 = !DILocalVariable(name: "kind", arg: 1, scope: !74, file: !2, line: 30, type: !28)
!87 = !DILocalVariable(name: "order", arg: 2, scope: !74, file: !2, line: 30, type: !28)
!88 = !DILocalVariable(name: "qq", arg: 3, scope: !74, file: !2, line: 30, type: !77)
!89 = !DILocalVariable(name: "zz", arg: 4, scope: !74, file: !2, line: 30, type: !77)
!90 = !DILocalVariable(name: "result", arg: 5, scope: !74, file: !2, line: 31, type: !78)
!91 = !DILocalVariable(name: "even_odd", scope: !74, file: !2, line: 33, type: !28)
!92 = !DILocalVariable(name: "kk", scope: !74, file: !2, line: 33, type: !28)
!93 = !DILocalVariable(name: "mm", scope: !74, file: !2, line: 33, type: !28)
!94 = !DILocalVariable(name: "status", scope: !74, file: !2, line: 33, type: !28)
!95 = !DILocalVariable(name: "maxerr", scope: !74, file: !2, line: 34, type: !77)
!96 = !DILocalVariable(name: "amax", scope: !74, file: !2, line: 34, type: !77)
!97 = !DILocalVariable(name: "pi", scope: !74, file: !2, line: 34, type: !77)
!98 = !DILocalVariable(name: "fn", scope: !74, file: !2, line: 34, type: !77)
!99 = !DILocalVariable(name: "factor", scope: !74, file: !2, line: 34, type: !77)
!100 = !DILocalVariable(name: "coeff", scope: !74, file: !2, line: 35, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 6400, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 100)
!104 = !DILocalVariable(name: "fc", scope: !74, file: !2, line: 35, type: !77)
!105 = !DILocalVariable(name: "j1c", scope: !74, file: !2, line: 36, type: !77)
!106 = !DILocalVariable(name: "z2c", scope: !74, file: !2, line: 36, type: !77)
!107 = !DILocalVariable(name: "j1pc", scope: !74, file: !2, line: 36, type: !77)
!108 = !DILocalVariable(name: "z2pc", scope: !74, file: !2, line: 36, type: !77)
!109 = !DILocalVariable(name: "u1", scope: !74, file: !2, line: 37, type: !77)
!110 = !DILocalVariable(name: "u2", scope: !74, file: !2, line: 37, type: !77)
!111 = !DILocalVariable(name: "aa", scope: !74, file: !2, line: 38, type: !79)
!112 = distinct !DIAssignID()
!113 = !DILocation(line: 0, scope: !74)
!114 = distinct !DIAssignID()
!115 = !DILocation(line: 35, column: 3, scope: !74)
!116 = !DILocation(line: 38, column: 3, scope: !74)
!117 = !DILocation(line: 42, column: 10, scope: !118)
!118 = distinct !DILexicalBlock(scope: !74, file: !2, line: 42, column: 7)
!119 = !DILocation(line: 42, column: 7, scope: !74)
!120 = !DILocation(line: 44, column: 7, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 44, column: 7)
!122 = distinct !DILexicalBlock(scope: !118, file: !2, line: 43, column: 3)
!123 = !DILocation(line: 46, column: 16, scope: !124)
!124 = distinct !DILexicalBlock(scope: !74, file: !2, line: 46, column: 7)
!125 = !DILocation(line: 48, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 48, column: 7)
!127 = distinct !DILexicalBlock(scope: !124, file: !2, line: 47, column: 3)
!128 = !DILocation(line: 54, column: 8, scope: !74)
!129 = !DILocation(line: 54, column: 25, scope: !74)
!130 = !DILocation(line: 54, column: 17, scope: !74)
!131 = !DILocation(line: 54, column: 16, scope: !74)
!132 = !DILocation(line: 55, column: 8, scope: !74)
!133 = !DILocation(line: 55, column: 17, scope: !74)
!134 = !DILocation(line: 55, column: 16, scope: !74)
!135 = !DILocation(line: 58, column: 17, scope: !136)
!136 = distinct !DILexicalBlock(scope: !74, file: !2, line: 58, column: 7)
!137 = !DILocation(line: 62, column: 12, scope: !74)
!138 = !DILocation(line: 63, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !74, file: !2, line: 63, column: 7)
!140 = !DILocation(line: 63, column: 7, scope: !74)
!141 = !DILocation(line: 69, column: 49, scope: !74)
!142 = !{!143, !144, i64 0}
!143 = !{!"gsl_sf_result_struct", !144, i64 0, !144, i64 8}
!144 = !{!"double", !145, i64 0}
!145 = !{!"omnipotent char", !146, i64 0}
!146 = !{!"Simple C/C++ TBAA"}
!147 = !DILocation(line: 69, column: 12, scope: !74)
!148 = !DILocation(line: 70, column: 14, scope: !149)
!149 = distinct !DILexicalBlock(scope: !74, file: !2, line: 70, column: 7)
!150 = !DILocation(line: 70, column: 7, scope: !74)
!151 = !DILocation(line: 75, column: 16, scope: !152)
!152 = distinct !DILexicalBlock(scope: !74, file: !2, line: 75, column: 7)
!153 = !DILocation(line: 75, column: 7, scope: !74)
!154 = !DILocation(line: 101, column: 7, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 101, column: 7)
!156 = distinct !DILexicalBlock(scope: !152, file: !2, line: 100, column: 3)
!157 = !DILocation(line: 77, column: 7, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !2, line: 77, column: 7)
!159 = distinct !DILexicalBlock(scope: !152, file: !2, line: 76, column: 3)
!160 = !DILocation(line: 79, column: 18, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !2, line: 78, column: 7)
!162 = distinct !DILexicalBlock(scope: !158, file: !2, line: 77, column: 7)
!163 = !{!144, !144, i64 0}
!164 = !DILocation(line: 80, column: 30, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !2, line: 80, column: 15)
!166 = !DILocation(line: 80, column: 36, scope: !165)
!167 = !DILocation(line: 80, column: 15, scope: !161)
!168 = !DILocation(line: 83, column: 17, scope: !161)
!169 = !DILocation(line: 84, column: 15, scope: !161)
!170 = !DILocation(line: 86, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !2, line: 85, column: 11)
!172 = distinct !DILexicalBlock(scope: !161, file: !2, line: 84, column: 15)
!173 = !DILocation(line: 87, column: 11, scope: !171)
!174 = !DILocation(line: 90, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !2, line: 89, column: 11)
!176 = !DILocation(line: 0, scope: !172)
!177 = !DILocation(line: 93, column: 36, scope: !161)
!178 = !DILocation(line: 93, column: 16, scope: !161)
!179 = !DILocation(line: 93, column: 40, scope: !161)
!180 = !DILocation(line: 93, column: 39, scope: !161)
!181 = !DILocation(line: 94, column: 19, scope: !161)
!182 = !DILocation(line: 94, column: 23, scope: !161)
!183 = !DILocation(line: 77, column: 45, scope: !162)
!184 = !DILocation(line: 77, column: 20, scope: !162)
!185 = distinct !{!185, !157, !186, !187}
!186 = !DILocation(line: 95, column: 7, scope: !158)
!187 = !{!"llvm.loop.mustprogress"}
!188 = !DILocation(line: 103, column: 18, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !2, line: 102, column: 7)
!190 = distinct !DILexicalBlock(scope: !155, file: !2, line: 101, column: 7)
!191 = !DILocation(line: 104, column: 30, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !2, line: 104, column: 15)
!193 = !DILocation(line: 104, column: 36, scope: !192)
!194 = !DILocation(line: 104, column: 15, scope: !189)
!195 = !DILocation(line: 107, column: 17, scope: !189)
!196 = !DILocation(line: 108, column: 37, scope: !189)
!197 = !DILocation(line: 108, column: 18, scope: !189)
!198 = !DILocation(line: 109, column: 15, scope: !189)
!199 = !DILocation(line: 111, column: 21, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !2, line: 110, column: 11)
!201 = distinct !DILexicalBlock(scope: !189, file: !2, line: 109, column: 15)
!202 = !DILocation(line: 112, column: 22, scope: !200)
!203 = !DILocation(line: 113, column: 11, scope: !200)
!204 = !DILocation(line: 116, column: 21, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !2, line: 115, column: 11)
!206 = !DILocation(line: 117, column: 22, scope: !205)
!207 = !DILocation(line: 0, scope: !201)
!208 = !DILocation(line: 119, column: 40, scope: !189)
!209 = !DILocation(line: 119, column: 16, scope: !189)
!210 = !DILocation(line: 119, column: 44, scope: !189)
!211 = !DILocation(line: 119, column: 43, scope: !189)
!212 = !DILocation(line: 120, column: 24, scope: !189)
!213 = !DILocation(line: 120, column: 36, scope: !189)
!214 = !DILocation(line: 120, column: 19, scope: !189)
!215 = !DILocation(line: 101, column: 20, scope: !190)
!216 = distinct !{!216, !154, !217, !187}
!217 = !DILocation(line: 121, column: 7, scope: !155)
!218 = !DILocation(line: 0, scope: !152)
!219 = !DILocation(line: 126, column: 15, scope: !74)
!220 = !DILocation(line: 127, column: 11, scope: !74)
!221 = !DILocation(line: 128, column: 12, scope: !74)
!222 = !DILocation(line: 129, column: 14, scope: !223)
!223 = distinct !DILexicalBlock(scope: !74, file: !2, line: 129, column: 7)
!224 = !DILocation(line: 129, column: 7, scope: !74)
!225 = !{!143, !144, i64 8}
!226 = !DILocation(line: 132, column: 3, scope: !74)
!227 = !DILocation(line: 133, column: 1, scope: !74)
!228 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !231, !231, !28, !28}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!233 = !DISubprogram(name: "sqrt", scope: !234, file: !234, line: 143, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!235 = !DISubroutineType(types: !236)
!236 = !{!77, !77}
!237 = !DISubprogram(name: "exp", scope: !234, file: !234, line: 95, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubprogram(name: "gsl_sf_mathieu_a_e", scope: !239, file: !239, line: 70, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DIFile(filename: "../gsl/gsl_sf_mathieu.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "10fe5d8be88d41271759b0df36ba3d6c")
!240 = !DISubroutineType(types: !241)
!241 = !{!28, !28, !77, !78}
!242 = !DISubprogram(name: "gsl_sf_mathieu_a_coeff", scope: !239, file: !239, line: 76, type: !243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !DISubroutineType(types: !244)
!244 = !{!28, !28, !77, !77, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!246 = !DISubprogram(name: "gsl_sf_bessel_Jn", scope: !247, file: !247, line: 64, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!248 = !DISubroutineType(types: !249)
!249 = !{!77, !250, !251}
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!252 = !DISubprogram(name: "gsl_sf_bessel_Yn", scope: !247, file: !247, line: 98, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubprogram(name: "pow", scope: !234, file: !234, line: 140, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubroutineType(types: !255)
!255 = !{!77, !77, !77}
!256 = distinct !DISubprogram(name: "gsl_sf_mathieu_Ms_e", scope: !2, file: !2, line: 136, type: !75, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282}
!258 = !DILocalVariable(name: "kind", arg: 1, scope: !256, file: !2, line: 136, type: !28)
!259 = !DILocalVariable(name: "order", arg: 2, scope: !256, file: !2, line: 136, type: !28)
!260 = !DILocalVariable(name: "qq", arg: 3, scope: !256, file: !2, line: 136, type: !77)
!261 = !DILocalVariable(name: "zz", arg: 4, scope: !256, file: !2, line: 136, type: !77)
!262 = !DILocalVariable(name: "result", arg: 5, scope: !256, file: !2, line: 137, type: !78)
!263 = !DILocalVariable(name: "even_odd", scope: !256, file: !2, line: 139, type: !28)
!264 = !DILocalVariable(name: "kk", scope: !256, file: !2, line: 139, type: !28)
!265 = !DILocalVariable(name: "mm", scope: !256, file: !2, line: 139, type: !28)
!266 = !DILocalVariable(name: "status", scope: !256, file: !2, line: 139, type: !28)
!267 = !DILocalVariable(name: "maxerr", scope: !256, file: !2, line: 140, type: !77)
!268 = !DILocalVariable(name: "amax", scope: !256, file: !2, line: 140, type: !77)
!269 = !DILocalVariable(name: "pi", scope: !256, file: !2, line: 140, type: !77)
!270 = !DILocalVariable(name: "fn", scope: !256, file: !2, line: 140, type: !77)
!271 = !DILocalVariable(name: "factor", scope: !256, file: !2, line: 140, type: !77)
!272 = !DILocalVariable(name: "coeff", scope: !256, file: !2, line: 141, type: !101)
!273 = !DILocalVariable(name: "fc", scope: !256, file: !2, line: 141, type: !77)
!274 = !DILocalVariable(name: "j1c", scope: !256, file: !2, line: 142, type: !77)
!275 = !DILocalVariable(name: "z2c", scope: !256, file: !2, line: 142, type: !77)
!276 = !DILocalVariable(name: "j1mc", scope: !256, file: !2, line: 142, type: !77)
!277 = !DILocalVariable(name: "z2mc", scope: !256, file: !2, line: 142, type: !77)
!278 = !DILocalVariable(name: "j1pc", scope: !256, file: !2, line: 142, type: !77)
!279 = !DILocalVariable(name: "z2pc", scope: !256, file: !2, line: 142, type: !77)
!280 = !DILocalVariable(name: "u1", scope: !256, file: !2, line: 143, type: !77)
!281 = !DILocalVariable(name: "u2", scope: !256, file: !2, line: 143, type: !77)
!282 = !DILocalVariable(name: "aa", scope: !256, file: !2, line: 144, type: !79)
!283 = distinct !DIAssignID()
!284 = !DILocation(line: 0, scope: !256)
!285 = distinct !DIAssignID()
!286 = !DILocation(line: 141, column: 3, scope: !256)
!287 = !DILocation(line: 144, column: 3, scope: !256)
!288 = !DILocation(line: 148, column: 10, scope: !289)
!289 = distinct !DILexicalBlock(scope: !256, file: !2, line: 148, column: 7)
!290 = !DILocation(line: 148, column: 7, scope: !256)
!291 = !DILocation(line: 150, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !2, line: 150, column: 7)
!293 = distinct !DILexicalBlock(scope: !289, file: !2, line: 149, column: 3)
!294 = !DILocation(line: 152, column: 16, scope: !295)
!295 = distinct !DILexicalBlock(scope: !256, file: !2, line: 152, column: 7)
!296 = !DILocation(line: 154, column: 7, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !2, line: 154, column: 7)
!298 = distinct !DILexicalBlock(scope: !295, file: !2, line: 153, column: 3)
!299 = !DILocation(line: 158, column: 13, scope: !300)
!300 = distinct !DILexicalBlock(scope: !256, file: !2, line: 158, column: 7)
!301 = !DILocation(line: 158, column: 7, scope: !256)
!302 = !DILocation(line: 161, column: 19, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !2, line: 159, column: 3)
!304 = !DILocation(line: 162, column: 7, scope: !303)
!305 = !DILocation(line: 168, column: 8, scope: !256)
!306 = !DILocation(line: 168, column: 25, scope: !256)
!307 = !DILocation(line: 168, column: 17, scope: !256)
!308 = !DILocation(line: 168, column: 16, scope: !256)
!309 = !DILocation(line: 169, column: 8, scope: !256)
!310 = !DILocation(line: 169, column: 17, scope: !256)
!311 = !DILocation(line: 169, column: 16, scope: !256)
!312 = !DILocation(line: 172, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !256, file: !2, line: 172, column: 7)
!314 = !DILocation(line: 176, column: 12, scope: !256)
!315 = !DILocation(line: 177, column: 14, scope: !316)
!316 = distinct !DILexicalBlock(scope: !256, file: !2, line: 177, column: 7)
!317 = !DILocation(line: 177, column: 7, scope: !256)
!318 = !DILocation(line: 183, column: 49, scope: !256)
!319 = !DILocation(line: 183, column: 12, scope: !256)
!320 = !DILocation(line: 184, column: 14, scope: !321)
!321 = distinct !DILexicalBlock(scope: !256, file: !2, line: 184, column: 7)
!322 = !DILocation(line: 184, column: 7, scope: !256)
!323 = !DILocation(line: 189, column: 16, scope: !324)
!324 = distinct !DILexicalBlock(scope: !256, file: !2, line: 189, column: 7)
!325 = !DILocation(line: 189, column: 7, scope: !256)
!326 = !DILocation(line: 218, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !2, line: 218, column: 7)
!328 = distinct !DILexicalBlock(scope: !324, file: !2, line: 217, column: 3)
!329 = !DILocation(line: 191, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !2, line: 191, column: 7)
!331 = distinct !DILexicalBlock(scope: !324, file: !2, line: 190, column: 3)
!332 = !DILocation(line: 193, column: 18, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !2, line: 192, column: 7)
!334 = distinct !DILexicalBlock(scope: !330, file: !2, line: 191, column: 7)
!335 = !DILocation(line: 194, column: 30, scope: !336)
!336 = distinct !DILexicalBlock(scope: !333, file: !2, line: 194, column: 15)
!337 = !DILocation(line: 194, column: 36, scope: !336)
!338 = !DILocation(line: 194, column: 15, scope: !333)
!339 = !DILocation(line: 197, column: 18, scope: !333)
!340 = !DILocation(line: 198, column: 18, scope: !333)
!341 = !DILocation(line: 199, column: 15, scope: !333)
!342 = !DILocation(line: 201, column: 22, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !2, line: 200, column: 11)
!344 = distinct !DILexicalBlock(scope: !333, file: !2, line: 199, column: 15)
!345 = !DILocation(line: 202, column: 22, scope: !343)
!346 = !DILocation(line: 203, column: 11, scope: !343)
!347 = !DILocation(line: 206, column: 22, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !2, line: 205, column: 11)
!349 = !DILocation(line: 207, column: 22, scope: !348)
!350 = !DILocation(line: 0, scope: !344)
!351 = !DILocation(line: 210, column: 36, scope: !333)
!352 = !DILocation(line: 210, column: 38, scope: !333)
!353 = !DILocation(line: 210, column: 16, scope: !333)
!354 = !DILocation(line: 210, column: 42, scope: !333)
!355 = !DILocation(line: 210, column: 41, scope: !333)
!356 = !DILocation(line: 211, column: 25, scope: !333)
!357 = !DILocation(line: 211, column: 37, scope: !333)
!358 = !DILocation(line: 211, column: 19, scope: !333)
!359 = !DILocation(line: 191, column: 45, scope: !334)
!360 = !DILocation(line: 191, column: 20, scope: !334)
!361 = distinct !{!361, !329, !362, !187}
!362 = !DILocation(line: 212, column: 7, scope: !330)
!363 = !DILocation(line: 220, column: 18, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 219, column: 7)
!365 = distinct !DILexicalBlock(scope: !327, file: !2, line: 218, column: 7)
!366 = !DILocation(line: 221, column: 30, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !2, line: 221, column: 15)
!368 = !DILocation(line: 221, column: 36, scope: !367)
!369 = !DILocation(line: 221, column: 15, scope: !364)
!370 = !DILocation(line: 224, column: 17, scope: !364)
!371 = !DILocation(line: 225, column: 37, scope: !364)
!372 = !DILocation(line: 225, column: 18, scope: !364)
!373 = !DILocation(line: 226, column: 15, scope: !364)
!374 = !DILocation(line: 228, column: 21, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !2, line: 227, column: 11)
!376 = distinct !DILexicalBlock(scope: !364, file: !2, line: 226, column: 15)
!377 = !DILocation(line: 229, column: 22, scope: !375)
!378 = !DILocation(line: 230, column: 11, scope: !375)
!379 = !DILocation(line: 233, column: 21, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !2, line: 232, column: 11)
!381 = !DILocation(line: 234, column: 22, scope: !380)
!382 = !DILocation(line: 0, scope: !376)
!383 = !DILocation(line: 237, column: 40, scope: !364)
!384 = !DILocation(line: 237, column: 16, scope: !364)
!385 = !DILocation(line: 237, column: 44, scope: !364)
!386 = !DILocation(line: 237, column: 43, scope: !364)
!387 = !DILocation(line: 238, column: 24, scope: !364)
!388 = !DILocation(line: 238, column: 36, scope: !364)
!389 = !DILocation(line: 238, column: 19, scope: !364)
!390 = !DILocation(line: 218, column: 20, scope: !365)
!391 = distinct !{!391, !326, !392, !187}
!392 = !DILocation(line: 239, column: 7, scope: !327)
!393 = !DILocation(line: 0, scope: !324)
!394 = !DILocation(line: 244, column: 15, scope: !256)
!395 = !DILocation(line: 245, column: 11, scope: !256)
!396 = !DILocation(line: 246, column: 12, scope: !256)
!397 = !DILocation(line: 247, column: 14, scope: !398)
!398 = distinct !DILexicalBlock(scope: !256, file: !2, line: 247, column: 7)
!399 = !DILocation(line: 247, column: 7, scope: !256)
!400 = !DILocation(line: 250, column: 3, scope: !256)
!401 = !DILocation(line: 251, column: 1, scope: !256)
!402 = !DISubprogram(name: "gsl_sf_mathieu_b_e", scope: !239, file: !239, line: 72, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!403 = !DISubprogram(name: "gsl_sf_mathieu_b_coeff", scope: !239, file: !239, line: 77, type: !243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!404 = distinct !DISubprogram(name: "gsl_sf_mathieu_Mc_array", scope: !2, file: !2, line: 254, type: !405, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !468)
!405 = !DISubroutineType(types: !406)
!406 = !{!28, !28, !28, !28, !77, !77, !407, !245}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_mathieu_workspace", file: !239, line: 60, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 42, size: 1024, elements: !410)
!410 = !{!411, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !445, !457}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !409, file: !239, line: 44, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !413, line: 18, baseType: !414)
!413 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!414 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "even_order", scope: !409, file: !239, line: 45, baseType: !412, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "odd_order", scope: !409, file: !239, line: 46, baseType: !412, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !409, file: !239, line: 47, baseType: !28, size: 32, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "qa", scope: !409, file: !239, line: 48, baseType: !77, size: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "qb", scope: !409, file: !239, line: 49, baseType: !77, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "aa", scope: !409, file: !239, line: 50, baseType: !245, size: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !409, file: !239, line: 51, baseType: !245, size: 64, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !409, file: !239, line: 52, baseType: !245, size: 64, offset: 512)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !409, file: !239, line: 53, baseType: !245, size: 64, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !409, file: !239, line: 54, baseType: !245, size: 64, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "e2", scope: !409, file: !239, line: 55, baseType: !245, size: 64, offset: 704)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "zz", scope: !409, file: !239, line: 56, baseType: !245, size: 64, offset: 768)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !409, file: !239, line: 57, baseType: !428, size: 64, offset: 832)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !430, line: 50, baseType: !431)
!430 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 42, size: 320, elements: !432)
!432 = !{!433, !434, !435, !436, !444}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !431, file: !430, line: 44, baseType: !412, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !431, file: !430, line: 45, baseType: !412, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !431, file: !430, line: 46, baseType: !245, size: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !431, file: !430, line: 47, baseType: !437, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !439, line: 44, baseType: !440)
!439 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !439, line: 38, size: 128, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !440, file: !439, line: 40, baseType: !412, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !440, file: !439, line: 41, baseType: !245, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !431, file: !430, line: 48, baseType: !28, size: 32, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "evec", scope: !409, file: !239, line: 58, baseType: !446, size: 64, offset: 896)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !448, line: 50, baseType: !449)
!448 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 42, size: 384, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !449, file: !448, line: 44, baseType: !412, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !449, file: !448, line: 45, baseType: !412, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !449, file: !448, line: 46, baseType: !412, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !449, file: !448, line: 47, baseType: !245, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !449, file: !448, line: 48, baseType: !437, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !449, file: !448, line: 49, baseType: !28, size: 32, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "wmat", scope: !409, file: !239, line: 59, baseType: !458, size: 64, offset: 960)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_eigen_symmv_workspace", file: !460, line: 54, baseType: !461)
!460 = !DIFile(filename: "../gsl/gsl_eigen.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7d132116d57637a12af1800ec0e0c04b")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !460, line: 48, size: 320, elements: !462)
!462 = !{!463, !464, !465, !466, !467}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !461, file: !460, line: 49, baseType: !412, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !461, file: !460, line: 50, baseType: !245, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !461, file: !460, line: 51, baseType: !245, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !461, file: !460, line: 52, baseType: !245, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !461, file: !460, line: 53, baseType: !245, size: 64, offset: 256)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494}
!469 = !DILocalVariable(name: "kind", arg: 1, scope: !404, file: !2, line: 254, type: !28)
!470 = !DILocalVariable(name: "nmin", arg: 2, scope: !404, file: !2, line: 254, type: !28)
!471 = !DILocalVariable(name: "nmax", arg: 3, scope: !404, file: !2, line: 254, type: !28)
!472 = !DILocalVariable(name: "qq", arg: 4, scope: !404, file: !2, line: 254, type: !77)
!473 = !DILocalVariable(name: "zz", arg: 5, scope: !404, file: !2, line: 255, type: !77)
!474 = !DILocalVariable(name: "work", arg: 6, scope: !404, file: !2, line: 255, type: !407)
!475 = !DILocalVariable(name: "result_array", arg: 7, scope: !404, file: !2, line: 256, type: !245)
!476 = !DILocalVariable(name: "even_odd", scope: !404, file: !2, line: 258, type: !28)
!477 = !DILocalVariable(name: "order", scope: !404, file: !2, line: 258, type: !28)
!478 = !DILocalVariable(name: "ii", scope: !404, file: !2, line: 258, type: !28)
!479 = !DILocalVariable(name: "kk", scope: !404, file: !2, line: 258, type: !28)
!480 = !DILocalVariable(name: "mm", scope: !404, file: !2, line: 258, type: !28)
!481 = !DILocalVariable(name: "status", scope: !404, file: !2, line: 258, type: !28)
!482 = !DILocalVariable(name: "maxerr", scope: !404, file: !2, line: 259, type: !77)
!483 = !DILocalVariable(name: "amax", scope: !404, file: !2, line: 259, type: !77)
!484 = !DILocalVariable(name: "pi", scope: !404, file: !2, line: 259, type: !77)
!485 = !DILocalVariable(name: "fn", scope: !404, file: !2, line: 259, type: !77)
!486 = !DILocalVariable(name: "coeff", scope: !404, file: !2, line: 260, type: !101)
!487 = !DILocalVariable(name: "fc", scope: !404, file: !2, line: 260, type: !77)
!488 = !DILocalVariable(name: "j1c", scope: !404, file: !2, line: 261, type: !77)
!489 = !DILocalVariable(name: "z2c", scope: !404, file: !2, line: 261, type: !77)
!490 = !DILocalVariable(name: "j1pc", scope: !404, file: !2, line: 261, type: !77)
!491 = !DILocalVariable(name: "z2pc", scope: !404, file: !2, line: 261, type: !77)
!492 = !DILocalVariable(name: "u1", scope: !404, file: !2, line: 262, type: !77)
!493 = !DILocalVariable(name: "u2", scope: !404, file: !2, line: 262, type: !77)
!494 = !DILocalVariable(name: "aa", scope: !404, file: !2, line: 263, type: !245)
!495 = distinct !DIAssignID()
!496 = !DILocation(line: 0, scope: !404)
!497 = !DILocation(line: 260, column: 3, scope: !404)
!498 = !DILocation(line: 263, column: 22, scope: !404)
!499 = !{!500, !503, i64 48}
!500 = !{!"", !501, i64 0, !501, i64 8, !501, i64 16, !502, i64 24, !144, i64 32, !144, i64 40, !503, i64 48, !503, i64 56, !503, i64 64, !503, i64 72, !503, i64 80, !503, i64 88, !503, i64 96, !503, i64 104, !503, i64 112, !503, i64 120}
!501 = !{!"long", !145, i64 0}
!502 = !{!"int", !145, i64 0}
!503 = !{!"any pointer", !145, i64 0}
!504 = !DILocation(line: 267, column: 16, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !2, line: 267, column: 3)
!506 = distinct !DILexicalBlock(scope: !404, file: !2, line: 267, column: 3)
!507 = !DILocation(line: 267, column: 3, scope: !506)
!508 = !DILocation(line: 268, column: 24, scope: !505)
!509 = !DILocation(line: 271, column: 10, scope: !510)
!510 = distinct !DILexicalBlock(scope: !404, file: !2, line: 271, column: 7)
!511 = !DILocation(line: 271, column: 7, scope: !404)
!512 = !DILocation(line: 273, column: 7, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !2, line: 273, column: 7)
!514 = distinct !DILexicalBlock(scope: !510, file: !2, line: 272, column: 3)
!515 = !DILocation(line: 275, column: 16, scope: !516)
!516 = distinct !DILexicalBlock(scope: !404, file: !2, line: 275, column: 7)
!517 = !DILocation(line: 277, column: 7, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !2, line: 277, column: 7)
!519 = distinct !DILexicalBlock(scope: !516, file: !2, line: 276, column: 3)
!520 = !DILocation(line: 282, column: 8, scope: !404)
!521 = !DILocation(line: 282, column: 25, scope: !404)
!522 = !DILocation(line: 282, column: 17, scope: !404)
!523 = !DILocation(line: 282, column: 16, scope: !404)
!524 = !DILocation(line: 283, column: 8, scope: !404)
!525 = !DILocation(line: 283, column: 17, scope: !404)
!526 = !DILocation(line: 283, column: 16, scope: !404)
!527 = !DILocation(line: 286, column: 3, scope: !404)
!528 = !DILocation(line: 288, column: 31, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !2, line: 288, column: 3)
!530 = distinct !DILexicalBlock(scope: !404, file: !2, line: 288, column: 3)
!531 = !DILocation(line: 288, column: 3, scope: !530)
!532 = !DILocation(line: 296, column: 50, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !2, line: 289, column: 3)
!534 = !DILocation(line: 296, column: 16, scope: !533)
!535 = !DILocation(line: 297, column: 18, scope: !536)
!536 = distinct !DILexicalBlock(scope: !533, file: !2, line: 297, column: 11)
!537 = !DILocation(line: 297, column: 11, scope: !533)
!538 = !DILocation(line: 292, column: 21, scope: !539)
!539 = distinct !DILexicalBlock(scope: !533, file: !2, line: 292, column: 11)
!540 = !DILocation(line: 302, column: 20, scope: !541)
!541 = distinct !DILexicalBlock(scope: !533, file: !2, line: 302, column: 11)
!542 = !DILocation(line: 302, column: 11, scope: !533)
!543 = !DILocation(line: 328, column: 11, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !2, line: 328, column: 11)
!545 = distinct !DILexicalBlock(scope: !541, file: !2, line: 327, column: 7)
!546 = !DILocation(line: 304, column: 11, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !2, line: 304, column: 11)
!548 = distinct !DILexicalBlock(scope: !541, file: !2, line: 303, column: 7)
!549 = !DILocation(line: 306, column: 22, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !2, line: 305, column: 11)
!551 = distinct !DILexicalBlock(scope: !547, file: !2, line: 304, column: 11)
!552 = !DILocation(line: 307, column: 34, scope: !553)
!553 = distinct !DILexicalBlock(scope: !550, file: !2, line: 307, column: 19)
!554 = !DILocation(line: 307, column: 40, scope: !553)
!555 = !DILocation(line: 307, column: 19, scope: !550)
!556 = !DILocation(line: 310, column: 21, scope: !550)
!557 = !DILocation(line: 311, column: 19, scope: !550)
!558 = !DILocation(line: 313, column: 25, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !2, line: 312, column: 15)
!560 = distinct !DILexicalBlock(scope: !550, file: !2, line: 311, column: 19)
!561 = !DILocation(line: 314, column: 15, scope: !559)
!562 = !DILocation(line: 317, column: 25, scope: !563)
!563 = distinct !DILexicalBlock(scope: !560, file: !2, line: 316, column: 15)
!564 = !DILocation(line: 0, scope: !560)
!565 = !DILocation(line: 320, column: 40, scope: !550)
!566 = !DILocation(line: 320, column: 20, scope: !550)
!567 = !DILocation(line: 320, column: 44, scope: !550)
!568 = !DILocation(line: 320, column: 43, scope: !550)
!569 = !DILocation(line: 321, column: 23, scope: !550)
!570 = !DILocation(line: 321, column: 27, scope: !550)
!571 = !DILocation(line: 304, column: 49, scope: !551)
!572 = !DILocation(line: 304, column: 24, scope: !551)
!573 = distinct !{!573, !546, !574, !187}
!574 = !DILocation(line: 322, column: 11, scope: !547)
!575 = !DILocation(line: 330, column: 22, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 329, column: 11)
!577 = distinct !DILexicalBlock(scope: !544, file: !2, line: 328, column: 11)
!578 = !DILocation(line: 331, column: 34, scope: !579)
!579 = distinct !DILexicalBlock(scope: !576, file: !2, line: 331, column: 19)
!580 = !DILocation(line: 331, column: 40, scope: !579)
!581 = !DILocation(line: 331, column: 19, scope: !576)
!582 = !DILocation(line: 334, column: 21, scope: !576)
!583 = !DILocation(line: 335, column: 41, scope: !576)
!584 = !DILocation(line: 335, column: 22, scope: !576)
!585 = !DILocation(line: 336, column: 19, scope: !576)
!586 = !DILocation(line: 338, column: 25, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !2, line: 337, column: 15)
!588 = distinct !DILexicalBlock(scope: !576, file: !2, line: 336, column: 19)
!589 = !DILocation(line: 339, column: 26, scope: !587)
!590 = !DILocation(line: 340, column: 15, scope: !587)
!591 = !DILocation(line: 343, column: 25, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !2, line: 342, column: 15)
!593 = !DILocation(line: 344, column: 26, scope: !592)
!594 = !DILocation(line: 0, scope: !588)
!595 = !DILocation(line: 346, column: 44, scope: !576)
!596 = !DILocation(line: 346, column: 20, scope: !576)
!597 = !DILocation(line: 346, column: 48, scope: !576)
!598 = !DILocation(line: 346, column: 47, scope: !576)
!599 = !DILocation(line: 347, column: 28, scope: !576)
!600 = !DILocation(line: 347, column: 40, scope: !576)
!601 = !DILocation(line: 347, column: 23, scope: !576)
!602 = !DILocation(line: 328, column: 24, scope: !577)
!603 = distinct !{!603, !543, !604, !187}
!604 = !DILocation(line: 348, column: 11, scope: !544)
!605 = !DILocation(line: 0, scope: !541)
!606 = !DILocation(line: 353, column: 7, scope: !533)
!607 = !DILocation(line: 353, column: 24, scope: !533)
!608 = !DILocation(line: 288, column: 41, scope: !529)
!609 = !DILocation(line: 288, column: 50, scope: !529)
!610 = distinct !{!610, !531, !611, !187}
!611 = !DILocation(line: 354, column: 3, scope: !530)
!612 = !DILocation(line: 357, column: 1, scope: !404)
!613 = !DISubprogram(name: "gsl_sf_mathieu_a_array", scope: !239, file: !239, line: 65, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!614 = !DISubroutineType(types: !615)
!615 = !{!28, !28, !28, !77, !407, !245}
!616 = distinct !DISubprogram(name: "gsl_sf_mathieu_Ms_array", scope: !2, file: !2, line: 360, type: !405, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645}
!618 = !DILocalVariable(name: "kind", arg: 1, scope: !616, file: !2, line: 360, type: !28)
!619 = !DILocalVariable(name: "nmin", arg: 2, scope: !616, file: !2, line: 360, type: !28)
!620 = !DILocalVariable(name: "nmax", arg: 3, scope: !616, file: !2, line: 360, type: !28)
!621 = !DILocalVariable(name: "qq", arg: 4, scope: !616, file: !2, line: 360, type: !77)
!622 = !DILocalVariable(name: "zz", arg: 5, scope: !616, file: !2, line: 361, type: !77)
!623 = !DILocalVariable(name: "work", arg: 6, scope: !616, file: !2, line: 361, type: !407)
!624 = !DILocalVariable(name: "result_array", arg: 7, scope: !616, file: !2, line: 362, type: !245)
!625 = !DILocalVariable(name: "even_odd", scope: !616, file: !2, line: 364, type: !28)
!626 = !DILocalVariable(name: "order", scope: !616, file: !2, line: 364, type: !28)
!627 = !DILocalVariable(name: "ii", scope: !616, file: !2, line: 364, type: !28)
!628 = !DILocalVariable(name: "kk", scope: !616, file: !2, line: 364, type: !28)
!629 = !DILocalVariable(name: "mm", scope: !616, file: !2, line: 364, type: !28)
!630 = !DILocalVariable(name: "status", scope: !616, file: !2, line: 364, type: !28)
!631 = !DILocalVariable(name: "maxerr", scope: !616, file: !2, line: 365, type: !77)
!632 = !DILocalVariable(name: "amax", scope: !616, file: !2, line: 365, type: !77)
!633 = !DILocalVariable(name: "pi", scope: !616, file: !2, line: 365, type: !77)
!634 = !DILocalVariable(name: "fn", scope: !616, file: !2, line: 365, type: !77)
!635 = !DILocalVariable(name: "coeff", scope: !616, file: !2, line: 366, type: !101)
!636 = !DILocalVariable(name: "fc", scope: !616, file: !2, line: 366, type: !77)
!637 = !DILocalVariable(name: "j1c", scope: !616, file: !2, line: 367, type: !77)
!638 = !DILocalVariable(name: "z2c", scope: !616, file: !2, line: 367, type: !77)
!639 = !DILocalVariable(name: "j1mc", scope: !616, file: !2, line: 367, type: !77)
!640 = !DILocalVariable(name: "z2mc", scope: !616, file: !2, line: 367, type: !77)
!641 = !DILocalVariable(name: "j1pc", scope: !616, file: !2, line: 367, type: !77)
!642 = !DILocalVariable(name: "z2pc", scope: !616, file: !2, line: 367, type: !77)
!643 = !DILocalVariable(name: "u1", scope: !616, file: !2, line: 368, type: !77)
!644 = !DILocalVariable(name: "u2", scope: !616, file: !2, line: 368, type: !77)
!645 = !DILocalVariable(name: "bb", scope: !616, file: !2, line: 369, type: !245)
!646 = distinct !DIAssignID()
!647 = !DILocation(line: 0, scope: !616)
!648 = !DILocation(line: 366, column: 3, scope: !616)
!649 = !DILocation(line: 369, column: 22, scope: !616)
!650 = !{!500, !503, i64 56}
!651 = !DILocation(line: 373, column: 16, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !2, line: 373, column: 3)
!653 = distinct !DILexicalBlock(scope: !616, file: !2, line: 373, column: 3)
!654 = !DILocation(line: 373, column: 3, scope: !653)
!655 = !DILocation(line: 374, column: 24, scope: !652)
!656 = !DILocation(line: 377, column: 10, scope: !657)
!657 = distinct !DILexicalBlock(scope: !616, file: !2, line: 377, column: 7)
!658 = !DILocation(line: 377, column: 7, scope: !616)
!659 = !DILocation(line: 379, column: 7, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !2, line: 379, column: 7)
!661 = distinct !DILexicalBlock(scope: !657, file: !2, line: 378, column: 3)
!662 = !DILocation(line: 381, column: 16, scope: !663)
!663 = distinct !DILexicalBlock(scope: !616, file: !2, line: 381, column: 7)
!664 = !DILocation(line: 383, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !2, line: 383, column: 7)
!666 = distinct !DILexicalBlock(scope: !663, file: !2, line: 382, column: 3)
!667 = !DILocation(line: 388, column: 8, scope: !616)
!668 = !DILocation(line: 388, column: 25, scope: !616)
!669 = !DILocation(line: 388, column: 17, scope: !616)
!670 = !DILocation(line: 388, column: 16, scope: !616)
!671 = !DILocation(line: 389, column: 8, scope: !616)
!672 = !DILocation(line: 389, column: 17, scope: !616)
!673 = !DILocation(line: 389, column: 16, scope: !616)
!674 = !DILocation(line: 392, column: 3, scope: !616)
!675 = !DILocation(line: 394, column: 31, scope: !676)
!676 = distinct !DILexicalBlock(scope: !677, file: !2, line: 394, column: 3)
!677 = distinct !DILexicalBlock(scope: !616, file: !2, line: 394, column: 3)
!678 = !DILocation(line: 394, column: 3, scope: !677)
!679 = !DILocation(line: 398, column: 21, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !2, line: 398, column: 11)
!681 = distinct !DILexicalBlock(scope: !676, file: !2, line: 395, column: 3)
!682 = !DILocation(line: 402, column: 17, scope: !683)
!683 = distinct !DILexicalBlock(scope: !681, file: !2, line: 402, column: 11)
!684 = !DILocation(line: 402, column: 11, scope: !681)
!685 = !DILocation(line: 409, column: 50, scope: !681)
!686 = !DILocation(line: 409, column: 16, scope: !681)
!687 = !DILocation(line: 410, column: 18, scope: !688)
!688 = distinct !DILexicalBlock(scope: !681, file: !2, line: 410, column: 11)
!689 = !DILocation(line: 410, column: 11, scope: !681)
!690 = !DILocation(line: 415, column: 20, scope: !691)
!691 = distinct !DILexicalBlock(scope: !681, file: !2, line: 415, column: 11)
!692 = !DILocation(line: 415, column: 11, scope: !681)
!693 = !DILocation(line: 444, column: 11, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !2, line: 444, column: 11)
!695 = distinct !DILexicalBlock(scope: !691, file: !2, line: 443, column: 7)
!696 = !DILocation(line: 417, column: 11, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 417, column: 11)
!698 = distinct !DILexicalBlock(scope: !691, file: !2, line: 416, column: 7)
!699 = !DILocation(line: 419, column: 22, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !2, line: 418, column: 11)
!701 = distinct !DILexicalBlock(scope: !697, file: !2, line: 417, column: 11)
!702 = !DILocation(line: 420, column: 34, scope: !703)
!703 = distinct !DILexicalBlock(scope: !700, file: !2, line: 420, column: 19)
!704 = !DILocation(line: 420, column: 40, scope: !703)
!705 = !DILocation(line: 420, column: 19, scope: !700)
!706 = !DILocation(line: 423, column: 22, scope: !700)
!707 = !DILocation(line: 424, column: 22, scope: !700)
!708 = !DILocation(line: 425, column: 19, scope: !700)
!709 = !DILocation(line: 427, column: 26, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !2, line: 426, column: 15)
!711 = distinct !DILexicalBlock(scope: !700, file: !2, line: 425, column: 19)
!712 = !DILocation(line: 428, column: 26, scope: !710)
!713 = !DILocation(line: 429, column: 15, scope: !710)
!714 = !DILocation(line: 432, column: 26, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !2, line: 431, column: 15)
!716 = !DILocation(line: 433, column: 26, scope: !715)
!717 = !DILocation(line: 0, scope: !711)
!718 = !DILocation(line: 436, column: 40, scope: !700)
!719 = !DILocation(line: 436, column: 42, scope: !700)
!720 = !DILocation(line: 436, column: 20, scope: !700)
!721 = !DILocation(line: 436, column: 46, scope: !700)
!722 = !DILocation(line: 436, column: 45, scope: !700)
!723 = !DILocation(line: 437, column: 29, scope: !700)
!724 = !DILocation(line: 437, column: 41, scope: !700)
!725 = !DILocation(line: 437, column: 23, scope: !700)
!726 = !DILocation(line: 417, column: 49, scope: !701)
!727 = !DILocation(line: 417, column: 24, scope: !701)
!728 = distinct !{!728, !696, !729, !187}
!729 = !DILocation(line: 438, column: 11, scope: !697)
!730 = !DILocation(line: 446, column: 22, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !2, line: 445, column: 11)
!732 = distinct !DILexicalBlock(scope: !694, file: !2, line: 444, column: 11)
!733 = !DILocation(line: 447, column: 34, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !2, line: 447, column: 19)
!735 = !DILocation(line: 447, column: 40, scope: !734)
!736 = !DILocation(line: 447, column: 19, scope: !731)
!737 = !DILocation(line: 450, column: 21, scope: !731)
!738 = !DILocation(line: 451, column: 41, scope: !731)
!739 = !DILocation(line: 451, column: 22, scope: !731)
!740 = !DILocation(line: 452, column: 19, scope: !731)
!741 = !DILocation(line: 454, column: 25, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !2, line: 453, column: 15)
!743 = distinct !DILexicalBlock(scope: !731, file: !2, line: 452, column: 19)
!744 = !DILocation(line: 455, column: 26, scope: !742)
!745 = !DILocation(line: 456, column: 15, scope: !742)
!746 = !DILocation(line: 459, column: 25, scope: !747)
!747 = distinct !DILexicalBlock(scope: !743, file: !2, line: 458, column: 15)
!748 = !DILocation(line: 460, column: 26, scope: !747)
!749 = !DILocation(line: 0, scope: !743)
!750 = !DILocation(line: 463, column: 44, scope: !731)
!751 = !DILocation(line: 463, column: 20, scope: !731)
!752 = !DILocation(line: 463, column: 48, scope: !731)
!753 = !DILocation(line: 463, column: 47, scope: !731)
!754 = !DILocation(line: 464, column: 28, scope: !731)
!755 = !DILocation(line: 464, column: 40, scope: !731)
!756 = !DILocation(line: 464, column: 23, scope: !731)
!757 = !DILocation(line: 444, column: 24, scope: !732)
!758 = distinct !{!758, !693, !759, !187}
!759 = !DILocation(line: 465, column: 11, scope: !694)
!760 = !DILocation(line: 0, scope: !691)
!761 = !DILocation(line: 471, column: 3, scope: !681)
!762 = !DILocation(line: 0, scope: !681)
!763 = !DILocation(line: 394, column: 41, scope: !676)
!764 = !DILocation(line: 394, column: 50, scope: !676)
!765 = distinct !{!765, !678, !766, !187}
!766 = !DILocation(line: 471, column: 3, scope: !677)
!767 = !DILocation(line: 474, column: 1, scope: !616)
!768 = !DISubprogram(name: "gsl_sf_mathieu_b_array", scope: !239, file: !239, line: 66, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!769 = distinct !DISubprogram(name: "gsl_sf_mathieu_Mc", scope: !2, file: !2, line: 481, type: !770, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{!77, !28, !28, !77, !77}
!772 = !{!773, !774, !775, !776, !777, !778}
!773 = !DILocalVariable(name: "kind", arg: 1, scope: !769, file: !2, line: 481, type: !28)
!774 = !DILocalVariable(name: "order", arg: 2, scope: !769, file: !2, line: 481, type: !28)
!775 = !DILocalVariable(name: "qq", arg: 3, scope: !769, file: !2, line: 481, type: !77)
!776 = !DILocalVariable(name: "zz", arg: 4, scope: !769, file: !2, line: 481, type: !77)
!777 = !DILocalVariable(name: "result", scope: !769, file: !2, line: 483, type: !79)
!778 = !DILocalVariable(name: "status", scope: !769, file: !2, line: 483, type: !28)
!779 = distinct !DIAssignID()
!780 = !DILocation(line: 0, scope: !769)
!781 = !DILocation(line: 483, column: 2, scope: !769)
!782 = !DILocation(line: 483, column: 2, scope: !783)
!783 = distinct !DILexicalBlock(scope: !769, file: !2, line: 483, column: 2)
!784 = !DILocation(line: 483, column: 2, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !2, line: 483, column: 2)
!786 = distinct !DILexicalBlock(scope: !783, file: !2, line: 483, column: 2)
!787 = !DILocation(line: 484, column: 1, scope: !769)
!788 = distinct !DISubprogram(name: "gsl_sf_mathieu_Ms", scope: !2, file: !2, line: 486, type: !770, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !789)
!789 = !{!790, !791, !792, !793, !794, !795}
!790 = !DILocalVariable(name: "kind", arg: 1, scope: !788, file: !2, line: 486, type: !28)
!791 = !DILocalVariable(name: "order", arg: 2, scope: !788, file: !2, line: 486, type: !28)
!792 = !DILocalVariable(name: "qq", arg: 3, scope: !788, file: !2, line: 486, type: !77)
!793 = !DILocalVariable(name: "zz", arg: 4, scope: !788, file: !2, line: 486, type: !77)
!794 = !DILocalVariable(name: "result", scope: !788, file: !2, line: 488, type: !79)
!795 = !DILocalVariable(name: "status", scope: !788, file: !2, line: 488, type: !28)
!796 = distinct !DIAssignID()
!797 = !DILocation(line: 0, scope: !788)
!798 = !DILocation(line: 488, column: 2, scope: !788)
!799 = !DILocation(line: 488, column: 2, scope: !800)
!800 = distinct !DILexicalBlock(scope: !788, file: !2, line: 488, column: 2)
!801 = !DILocation(line: 488, column: 2, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !2, line: 488, column: 2)
!803 = distinct !DILexicalBlock(scope: !800, file: !2, line: 488, column: 2)
!804 = !DILocation(line: 489, column: 1, scope: !788)
