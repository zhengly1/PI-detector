; ModuleID = 'condest.ll'
source_filename = "condest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }
%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }

@.str = private unnamed_addr constant [33 x i8] c"work vector must have length 3*N\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"condest.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [22 x i8] c"matrix must be square\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_tri_upper_rcond(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !107 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !123, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !124, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !125, metadata !DIExpression()), !dbg !127
  %4 = tail call fastcc i32 @condest_tri_rcond(i32 noundef 121, ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !128, !range !129
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !126, metadata !DIExpression()), !dbg !127
  ret i32 %4, !dbg !130
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @condest_tri_rcond(i32 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) unnamed_addr #0 !dbg !131 {
  %5 = alloca double, align 8, !DIAssignID !150
  call void @llvm.dbg.assign(metadata i1 undef, metadata !149, metadata !DIExpression(), metadata !150, metadata ptr %5, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !137, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !138, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !139, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !140, metadata !DIExpression()), !dbg !152
  %6 = load i64, ptr %1, align 8, !dbg !153, !tbaa !154
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !141, metadata !DIExpression()), !dbg !152
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !161
  %8 = load i64, ptr %7, align 8, !dbg !161, !tbaa !162
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !143, metadata !DIExpression()), !dbg !152
  %9 = icmp eq i64 %6, %8, !dbg !163
  br i1 %9, label %11, label %10, !dbg !164

10:                                               ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 193, i32 noundef 20) #4, !dbg !165
  br label %125, !dbg !165

11:                                               ; preds = %4
  %12 = load i64, ptr %3, align 8, !dbg !168, !tbaa !169
  %13 = mul i64 %6, 3, !dbg !171
  %14 = icmp eq i64 %12, %13, !dbg !172
  br i1 %14, label %16, label %15, !dbg !173

15:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 197, i32 noundef 19) #4, !dbg !174
  br label %125, !dbg !174

16:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 %0, metadata !177, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata ptr %1, metadata !182, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %8, metadata !183, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !206
  %17 = icmp eq i32 %0, 121, !dbg !208
  call void @llvm.dbg.value(metadata i64 0, metadata !186, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 0, metadata !186, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 0, metadata !186, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 0, metadata !186, metadata !DIExpression()), !dbg !206
  %18 = icmp eq i64 %6, 0, !dbg !209
  br i1 %17, label %25, label %19, !dbg !210

19:                                               ; preds = %16
  br i1 %18, label %107, label %20, !dbg !211

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !212
  %23 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !213
  br label %89, !dbg !211

25:                                               ; preds = %16
  br i1 %18, label %107, label %26, !dbg !214

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !212
  %29 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !213
  br label %31, !dbg !214

31:                                               ; preds = %82, %26
  %32 = phi i64 [ 1, %26 ], [ %87, %82 ]
  %33 = phi double [ 0.000000e+00, %26 ], [ %85, %82 ]
  %34 = phi i64 [ 0, %26 ], [ %86, %82 ]
  call void @llvm.dbg.value(metadata double %33, metadata !184, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %34, metadata !186, metadata !DIExpression()), !dbg !206
  %35 = getelementptr double, ptr %28, i64 %34, !dbg !215
  call void @llvm.dbg.value(metadata i64 0, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !187, metadata !DIExpression()), !dbg !216
  %36 = and i64 %32, 3, !dbg !215
  %37 = icmp ult i64 %34, 3, !dbg !215
  br i1 %37, label %66, label %38, !dbg !215

38:                                               ; preds = %31
  %39 = and i64 %32, -4, !dbg !215
  br label %40, !dbg !215

40:                                               ; preds = %40, %38
  %41 = phi i64 [ 0, %38 ], [ %63, %40 ]
  %42 = phi double [ 0.000000e+00, %38 ], [ %handler_result3, %40 ]
  %43 = phi i64 [ 0, %38 ], [ %64, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %42, metadata !187, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata ptr %1, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %41, metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %34, metadata !223, metadata !DIExpression()), !dbg !224
  %44 = mul i64 %41, %30, !dbg !226
  %45 = getelementptr double, ptr %35, i64 %44, !dbg !227
  %46 = load double, ptr %45, align 8, !dbg !227, !tbaa !228
  call void @llvm.dbg.value(metadata double %46, metadata !193, metadata !DIExpression()), !dbg !230
  %47 = tail call double @llvm.fabs.f64(double %46), !dbg !231
  %handler_result = call double @fAddHandlerDouble(double %42, double %47), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result, metadata !187, metadata !DIExpression()), !dbg !216
  %48 = or disjoint i64 %41, 1, !dbg !232
  call void @llvm.dbg.value(metadata i64 %48, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %48, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %handler_result, metadata !187, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata ptr %1, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %48, metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %34, metadata !223, metadata !DIExpression()), !dbg !224
  %49 = mul i64 %48, %30, !dbg !226
  %50 = getelementptr double, ptr %35, i64 %49, !dbg !227
  %51 = load double, ptr %50, align 8, !dbg !227, !tbaa !228
  call void @llvm.dbg.value(metadata double %51, metadata !193, metadata !DIExpression()), !dbg !230
  %52 = tail call double @llvm.fabs.f64(double %51), !dbg !231
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %52), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !187, metadata !DIExpression()), !dbg !216
  %53 = or disjoint i64 %41, 2, !dbg !232
  call void @llvm.dbg.value(metadata i64 %53, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %53, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !187, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata ptr %1, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %53, metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %34, metadata !223, metadata !DIExpression()), !dbg !224
  %54 = mul i64 %53, %30, !dbg !226
  %55 = getelementptr double, ptr %35, i64 %54, !dbg !227
  %56 = load double, ptr %55, align 8, !dbg !227, !tbaa !228
  call void @llvm.dbg.value(metadata double %56, metadata !193, metadata !DIExpression()), !dbg !230
  %57 = tail call double @llvm.fabs.f64(double %56), !dbg !231
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %57), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !187, metadata !DIExpression()), !dbg !216
  %58 = or disjoint i64 %41, 3, !dbg !232
  call void @llvm.dbg.value(metadata i64 %58, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %58, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !187, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata ptr %1, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %58, metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %34, metadata !223, metadata !DIExpression()), !dbg !224
  %59 = mul i64 %58, %30, !dbg !226
  %60 = getelementptr double, ptr %35, i64 %59, !dbg !227
  %61 = load double, ptr %60, align 8, !dbg !227, !tbaa !228
  call void @llvm.dbg.value(metadata double %61, metadata !193, metadata !DIExpression()), !dbg !230
  %62 = tail call double @llvm.fabs.f64(double %61), !dbg !231
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %62), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !187, metadata !DIExpression()), !dbg !216
  %63 = add nuw i64 %41, 4, !dbg !232
  call void @llvm.dbg.value(metadata i64 %63, metadata !185, metadata !DIExpression()), !dbg !206
  %64 = add i64 %43, 4, !dbg !215
  %65 = icmp eq i64 %64, %39, !dbg !215
  br i1 %65, label %66, label %40, !dbg !215, !llvm.loop !233

66:                                               ; preds = %40, %31
  %67 = phi double [ undef, %31 ], [ %handler_result3, %40 ]
  %68 = phi i64 [ 0, %31 ], [ %63, %40 ]
  %69 = phi double [ 0.000000e+00, %31 ], [ %handler_result3, %40 ]
  %70 = icmp eq i64 %36, 0, !dbg !215
  br i1 %70, label %82, label %71, !dbg !215

71:                                               ; preds = %71, %66
  %72 = phi i64 [ %79, %71 ], [ %68, %66 ]
  %73 = phi double [ %handler_result4, %71 ], [ %69, %66 ]
  %74 = phi i64 [ %80, %71 ], [ 0, %66 ]
  call void @llvm.dbg.value(metadata i64 %72, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %73, metadata !187, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata ptr %1, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %72, metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %34, metadata !223, metadata !DIExpression()), !dbg !224
  %75 = mul i64 %72, %30, !dbg !226
  %76 = getelementptr double, ptr %35, i64 %75, !dbg !227
  %77 = load double, ptr %76, align 8, !dbg !227, !tbaa !228
  call void @llvm.dbg.value(metadata double %77, metadata !193, metadata !DIExpression()), !dbg !230
  %78 = tail call double @llvm.fabs.f64(double %77), !dbg !231
  %handler_result4 = call double @fAddHandlerDouble(double %73, double %78), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !187, metadata !DIExpression()), !dbg !216
  %79 = add nuw i64 %72, 1, !dbg !232
  call void @llvm.dbg.value(metadata i64 %79, metadata !185, metadata !DIExpression()), !dbg !206
  %80 = add i64 %74, 1, !dbg !215
  %81 = icmp eq i64 %80, %36, !dbg !215
  br i1 %81, label %82, label %71, !dbg !215, !llvm.loop !236

82:                                               ; preds = %71, %66
  %83 = phi double [ %67, %66 ], [ %handler_result4, %71 ], !dbg !238
  %84 = fcmp ogt double %33, %83, !dbg !239
  %85 = select i1 %84, double %33, double %83, !dbg !239
  call void @llvm.dbg.value(metadata double %85, metadata !184, metadata !DIExpression()), !dbg !206
  %86 = add nuw i64 %34, 1, !dbg !240
  call void @llvm.dbg.value(metadata i64 %86, metadata !186, metadata !DIExpression()), !dbg !206
  %87 = add i64 %32, 1, !dbg !214
  %88 = icmp eq i64 %86, %6, !dbg !241
  br i1 %88, label %108, label %31, !dbg !214, !llvm.loop !242

89:                                               ; preds = %102, %20
  %90 = phi double [ 0.000000e+00, %20 ], [ %104, %102 ]
  %91 = phi i64 [ 0, %20 ], [ %105, %102 ]
  call void @llvm.dbg.value(metadata double %90, metadata !184, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %91, metadata !186, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i64 %91, metadata !185, metadata !DIExpression()), !dbg !206
  %92 = getelementptr double, ptr %22, i64 %91, !dbg !245
  br label %93, !dbg !245

93:                                               ; preds = %93, %89
  %94 = phi double [ 0.000000e+00, %89 ], [ %handler_result5, %93 ]
  %95 = phi i64 [ %91, %89 ], [ %100, %93 ]
  call void @llvm.dbg.value(metadata double %94, metadata !197, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i64 %95, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata ptr %1, metadata !217, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 %95, metadata !222, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 %91, metadata !223, metadata !DIExpression()), !dbg !246
  %96 = mul i64 %95, %24, !dbg !248
  %97 = getelementptr double, ptr %92, i64 %96, !dbg !249
  %98 = load double, ptr %97, align 8, !dbg !249, !tbaa !228
  call void @llvm.dbg.value(metadata double %98, metadata !202, metadata !DIExpression()), !dbg !250
  %99 = tail call double @llvm.fabs.f64(double %98), !dbg !251
  %handler_result5 = call double @fAddHandlerDouble(double %94, double %99), !dbg !252
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !197, metadata !DIExpression()), !dbg !244
  %100 = add nuw i64 %95, 1, !dbg !252
  call void @llvm.dbg.value(metadata i64 %100, metadata !185, metadata !DIExpression()), !dbg !206
  %101 = icmp ult i64 %100, %6, !dbg !253
  br i1 %101, label %93, label %102, !dbg !245, !llvm.loop !254

102:                                              ; preds = %93
  %103 = fcmp ogt double %90, %handler_result5, !dbg !256
  %104 = select i1 %103, double %90, double %handler_result5, !dbg !256
  call void @llvm.dbg.value(metadata double %104, metadata !184, metadata !DIExpression()), !dbg !206
  %105 = add nuw i64 %91, 1, !dbg !257
  call void @llvm.dbg.value(metadata i64 %105, metadata !186, metadata !DIExpression()), !dbg !206
  %106 = icmp eq i64 %105, %6, !dbg !258
  br i1 %106, label %108, label %89, !dbg !211, !llvm.loop !259

107:                                              ; preds = %25, %19
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !148, metadata !DIExpression()), !dbg !151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4, !dbg !261
  br label %121, !dbg !262

108:                                              ; preds = %102, %82
  %109 = phi double [ %85, %82 ], [ %104, %102 ], !dbg !263
  call void @llvm.dbg.value(metadata double %109, metadata !184, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double %109, metadata !148, metadata !DIExpression()), !dbg !151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4, !dbg !261
  store double 0.000000e+00, ptr %2, align 8, !dbg !264, !tbaa !228
  %110 = fcmp oeq double %109, 0.000000e+00, !dbg !265
  br i1 %110, label %123, label %111, !dbg !262

111:                                              ; preds = %108
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !144, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !144, metadata !DIExpression()), !dbg !151
  %112 = select i1 %17, ptr @condest_invtriu, ptr @condest_invtril
  %113 = call i32 @gsl_linalg_invnorm1(i64 noundef %6, ptr noundef nonnull %112, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %3), !dbg !267, !range !269
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !144, metadata !DIExpression()), !dbg !151
  %114 = icmp eq i32 %113, 0, !dbg !270
  br i1 %114, label %115, label %123, !dbg !272

115:                                              ; preds = %111
  %116 = load double, ptr %5, align 8, !dbg !273, !tbaa !228
  %117 = fcmp une double %116, 0.000000e+00, !dbg !275
  br i1 %117, label %118, label %123, !dbg !276

118:                                              ; preds = %115
  %119 = fdiv double 1.000000e+00, %109, !dbg !277
  %120 = fdiv double %119, %116, !dbg !278
  br label %121, !dbg !279

121:                                              ; preds = %118, %107
  %122 = phi double [ 0.000000e+00, %107 ], [ %120, %118 ]
  store double %122, ptr %2, align 8, !dbg !151, !tbaa !228
  br label %123, !dbg !280

123:                                              ; preds = %121, %115, %111, %108
  %124 = phi i32 [ 0, %108 ], [ %113, %111 ], [ 0, %115 ], [ 0, %121 ], !dbg !151
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4, !dbg !280
  br label %125

125:                                              ; preds = %123, %15, %10
  %126 = phi i32 [ 20, %10 ], [ 19, %15 ], [ %124, %123 ], !dbg !281
  ret i32 %126, !dbg !282
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_tri_lower_rcond(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !283 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !285, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !286, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !287, metadata !DIExpression()), !dbg !289
  %4 = tail call fastcc i32 @condest_tri_rcond(i32 noundef 122, ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !290, !range !129
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !288, metadata !DIExpression()), !dbg !289
  ret i32 %4, !dbg !291
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_invnorm1(i64 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 !dbg !292 {
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !337
  call void @llvm.dbg.assign(metadata i1 undef, metadata !308, metadata !DIExpression(), metadata !337, metadata ptr %6, metadata !DIExpression()), !dbg !338
  %7 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !339
  call void @llvm.dbg.assign(metadata i1 undef, metadata !314, metadata !DIExpression(), metadata !339, metadata ptr %7, metadata !DIExpression()), !dbg !338
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !340
  call void @llvm.dbg.assign(metadata i1 undef, metadata !315, metadata !DIExpression(), metadata !340, metadata ptr %8, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !300, metadata !DIExpression()), !dbg !341
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !301, metadata !DIExpression()), !dbg !341
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !302, metadata !DIExpression()), !dbg !341
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !303, metadata !DIExpression()), !dbg !341
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !304, metadata !DIExpression()), !dbg !341
  %9 = load i64, ptr %4, align 8, !dbg !342, !tbaa !169
  %10 = mul i64 %0, 3, !dbg !343
  %11 = icmp eq i64 %9, %10, !dbg !344
  br i1 %11, label %13, label %12, !dbg !345

12:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 101, i32 noundef 19) #4, !dbg !346
  br label %233, !dbg !346

13:                                               ; preds = %5
  tail call void @llvm.dbg.value(metadata i64 5, metadata !305, metadata !DIExpression()), !dbg !338
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #4, !dbg !349
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %0) #4, !dbg !350
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #4, !dbg !351
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %4, i64 noundef %0, i64 noundef %0) #4, !dbg !352
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #4, !dbg !353
  %14 = shl i64 %0, 1, !dbg !354
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %4, i64 noundef %14, i64 noundef %0) #4, !dbg !355
  tail call void @llvm.dbg.value(metadata i64 0, metadata !319, metadata !DIExpression()), !dbg !338
  %15 = icmp eq i64 %0, 0, !dbg !356
  br i1 %15, label %55, label %16, !dbg !359

16:                                               ; preds = %13
  %17 = uitofp i64 %0 to double
  %18 = fdiv double 1.000000e+00, %17
  %19 = getelementptr inbounds %struct.gsl_vector, ptr %6, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !360
  %21 = getelementptr inbounds %struct.gsl_vector, ptr %6, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !361
  %23 = and i64 %0, 3, !dbg !359
  %24 = icmp ult i64 %0, 4, !dbg !359
  br i1 %24, label %44, label %25, !dbg !359

25:                                               ; preds = %16
  %26 = and i64 %0, -4, !dbg !359
  br label %27, !dbg !359

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %41, %27 ]
  %29 = phi i64 [ 0, %25 ], [ %42, %27 ]
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !362, metadata !DIExpression()), !dbg !369
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !367, metadata !DIExpression()), !dbg !369
  tail call void @llvm.dbg.value(metadata double %18, metadata !368, metadata !DIExpression()), !dbg !369
  %30 = mul i64 %22, %28, !dbg !371
  %31 = getelementptr inbounds double, ptr %20, i64 %30, !dbg !372
  store double %18, ptr %31, align 8, !dbg !373, !tbaa !228
  %32 = or disjoint i64 %28, 1, !dbg !374
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !362, metadata !DIExpression()), !dbg !369
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !367, metadata !DIExpression()), !dbg !369
  tail call void @llvm.dbg.value(metadata double %18, metadata !368, metadata !DIExpression()), !dbg !369
  %33 = mul i64 %22, %32, !dbg !371
  %34 = getelementptr inbounds double, ptr %20, i64 %33, !dbg !372
  store double %18, ptr %34, align 8, !dbg !373, !tbaa !228
  %35 = or disjoint i64 %28, 2, !dbg !374
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !362, metadata !DIExpression()), !dbg !369
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !367, metadata !DIExpression()), !dbg !369
  tail call void @llvm.dbg.value(metadata double %18, metadata !368, metadata !DIExpression()), !dbg !369
  %36 = mul i64 %22, %35, !dbg !371
  %37 = getelementptr inbounds double, ptr %20, i64 %36, !dbg !372
  store double %18, ptr %37, align 8, !dbg !373, !tbaa !228
  %38 = or disjoint i64 %28, 3, !dbg !374
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !362, metadata !DIExpression()), !dbg !369
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !367, metadata !DIExpression()), !dbg !369
  tail call void @llvm.dbg.value(metadata double %18, metadata !368, metadata !DIExpression()), !dbg !369
  %39 = mul i64 %22, %38, !dbg !371
  %40 = getelementptr inbounds double, ptr %20, i64 %39, !dbg !372
  store double %18, ptr %40, align 8, !dbg !373, !tbaa !228
  %41 = add nuw i64 %28, 4, !dbg !374
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !319, metadata !DIExpression()), !dbg !338
  %42 = add i64 %29, 4, !dbg !359
  %43 = icmp eq i64 %42, %26, !dbg !359
  br i1 %43, label %44, label %27, !dbg !359, !llvm.loop !375

44:                                               ; preds = %27, %16
  %45 = phi i64 [ 0, %16 ], [ %41, %27 ]
  %46 = icmp eq i64 %23, 0, !dbg !359
  br i1 %46, label %55, label %47, !dbg !359

47:                                               ; preds = %47, %44
  %48 = phi i64 [ %52, %47 ], [ %45, %44 ]
  %49 = phi i64 [ %53, %47 ], [ 0, %44 ]
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !362, metadata !DIExpression()), !dbg !369
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !367, metadata !DIExpression()), !dbg !369
  tail call void @llvm.dbg.value(metadata double %18, metadata !368, metadata !DIExpression()), !dbg !369
  %50 = mul i64 %22, %48, !dbg !371
  %51 = getelementptr inbounds double, ptr %20, i64 %50, !dbg !372
  store double %18, ptr %51, align 8, !dbg !373, !tbaa !228
  %52 = add nuw i64 %48, 1, !dbg !374
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !319, metadata !DIExpression()), !dbg !338
  %53 = add i64 %49, 1, !dbg !359
  %54 = icmp eq i64 %53, %23, !dbg !359
  br i1 %54, label %55, label %47, !dbg !359, !llvm.loop !377

55:                                               ; preds = %47, %44, %13
  %56 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %7, ptr noundef nonnull %6) #4, !dbg !378
  %57 = call i32 %1(i32 noundef 111, ptr noundef nonnull %7, ptr noundef %2) #4, !dbg !379
  %58 = call double @gsl_blas_dasum(ptr noundef nonnull %7) #4, !dbg !380
  tail call void @llvm.dbg.value(metadata double %58, metadata !316, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i64 0, metadata !319, metadata !DIExpression()), !dbg !338
  br i1 %15, label %104, label %59, !dbg !381

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.gsl_vector, ptr %7, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !360
  %62 = getelementptr inbounds %struct.gsl_vector, ptr %7, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !361
  %64 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !360
  %66 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !361
  %68 = and i64 %0, 1, !dbg !381
  %69 = icmp eq i64 %0, 1, !dbg !381
  br i1 %69, label %93, label %70, !dbg !381

70:                                               ; preds = %59
  %71 = and i64 %0, -2, !dbg !381
  br label %72, !dbg !381

72:                                               ; preds = %72, %70
  %73 = phi i64 [ 0, %70 ], [ %90, %72 ]
  %74 = phi i64 [ 0, %70 ], [ %91, %72 ]
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !382, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !389, metadata !DIExpression()), !dbg !390
  %75 = mul i64 %63, %73, !dbg !392
  %76 = getelementptr inbounds double, ptr %61, i64 %75, !dbg !393
  %77 = load double, ptr %76, align 8, !dbg !393, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %77, metadata !321, metadata !DIExpression()), !dbg !394
  %78 = fcmp oge double %77, 0.000000e+00, !dbg !395
  %79 = select i1 %78, double 1.000000e+00, double -1.000000e+00, !dbg !395
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !362, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !367, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double %79, metadata !368, metadata !DIExpression()), !dbg !396
  %80 = mul i64 %67, %73, !dbg !398
  %81 = getelementptr inbounds double, ptr %65, i64 %80, !dbg !399
  store double %79, ptr %81, align 8, !dbg !400, !tbaa !228
  %82 = or disjoint i64 %73, 1, !dbg !401
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !382, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !389, metadata !DIExpression()), !dbg !390
  %83 = mul i64 %63, %82, !dbg !392
  %84 = getelementptr inbounds double, ptr %61, i64 %83, !dbg !393
  %85 = load double, ptr %84, align 8, !dbg !393, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %85, metadata !321, metadata !DIExpression()), !dbg !394
  %86 = fcmp oge double %85, 0.000000e+00, !dbg !395
  %87 = select i1 %86, double 1.000000e+00, double -1.000000e+00, !dbg !395
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !362, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !367, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double %87, metadata !368, metadata !DIExpression()), !dbg !396
  %88 = mul i64 %67, %82, !dbg !398
  %89 = getelementptr inbounds double, ptr %65, i64 %88, !dbg !399
  store double %87, ptr %89, align 8, !dbg !400, !tbaa !228
  %90 = add nuw i64 %73, 2, !dbg !401
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !319, metadata !DIExpression()), !dbg !338
  %91 = add i64 %74, 2, !dbg !381
  %92 = icmp eq i64 %91, %71, !dbg !381
  br i1 %92, label %93, label %72, !dbg !381, !llvm.loop !402

93:                                               ; preds = %72, %59
  %94 = phi i64 [ 0, %59 ], [ %90, %72 ]
  %95 = icmp eq i64 %68, 0, !dbg !381
  br i1 %95, label %104, label %96, !dbg !381

96:                                               ; preds = %93
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !382, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !389, metadata !DIExpression()), !dbg !390
  %97 = mul i64 %63, %94, !dbg !392
  %98 = getelementptr inbounds double, ptr %61, i64 %97, !dbg !393
  %99 = load double, ptr %98, align 8, !dbg !393, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %99, metadata !321, metadata !DIExpression()), !dbg !394
  %100 = fcmp oge double %99, 0.000000e+00, !dbg !395
  %101 = select i1 %100, double 1.000000e+00, double -1.000000e+00, !dbg !395
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !362, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !367, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double %101, metadata !368, metadata !DIExpression()), !dbg !396
  %102 = mul i64 %67, %94, !dbg !398
  %103 = getelementptr inbounds double, ptr %65, i64 %102, !dbg !399
  store double %101, ptr %103, align 8, !dbg !400, !tbaa !228
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !319, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !338
  br label %104, !dbg !404

104:                                              ; preds = %96, %93, %55
  %105 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %6, ptr noundef nonnull %8) #4, !dbg !404
  %106 = call i32 %1(i32 noundef 112, ptr noundef nonnull %6, ptr noundef %2) #4, !dbg !405
  tail call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double %58, metadata !316, metadata !DIExpression()), !dbg !338
  %107 = getelementptr inbounds %struct.gsl_vector, ptr %7, i64 0, i32 2
  %108 = getelementptr inbounds %struct.gsl_vector, ptr %7, i64 0, i32 1
  %109 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 2
  %110 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 1
  %111 = add i64 %0, -1, !dbg !406
  %112 = and i64 %0, 1
  %113 = icmp eq i64 %111, 0
  %114 = and i64 %0, -2
  %115 = icmp eq i64 %112, 0
  br label %116, !dbg !406

116:                                              ; preds = %182, %104
  %117 = phi double [ %58, %104 ], [ %125, %182 ]
  %118 = phi i64 [ 0, %104 ], [ %185, %182 ]
  tail call void @llvm.dbg.value(metadata double %117, metadata !316, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !320, metadata !DIExpression()), !dbg !338
  %119 = call i64 @gsl_blas_idamax(ptr noundef nonnull %6) #4, !dbg !407
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !325, metadata !DIExpression()), !dbg !408
  call void @gsl_vector_set_zero(ptr noundef nonnull %7) #4, !dbg !409
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !362, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !367, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !368, metadata !DIExpression()), !dbg !410
  %120 = load ptr, ptr %107, align 8, !dbg !412, !tbaa !360
  %121 = load i64, ptr %108, align 8, !dbg !413, !tbaa !361
  %122 = mul i64 %121, %119, !dbg !414
  %123 = getelementptr inbounds double, ptr %120, i64 %122, !dbg !415
  store double 1.000000e+00, ptr %123, align 8, !dbg !416, !tbaa !228
  %124 = call i32 %1(i32 noundef 111, ptr noundef nonnull %7, ptr noundef %2) #4, !dbg !417
  tail call void @llvm.dbg.value(metadata double %117, metadata !317, metadata !DIExpression()), !dbg !338
  %125 = call double @gsl_blas_dasum(ptr noundef nonnull %7) #4, !dbg !418
  tail call void @llvm.dbg.value(metadata double %125, metadata !316, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !419, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !424, metadata !DIExpression()), !dbg !432
  %126 = load i64, ptr %7, align 8, !dbg !435, !tbaa !169
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !425, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata i64 0, metadata !426, metadata !DIExpression()), !dbg !432
  %127 = icmp eq i64 %126, 0, !dbg !436
  br i1 %127, label %187, label %128, !dbg !437

128:                                              ; preds = %116
  %129 = load ptr, ptr %107, align 8, !tbaa !360
  %130 = load i64, ptr %108, align 8, !tbaa !361
  %131 = load ptr, ptr %109, align 8, !tbaa !360
  %132 = load i64, ptr %110, align 8, !tbaa !361
  br label %136, !dbg !437

133:                                              ; preds = %136
  %134 = add nuw i64 %137, 1, !dbg !438
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !426, metadata !DIExpression()), !dbg !432
  %135 = icmp eq i64 %134, %126, !dbg !436
  br i1 %135, label %187, label %136, !dbg !437, !llvm.loop !439

136:                                              ; preds = %133, %128
  %137 = phi i64 [ 0, %128 ], [ %134, %133 ]
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !426, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !382, metadata !DIExpression()), !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !389, metadata !DIExpression()), !dbg !441
  %138 = mul i64 %137, %130, !dbg !443
  %139 = getelementptr inbounds double, ptr %129, i64 %138, !dbg !444
  %140 = load double, ptr %139, align 8, !dbg !444, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %140, metadata !427, metadata !DIExpression()), !dbg !445
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !382, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !389, metadata !DIExpression()), !dbg !446
  %141 = mul i64 %137, %132, !dbg !448
  %142 = getelementptr inbounds double, ptr %131, i64 %141, !dbg !449
  %143 = load double, ptr %142, align 8, !dbg !449, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %143, metadata !431, metadata !DIExpression()), !dbg !445
  %144 = fcmp ult double %140, 0.000000e+00, !dbg !450
  %145 = fcmp oge double %143, 0.000000e+00, !dbg !452
  %146 = xor i1 %144, %145, !dbg !453
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !426, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !432
  br i1 %146, label %133, label %147

147:                                              ; preds = %136
  %148 = fcmp olt double %125, %117
  br i1 %148, label %187, label %149, !dbg !454

149:                                              ; preds = %147
  tail call void @llvm.dbg.value(metadata i64 0, metadata !319, metadata !DIExpression()), !dbg !338
  br i1 %15, label %182, label %150, !dbg !455

150:                                              ; preds = %149
  br i1 %113, label %172, label %151, !dbg !455

151:                                              ; preds = %151, %150
  %152 = phi i64 [ %169, %151 ], [ 0, %150 ]
  %153 = phi i64 [ %170, %151 ], [ 0, %150 ]
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !382, metadata !DIExpression()), !dbg !456
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !389, metadata !DIExpression()), !dbg !456
  %154 = mul i64 %130, %152, !dbg !458
  %155 = getelementptr inbounds double, ptr %129, i64 %154, !dbg !459
  %156 = load double, ptr %155, align 8, !dbg !459, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %156, metadata !329, metadata !DIExpression()), !dbg !460
  %157 = fcmp oge double %156, 0.000000e+00, !dbg !461
  %158 = select i1 %157, double 1.000000e+00, double -1.000000e+00, !dbg !461
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !362, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !367, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata double %158, metadata !368, metadata !DIExpression()), !dbg !462
  %159 = mul i64 %132, %152, !dbg !464
  %160 = getelementptr inbounds double, ptr %131, i64 %159, !dbg !465
  store double %158, ptr %160, align 8, !dbg !466, !tbaa !228
  %161 = or disjoint i64 %152, 1, !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !382, metadata !DIExpression()), !dbg !456
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !389, metadata !DIExpression()), !dbg !456
  %162 = mul i64 %130, %161, !dbg !458
  %163 = getelementptr inbounds double, ptr %129, i64 %162, !dbg !459
  %164 = load double, ptr %163, align 8, !dbg !459, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %164, metadata !329, metadata !DIExpression()), !dbg !460
  %165 = fcmp oge double %164, 0.000000e+00, !dbg !461
  %166 = select i1 %165, double 1.000000e+00, double -1.000000e+00, !dbg !461
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !362, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !367, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata double %166, metadata !368, metadata !DIExpression()), !dbg !462
  %167 = mul i64 %132, %161, !dbg !464
  %168 = getelementptr inbounds double, ptr %131, i64 %167, !dbg !465
  store double %166, ptr %168, align 8, !dbg !466, !tbaa !228
  %169 = add nuw i64 %152, 2, !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !319, metadata !DIExpression()), !dbg !338
  %170 = add i64 %153, 2, !dbg !455
  %171 = icmp eq i64 %170, %114, !dbg !455
  br i1 %171, label %172, label %151, !dbg !455, !llvm.loop !468

172:                                              ; preds = %151, %150
  %173 = phi i64 [ 0, %150 ], [ %169, %151 ]
  br i1 %115, label %182, label %174, !dbg !455

174:                                              ; preds = %172
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !382, metadata !DIExpression()), !dbg !456
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !389, metadata !DIExpression()), !dbg !456
  %175 = mul i64 %130, %173, !dbg !458
  %176 = getelementptr inbounds double, ptr %129, i64 %175, !dbg !459
  %177 = load double, ptr %176, align 8, !dbg !459, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %177, metadata !329, metadata !DIExpression()), !dbg !460
  %178 = fcmp oge double %177, 0.000000e+00, !dbg !461
  %179 = select i1 %178, double 1.000000e+00, double -1.000000e+00, !dbg !461
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !362, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !367, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata double %179, metadata !368, metadata !DIExpression()), !dbg !462
  %180 = mul i64 %132, %173, !dbg !464
  %181 = getelementptr inbounds double, ptr %131, i64 %180, !dbg !465
  store double %179, ptr %181, align 8, !dbg !466, !tbaa !228
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !319, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !338
  br label %182, !dbg !470

182:                                              ; preds = %174, %172, %149
  %183 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %6, ptr noundef nonnull %8) #4, !dbg !470
  %184 = call i32 %1(i32 noundef 112, ptr noundef nonnull %6, ptr noundef %2) #4, !dbg !471
  %185 = add nuw nsw i64 %118, 1, !dbg !472
  tail call void @llvm.dbg.value(metadata double %125, metadata !316, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %185, metadata !320, metadata !DIExpression()), !dbg !338
  %186 = icmp eq i64 %185, 5, !dbg !473
  br i1 %186, label %187, label %116, !dbg !406, !llvm.loop !474

187:                                              ; preds = %182, %147, %133, %116
  tail call void @llvm.dbg.value(metadata double %125, metadata !316, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !318, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i64 0, metadata !319, metadata !DIExpression()), !dbg !338
  %188 = uitofp i64 %0 to double
  br i1 %15, label %222, label %189, !dbg !476

189:                                              ; preds = %187
  %handler_result = call double @fAddHandlerDouble(double %188, double -1.000000e+00)
  %190 = getelementptr inbounds %struct.gsl_vector, ptr %6, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !360
  %192 = getelementptr inbounds %struct.gsl_vector, ptr %6, i64 0, i32 1
  %193 = load i64, ptr %192, align 8, !tbaa !361
  %194 = and i64 %0, 1, !dbg !476
  %195 = icmp eq i64 %111, 0, !dbg !476
  br i1 %195, label %214, label %196, !dbg !476

196:                                              ; preds = %189
  %197 = and i64 %0, -2, !dbg !476
  br label %198, !dbg !476

198:                                              ; preds = %198, %196
  %199 = phi i64 [ 0, %196 ], [ %211, %198 ]
  %200 = phi i64 [ 0, %196 ], [ %212, %198 ]
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !318, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !319, metadata !DIExpression()), !dbg !338
  %201 = uitofp i64 %199 to double, !dbg !477
  %202 = fdiv double %201, %handler_result, !dbg !478
  %handler_result1 = call double @fAddHandlerDouble(double %202, double 1.000000e+00), !dbg !479
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !333, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !362, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !367, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !368, metadata !DIExpression()), !dbg !482
  %203 = mul i64 %193, %199, !dbg !479
  %204 = getelementptr inbounds double, ptr %191, i64 %203, !dbg !483
  store double %handler_result1, ptr %204, align 8, !dbg !484, !tbaa !228
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !318, metadata !DIExpression()), !dbg !338
  %205 = or disjoint i64 %199, 1, !dbg !485
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !319, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !318, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !319, metadata !DIExpression()), !dbg !338
  %206 = uitofp i64 %205 to double, !dbg !477
  %207 = fdiv double %206, %handler_result, !dbg !478
  %handler_result2 = call double @fAddHandlerDouble(double %207, double 1.000000e+00), !dbg !486
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !333, metadata !DIExpression()), !dbg !481
  %208 = fneg double %handler_result2, !dbg !486
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !362, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !367, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata double %208, metadata !368, metadata !DIExpression()), !dbg !482
  %209 = mul i64 %193, %205, !dbg !479
  %210 = getelementptr inbounds double, ptr %191, i64 %209, !dbg !483
  store double %208, ptr %210, align 8, !dbg !484, !tbaa !228
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !318, metadata !DIExpression()), !dbg !338
  %211 = add nuw i64 %199, 2, !dbg !485
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !319, metadata !DIExpression()), !dbg !338
  %212 = add i64 %200, 2, !dbg !476
  %213 = icmp eq i64 %212, %197, !dbg !476
  br i1 %213, label %214, label %198, !dbg !476, !llvm.loop !487

214:                                              ; preds = %198, %189
  %215 = phi i64 [ 0, %189 ], [ %211, %198 ]
  %216 = icmp eq i64 %194, 0, !dbg !476
  br i1 %216, label %222, label %217, !dbg !476

217:                                              ; preds = %214
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !318, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %215, metadata !319, metadata !DIExpression()), !dbg !338
  %218 = uitofp i64 %215 to double, !dbg !477
  %219 = fdiv double %218, %handler_result, !dbg !478
  %handler_result3 = call double @fAddHandlerDouble(double %219, double 1.000000e+00), !dbg !479
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !333, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !362, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata i64 %215, metadata !367, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !368, metadata !DIExpression()), !dbg !482
  %220 = mul i64 %193, %215, !dbg !479
  %221 = getelementptr inbounds double, ptr %191, i64 %220, !dbg !483
  store double %handler_result3, ptr %221, align 8, !dbg !484, !tbaa !228
  tail call void @llvm.dbg.value(metadata double poison, metadata !318, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %215, metadata !319, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !338
  br label %222, !dbg !489

222:                                              ; preds = %217, %214, %187
  %223 = call i32 %1(i32 noundef 111, ptr noundef nonnull %6, ptr noundef %2) #4, !dbg !489
  %224 = call double @gsl_blas_dasum(ptr noundef nonnull %6) #4, !dbg !490
  %225 = fmul double %224, 2.000000e+00, !dbg !491
  %226 = fmul double %188, 3.000000e+00, !dbg !492
  %227 = fdiv double %225, %226, !dbg !493
  tail call void @llvm.dbg.value(metadata double %227, metadata !318, metadata !DIExpression()), !dbg !338
  %228 = fcmp ogt double %227, %125, !dbg !494
  br i1 %228, label %229, label %231, !dbg !496

229:                                              ; preds = %222
  %230 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %7, ptr noundef nonnull %6) #4, !dbg !497
  tail call void @llvm.dbg.value(metadata double %227, metadata !316, metadata !DIExpression()), !dbg !338
  br label %231, !dbg !499

231:                                              ; preds = %229, %222
  %232 = phi double [ %227, %229 ], [ %125, %222 ], !dbg !338
  tail call void @llvm.dbg.value(metadata double %232, metadata !316, metadata !DIExpression()), !dbg !338
  store double %232, ptr %3, align 8, !dbg !500, !tbaa !228
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #4, !dbg !501
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #4, !dbg !501
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #4, !dbg !501
  br label %233

233:                                              ; preds = %231, %12
  %234 = phi i32 [ 19, %12 ], [ 0, %231 ], !dbg !502
  ret i32 %234, !dbg !503
}

declare !dbg !504 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !509 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !512 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !515 double @gsl_blas_dasum(ptr noundef) local_unnamed_addr #2

declare !dbg !519 i64 @gsl_blas_idamax(ptr noundef) local_unnamed_addr #2

declare !dbg !523 void @gsl_vector_set_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @condest_invtriu(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !526 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !528, metadata !DIExpression()), !dbg !532
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !529, metadata !DIExpression()), !dbg !532
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !530, metadata !DIExpression()), !dbg !532
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !531, metadata !DIExpression()), !dbg !532
  %4 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef %0, i32 noundef 131, ptr noundef %2, ptr noundef %1) #4, !dbg !533
  ret i32 %4, !dbg !534
}

; Function Attrs: nounwind uwtable
define internal i32 @condest_invtril(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !535 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !537, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !538, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !539, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !540, metadata !DIExpression()), !dbg !541
  %4 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef %0, i32 noundef 131, ptr noundef %2, ptr noundef %1) #4, !dbg !542
  ret i32 %4, !dbg !543
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare !dbg !544 i32 @gsl_blas_dtrsv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "condest.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "46301abe2302dc6d6d6efaca6f12fc6a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 33)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 10)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 193, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 22)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !73, globals: !98, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19, !25, !30, !69}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_UPLO", file: !20, line: 48, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "CblasUpper", value: 121)
!24 = !DIEnumerator(name: "CblasLower", value: 122)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !20, line: 47, baseType: !21, size: 32, elements: !26)
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!28 = !DIEnumerator(name: "CblasTrans", value: 112)
!29 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 39, baseType: !32, size: 32, elements: !33)
!31 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!34 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!35 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!36 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!37 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!38 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!39 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!40 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!41 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!42 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!43 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!44 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!45 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!46 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!47 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!48 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!49 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!50 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!51 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!52 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!53 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!54 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!55 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!56 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!57 = !DIEnumerator(name: "GSL_ESING", value: 21)
!58 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!59 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!60 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!61 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!62 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!63 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!64 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!65 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!66 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!67 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!68 = !DIEnumerator(name: "GSL_EOF", value: 32)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_DIAG", file: !20, line: 49, baseType: !21, size: 32, elements: !70)
!70 = !{!71, !72}
!71 = !DIEnumerator(name: "CblasNonUnit", value: 131)
!72 = !DIEnumerator(name: "CblasUnit", value: 132)
!73 = !{!74, !75, !78, !79}
!74 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 18, baseType: !77)
!76 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!77 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !81, line: 50, baseType: !82)
!81 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 42, size: 384, elements: !83)
!83 = !{!84, !85, !86, !87, !89, !97}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !82, file: !81, line: 44, baseType: !75, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !82, file: !81, line: 45, baseType: !75, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !82, file: !81, line: 46, baseType: !75, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !82, file: !81, line: 47, baseType: !88, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !82, file: !81, line: 48, baseType: !90, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !92, line: 44, baseType: !93)
!92 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !92, line: 38, size: 128, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !93, file: !92, line: 40, baseType: !75, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !93, file: !92, line: 41, baseType: !88, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !82, file: !81, line: 49, baseType: !32, size: 32, offset: 320)
!98 = !{!0, !7, !12}
!99 = !{i32 7, !"Dwarf Version", i32 5}
!100 = !{i32 2, !"Debug Info Version", i32 3}
!101 = !{i32 1, !"wchar_size", i32 4}
!102 = !{i32 8, !"PIC Level", i32 2}
!103 = !{i32 7, !"PIE Level", i32 2}
!104 = !{i32 7, !"uwtable", i32 2}
!105 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!106 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!107 = distinct !DISubprogram(name: "gsl_linalg_tri_upper_rcond", scope: !2, file: !2, line: 57, type: !108, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !122)
!108 = !DISubroutineType(types: !109)
!109 = !{!32, !110, !88, !112}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !114, line: 50, baseType: !115)
!114 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 42, size: 320, elements: !116)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !115, file: !114, line: 44, baseType: !75, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !115, file: !114, line: 45, baseType: !75, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !115, file: !114, line: 46, baseType: !88, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !115, file: !114, line: 47, baseType: !90, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !115, file: !114, line: 48, baseType: !32, size: 32, offset: 256)
!122 = !{!123, !124, !125, !126}
!123 = !DILocalVariable(name: "A", arg: 1, scope: !107, file: !2, line: 57, type: !110)
!124 = !DILocalVariable(name: "rcond", arg: 2, scope: !107, file: !2, line: 57, type: !88)
!125 = !DILocalVariable(name: "work", arg: 3, scope: !107, file: !2, line: 57, type: !112)
!126 = !DILocalVariable(name: "status", scope: !107, file: !2, line: 59, type: !32)
!127 = !DILocation(line: 0, scope: !107)
!128 = !DILocation(line: 59, column: 16, scope: !107)
!129 = !{i32 0, i32 21}
!130 = !DILocation(line: 60, column: 3, scope: !107)
!131 = distinct !DISubprogram(name: "condest_tri_rcond", scope: !2, file: !2, line: 186, type: !132, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !136)
!132 = !DISubroutineType(types: !133)
!133 = !{!32, !134, !110, !88, !112}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !135, line: 45, baseType: !19)
!135 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!136 = !{!137, !138, !139, !140, !141, !143, !144, !148, !149}
!137 = !DILocalVariable(name: "Uplo", arg: 1, scope: !131, file: !2, line: 186, type: !134)
!138 = !DILocalVariable(name: "A", arg: 2, scope: !131, file: !2, line: 186, type: !110)
!139 = !DILocalVariable(name: "rcond", arg: 3, scope: !131, file: !2, line: 186, type: !88)
!140 = !DILocalVariable(name: "work", arg: 4, scope: !131, file: !2, line: 186, type: !112)
!141 = !DILocalVariable(name: "M", scope: !131, file: !2, line: 188, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!143 = !DILocalVariable(name: "N", scope: !131, file: !2, line: 189, type: !142)
!144 = !DILocalVariable(name: "status", scope: !145, file: !2, line: 201, type: !32)
!145 = distinct !DILexicalBlock(scope: !146, file: !2, line: 200, column: 5)
!146 = distinct !DILexicalBlock(scope: !147, file: !2, line: 195, column: 12)
!147 = distinct !DILexicalBlock(scope: !131, file: !2, line: 191, column: 7)
!148 = !DILocalVariable(name: "Anorm", scope: !145, file: !2, line: 202, type: !74)
!149 = !DILocalVariable(name: "Ainvnorm", scope: !145, file: !2, line: 203, type: !74)
!150 = distinct !DIAssignID()
!151 = !DILocation(line: 0, scope: !145)
!152 = !DILocation(line: 0, scope: !131)
!153 = !DILocation(line: 188, column: 23, scope: !131)
!154 = !{!155, !156, i64 0}
!155 = !{!"", !156, i64 0, !156, i64 8, !156, i64 16, !159, i64 24, !159, i64 32, !160, i64 40}
!156 = !{!"long", !157, i64 0}
!157 = !{!"omnipotent char", !158, i64 0}
!158 = !{!"Simple C/C++ TBAA"}
!159 = !{!"any pointer", !157, i64 0}
!160 = !{!"int", !157, i64 0}
!161 = !DILocation(line: 189, column: 23, scope: !131)
!162 = !{!155, !156, i64 8}
!163 = !DILocation(line: 191, column: 9, scope: !147)
!164 = !DILocation(line: 191, column: 7, scope: !131)
!165 = !DILocation(line: 193, column: 7, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 193, column: 7)
!167 = distinct !DILexicalBlock(scope: !147, file: !2, line: 192, column: 5)
!168 = !DILocation(line: 195, column: 18, scope: !146)
!169 = !{!170, !156, i64 0}
!170 = !{!"", !156, i64 0, !156, i64 8, !159, i64 16, !159, i64 24, !160, i64 32}
!171 = !DILocation(line: 195, column: 28, scope: !146)
!172 = !DILocation(line: 195, column: 23, scope: !146)
!173 = !DILocation(line: 195, column: 12, scope: !147)
!174 = !DILocation(line: 197, column: 7, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !2, line: 197, column: 7)
!176 = distinct !DILexicalBlock(scope: !146, file: !2, line: 196, column: 5)
!177 = !DILocalVariable(name: "Uplo", arg: 1, scope: !178, file: !2, line: 229, type: !134)
!178 = distinct !DISubprogram(name: "condest_tri_norm1", scope: !2, file: !2, line: 229, type: !179, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !181)
!179 = !DISubroutineType(types: !180)
!180 = !{!74, !134, !110}
!181 = !{!177, !182, !183, !184, !185, !186, !187, !193, !197, !202}
!182 = !DILocalVariable(name: "A", arg: 2, scope: !178, file: !2, line: 229, type: !110)
!183 = !DILocalVariable(name: "N", scope: !178, file: !2, line: 231, type: !142)
!184 = !DILocalVariable(name: "max", scope: !178, file: !2, line: 232, type: !74)
!185 = !DILocalVariable(name: "i", scope: !178, file: !2, line: 233, type: !75)
!186 = !DILocalVariable(name: "j", scope: !178, file: !2, line: 233, type: !75)
!187 = !DILocalVariable(name: "sum", scope: !188, file: !2, line: 239, type: !74)
!188 = distinct !DILexicalBlock(scope: !189, file: !2, line: 238, column: 9)
!189 = distinct !DILexicalBlock(scope: !190, file: !2, line: 237, column: 7)
!190 = distinct !DILexicalBlock(scope: !191, file: !2, line: 237, column: 7)
!191 = distinct !DILexicalBlock(scope: !192, file: !2, line: 236, column: 5)
!192 = distinct !DILexicalBlock(scope: !178, file: !2, line: 235, column: 7)
!193 = !DILocalVariable(name: "Aij", scope: !194, file: !2, line: 242, type: !74)
!194 = distinct !DILexicalBlock(scope: !195, file: !2, line: 241, column: 13)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 240, column: 11)
!196 = distinct !DILexicalBlock(scope: !188, file: !2, line: 240, column: 11)
!197 = !DILocalVariable(name: "sum", scope: !198, file: !2, line: 253, type: !74)
!198 = distinct !DILexicalBlock(scope: !199, file: !2, line: 252, column: 9)
!199 = distinct !DILexicalBlock(scope: !200, file: !2, line: 251, column: 7)
!200 = distinct !DILexicalBlock(scope: !201, file: !2, line: 251, column: 7)
!201 = distinct !DILexicalBlock(scope: !192, file: !2, line: 250, column: 5)
!202 = !DILocalVariable(name: "Aij", scope: !203, file: !2, line: 256, type: !74)
!203 = distinct !DILexicalBlock(scope: !204, file: !2, line: 255, column: 13)
!204 = distinct !DILexicalBlock(scope: !205, file: !2, line: 254, column: 11)
!205 = distinct !DILexicalBlock(scope: !198, file: !2, line: 254, column: 11)
!206 = !DILocation(line: 0, scope: !178, inlinedAt: !207)
!207 = distinct !DILocation(line: 202, column: 22, scope: !145)
!208 = !DILocation(line: 235, column: 12, scope: !192, inlinedAt: !207)
!209 = !DILocation(line: 0, scope: !192, inlinedAt: !207)
!210 = !DILocation(line: 235, column: 7, scope: !178, inlinedAt: !207)
!211 = !DILocation(line: 251, column: 7, scope: !200, inlinedAt: !207)
!212 = !{!155, !159, i64 24}
!213 = !{!155, !156, i64 16}
!214 = !DILocation(line: 237, column: 7, scope: !190, inlinedAt: !207)
!215 = !DILocation(line: 240, column: 11, scope: !196, inlinedAt: !207)
!216 = !DILocation(line: 0, scope: !188, inlinedAt: !207)
!217 = !DILocalVariable(name: "m", arg: 1, scope: !218, file: !81, line: 270, type: !110)
!218 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !81, file: !81, line: 270, type: !219, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !221)
!219 = !DISubroutineType(types: !220)
!220 = !{!74, !110, !142, !142}
!221 = !{!217, !222, !223}
!222 = !DILocalVariable(name: "i", arg: 2, scope: !218, file: !81, line: 270, type: !142)
!223 = !DILocalVariable(name: "j", arg: 3, scope: !218, file: !81, line: 270, type: !142)
!224 = !DILocation(line: 0, scope: !218, inlinedAt: !225)
!225 = distinct !DILocation(line: 242, column: 28, scope: !194, inlinedAt: !207)
!226 = !DILocation(line: 285, column: 20, scope: !218, inlinedAt: !225)
!227 = !DILocation(line: 285, column: 10, scope: !218, inlinedAt: !225)
!228 = !{!229, !229, i64 0}
!229 = !{!"double", !157, i64 0}
!230 = !DILocation(line: 0, scope: !194, inlinedAt: !207)
!231 = !DILocation(line: 243, column: 22, scope: !194, inlinedAt: !207)
!232 = !DILocation(line: 240, column: 31, scope: !195, inlinedAt: !207)
!233 = distinct !{!233, !215, !234, !235}
!234 = !DILocation(line: 244, column: 13, scope: !196, inlinedAt: !207)
!235 = !{!"llvm.loop.mustprogress"}
!236 = distinct !{!236, !237}
!237 = !{!"llvm.loop.unroll.disable"}
!238 = !DILocation(line: 243, column: 19, scope: !194, inlinedAt: !207)
!239 = !DILocation(line: 246, column: 17, scope: !188, inlinedAt: !207)
!240 = !DILocation(line: 237, column: 26, scope: !189, inlinedAt: !207)
!241 = !DILocation(line: 237, column: 21, scope: !189, inlinedAt: !207)
!242 = distinct !{!242, !214, !243, !235}
!243 = !DILocation(line: 247, column: 9, scope: !190, inlinedAt: !207)
!244 = !DILocation(line: 0, scope: !198, inlinedAt: !207)
!245 = !DILocation(line: 254, column: 11, scope: !205, inlinedAt: !207)
!246 = !DILocation(line: 0, scope: !218, inlinedAt: !247)
!247 = distinct !DILocation(line: 256, column: 28, scope: !203, inlinedAt: !207)
!248 = !DILocation(line: 285, column: 20, scope: !218, inlinedAt: !247)
!249 = !DILocation(line: 285, column: 10, scope: !218, inlinedAt: !247)
!250 = !DILocation(line: 0, scope: !203, inlinedAt: !207)
!251 = !DILocation(line: 257, column: 22, scope: !203, inlinedAt: !207)
!252 = !DILocation(line: 254, column: 30, scope: !204, inlinedAt: !207)
!253 = !DILocation(line: 254, column: 25, scope: !204, inlinedAt: !207)
!254 = distinct !{!254, !245, !255, !235}
!255 = !DILocation(line: 258, column: 13, scope: !205, inlinedAt: !207)
!256 = !DILocation(line: 260, column: 17, scope: !198, inlinedAt: !207)
!257 = !DILocation(line: 251, column: 26, scope: !199, inlinedAt: !207)
!258 = !DILocation(line: 251, column: 21, scope: !199, inlinedAt: !207)
!259 = distinct !{!259, !211, !260, !235}
!260 = !DILocation(line: 261, column: 9, scope: !200, inlinedAt: !207)
!261 = !DILocation(line: 203, column: 7, scope: !145)
!262 = !DILocation(line: 208, column: 11, scope: !145)
!263 = !DILocation(line: 232, column: 10, scope: !178, inlinedAt: !207)
!264 = !DILocation(line: 205, column: 14, scope: !145)
!265 = !DILocation(line: 208, column: 17, scope: !266)
!266 = distinct !DILexicalBlock(scope: !145, file: !2, line: 208, column: 11)
!267 = !DILocation(line: 0, scope: !268)
!268 = distinct !DILexicalBlock(scope: !145, file: !2, line: 212, column: 11)
!269 = !{i32 0, i32 20}
!270 = !DILocation(line: 217, column: 11, scope: !271)
!271 = distinct !DILexicalBlock(scope: !145, file: !2, line: 217, column: 11)
!272 = !DILocation(line: 217, column: 11, scope: !145)
!273 = !DILocation(line: 220, column: 11, scope: !274)
!274 = distinct !DILexicalBlock(scope: !145, file: !2, line: 220, column: 11)
!275 = !DILocation(line: 220, column: 20, scope: !274)
!276 = !DILocation(line: 220, column: 11, scope: !145)
!277 = !DILocation(line: 221, column: 23, scope: !274)
!278 = !DILocation(line: 221, column: 32, scope: !274)
!279 = !DILocation(line: 221, column: 9, scope: !274)
!280 = !DILocation(line: 224, column: 5, scope: !146)
!281 = !DILocation(line: 0, scope: !147)
!282 = !DILocation(line: 225, column: 1, scope: !131)
!283 = distinct !DISubprogram(name: "gsl_linalg_tri_lower_rcond", scope: !2, file: !2, line: 75, type: !108, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !284)
!284 = !{!285, !286, !287, !288}
!285 = !DILocalVariable(name: "A", arg: 1, scope: !283, file: !2, line: 75, type: !110)
!286 = !DILocalVariable(name: "rcond", arg: 2, scope: !283, file: !2, line: 75, type: !88)
!287 = !DILocalVariable(name: "work", arg: 3, scope: !283, file: !2, line: 75, type: !112)
!288 = !DILocalVariable(name: "status", scope: !283, file: !2, line: 77, type: !32)
!289 = !DILocation(line: 0, scope: !283)
!290 = !DILocation(line: 77, column: 16, scope: !283)
!291 = !DILocation(line: 78, column: 3, scope: !283)
!292 = distinct !DISubprogram(name: "gsl_linalg_invnorm1", scope: !2, file: !2, line: 95, type: !293, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !299)
!293 = !DISubroutineType(types: !294)
!294 = !{!32, !142, !295, !78, !88, !112}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!32, !298, !112, !78}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !135, line: 44, baseType: !25)
!299 = !{!300, !301, !302, !303, !304, !305, !308, !314, !315, !316, !317, !318, !319, !320, !321, !325, !329, !333}
!300 = !DILocalVariable(name: "N", arg: 1, scope: !292, file: !2, line: 95, type: !142)
!301 = !DILocalVariable(name: "Ainvx", arg: 2, scope: !292, file: !2, line: 96, type: !295)
!302 = !DILocalVariable(name: "params", arg: 3, scope: !292, file: !2, line: 97, type: !78)
!303 = !DILocalVariable(name: "Ainvnorm", arg: 4, scope: !292, file: !2, line: 97, type: !88)
!304 = !DILocalVariable(name: "work", arg: 5, scope: !292, file: !2, line: 97, type: !112)
!305 = !DILocalVariable(name: "maxit", scope: !306, file: !2, line: 105, type: !142)
!306 = distinct !DILexicalBlock(scope: !307, file: !2, line: 104, column: 5)
!307 = distinct !DILexicalBlock(scope: !292, file: !2, line: 99, column: 7)
!308 = !DILocalVariable(name: "x", scope: !306, file: !2, line: 106, type: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !114, line: 57, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !114, line: 55, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 52, size: 320, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !311, file: !114, line: 54, baseType: !113, size: 320)
!314 = !DILocalVariable(name: "v", scope: !306, file: !2, line: 107, type: !309)
!315 = !DILocalVariable(name: "xi", scope: !306, file: !2, line: 108, type: !309)
!316 = !DILocalVariable(name: "gamma", scope: !306, file: !2, line: 109, type: !74)
!317 = !DILocalVariable(name: "gamma_old", scope: !306, file: !2, line: 109, type: !74)
!318 = !DILocalVariable(name: "temp", scope: !306, file: !2, line: 109, type: !74)
!319 = !DILocalVariable(name: "i", scope: !306, file: !2, line: 110, type: !75)
!320 = !DILocalVariable(name: "k", scope: !306, file: !2, line: 110, type: !75)
!321 = !DILocalVariable(name: "vi", scope: !322, file: !2, line: 125, type: !74)
!322 = distinct !DILexicalBlock(scope: !323, file: !2, line: 124, column: 9)
!323 = distinct !DILexicalBlock(scope: !324, file: !2, line: 123, column: 7)
!324 = distinct !DILexicalBlock(scope: !306, file: !2, line: 123, column: 7)
!325 = !DILocalVariable(name: "j", scope: !326, file: !2, line: 135, type: !75)
!326 = distinct !DILexicalBlock(scope: !327, file: !2, line: 134, column: 9)
!327 = distinct !DILexicalBlock(scope: !328, file: !2, line: 133, column: 7)
!328 = distinct !DILexicalBlock(scope: !306, file: !2, line: 133, column: 7)
!329 = !DILocalVariable(name: "vi", scope: !330, file: !2, line: 152, type: !74)
!330 = distinct !DILexicalBlock(scope: !331, file: !2, line: 151, column: 13)
!331 = distinct !DILexicalBlock(scope: !332, file: !2, line: 150, column: 11)
!332 = distinct !DILexicalBlock(scope: !326, file: !2, line: 150, column: 11)
!333 = !DILocalVariable(name: "term", scope: !334, file: !2, line: 164, type: !74)
!334 = distinct !DILexicalBlock(scope: !335, file: !2, line: 163, column: 9)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 162, column: 7)
!336 = distinct !DILexicalBlock(scope: !306, file: !2, line: 162, column: 7)
!337 = distinct !DIAssignID()
!338 = !DILocation(line: 0, scope: !306)
!339 = distinct !DIAssignID()
!340 = distinct !DIAssignID()
!341 = !DILocation(line: 0, scope: !292)
!342 = !DILocation(line: 99, column: 13, scope: !307)
!343 = !DILocation(line: 99, column: 23, scope: !307)
!344 = !DILocation(line: 99, column: 18, scope: !307)
!345 = !DILocation(line: 99, column: 7, scope: !292)
!346 = !DILocation(line: 101, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 101, column: 7)
!348 = distinct !DILexicalBlock(scope: !307, file: !2, line: 100, column: 5)
!349 = !DILocation(line: 106, column: 7, scope: !306)
!350 = !DILocation(line: 106, column: 27, scope: !306)
!351 = !DILocation(line: 107, column: 7, scope: !306)
!352 = !DILocation(line: 107, column: 27, scope: !306)
!353 = !DILocation(line: 108, column: 7, scope: !306)
!354 = !DILocation(line: 108, column: 56, scope: !306)
!355 = !DILocation(line: 108, column: 28, scope: !306)
!356 = !DILocation(line: 112, column: 21, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !2, line: 112, column: 7)
!358 = distinct !DILexicalBlock(scope: !306, file: !2, line: 112, column: 7)
!359 = !DILocation(line: 112, column: 7, scope: !358)
!360 = !{!170, !159, i64 16}
!361 = !{!170, !156, i64 8}
!362 = !DILocalVariable(name: "v", arg: 1, scope: !363, file: !114, line: 188, type: !112)
!363 = distinct !DISubprogram(name: "gsl_vector_set", scope: !114, file: !114, line: 188, type: !364, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !366)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !112, !142, !74}
!366 = !{!362, !367, !368}
!367 = !DILocalVariable(name: "i", arg: 2, scope: !363, file: !114, line: 188, type: !142)
!368 = !DILocalVariable(name: "x", arg: 3, scope: !363, file: !114, line: 188, type: !74)
!369 = !DILocation(line: 0, scope: !363, inlinedAt: !370)
!370 = distinct !DILocation(line: 113, column: 9, scope: !357)
!371 = !DILocation(line: 196, column: 13, scope: !363, inlinedAt: !370)
!372 = !DILocation(line: 196, column: 3, scope: !363, inlinedAt: !370)
!373 = !DILocation(line: 196, column: 26, scope: !363, inlinedAt: !370)
!374 = !DILocation(line: 112, column: 26, scope: !357)
!375 = distinct !{!375, !359, !376, !235}
!376 = !DILocation(line: 113, column: 54, scope: !358)
!377 = distinct !{!377, !237}
!378 = !DILocation(line: 116, column: 7, scope: !306)
!379 = !DILocation(line: 117, column: 7, scope: !306)
!380 = !DILocation(line: 120, column: 15, scope: !306)
!381 = !DILocation(line: 123, column: 7, scope: !324)
!382 = !DILocalVariable(name: "v", arg: 1, scope: !383, file: !114, line: 175, type: !386)
!383 = distinct !DISubprogram(name: "gsl_vector_get", scope: !114, file: !114, line: 175, type: !384, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !388)
!384 = !DISubroutineType(types: !385)
!385 = !{!74, !386, !142}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!388 = !{!382, !389}
!389 = !DILocalVariable(name: "i", arg: 2, scope: !383, file: !114, line: 175, type: !142)
!390 = !DILocation(line: 0, scope: !383, inlinedAt: !391)
!391 = distinct !DILocation(line: 125, column: 23, scope: !322)
!392 = !DILocation(line: 183, column: 20, scope: !383, inlinedAt: !391)
!393 = !DILocation(line: 183, column: 10, scope: !383, inlinedAt: !391)
!394 = !DILocation(line: 0, scope: !322)
!395 = !DILocation(line: 126, column: 41, scope: !322)
!396 = !DILocation(line: 0, scope: !363, inlinedAt: !397)
!397 = distinct !DILocation(line: 126, column: 11, scope: !322)
!398 = !DILocation(line: 196, column: 13, scope: !363, inlinedAt: !397)
!399 = !DILocation(line: 196, column: 3, scope: !363, inlinedAt: !397)
!400 = !DILocation(line: 196, column: 26, scope: !363, inlinedAt: !397)
!401 = !DILocation(line: 123, column: 26, scope: !323)
!402 = distinct !{!402, !381, !403, !235}
!403 = !DILocation(line: 127, column: 9, scope: !324)
!404 = !DILocation(line: 130, column: 7, scope: !306)
!405 = !DILocation(line: 131, column: 7, scope: !306)
!406 = !DILocation(line: 133, column: 7, scope: !328)
!407 = !DILocation(line: 135, column: 31, scope: !326)
!408 = !DILocation(line: 0, scope: !326)
!409 = !DILocation(line: 138, column: 11, scope: !326)
!410 = !DILocation(line: 0, scope: !363, inlinedAt: !411)
!411 = distinct !DILocation(line: 139, column: 11, scope: !326)
!412 = !DILocation(line: 196, column: 6, scope: !363, inlinedAt: !411)
!413 = !DILocation(line: 196, column: 18, scope: !363, inlinedAt: !411)
!414 = !DILocation(line: 196, column: 13, scope: !363, inlinedAt: !411)
!415 = !DILocation(line: 196, column: 3, scope: !363, inlinedAt: !411)
!416 = !DILocation(line: 196, column: 26, scope: !363, inlinedAt: !411)
!417 = !DILocation(line: 140, column: 11, scope: !326)
!418 = !DILocation(line: 143, column: 19, scope: !326)
!419 = !DILocalVariable(name: "x", arg: 1, scope: !420, file: !2, line: 269, type: !386)
!420 = distinct !DISubprogram(name: "condest_same_sign", scope: !2, file: !2, line: 269, type: !421, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!32, !386, !386}
!423 = !{!419, !424, !425, !426, !427, !431}
!424 = !DILocalVariable(name: "y", arg: 2, scope: !420, file: !2, line: 269, type: !386)
!425 = !DILocalVariable(name: "n", scope: !420, file: !2, line: 271, type: !142)
!426 = !DILocalVariable(name: "i", scope: !420, file: !2, line: 272, type: !75)
!427 = !DILocalVariable(name: "xi", scope: !428, file: !2, line: 276, type: !74)
!428 = distinct !DILexicalBlock(scope: !429, file: !2, line: 275, column: 5)
!429 = distinct !DILexicalBlock(scope: !430, file: !2, line: 274, column: 3)
!430 = distinct !DILexicalBlock(scope: !420, file: !2, line: 274, column: 3)
!431 = !DILocalVariable(name: "yi", scope: !428, file: !2, line: 277, type: !74)
!432 = !DILocation(line: 0, scope: !420, inlinedAt: !433)
!433 = distinct !DILocation(line: 146, column: 15, scope: !434)
!434 = distinct !DILexicalBlock(scope: !326, file: !2, line: 146, column: 15)
!435 = !DILocation(line: 271, column: 23, scope: !420, inlinedAt: !433)
!436 = !DILocation(line: 274, column: 17, scope: !429, inlinedAt: !433)
!437 = !DILocation(line: 274, column: 3, scope: !430, inlinedAt: !433)
!438 = !DILocation(line: 274, column: 22, scope: !429, inlinedAt: !433)
!439 = distinct !{!439, !437, !440, !235}
!440 = !DILocation(line: 280, column: 5, scope: !430, inlinedAt: !433)
!441 = !DILocation(line: 0, scope: !383, inlinedAt: !442)
!442 = distinct !DILocation(line: 276, column: 19, scope: !428, inlinedAt: !433)
!443 = !DILocation(line: 183, column: 20, scope: !383, inlinedAt: !442)
!444 = !DILocation(line: 183, column: 10, scope: !383, inlinedAt: !442)
!445 = !DILocation(line: 0, scope: !428, inlinedAt: !433)
!446 = !DILocation(line: 0, scope: !383, inlinedAt: !447)
!447 = distinct !DILocation(line: 277, column: 19, scope: !428, inlinedAt: !433)
!448 = !DILocation(line: 183, column: 20, scope: !383, inlinedAt: !447)
!449 = !DILocation(line: 183, column: 10, scope: !383, inlinedAt: !447)
!450 = !DILocation(line: 278, column: 11, scope: !451, inlinedAt: !433)
!451 = distinct !DILexicalBlock(scope: !428, file: !2, line: 278, column: 11)
!452 = !DILocation(line: 278, column: 27, scope: !451, inlinedAt: !433)
!453 = !DILocation(line: 278, column: 24, scope: !451, inlinedAt: !433)
!454 = !DILocation(line: 146, column: 56, scope: !434)
!455 = !DILocation(line: 150, column: 11, scope: !332)
!456 = !DILocation(line: 0, scope: !383, inlinedAt: !457)
!457 = distinct !DILocation(line: 152, column: 27, scope: !330)
!458 = !DILocation(line: 183, column: 20, scope: !383, inlinedAt: !457)
!459 = !DILocation(line: 183, column: 10, scope: !383, inlinedAt: !457)
!460 = !DILocation(line: 0, scope: !330)
!461 = !DILocation(line: 153, column: 45, scope: !330)
!462 = !DILocation(line: 0, scope: !363, inlinedAt: !463)
!463 = distinct !DILocation(line: 153, column: 15, scope: !330)
!464 = !DILocation(line: 196, column: 13, scope: !363, inlinedAt: !463)
!465 = !DILocation(line: 196, column: 3, scope: !363, inlinedAt: !463)
!466 = !DILocation(line: 196, column: 26, scope: !363, inlinedAt: !463)
!467 = !DILocation(line: 150, column: 30, scope: !331)
!468 = distinct !{!468, !455, !469, !235}
!469 = !DILocation(line: 154, column: 13, scope: !332)
!470 = !DILocation(line: 157, column: 11, scope: !326)
!471 = !DILocation(line: 158, column: 11, scope: !326)
!472 = !DILocation(line: 133, column: 30, scope: !327)
!473 = !DILocation(line: 133, column: 21, scope: !327)
!474 = distinct !{!474, !406, !475, !235}
!475 = !DILocation(line: 159, column: 9, scope: !328)
!476 = !DILocation(line: 162, column: 7, scope: !336)
!477 = !DILocation(line: 164, column: 31, scope: !334)
!478 = !DILocation(line: 164, column: 42, scope: !334)
!479 = !DILocation(line: 196, column: 13, scope: !363, inlinedAt: !480)
!480 = distinct !DILocation(line: 165, column: 11, scope: !334)
!481 = !DILocation(line: 0, scope: !334)
!482 = !DILocation(line: 0, scope: !363, inlinedAt: !480)
!483 = !DILocation(line: 196, column: 3, scope: !363, inlinedAt: !480)
!484 = !DILocation(line: 196, column: 26, scope: !363, inlinedAt: !480)
!485 = !DILocation(line: 162, column: 26, scope: !335)
!486 = !DILocation(line: 165, column: 45, scope: !334)
!487 = distinct !{!487, !476, !488, !235}
!488 = !DILocation(line: 167, column: 9, scope: !336)
!489 = !DILocation(line: 170, column: 7, scope: !306)
!490 = !DILocation(line: 172, column: 20, scope: !306)
!491 = !DILocation(line: 172, column: 18, scope: !306)
!492 = !DILocation(line: 172, column: 53, scope: !306)
!493 = !DILocation(line: 172, column: 46, scope: !306)
!494 = !DILocation(line: 173, column: 16, scope: !495)
!495 = distinct !DILexicalBlock(scope: !306, file: !2, line: 173, column: 11)
!496 = !DILocation(line: 173, column: 11, scope: !306)
!497 = !DILocation(line: 175, column: 11, scope: !498)
!498 = distinct !DILexicalBlock(scope: !495, file: !2, line: 174, column: 9)
!499 = !DILocation(line: 177, column: 9, scope: !498)
!500 = !DILocation(line: 179, column: 17, scope: !306)
!501 = !DILocation(line: 182, column: 5, scope: !307)
!502 = !DILocation(line: 0, scope: !307)
!503 = !DILocation(line: 183, column: 1, scope: !292)
!504 = !DISubprogram(name: "gsl_error", scope: !31, file: !31, line: 77, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !507, !507, !32, !32}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!509 = !DISubprogram(name: "gsl_vector_subvector", scope: !114, file: !114, line: 103, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DISubroutineType(types: !511)
!511 = !{!310, !112, !75, !75}
!512 = !DISubprogram(name: "gsl_vector_memcpy", scope: !114, file: !114, line: 136, type: !513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!513 = !DISubroutineType(types: !514)
!514 = !{!32, !112, !386}
!515 = !DISubprogram(name: "gsl_blas_dasum", scope: !516, file: !516, line: 92, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!516 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!517 = !DISubroutineType(types: !518)
!518 = !{!74, !386}
!519 = !DISubprogram(name: "gsl_blas_idamax", scope: !516, file: !516, line: 100, type: !520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!520 = !DISubroutineType(types: !521)
!521 = !{!522, !386}
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_INDEX_t", file: !135, line: 42, baseType: !75)
!523 = !DISubprogram(name: "gsl_vector_set_zero", scope: !114, file: !114, line: 126, type: !524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !112}
!526 = distinct !DISubprogram(name: "condest_invtriu", scope: !2, file: !2, line: 287, type: !296, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !527)
!527 = !{!528, !529, !530, !531}
!528 = !DILocalVariable(name: "TransA", arg: 1, scope: !526, file: !2, line: 287, type: !298)
!529 = !DILocalVariable(name: "x", arg: 2, scope: !526, file: !2, line: 287, type: !112)
!530 = !DILocalVariable(name: "params", arg: 3, scope: !526, file: !2, line: 287, type: !78)
!531 = !DILocalVariable(name: "A", scope: !526, file: !2, line: 289, type: !79)
!532 = !DILocation(line: 0, scope: !526)
!533 = !DILocation(line: 290, column: 10, scope: !526)
!534 = !DILocation(line: 290, column: 3, scope: !526)
!535 = distinct !DISubprogram(name: "condest_invtril", scope: !2, file: !2, line: 295, type: !296, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !536)
!536 = !{!537, !538, !539, !540}
!537 = !DILocalVariable(name: "TransA", arg: 1, scope: !535, file: !2, line: 295, type: !298)
!538 = !DILocalVariable(name: "x", arg: 2, scope: !535, file: !2, line: 295, type: !112)
!539 = !DILocalVariable(name: "params", arg: 3, scope: !535, file: !2, line: 295, type: !78)
!540 = !DILocalVariable(name: "A", scope: !535, file: !2, line: 297, type: !79)
!541 = !DILocation(line: 0, scope: !535)
!542 = !DILocation(line: 298, column: 10, scope: !535)
!543 = !DILocation(line: 298, column: 3, scope: !535)
!544 = !DISubprogram(name: "gsl_blas_dtrsv", scope: !516, file: !516, line: 217, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!545 = !DISubroutineType(types: !546)
!546 = !{!32, !134, !298, !547, !110, !112}
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_DIAG_t", file: !135, line: 46, baseType: !69)
