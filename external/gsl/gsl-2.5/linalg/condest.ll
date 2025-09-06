; ModuleID = 'condest.c'
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 193, i32 noundef 20) #5, !dbg !165
  br label %131, !dbg !165

11:                                               ; preds = %4
  %12 = load i64, ptr %3, align 8, !dbg !168, !tbaa !169
  %13 = mul i64 %6, 3, !dbg !171
  %14 = icmp eq i64 %12, %13, !dbg !172
  br i1 %14, label %16, label %15, !dbg !173

15:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 197, i32 noundef 19) #5, !dbg !174
  br label %131, !dbg !174

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
  br i1 %18, label %113, label %20, !dbg !211

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !212
  %23 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !213
  br label %94, !dbg !211

25:                                               ; preds = %16
  br i1 %18, label %113, label %26, !dbg !214

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !212
  %29 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !213
  br label %31, !dbg !214

31:                                               ; preds = %87, %26
  %32 = phi i64 [ 1, %26 ], [ %92, %87 ]
  %33 = phi double [ 0.000000e+00, %26 ], [ %90, %87 ]
  %34 = phi i64 [ 0, %26 ], [ %91, %87 ]
  call void @llvm.dbg.value(metadata double %33, metadata !184, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %34, metadata !186, metadata !DIExpression()), !dbg !206
  %35 = getelementptr double, ptr %28, i64 %34, !dbg !215
  call void @llvm.dbg.value(metadata i64 0, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !187, metadata !DIExpression()), !dbg !216
  %36 = and i64 %32, 3, !dbg !215
  %37 = icmp ult i64 %34, 3, !dbg !215
  br i1 %37, label %70, label %38, !dbg !215

38:                                               ; preds = %31
  %39 = and i64 %32, -4, !dbg !215
  br label %40, !dbg !215

40:                                               ; preds = %40, %38
  %41 = phi i64 [ 0, %38 ], [ %67, %40 ]
  %42 = phi double [ 0.000000e+00, %38 ], [ %66, %40 ]
  %43 = phi i64 [ 0, %38 ], [ %68, %40 ]
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
  %48 = fadd double %42, %47, !dbg !232
  call void @llvm.dbg.value(metadata double %48, metadata !187, metadata !DIExpression()), !dbg !216
  %49 = or disjoint i64 %41, 1, !dbg !233
  call void @llvm.dbg.value(metadata i64 %49, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %49, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %48, metadata !187, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata ptr %1, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %49, metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %34, metadata !223, metadata !DIExpression()), !dbg !224
  %50 = mul i64 %49, %30, !dbg !226
  %51 = getelementptr double, ptr %35, i64 %50, !dbg !227
  %52 = load double, ptr %51, align 8, !dbg !227, !tbaa !228
  call void @llvm.dbg.value(metadata double %52, metadata !193, metadata !DIExpression()), !dbg !230
  %53 = tail call double @llvm.fabs.f64(double %52), !dbg !231
  %54 = fadd double %48, %53, !dbg !232
  call void @llvm.dbg.value(metadata double %54, metadata !187, metadata !DIExpression()), !dbg !216
  %55 = or disjoint i64 %41, 2, !dbg !233
  call void @llvm.dbg.value(metadata i64 %55, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %55, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %54, metadata !187, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata ptr %1, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %55, metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %34, metadata !223, metadata !DIExpression()), !dbg !224
  %56 = mul i64 %55, %30, !dbg !226
  %57 = getelementptr double, ptr %35, i64 %56, !dbg !227
  %58 = load double, ptr %57, align 8, !dbg !227, !tbaa !228
  call void @llvm.dbg.value(metadata double %58, metadata !193, metadata !DIExpression()), !dbg !230
  %59 = tail call double @llvm.fabs.f64(double %58), !dbg !231
  %60 = fadd double %54, %59, !dbg !232
  call void @llvm.dbg.value(metadata double %60, metadata !187, metadata !DIExpression()), !dbg !216
  %61 = or disjoint i64 %41, 3, !dbg !233
  call void @llvm.dbg.value(metadata i64 %61, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %61, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %60, metadata !187, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata ptr %1, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %61, metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %34, metadata !223, metadata !DIExpression()), !dbg !224
  %62 = mul i64 %61, %30, !dbg !226
  %63 = getelementptr double, ptr %35, i64 %62, !dbg !227
  %64 = load double, ptr %63, align 8, !dbg !227, !tbaa !228
  call void @llvm.dbg.value(metadata double %64, metadata !193, metadata !DIExpression()), !dbg !230
  %65 = tail call double @llvm.fabs.f64(double %64), !dbg !231
  %66 = fadd double %60, %65, !dbg !232
  call void @llvm.dbg.value(metadata double %66, metadata !187, metadata !DIExpression()), !dbg !216
  %67 = add nuw i64 %41, 4, !dbg !233
  call void @llvm.dbg.value(metadata i64 %67, metadata !185, metadata !DIExpression()), !dbg !206
  %68 = add i64 %43, 4, !dbg !215
  %69 = icmp eq i64 %68, %39, !dbg !215
  br i1 %69, label %70, label %40, !dbg !215, !llvm.loop !234

70:                                               ; preds = %40, %31
  %71 = phi double [ undef, %31 ], [ %66, %40 ]
  %72 = phi i64 [ 0, %31 ], [ %67, %40 ]
  %73 = phi double [ 0.000000e+00, %31 ], [ %66, %40 ]
  %74 = icmp eq i64 %36, 0, !dbg !215
  br i1 %74, label %87, label %75, !dbg !215

75:                                               ; preds = %70, %75
  %76 = phi i64 [ %84, %75 ], [ %72, %70 ]
  %77 = phi double [ %83, %75 ], [ %73, %70 ]
  %78 = phi i64 [ %85, %75 ], [ 0, %70 ]
  call void @llvm.dbg.value(metadata i64 %76, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %77, metadata !187, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata ptr %1, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %76, metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %34, metadata !223, metadata !DIExpression()), !dbg !224
  %79 = mul i64 %76, %30, !dbg !226
  %80 = getelementptr double, ptr %35, i64 %79, !dbg !227
  %81 = load double, ptr %80, align 8, !dbg !227, !tbaa !228
  call void @llvm.dbg.value(metadata double %81, metadata !193, metadata !DIExpression()), !dbg !230
  %82 = tail call double @llvm.fabs.f64(double %81), !dbg !231
  %83 = fadd double %77, %82, !dbg !232
  call void @llvm.dbg.value(metadata double %83, metadata !187, metadata !DIExpression()), !dbg !216
  %84 = add nuw i64 %76, 1, !dbg !233
  call void @llvm.dbg.value(metadata i64 %84, metadata !185, metadata !DIExpression()), !dbg !206
  %85 = add i64 %78, 1, !dbg !215
  %86 = icmp eq i64 %85, %36, !dbg !215
  br i1 %86, label %87, label %75, !dbg !215, !llvm.loop !237

87:                                               ; preds = %75, %70
  %88 = phi double [ %71, %70 ], [ %83, %75 ], !dbg !232
  %89 = fcmp ogt double %33, %88, !dbg !239
  %90 = select i1 %89, double %33, double %88, !dbg !239
  call void @llvm.dbg.value(metadata double %90, metadata !184, metadata !DIExpression()), !dbg !206
  %91 = add nuw i64 %34, 1, !dbg !240
  call void @llvm.dbg.value(metadata i64 %91, metadata !186, metadata !DIExpression()), !dbg !206
  %92 = add i64 %32, 1, !dbg !214
  %93 = icmp eq i64 %91, %6, !dbg !241
  br i1 %93, label %114, label %31, !dbg !214, !llvm.loop !242

94:                                               ; preds = %108, %20
  %95 = phi double [ 0.000000e+00, %20 ], [ %110, %108 ]
  %96 = phi i64 [ 0, %20 ], [ %111, %108 ]
  call void @llvm.dbg.value(metadata double %95, metadata !184, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %96, metadata !186, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i64 %96, metadata !185, metadata !DIExpression()), !dbg !206
  %97 = getelementptr double, ptr %22, i64 %96, !dbg !245
  br label %98, !dbg !245

98:                                               ; preds = %98, %94
  %99 = phi double [ 0.000000e+00, %94 ], [ %105, %98 ]
  %100 = phi i64 [ %96, %94 ], [ %106, %98 ]
  call void @llvm.dbg.value(metadata double %99, metadata !197, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i64 %100, metadata !185, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata ptr %1, metadata !217, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 %100, metadata !222, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 %96, metadata !223, metadata !DIExpression()), !dbg !246
  %101 = mul i64 %100, %24, !dbg !248
  %102 = getelementptr double, ptr %97, i64 %101, !dbg !249
  %103 = load double, ptr %102, align 8, !dbg !249, !tbaa !228
  call void @llvm.dbg.value(metadata double %103, metadata !202, metadata !DIExpression()), !dbg !250
  %104 = tail call double @llvm.fabs.f64(double %103), !dbg !251
  %105 = fadd double %99, %104, !dbg !252
  call void @llvm.dbg.value(metadata double %105, metadata !197, metadata !DIExpression()), !dbg !244
  %106 = add nuw i64 %100, 1, !dbg !253
  call void @llvm.dbg.value(metadata i64 %106, metadata !185, metadata !DIExpression()), !dbg !206
  %107 = icmp ult i64 %106, %6, !dbg !254
  br i1 %107, label %98, label %108, !dbg !245, !llvm.loop !255

108:                                              ; preds = %98
  %109 = fcmp ogt double %95, %105, !dbg !257
  %110 = select i1 %109, double %95, double %105, !dbg !257
  call void @llvm.dbg.value(metadata double %110, metadata !184, metadata !DIExpression()), !dbg !206
  %111 = add nuw i64 %96, 1, !dbg !258
  call void @llvm.dbg.value(metadata i64 %111, metadata !186, metadata !DIExpression()), !dbg !206
  %112 = icmp eq i64 %111, %6, !dbg !259
  br i1 %112, label %114, label %94, !dbg !211, !llvm.loop !260

113:                                              ; preds = %25, %19
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !148, metadata !DIExpression()), !dbg !151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5, !dbg !262
  br label %127, !dbg !263

114:                                              ; preds = %108, %87
  %115 = phi double [ %90, %87 ], [ %110, %108 ], !dbg !264
  call void @llvm.dbg.value(metadata double %115, metadata !184, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double %115, metadata !148, metadata !DIExpression()), !dbg !151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5, !dbg !262
  store double 0.000000e+00, ptr %2, align 8, !dbg !265, !tbaa !228
  %116 = fcmp oeq double %115, 0.000000e+00, !dbg !266
  br i1 %116, label %129, label %117, !dbg !263

117:                                              ; preds = %114
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !144, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !144, metadata !DIExpression()), !dbg !151
  %118 = select i1 %17, ptr @condest_invtriu, ptr @condest_invtril
  %119 = call i32 @gsl_linalg_invnorm1(i64 noundef %6, ptr noundef nonnull %118, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %3), !dbg !268, !range !270
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !144, metadata !DIExpression()), !dbg !151
  %120 = icmp eq i32 %119, 0, !dbg !271
  br i1 %120, label %121, label %129, !dbg !273

121:                                              ; preds = %117
  %122 = load double, ptr %5, align 8, !dbg !274, !tbaa !228
  %123 = fcmp une double %122, 0.000000e+00, !dbg !276
  br i1 %123, label %124, label %129, !dbg !277

124:                                              ; preds = %121
  %125 = fdiv double 1.000000e+00, %115, !dbg !278
  %126 = fdiv double %125, %122, !dbg !279
  br label %127, !dbg !280

127:                                              ; preds = %124, %113
  %128 = phi double [ 0.000000e+00, %113 ], [ %126, %124 ]
  store double %128, ptr %2, align 8, !dbg !151, !tbaa !228
  br label %129, !dbg !281

129:                                              ; preds = %127, %121, %117, %114
  %130 = phi i32 [ 0, %114 ], [ %119, %117 ], [ 0, %121 ], [ 0, %127 ], !dbg !151
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5, !dbg !281
  br label %131

131:                                              ; preds = %129, %15, %10
  %132 = phi i32 [ 20, %10 ], [ 19, %15 ], [ %130, %129 ], !dbg !282
  ret i32 %132, !dbg !283
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_tri_lower_rcond(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !284 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !286, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !287, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !288, metadata !DIExpression()), !dbg !290
  %4 = tail call fastcc i32 @condest_tri_rcond(i32 noundef 122, ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !291, !range !129
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !289, metadata !DIExpression()), !dbg !290
  ret i32 %4, !dbg !292
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_invnorm1(i64 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 !dbg !293 {
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !338
  call void @llvm.dbg.assign(metadata i1 undef, metadata !309, metadata !DIExpression(), metadata !338, metadata ptr %6, metadata !DIExpression()), !dbg !339
  %7 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !340
  call void @llvm.dbg.assign(metadata i1 undef, metadata !315, metadata !DIExpression(), metadata !340, metadata ptr %7, metadata !DIExpression()), !dbg !339
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !341
  call void @llvm.dbg.assign(metadata i1 undef, metadata !316, metadata !DIExpression(), metadata !341, metadata ptr %8, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !301, metadata !DIExpression()), !dbg !342
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !302, metadata !DIExpression()), !dbg !342
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !303, metadata !DIExpression()), !dbg !342
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !304, metadata !DIExpression()), !dbg !342
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !305, metadata !DIExpression()), !dbg !342
  %9 = load i64, ptr %4, align 8, !dbg !343, !tbaa !169
  %10 = mul i64 %0, 3, !dbg !344
  %11 = icmp eq i64 %9, %10, !dbg !345
  br i1 %11, label %13, label %12, !dbg !346

12:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 101, i32 noundef 19) #5, !dbg !347
  br label %237, !dbg !347

13:                                               ; preds = %5
  tail call void @llvm.dbg.value(metadata i64 5, metadata !306, metadata !DIExpression()), !dbg !339
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #5, !dbg !350
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %0) #5, !dbg !351
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #5, !dbg !352
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %4, i64 noundef %0, i64 noundef %0) #5, !dbg !353
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #5, !dbg !354
  %14 = shl i64 %0, 1, !dbg !355
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %4, i64 noundef %14, i64 noundef %0) #5, !dbg !356
  tail call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !339
  %15 = icmp eq i64 %0, 0, !dbg !357
  br i1 %15, label %55, label %16, !dbg !360

16:                                               ; preds = %13
  %17 = uitofp i64 %0 to double
  %18 = fdiv double 1.000000e+00, %17
  %19 = getelementptr inbounds %struct.gsl_vector, ptr %6, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !361
  %21 = getelementptr inbounds %struct.gsl_vector, ptr %6, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !362
  %23 = and i64 %0, 3, !dbg !360
  %24 = icmp ult i64 %0, 4, !dbg !360
  br i1 %24, label %44, label %25, !dbg !360

25:                                               ; preds = %16
  %26 = and i64 %0, -4, !dbg !360
  br label %27, !dbg !360

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %41, %27 ]
  %29 = phi i64 [ 0, %25 ], [ %42, %27 ]
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !363, metadata !DIExpression()), !dbg !370
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !368, metadata !DIExpression()), !dbg !370
  tail call void @llvm.dbg.value(metadata double %18, metadata !369, metadata !DIExpression()), !dbg !370
  %30 = mul i64 %22, %28, !dbg !372
  %31 = getelementptr inbounds double, ptr %20, i64 %30, !dbg !373
  store double %18, ptr %31, align 8, !dbg !374, !tbaa !228
  %32 = or disjoint i64 %28, 1, !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !363, metadata !DIExpression()), !dbg !370
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !368, metadata !DIExpression()), !dbg !370
  tail call void @llvm.dbg.value(metadata double %18, metadata !369, metadata !DIExpression()), !dbg !370
  %33 = mul i64 %22, %32, !dbg !372
  %34 = getelementptr inbounds double, ptr %20, i64 %33, !dbg !373
  store double %18, ptr %34, align 8, !dbg !374, !tbaa !228
  %35 = or disjoint i64 %28, 2, !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !363, metadata !DIExpression()), !dbg !370
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !368, metadata !DIExpression()), !dbg !370
  tail call void @llvm.dbg.value(metadata double %18, metadata !369, metadata !DIExpression()), !dbg !370
  %36 = mul i64 %22, %35, !dbg !372
  %37 = getelementptr inbounds double, ptr %20, i64 %36, !dbg !373
  store double %18, ptr %37, align 8, !dbg !374, !tbaa !228
  %38 = or disjoint i64 %28, 3, !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !363, metadata !DIExpression()), !dbg !370
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !368, metadata !DIExpression()), !dbg !370
  tail call void @llvm.dbg.value(metadata double %18, metadata !369, metadata !DIExpression()), !dbg !370
  %39 = mul i64 %22, %38, !dbg !372
  %40 = getelementptr inbounds double, ptr %20, i64 %39, !dbg !373
  store double %18, ptr %40, align 8, !dbg !374, !tbaa !228
  %41 = add nuw i64 %28, 4, !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !320, metadata !DIExpression()), !dbg !339
  %42 = add i64 %29, 4, !dbg !360
  %43 = icmp eq i64 %42, %26, !dbg !360
  br i1 %43, label %44, label %27, !dbg !360, !llvm.loop !376

44:                                               ; preds = %27, %16
  %45 = phi i64 [ 0, %16 ], [ %41, %27 ]
  %46 = icmp eq i64 %23, 0, !dbg !360
  br i1 %46, label %55, label %47, !dbg !360

47:                                               ; preds = %44, %47
  %48 = phi i64 [ %52, %47 ], [ %45, %44 ]
  %49 = phi i64 [ %53, %47 ], [ 0, %44 ]
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !363, metadata !DIExpression()), !dbg !370
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !368, metadata !DIExpression()), !dbg !370
  tail call void @llvm.dbg.value(metadata double %18, metadata !369, metadata !DIExpression()), !dbg !370
  %50 = mul i64 %22, %48, !dbg !372
  %51 = getelementptr inbounds double, ptr %20, i64 %50, !dbg !373
  store double %18, ptr %51, align 8, !dbg !374, !tbaa !228
  %52 = add nuw i64 %48, 1, !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !320, metadata !DIExpression()), !dbg !339
  %53 = add i64 %49, 1, !dbg !360
  %54 = icmp eq i64 %53, %23, !dbg !360
  br i1 %54, label %55, label %47, !dbg !360, !llvm.loop !378

55:                                               ; preds = %44, %47, %13
  %56 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %7, ptr noundef nonnull %6) #5, !dbg !379
  %57 = call i32 %1(i32 noundef 111, ptr noundef nonnull %7, ptr noundef %2) #5, !dbg !380
  %58 = call double @gsl_blas_dasum(ptr noundef nonnull %7) #5, !dbg !381
  tail call void @llvm.dbg.value(metadata double %58, metadata !317, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !339
  br i1 %15, label %104, label %59, !dbg !382

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.gsl_vector, ptr %7, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !361
  %62 = getelementptr inbounds %struct.gsl_vector, ptr %7, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !362
  %64 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !361
  %66 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !362
  %68 = and i64 %0, 1, !dbg !382
  %69 = icmp eq i64 %0, 1, !dbg !382
  br i1 %69, label %93, label %70, !dbg !382

70:                                               ; preds = %59
  %71 = and i64 %0, -2, !dbg !382
  br label %72, !dbg !382

72:                                               ; preds = %72, %70
  %73 = phi i64 [ 0, %70 ], [ %90, %72 ]
  %74 = phi i64 [ 0, %70 ], [ %91, %72 ]
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !383, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !390, metadata !DIExpression()), !dbg !391
  %75 = mul i64 %63, %73, !dbg !393
  %76 = getelementptr inbounds double, ptr %61, i64 %75, !dbg !394
  %77 = load double, ptr %76, align 8, !dbg !394, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %77, metadata !322, metadata !DIExpression()), !dbg !395
  %78 = fcmp oge double %77, 0.000000e+00, !dbg !396
  %79 = select i1 %78, double 1.000000e+00, double -1.000000e+00, !dbg !396
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !363, metadata !DIExpression()), !dbg !397
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !368, metadata !DIExpression()), !dbg !397
  tail call void @llvm.dbg.value(metadata double %79, metadata !369, metadata !DIExpression()), !dbg !397
  %80 = mul i64 %67, %73, !dbg !399
  %81 = getelementptr inbounds double, ptr %65, i64 %80, !dbg !400
  store double %79, ptr %81, align 8, !dbg !401, !tbaa !228
  %82 = or disjoint i64 %73, 1, !dbg !402
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !383, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !390, metadata !DIExpression()), !dbg !391
  %83 = mul i64 %63, %82, !dbg !393
  %84 = getelementptr inbounds double, ptr %61, i64 %83, !dbg !394
  %85 = load double, ptr %84, align 8, !dbg !394, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %85, metadata !322, metadata !DIExpression()), !dbg !395
  %86 = fcmp oge double %85, 0.000000e+00, !dbg !396
  %87 = select i1 %86, double 1.000000e+00, double -1.000000e+00, !dbg !396
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !363, metadata !DIExpression()), !dbg !397
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !368, metadata !DIExpression()), !dbg !397
  tail call void @llvm.dbg.value(metadata double %87, metadata !369, metadata !DIExpression()), !dbg !397
  %88 = mul i64 %67, %82, !dbg !399
  %89 = getelementptr inbounds double, ptr %65, i64 %88, !dbg !400
  store double %87, ptr %89, align 8, !dbg !401, !tbaa !228
  %90 = add nuw i64 %73, 2, !dbg !402
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !320, metadata !DIExpression()), !dbg !339
  %91 = add i64 %74, 2, !dbg !382
  %92 = icmp eq i64 %91, %71, !dbg !382
  br i1 %92, label %93, label %72, !dbg !382, !llvm.loop !403

93:                                               ; preds = %72, %59
  %94 = phi i64 [ 0, %59 ], [ %90, %72 ]
  %95 = icmp eq i64 %68, 0, !dbg !382
  br i1 %95, label %104, label %96, !dbg !382

96:                                               ; preds = %93
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !383, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !390, metadata !DIExpression()), !dbg !391
  %97 = mul i64 %63, %94, !dbg !393
  %98 = getelementptr inbounds double, ptr %61, i64 %97, !dbg !394
  %99 = load double, ptr %98, align 8, !dbg !394, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %99, metadata !322, metadata !DIExpression()), !dbg !395
  %100 = fcmp oge double %99, 0.000000e+00, !dbg !396
  %101 = select i1 %100, double 1.000000e+00, double -1.000000e+00, !dbg !396
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !363, metadata !DIExpression()), !dbg !397
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !368, metadata !DIExpression()), !dbg !397
  tail call void @llvm.dbg.value(metadata double %101, metadata !369, metadata !DIExpression()), !dbg !397
  %102 = mul i64 %67, %94, !dbg !399
  %103 = getelementptr inbounds double, ptr %65, i64 %102, !dbg !400
  store double %101, ptr %103, align 8, !dbg !401, !tbaa !228
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !320, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !339
  br label %104, !dbg !405

104:                                              ; preds = %96, %93, %55
  %105 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %6, ptr noundef nonnull %8) #5, !dbg !405
  %106 = call i32 %1(i32 noundef 112, ptr noundef nonnull %6, ptr noundef %2) #5, !dbg !406
  tail call void @llvm.dbg.value(metadata i64 0, metadata !321, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata double %58, metadata !317, metadata !DIExpression()), !dbg !339
  %107 = getelementptr inbounds %struct.gsl_vector, ptr %7, i64 0, i32 2
  %108 = getelementptr inbounds %struct.gsl_vector, ptr %7, i64 0, i32 1
  %109 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 2
  %110 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 1
  %111 = add i64 %0, -1, !dbg !407
  %112 = and i64 %0, 1
  %113 = icmp eq i64 %111, 0
  %114 = and i64 %0, -2
  %115 = icmp eq i64 %112, 0
  br label %116, !dbg !407

116:                                              ; preds = %104, %182
  %117 = phi double [ %58, %104 ], [ %125, %182 ]
  %118 = phi i64 [ 0, %104 ], [ %185, %182 ]
  tail call void @llvm.dbg.value(metadata double %117, metadata !317, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !321, metadata !DIExpression()), !dbg !339
  %119 = call i64 @gsl_blas_idamax(ptr noundef nonnull %6) #5, !dbg !408
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !326, metadata !DIExpression()), !dbg !409
  call void @gsl_vector_set_zero(ptr noundef nonnull %7) #5, !dbg !410
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !363, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !368, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !369, metadata !DIExpression()), !dbg !411
  %120 = load ptr, ptr %107, align 8, !dbg !413, !tbaa !361
  %121 = load i64, ptr %108, align 8, !dbg !414, !tbaa !362
  %122 = mul i64 %121, %119, !dbg !415
  %123 = getelementptr inbounds double, ptr %120, i64 %122, !dbg !416
  store double 1.000000e+00, ptr %123, align 8, !dbg !417, !tbaa !228
  %124 = call i32 %1(i32 noundef 111, ptr noundef nonnull %7, ptr noundef %2) #5, !dbg !418
  tail call void @llvm.dbg.value(metadata double %117, metadata !318, metadata !DIExpression()), !dbg !339
  %125 = call double @gsl_blas_dasum(ptr noundef nonnull %7) #5, !dbg !419
  tail call void @llvm.dbg.value(metadata double %125, metadata !317, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !420, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !425, metadata !DIExpression()), !dbg !433
  %126 = load i64, ptr %7, align 8, !dbg !436, !tbaa !169
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !426, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata i64 0, metadata !427, metadata !DIExpression()), !dbg !433
  %127 = icmp eq i64 %126, 0, !dbg !437
  br i1 %127, label %187, label %128, !dbg !438

128:                                              ; preds = %116
  %129 = load ptr, ptr %107, align 8, !tbaa !361
  %130 = load i64, ptr %108, align 8, !tbaa !362
  %131 = load ptr, ptr %109, align 8, !tbaa !361
  %132 = load i64, ptr %110, align 8, !tbaa !362
  br label %136, !dbg !438

133:                                              ; preds = %136
  %134 = add nuw i64 %137, 1, !dbg !439
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !427, metadata !DIExpression()), !dbg !433
  %135 = icmp eq i64 %134, %126, !dbg !437
  br i1 %135, label %187, label %136, !dbg !438, !llvm.loop !440

136:                                              ; preds = %133, %128
  %137 = phi i64 [ 0, %128 ], [ %134, %133 ]
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !427, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !383, metadata !DIExpression()), !dbg !442
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !390, metadata !DIExpression()), !dbg !442
  %138 = mul i64 %137, %130, !dbg !444
  %139 = getelementptr inbounds double, ptr %129, i64 %138, !dbg !445
  %140 = load double, ptr %139, align 8, !dbg !445, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %140, metadata !428, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !383, metadata !DIExpression()), !dbg !447
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !390, metadata !DIExpression()), !dbg !447
  %141 = mul i64 %137, %132, !dbg !449
  %142 = getelementptr inbounds double, ptr %131, i64 %141, !dbg !450
  %143 = load double, ptr %142, align 8, !dbg !450, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %143, metadata !432, metadata !DIExpression()), !dbg !446
  %144 = fcmp ult double %140, 0.000000e+00, !dbg !451
  %145 = fcmp oge double %143, 0.000000e+00, !dbg !453
  %146 = xor i1 %144, %145, !dbg !454
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !427, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !433
  br i1 %146, label %133, label %147

147:                                              ; preds = %136
  %148 = fcmp olt double %125, %117
  br i1 %148, label %187, label %149, !dbg !455

149:                                              ; preds = %147
  tail call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !339
  br i1 %15, label %182, label %150, !dbg !456

150:                                              ; preds = %149
  br i1 %113, label %172, label %151, !dbg !456

151:                                              ; preds = %150, %151
  %152 = phi i64 [ %169, %151 ], [ 0, %150 ]
  %153 = phi i64 [ %170, %151 ], [ 0, %150 ]
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !383, metadata !DIExpression()), !dbg !457
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !390, metadata !DIExpression()), !dbg !457
  %154 = mul i64 %130, %152, !dbg !459
  %155 = getelementptr inbounds double, ptr %129, i64 %154, !dbg !460
  %156 = load double, ptr %155, align 8, !dbg !460, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %156, metadata !330, metadata !DIExpression()), !dbg !461
  %157 = fcmp oge double %156, 0.000000e+00, !dbg !462
  %158 = select i1 %157, double 1.000000e+00, double -1.000000e+00, !dbg !462
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !363, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !368, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata double %158, metadata !369, metadata !DIExpression()), !dbg !463
  %159 = mul i64 %132, %152, !dbg !465
  %160 = getelementptr inbounds double, ptr %131, i64 %159, !dbg !466
  store double %158, ptr %160, align 8, !dbg !467, !tbaa !228
  %161 = or disjoint i64 %152, 1, !dbg !468
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !383, metadata !DIExpression()), !dbg !457
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !390, metadata !DIExpression()), !dbg !457
  %162 = mul i64 %130, %161, !dbg !459
  %163 = getelementptr inbounds double, ptr %129, i64 %162, !dbg !460
  %164 = load double, ptr %163, align 8, !dbg !460, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %164, metadata !330, metadata !DIExpression()), !dbg !461
  %165 = fcmp oge double %164, 0.000000e+00, !dbg !462
  %166 = select i1 %165, double 1.000000e+00, double -1.000000e+00, !dbg !462
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !363, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !368, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata double %166, metadata !369, metadata !DIExpression()), !dbg !463
  %167 = mul i64 %132, %161, !dbg !465
  %168 = getelementptr inbounds double, ptr %131, i64 %167, !dbg !466
  store double %166, ptr %168, align 8, !dbg !467, !tbaa !228
  %169 = add nuw i64 %152, 2, !dbg !468
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !320, metadata !DIExpression()), !dbg !339
  %170 = add i64 %153, 2, !dbg !456
  %171 = icmp eq i64 %170, %114, !dbg !456
  br i1 %171, label %172, label %151, !dbg !456, !llvm.loop !469

172:                                              ; preds = %151, %150
  %173 = phi i64 [ 0, %150 ], [ %169, %151 ]
  br i1 %115, label %182, label %174, !dbg !456

174:                                              ; preds = %172
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !383, metadata !DIExpression()), !dbg !457
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !390, metadata !DIExpression()), !dbg !457
  %175 = mul i64 %130, %173, !dbg !459
  %176 = getelementptr inbounds double, ptr %129, i64 %175, !dbg !460
  %177 = load double, ptr %176, align 8, !dbg !460, !tbaa !228
  tail call void @llvm.dbg.value(metadata double %177, metadata !330, metadata !DIExpression()), !dbg !461
  %178 = fcmp oge double %177, 0.000000e+00, !dbg !462
  %179 = select i1 %178, double 1.000000e+00, double -1.000000e+00, !dbg !462
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !363, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !368, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata double %179, metadata !369, metadata !DIExpression()), !dbg !463
  %180 = mul i64 %132, %173, !dbg !465
  %181 = getelementptr inbounds double, ptr %131, i64 %180, !dbg !466
  store double %179, ptr %181, align 8, !dbg !467, !tbaa !228
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !320, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !339
  br label %182, !dbg !471

182:                                              ; preds = %174, %172, %149
  %183 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %6, ptr noundef nonnull %8) #5, !dbg !471
  %184 = call i32 %1(i32 noundef 112, ptr noundef nonnull %6, ptr noundef %2) #5, !dbg !472
  %185 = add nuw nsw i64 %118, 1, !dbg !473
  tail call void @llvm.dbg.value(metadata double %125, metadata !317, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %185, metadata !321, metadata !DIExpression()), !dbg !339
  %186 = icmp eq i64 %185, 5, !dbg !474
  br i1 %186, label %187, label %116, !dbg !407, !llvm.loop !475

187:                                              ; preds = %116, %147, %182, %133
  tail call void @llvm.dbg.value(metadata double %125, metadata !317, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !319, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !339
  %188 = uitofp i64 %0 to double
  br i1 %15, label %226, label %189, !dbg !477

189:                                              ; preds = %187
  %190 = fadd double %188, -1.000000e+00
  %191 = getelementptr inbounds %struct.gsl_vector, ptr %6, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !361
  %193 = getelementptr inbounds %struct.gsl_vector, ptr %6, i64 0, i32 1
  %194 = load i64, ptr %193, align 8, !tbaa !362
  %195 = and i64 %0, 1, !dbg !477
  %196 = icmp eq i64 %111, 0, !dbg !477
  br i1 %196, label %217, label %197, !dbg !477

197:                                              ; preds = %189
  %198 = and i64 %0, -2, !dbg !477
  br label %199, !dbg !477

199:                                              ; preds = %199, %197
  %200 = phi i64 [ 0, %197 ], [ %214, %199 ]
  %201 = phi i64 [ 0, %197 ], [ %215, %199 ]
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !319, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %200, metadata !320, metadata !DIExpression()), !dbg !339
  %202 = uitofp i64 %200 to double, !dbg !478
  %203 = fdiv double %202, %190, !dbg !479
  %204 = fadd double %203, 1.000000e+00, !dbg !480
  tail call void @llvm.dbg.value(metadata double %204, metadata !334, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !363, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata i64 %200, metadata !368, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata double %204, metadata !369, metadata !DIExpression()), !dbg !482
  %205 = mul i64 %194, %200, !dbg !484
  %206 = getelementptr inbounds double, ptr %192, i64 %205, !dbg !485
  store double %204, ptr %206, align 8, !dbg !486, !tbaa !228
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !319, metadata !DIExpression()), !dbg !339
  %207 = or disjoint i64 %200, 1, !dbg !487
  tail call void @llvm.dbg.value(metadata i64 %207, metadata !320, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !319, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %207, metadata !320, metadata !DIExpression()), !dbg !339
  %208 = uitofp i64 %207 to double, !dbg !478
  %209 = fdiv double %208, %190, !dbg !479
  %210 = fadd double %209, 1.000000e+00, !dbg !480
  tail call void @llvm.dbg.value(metadata double %210, metadata !334, metadata !DIExpression()), !dbg !481
  %211 = fneg double %210, !dbg !488
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !363, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata i64 %207, metadata !368, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata double %211, metadata !369, metadata !DIExpression()), !dbg !482
  %212 = mul i64 %194, %207, !dbg !484
  %213 = getelementptr inbounds double, ptr %192, i64 %212, !dbg !485
  store double %211, ptr %213, align 8, !dbg !486, !tbaa !228
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !319, metadata !DIExpression()), !dbg !339
  %214 = add nuw i64 %200, 2, !dbg !487
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !320, metadata !DIExpression()), !dbg !339
  %215 = add i64 %201, 2, !dbg !477
  %216 = icmp eq i64 %215, %198, !dbg !477
  br i1 %216, label %217, label %199, !dbg !477, !llvm.loop !489

217:                                              ; preds = %199, %189
  %218 = phi i64 [ 0, %189 ], [ %214, %199 ]
  %219 = icmp eq i64 %195, 0, !dbg !477
  br i1 %219, label %226, label %220, !dbg !477

220:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !319, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !320, metadata !DIExpression()), !dbg !339
  %221 = uitofp i64 %218 to double, !dbg !478
  %222 = fdiv double %221, %190, !dbg !479
  %223 = fadd double %222, 1.000000e+00, !dbg !480
  tail call void @llvm.dbg.value(metadata double %223, metadata !334, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !363, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !368, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata double %223, metadata !369, metadata !DIExpression()), !dbg !482
  %224 = mul i64 %194, %218, !dbg !484
  %225 = getelementptr inbounds double, ptr %192, i64 %224, !dbg !485
  store double %223, ptr %225, align 8, !dbg !486, !tbaa !228
  tail call void @llvm.dbg.value(metadata double poison, metadata !319, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !320, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !339
  br label %226, !dbg !491

226:                                              ; preds = %220, %217, %187
  %227 = call i32 %1(i32 noundef 111, ptr noundef nonnull %6, ptr noundef %2) #5, !dbg !491
  %228 = call double @gsl_blas_dasum(ptr noundef nonnull %6) #5, !dbg !492
  %229 = fmul double %228, 2.000000e+00, !dbg !493
  %230 = fmul double %188, 3.000000e+00, !dbg !494
  %231 = fdiv double %229, %230, !dbg !495
  tail call void @llvm.dbg.value(metadata double %231, metadata !319, metadata !DIExpression()), !dbg !339
  %232 = fcmp ogt double %231, %125, !dbg !496
  br i1 %232, label %233, label %235, !dbg !498

233:                                              ; preds = %226
  %234 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %7, ptr noundef nonnull %6) #5, !dbg !499
  tail call void @llvm.dbg.value(metadata double %231, metadata !317, metadata !DIExpression()), !dbg !339
  br label %235, !dbg !501

235:                                              ; preds = %233, %226
  %236 = phi double [ %231, %233 ], [ %125, %226 ], !dbg !339
  tail call void @llvm.dbg.value(metadata double %236, metadata !317, metadata !DIExpression()), !dbg !339
  store double %236, ptr %3, align 8, !dbg !502, !tbaa !228
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #5, !dbg !503
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #5, !dbg !503
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #5, !dbg !503
  br label %237

237:                                              ; preds = %12, %235
  %238 = phi i32 [ 19, %12 ], [ 0, %235 ], !dbg !504
  ret i32 %238, !dbg !505
}

declare !dbg !506 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !511 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !514 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !517 double @gsl_blas_dasum(ptr noundef) local_unnamed_addr #2

declare !dbg !521 i64 @gsl_blas_idamax(ptr noundef) local_unnamed_addr #2

declare !dbg !525 void @gsl_vector_set_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @condest_invtriu(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !528 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !530, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !531, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !532, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !533, metadata !DIExpression()), !dbg !534
  %4 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef %0, i32 noundef 131, ptr noundef %2, ptr noundef %1) #5, !dbg !535
  ret i32 %4, !dbg !536
}

; Function Attrs: nounwind uwtable
define internal i32 @condest_invtril(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !537 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !539, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !540, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !541, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !542, metadata !DIExpression()), !dbg !543
  %4 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef %0, i32 noundef 131, ptr noundef %2, ptr noundef %1) #5, !dbg !544
  ret i32 %4, !dbg !545
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare !dbg !546 i32 @gsl_blas_dtrsv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!232 = !DILocation(line: 243, column: 19, scope: !194, inlinedAt: !207)
!233 = !DILocation(line: 240, column: 31, scope: !195, inlinedAt: !207)
!234 = distinct !{!234, !215, !235, !236}
!235 = !DILocation(line: 244, column: 13, scope: !196, inlinedAt: !207)
!236 = !{!"llvm.loop.mustprogress"}
!237 = distinct !{!237, !238}
!238 = !{!"llvm.loop.unroll.disable"}
!239 = !DILocation(line: 246, column: 17, scope: !188, inlinedAt: !207)
!240 = !DILocation(line: 237, column: 26, scope: !189, inlinedAt: !207)
!241 = !DILocation(line: 237, column: 21, scope: !189, inlinedAt: !207)
!242 = distinct !{!242, !214, !243, !236}
!243 = !DILocation(line: 247, column: 9, scope: !190, inlinedAt: !207)
!244 = !DILocation(line: 0, scope: !198, inlinedAt: !207)
!245 = !DILocation(line: 254, column: 11, scope: !205, inlinedAt: !207)
!246 = !DILocation(line: 0, scope: !218, inlinedAt: !247)
!247 = distinct !DILocation(line: 256, column: 28, scope: !203, inlinedAt: !207)
!248 = !DILocation(line: 285, column: 20, scope: !218, inlinedAt: !247)
!249 = !DILocation(line: 285, column: 10, scope: !218, inlinedAt: !247)
!250 = !DILocation(line: 0, scope: !203, inlinedAt: !207)
!251 = !DILocation(line: 257, column: 22, scope: !203, inlinedAt: !207)
!252 = !DILocation(line: 257, column: 19, scope: !203, inlinedAt: !207)
!253 = !DILocation(line: 254, column: 30, scope: !204, inlinedAt: !207)
!254 = !DILocation(line: 254, column: 25, scope: !204, inlinedAt: !207)
!255 = distinct !{!255, !245, !256, !236}
!256 = !DILocation(line: 258, column: 13, scope: !205, inlinedAt: !207)
!257 = !DILocation(line: 260, column: 17, scope: !198, inlinedAt: !207)
!258 = !DILocation(line: 251, column: 26, scope: !199, inlinedAt: !207)
!259 = !DILocation(line: 251, column: 21, scope: !199, inlinedAt: !207)
!260 = distinct !{!260, !211, !261, !236}
!261 = !DILocation(line: 261, column: 9, scope: !200, inlinedAt: !207)
!262 = !DILocation(line: 203, column: 7, scope: !145)
!263 = !DILocation(line: 208, column: 11, scope: !145)
!264 = !DILocation(line: 232, column: 10, scope: !178, inlinedAt: !207)
!265 = !DILocation(line: 205, column: 14, scope: !145)
!266 = !DILocation(line: 208, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !145, file: !2, line: 208, column: 11)
!268 = !DILocation(line: 0, scope: !269)
!269 = distinct !DILexicalBlock(scope: !145, file: !2, line: 212, column: 11)
!270 = !{i32 0, i32 20}
!271 = !DILocation(line: 217, column: 11, scope: !272)
!272 = distinct !DILexicalBlock(scope: !145, file: !2, line: 217, column: 11)
!273 = !DILocation(line: 217, column: 11, scope: !145)
!274 = !DILocation(line: 220, column: 11, scope: !275)
!275 = distinct !DILexicalBlock(scope: !145, file: !2, line: 220, column: 11)
!276 = !DILocation(line: 220, column: 20, scope: !275)
!277 = !DILocation(line: 220, column: 11, scope: !145)
!278 = !DILocation(line: 221, column: 23, scope: !275)
!279 = !DILocation(line: 221, column: 32, scope: !275)
!280 = !DILocation(line: 221, column: 9, scope: !275)
!281 = !DILocation(line: 224, column: 5, scope: !146)
!282 = !DILocation(line: 0, scope: !147)
!283 = !DILocation(line: 225, column: 1, scope: !131)
!284 = distinct !DISubprogram(name: "gsl_linalg_tri_lower_rcond", scope: !2, file: !2, line: 75, type: !108, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !285)
!285 = !{!286, !287, !288, !289}
!286 = !DILocalVariable(name: "A", arg: 1, scope: !284, file: !2, line: 75, type: !110)
!287 = !DILocalVariable(name: "rcond", arg: 2, scope: !284, file: !2, line: 75, type: !88)
!288 = !DILocalVariable(name: "work", arg: 3, scope: !284, file: !2, line: 75, type: !112)
!289 = !DILocalVariable(name: "status", scope: !284, file: !2, line: 77, type: !32)
!290 = !DILocation(line: 0, scope: !284)
!291 = !DILocation(line: 77, column: 16, scope: !284)
!292 = !DILocation(line: 78, column: 3, scope: !284)
!293 = distinct !DISubprogram(name: "gsl_linalg_invnorm1", scope: !2, file: !2, line: 95, type: !294, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !300)
!294 = !DISubroutineType(types: !295)
!295 = !{!32, !142, !296, !78, !88, !112}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!32, !299, !112, !78}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !135, line: 44, baseType: !25)
!300 = !{!301, !302, !303, !304, !305, !306, !309, !315, !316, !317, !318, !319, !320, !321, !322, !326, !330, !334}
!301 = !DILocalVariable(name: "N", arg: 1, scope: !293, file: !2, line: 95, type: !142)
!302 = !DILocalVariable(name: "Ainvx", arg: 2, scope: !293, file: !2, line: 96, type: !296)
!303 = !DILocalVariable(name: "params", arg: 3, scope: !293, file: !2, line: 97, type: !78)
!304 = !DILocalVariable(name: "Ainvnorm", arg: 4, scope: !293, file: !2, line: 97, type: !88)
!305 = !DILocalVariable(name: "work", arg: 5, scope: !293, file: !2, line: 97, type: !112)
!306 = !DILocalVariable(name: "maxit", scope: !307, file: !2, line: 105, type: !142)
!307 = distinct !DILexicalBlock(scope: !308, file: !2, line: 104, column: 5)
!308 = distinct !DILexicalBlock(scope: !293, file: !2, line: 99, column: 7)
!309 = !DILocalVariable(name: "x", scope: !307, file: !2, line: 106, type: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !114, line: 57, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !114, line: 55, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 52, size: 320, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !312, file: !114, line: 54, baseType: !113, size: 320)
!315 = !DILocalVariable(name: "v", scope: !307, file: !2, line: 107, type: !310)
!316 = !DILocalVariable(name: "xi", scope: !307, file: !2, line: 108, type: !310)
!317 = !DILocalVariable(name: "gamma", scope: !307, file: !2, line: 109, type: !74)
!318 = !DILocalVariable(name: "gamma_old", scope: !307, file: !2, line: 109, type: !74)
!319 = !DILocalVariable(name: "temp", scope: !307, file: !2, line: 109, type: !74)
!320 = !DILocalVariable(name: "i", scope: !307, file: !2, line: 110, type: !75)
!321 = !DILocalVariable(name: "k", scope: !307, file: !2, line: 110, type: !75)
!322 = !DILocalVariable(name: "vi", scope: !323, file: !2, line: 125, type: !74)
!323 = distinct !DILexicalBlock(scope: !324, file: !2, line: 124, column: 9)
!324 = distinct !DILexicalBlock(scope: !325, file: !2, line: 123, column: 7)
!325 = distinct !DILexicalBlock(scope: !307, file: !2, line: 123, column: 7)
!326 = !DILocalVariable(name: "j", scope: !327, file: !2, line: 135, type: !75)
!327 = distinct !DILexicalBlock(scope: !328, file: !2, line: 134, column: 9)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 133, column: 7)
!329 = distinct !DILexicalBlock(scope: !307, file: !2, line: 133, column: 7)
!330 = !DILocalVariable(name: "vi", scope: !331, file: !2, line: 152, type: !74)
!331 = distinct !DILexicalBlock(scope: !332, file: !2, line: 151, column: 13)
!332 = distinct !DILexicalBlock(scope: !333, file: !2, line: 150, column: 11)
!333 = distinct !DILexicalBlock(scope: !327, file: !2, line: 150, column: 11)
!334 = !DILocalVariable(name: "term", scope: !335, file: !2, line: 164, type: !74)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 163, column: 9)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 162, column: 7)
!337 = distinct !DILexicalBlock(scope: !307, file: !2, line: 162, column: 7)
!338 = distinct !DIAssignID()
!339 = !DILocation(line: 0, scope: !307)
!340 = distinct !DIAssignID()
!341 = distinct !DIAssignID()
!342 = !DILocation(line: 0, scope: !293)
!343 = !DILocation(line: 99, column: 13, scope: !308)
!344 = !DILocation(line: 99, column: 23, scope: !308)
!345 = !DILocation(line: 99, column: 18, scope: !308)
!346 = !DILocation(line: 99, column: 7, scope: !293)
!347 = !DILocation(line: 101, column: 7, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 101, column: 7)
!349 = distinct !DILexicalBlock(scope: !308, file: !2, line: 100, column: 5)
!350 = !DILocation(line: 106, column: 7, scope: !307)
!351 = !DILocation(line: 106, column: 27, scope: !307)
!352 = !DILocation(line: 107, column: 7, scope: !307)
!353 = !DILocation(line: 107, column: 27, scope: !307)
!354 = !DILocation(line: 108, column: 7, scope: !307)
!355 = !DILocation(line: 108, column: 56, scope: !307)
!356 = !DILocation(line: 108, column: 28, scope: !307)
!357 = !DILocation(line: 112, column: 21, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 112, column: 7)
!359 = distinct !DILexicalBlock(scope: !307, file: !2, line: 112, column: 7)
!360 = !DILocation(line: 112, column: 7, scope: !359)
!361 = !{!170, !159, i64 16}
!362 = !{!170, !156, i64 8}
!363 = !DILocalVariable(name: "v", arg: 1, scope: !364, file: !114, line: 188, type: !112)
!364 = distinct !DISubprogram(name: "gsl_vector_set", scope: !114, file: !114, line: 188, type: !365, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !112, !142, !74}
!367 = !{!363, !368, !369}
!368 = !DILocalVariable(name: "i", arg: 2, scope: !364, file: !114, line: 188, type: !142)
!369 = !DILocalVariable(name: "x", arg: 3, scope: !364, file: !114, line: 188, type: !74)
!370 = !DILocation(line: 0, scope: !364, inlinedAt: !371)
!371 = distinct !DILocation(line: 113, column: 9, scope: !358)
!372 = !DILocation(line: 196, column: 13, scope: !364, inlinedAt: !371)
!373 = !DILocation(line: 196, column: 3, scope: !364, inlinedAt: !371)
!374 = !DILocation(line: 196, column: 26, scope: !364, inlinedAt: !371)
!375 = !DILocation(line: 112, column: 26, scope: !358)
!376 = distinct !{!376, !360, !377, !236}
!377 = !DILocation(line: 113, column: 54, scope: !359)
!378 = distinct !{!378, !238}
!379 = !DILocation(line: 116, column: 7, scope: !307)
!380 = !DILocation(line: 117, column: 7, scope: !307)
!381 = !DILocation(line: 120, column: 15, scope: !307)
!382 = !DILocation(line: 123, column: 7, scope: !325)
!383 = !DILocalVariable(name: "v", arg: 1, scope: !384, file: !114, line: 175, type: !387)
!384 = distinct !DISubprogram(name: "gsl_vector_get", scope: !114, file: !114, line: 175, type: !385, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !389)
!385 = !DISubroutineType(types: !386)
!386 = !{!74, !387, !142}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!389 = !{!383, !390}
!390 = !DILocalVariable(name: "i", arg: 2, scope: !384, file: !114, line: 175, type: !142)
!391 = !DILocation(line: 0, scope: !384, inlinedAt: !392)
!392 = distinct !DILocation(line: 125, column: 23, scope: !323)
!393 = !DILocation(line: 183, column: 20, scope: !384, inlinedAt: !392)
!394 = !DILocation(line: 183, column: 10, scope: !384, inlinedAt: !392)
!395 = !DILocation(line: 0, scope: !323)
!396 = !DILocation(line: 126, column: 41, scope: !323)
!397 = !DILocation(line: 0, scope: !364, inlinedAt: !398)
!398 = distinct !DILocation(line: 126, column: 11, scope: !323)
!399 = !DILocation(line: 196, column: 13, scope: !364, inlinedAt: !398)
!400 = !DILocation(line: 196, column: 3, scope: !364, inlinedAt: !398)
!401 = !DILocation(line: 196, column: 26, scope: !364, inlinedAt: !398)
!402 = !DILocation(line: 123, column: 26, scope: !324)
!403 = distinct !{!403, !382, !404, !236}
!404 = !DILocation(line: 127, column: 9, scope: !325)
!405 = !DILocation(line: 130, column: 7, scope: !307)
!406 = !DILocation(line: 131, column: 7, scope: !307)
!407 = !DILocation(line: 133, column: 7, scope: !329)
!408 = !DILocation(line: 135, column: 31, scope: !327)
!409 = !DILocation(line: 0, scope: !327)
!410 = !DILocation(line: 138, column: 11, scope: !327)
!411 = !DILocation(line: 0, scope: !364, inlinedAt: !412)
!412 = distinct !DILocation(line: 139, column: 11, scope: !327)
!413 = !DILocation(line: 196, column: 6, scope: !364, inlinedAt: !412)
!414 = !DILocation(line: 196, column: 18, scope: !364, inlinedAt: !412)
!415 = !DILocation(line: 196, column: 13, scope: !364, inlinedAt: !412)
!416 = !DILocation(line: 196, column: 3, scope: !364, inlinedAt: !412)
!417 = !DILocation(line: 196, column: 26, scope: !364, inlinedAt: !412)
!418 = !DILocation(line: 140, column: 11, scope: !327)
!419 = !DILocation(line: 143, column: 19, scope: !327)
!420 = !DILocalVariable(name: "x", arg: 1, scope: !421, file: !2, line: 269, type: !387)
!421 = distinct !DISubprogram(name: "condest_same_sign", scope: !2, file: !2, line: 269, type: !422, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !424)
!422 = !DISubroutineType(types: !423)
!423 = !{!32, !387, !387}
!424 = !{!420, !425, !426, !427, !428, !432}
!425 = !DILocalVariable(name: "y", arg: 2, scope: !421, file: !2, line: 269, type: !387)
!426 = !DILocalVariable(name: "n", scope: !421, file: !2, line: 271, type: !142)
!427 = !DILocalVariable(name: "i", scope: !421, file: !2, line: 272, type: !75)
!428 = !DILocalVariable(name: "xi", scope: !429, file: !2, line: 276, type: !74)
!429 = distinct !DILexicalBlock(scope: !430, file: !2, line: 275, column: 5)
!430 = distinct !DILexicalBlock(scope: !431, file: !2, line: 274, column: 3)
!431 = distinct !DILexicalBlock(scope: !421, file: !2, line: 274, column: 3)
!432 = !DILocalVariable(name: "yi", scope: !429, file: !2, line: 277, type: !74)
!433 = !DILocation(line: 0, scope: !421, inlinedAt: !434)
!434 = distinct !DILocation(line: 146, column: 15, scope: !435)
!435 = distinct !DILexicalBlock(scope: !327, file: !2, line: 146, column: 15)
!436 = !DILocation(line: 271, column: 23, scope: !421, inlinedAt: !434)
!437 = !DILocation(line: 274, column: 17, scope: !430, inlinedAt: !434)
!438 = !DILocation(line: 274, column: 3, scope: !431, inlinedAt: !434)
!439 = !DILocation(line: 274, column: 22, scope: !430, inlinedAt: !434)
!440 = distinct !{!440, !438, !441, !236}
!441 = !DILocation(line: 280, column: 5, scope: !431, inlinedAt: !434)
!442 = !DILocation(line: 0, scope: !384, inlinedAt: !443)
!443 = distinct !DILocation(line: 276, column: 19, scope: !429, inlinedAt: !434)
!444 = !DILocation(line: 183, column: 20, scope: !384, inlinedAt: !443)
!445 = !DILocation(line: 183, column: 10, scope: !384, inlinedAt: !443)
!446 = !DILocation(line: 0, scope: !429, inlinedAt: !434)
!447 = !DILocation(line: 0, scope: !384, inlinedAt: !448)
!448 = distinct !DILocation(line: 277, column: 19, scope: !429, inlinedAt: !434)
!449 = !DILocation(line: 183, column: 20, scope: !384, inlinedAt: !448)
!450 = !DILocation(line: 183, column: 10, scope: !384, inlinedAt: !448)
!451 = !DILocation(line: 278, column: 11, scope: !452, inlinedAt: !434)
!452 = distinct !DILexicalBlock(scope: !429, file: !2, line: 278, column: 11)
!453 = !DILocation(line: 278, column: 27, scope: !452, inlinedAt: !434)
!454 = !DILocation(line: 278, column: 24, scope: !452, inlinedAt: !434)
!455 = !DILocation(line: 146, column: 56, scope: !435)
!456 = !DILocation(line: 150, column: 11, scope: !333)
!457 = !DILocation(line: 0, scope: !384, inlinedAt: !458)
!458 = distinct !DILocation(line: 152, column: 27, scope: !331)
!459 = !DILocation(line: 183, column: 20, scope: !384, inlinedAt: !458)
!460 = !DILocation(line: 183, column: 10, scope: !384, inlinedAt: !458)
!461 = !DILocation(line: 0, scope: !331)
!462 = !DILocation(line: 153, column: 45, scope: !331)
!463 = !DILocation(line: 0, scope: !364, inlinedAt: !464)
!464 = distinct !DILocation(line: 153, column: 15, scope: !331)
!465 = !DILocation(line: 196, column: 13, scope: !364, inlinedAt: !464)
!466 = !DILocation(line: 196, column: 3, scope: !364, inlinedAt: !464)
!467 = !DILocation(line: 196, column: 26, scope: !364, inlinedAt: !464)
!468 = !DILocation(line: 150, column: 30, scope: !332)
!469 = distinct !{!469, !456, !470, !236}
!470 = !DILocation(line: 154, column: 13, scope: !333)
!471 = !DILocation(line: 157, column: 11, scope: !327)
!472 = !DILocation(line: 158, column: 11, scope: !327)
!473 = !DILocation(line: 133, column: 30, scope: !328)
!474 = !DILocation(line: 133, column: 21, scope: !328)
!475 = distinct !{!475, !407, !476, !236}
!476 = !DILocation(line: 159, column: 9, scope: !329)
!477 = !DILocation(line: 162, column: 7, scope: !337)
!478 = !DILocation(line: 164, column: 31, scope: !335)
!479 = !DILocation(line: 164, column: 42, scope: !335)
!480 = !DILocation(line: 164, column: 29, scope: !335)
!481 = !DILocation(line: 0, scope: !335)
!482 = !DILocation(line: 0, scope: !364, inlinedAt: !483)
!483 = distinct !DILocation(line: 165, column: 11, scope: !335)
!484 = !DILocation(line: 196, column: 13, scope: !364, inlinedAt: !483)
!485 = !DILocation(line: 196, column: 3, scope: !364, inlinedAt: !483)
!486 = !DILocation(line: 196, column: 26, scope: !364, inlinedAt: !483)
!487 = !DILocation(line: 162, column: 26, scope: !336)
!488 = !DILocation(line: 165, column: 45, scope: !335)
!489 = distinct !{!489, !477, !490, !236}
!490 = !DILocation(line: 167, column: 9, scope: !337)
!491 = !DILocation(line: 170, column: 7, scope: !307)
!492 = !DILocation(line: 172, column: 20, scope: !307)
!493 = !DILocation(line: 172, column: 18, scope: !307)
!494 = !DILocation(line: 172, column: 53, scope: !307)
!495 = !DILocation(line: 172, column: 46, scope: !307)
!496 = !DILocation(line: 173, column: 16, scope: !497)
!497 = distinct !DILexicalBlock(scope: !307, file: !2, line: 173, column: 11)
!498 = !DILocation(line: 173, column: 11, scope: !307)
!499 = !DILocation(line: 175, column: 11, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !2, line: 174, column: 9)
!501 = !DILocation(line: 177, column: 9, scope: !500)
!502 = !DILocation(line: 179, column: 17, scope: !307)
!503 = !DILocation(line: 182, column: 5, scope: !308)
!504 = !DILocation(line: 0, scope: !308)
!505 = !DILocation(line: 183, column: 1, scope: !293)
!506 = !DISubprogram(name: "gsl_error", scope: !31, file: !31, line: 77, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509, !509, !32, !32}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!511 = !DISubprogram(name: "gsl_vector_subvector", scope: !114, file: !114, line: 103, type: !512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!512 = !DISubroutineType(types: !513)
!513 = !{!311, !112, !75, !75}
!514 = !DISubprogram(name: "gsl_vector_memcpy", scope: !114, file: !114, line: 136, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!515 = !DISubroutineType(types: !516)
!516 = !{!32, !112, !387}
!517 = !DISubprogram(name: "gsl_blas_dasum", scope: !518, file: !518, line: 92, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!518 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!519 = !DISubroutineType(types: !520)
!520 = !{!74, !387}
!521 = !DISubprogram(name: "gsl_blas_idamax", scope: !518, file: !518, line: 100, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!522 = !DISubroutineType(types: !523)
!523 = !{!524, !387}
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_INDEX_t", file: !135, line: 42, baseType: !75)
!525 = !DISubprogram(name: "gsl_vector_set_zero", scope: !114, file: !114, line: 126, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !112}
!528 = distinct !DISubprogram(name: "condest_invtriu", scope: !2, file: !2, line: 287, type: !297, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !529)
!529 = !{!530, !531, !532, !533}
!530 = !DILocalVariable(name: "TransA", arg: 1, scope: !528, file: !2, line: 287, type: !299)
!531 = !DILocalVariable(name: "x", arg: 2, scope: !528, file: !2, line: 287, type: !112)
!532 = !DILocalVariable(name: "params", arg: 3, scope: !528, file: !2, line: 287, type: !78)
!533 = !DILocalVariable(name: "A", scope: !528, file: !2, line: 289, type: !79)
!534 = !DILocation(line: 0, scope: !528)
!535 = !DILocation(line: 290, column: 10, scope: !528)
!536 = !DILocation(line: 290, column: 3, scope: !528)
!537 = distinct !DISubprogram(name: "condest_invtril", scope: !2, file: !2, line: 295, type: !297, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !538)
!538 = !{!539, !540, !541, !542}
!539 = !DILocalVariable(name: "TransA", arg: 1, scope: !537, file: !2, line: 295, type: !299)
!540 = !DILocalVariable(name: "x", arg: 2, scope: !537, file: !2, line: 295, type: !112)
!541 = !DILocalVariable(name: "params", arg: 3, scope: !537, file: !2, line: 295, type: !78)
!542 = !DILocalVariable(name: "A", scope: !537, file: !2, line: 297, type: !79)
!543 = !DILocation(line: 0, scope: !537)
!544 = !DILocation(line: 298, column: 10, scope: !537)
!545 = !DILocation(line: 298, column: 3, scope: !537)
!546 = !DISubprogram(name: "gsl_blas_dtrsv", scope: !518, file: !518, line: 217, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!547 = !DISubroutineType(types: !548)
!548 = !{!32, !134, !299, !549, !110, !112}
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_DIAG_t", file: !135, line: 46, baseType: !69)
