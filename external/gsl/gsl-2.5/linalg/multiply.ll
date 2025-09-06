; ModuleID = 'multiply.c'
source_filename = "multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }

@.str = private unnamed_addr constant [32 x i8] c"matrix sizes are not conformant\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"multiply.c\00", align 1, !dbg !7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_matmult(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !69 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !98, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !99, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !100, metadata !DIExpression()), !dbg !109
  %4 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !110
  %5 = load i64, ptr %4, align 8, !dbg !110, !tbaa !111
  %6 = load i64, ptr %1, align 8, !dbg !118, !tbaa !119
  %7 = icmp eq i64 %5, %6, !dbg !120
  br i1 %7, label %8, label %35, !dbg !121

8:                                                ; preds = %3
  %9 = load i64, ptr %0, align 8, !dbg !122, !tbaa !119
  %10 = load i64, ptr %2, align 8, !dbg !123, !tbaa !119
  %11 = icmp eq i64 %9, %10, !dbg !124
  br i1 %11, label %12, label %35, !dbg !125

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !126
  %14 = load i64, ptr %13, align 8, !dbg !126, !tbaa !111
  %15 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !127
  %16 = load i64, ptr %15, align 8, !dbg !127, !tbaa !111
  %17 = icmp eq i64 %14, %16, !dbg !128
  br i1 %17, label %18, label %35, !dbg !129

18:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i64 0, metadata !106, metadata !DIExpression()), !dbg !130
  %19 = icmp eq i64 %9, 0, !dbg !131
  br i1 %19, label %120, label %20, !dbg !134

20:                                               ; preds = %18
  %21 = icmp eq i64 %14, 0
  %22 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %23 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %24 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %25 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %26 = icmp ugt i64 %5, 1
  %27 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %28 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %29 = add i64 %5, -1, !dbg !134
  %30 = add i64 %5, -2, !dbg !134
  %31 = and i64 %29, 3
  %32 = icmp ult i64 %30, 3
  %33 = and i64 %29, -4
  %34 = icmp eq i64 %31, 0
  br label %36, !dbg !134

35:                                               ; preds = %3, %8, %12
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 34, i32 noundef 19) #3, !dbg !135
  br label %120, !dbg !135

36:                                               ; preds = %20, %117
  %37 = phi i64 [ 0, %20 ], [ %118, %117 ]
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !106, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !130
  br i1 %21, label %117, label %38, !dbg !138

38:                                               ; preds = %36
  %39 = load ptr, ptr %22, align 8, !tbaa !141
  %40 = load i64, ptr %23, align 8, !tbaa !142
  %41 = mul i64 %40, %37
  %42 = getelementptr double, ptr %39, i64 %41
  %43 = load ptr, ptr %24, align 8, !tbaa !141
  %44 = load ptr, ptr %27, align 8, !tbaa !141
  %45 = load i64, ptr %28, align 8, !tbaa !142
  %46 = mul i64 %45, %37
  %47 = getelementptr double, ptr %44, i64 %46
  br label %48, !dbg !138

48:                                               ; preds = %38, %112
  %49 = phi i64 [ 0, %38 ], [ %115, %112 ]
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !107, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !149, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i64 0, metadata !150, metadata !DIExpression()), !dbg !151
  %50 = load double, ptr %42, align 8, !dbg !155, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %50, metadata !101, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !143, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata i64 0, metadata !149, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !150, metadata !DIExpression()), !dbg !158
  %51 = getelementptr double, ptr %43, i64 %49, !dbg !160
  %52 = load double, ptr %51, align 8, !dbg !160, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %52, metadata !104, metadata !DIExpression()), !dbg !130
  %53 = fmul double %50, %52, !dbg !161
  tail call void @llvm.dbg.value(metadata double %53, metadata !105, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i64 1, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i64 1, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %53, metadata !105, metadata !DIExpression()), !dbg !130
  br i1 %26, label %54, label %112, !dbg !162

54:                                               ; preds = %48
  %55 = load i64, ptr %25, align 8, !tbaa !142
  br i1 %32, label %94, label %56, !dbg !162

56:                                               ; preds = %54, %56
  %57 = phi i64 [ %91, %56 ], [ 1, %54 ]
  %58 = phi double [ %90, %56 ], [ %53, %54 ]
  %59 = phi i64 [ %92, %56 ], [ 0, %54 ]
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %58, metadata !105, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !149, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !150, metadata !DIExpression()), !dbg !164
  %60 = getelementptr double, ptr %42, i64 %57, !dbg !168
  %61 = load double, ptr %60, align 8, !dbg !168, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %61, metadata !101, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !143, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !149, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !150, metadata !DIExpression()), !dbg !169
  %62 = mul i64 %55, %57, !dbg !171
  %63 = getelementptr double, ptr %51, i64 %62, !dbg !172
  %64 = load double, ptr %63, align 8, !dbg !172, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %64, metadata !104, metadata !DIExpression()), !dbg !130
  %65 = fmul double %61, %64, !dbg !173
  %66 = fadd double %58, %65, !dbg !174
  tail call void @llvm.dbg.value(metadata double %66, metadata !105, metadata !DIExpression()), !dbg !130
  %67 = add nuw nsw i64 %57, 1, !dbg !175
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %66, metadata !105, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !149, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !150, metadata !DIExpression()), !dbg !164
  %68 = getelementptr double, ptr %42, i64 %67, !dbg !168
  %69 = load double, ptr %68, align 8, !dbg !168, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %69, metadata !101, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !143, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !149, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !150, metadata !DIExpression()), !dbg !169
  %70 = mul i64 %55, %67, !dbg !171
  %71 = getelementptr double, ptr %51, i64 %70, !dbg !172
  %72 = load double, ptr %71, align 8, !dbg !172, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %72, metadata !104, metadata !DIExpression()), !dbg !130
  %73 = fmul double %69, %72, !dbg !173
  %74 = fadd double %66, %73, !dbg !174
  tail call void @llvm.dbg.value(metadata double %74, metadata !105, metadata !DIExpression()), !dbg !130
  %75 = add nuw nsw i64 %57, 2, !dbg !175
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %74, metadata !105, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !149, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !150, metadata !DIExpression()), !dbg !164
  %76 = getelementptr double, ptr %42, i64 %75, !dbg !168
  %77 = load double, ptr %76, align 8, !dbg !168, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %77, metadata !101, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !143, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !149, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !150, metadata !DIExpression()), !dbg !169
  %78 = mul i64 %55, %75, !dbg !171
  %79 = getelementptr double, ptr %51, i64 %78, !dbg !172
  %80 = load double, ptr %79, align 8, !dbg !172, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %80, metadata !104, metadata !DIExpression()), !dbg !130
  %81 = fmul double %77, %80, !dbg !173
  %82 = fadd double %74, %81, !dbg !174
  tail call void @llvm.dbg.value(metadata double %82, metadata !105, metadata !DIExpression()), !dbg !130
  %83 = add nuw i64 %57, 3, !dbg !175
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %82, metadata !105, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !149, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !150, metadata !DIExpression()), !dbg !164
  %84 = getelementptr double, ptr %42, i64 %83, !dbg !168
  %85 = load double, ptr %84, align 8, !dbg !168, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %85, metadata !101, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !143, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !149, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !150, metadata !DIExpression()), !dbg !169
  %86 = mul i64 %55, %83, !dbg !171
  %87 = getelementptr double, ptr %51, i64 %86, !dbg !172
  %88 = load double, ptr %87, align 8, !dbg !172, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %88, metadata !104, metadata !DIExpression()), !dbg !130
  %89 = fmul double %85, %88, !dbg !173
  %90 = fadd double %82, %89, !dbg !174
  tail call void @llvm.dbg.value(metadata double %90, metadata !105, metadata !DIExpression()), !dbg !130
  %91 = add nuw i64 %57, 4, !dbg !175
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !108, metadata !DIExpression()), !dbg !130
  %92 = add i64 %59, 4, !dbg !162
  %93 = icmp eq i64 %92, %33, !dbg !162
  br i1 %93, label %94, label %56, !dbg !162, !llvm.loop !176

94:                                               ; preds = %56, %54
  %95 = phi double [ undef, %54 ], [ %90, %56 ]
  %96 = phi i64 [ 1, %54 ], [ %91, %56 ]
  %97 = phi double [ %53, %54 ], [ %90, %56 ]
  br i1 %34, label %112, label %98, !dbg !162

98:                                               ; preds = %94, %98
  %99 = phi i64 [ %109, %98 ], [ %96, %94 ]
  %100 = phi double [ %108, %98 ], [ %97, %94 ]
  %101 = phi i64 [ %110, %98 ], [ 0, %94 ]
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %100, metadata !105, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !149, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !150, metadata !DIExpression()), !dbg !164
  %102 = getelementptr double, ptr %42, i64 %99, !dbg !168
  %103 = load double, ptr %102, align 8, !dbg !168, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %103, metadata !101, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !143, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !149, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !150, metadata !DIExpression()), !dbg !169
  %104 = mul i64 %55, %99, !dbg !171
  %105 = getelementptr double, ptr %51, i64 %104, !dbg !172
  %106 = load double, ptr %105, align 8, !dbg !172, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %106, metadata !104, metadata !DIExpression()), !dbg !130
  %107 = fmul double %103, %106, !dbg !173
  %108 = fadd double %100, %107, !dbg !174
  tail call void @llvm.dbg.value(metadata double %108, metadata !105, metadata !DIExpression()), !dbg !130
  %109 = add nuw i64 %99, 1, !dbg !175
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !108, metadata !DIExpression()), !dbg !130
  %110 = add i64 %101, 1, !dbg !162
  %111 = icmp eq i64 %110, %31, !dbg !162
  br i1 %111, label %112, label %98, !dbg !162, !llvm.loop !179

112:                                              ; preds = %94, %98, %48
  %113 = phi double [ %53, %48 ], [ %95, %94 ], [ %108, %98 ], !dbg !181
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !182, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !188, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !189, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata double %113, metadata !190, metadata !DIExpression()), !dbg !191
  %114 = getelementptr double, ptr %47, i64 %49, !dbg !193
  store double %113, ptr %114, align 8, !dbg !194, !tbaa !156
  %115 = add nuw i64 %49, 1, !dbg !195
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !107, metadata !DIExpression()), !dbg !130
  %116 = icmp eq i64 %115, %14, !dbg !196
  br i1 %116, label %117, label %48, !dbg !138, !llvm.loop !197

117:                                              ; preds = %112, %36
  %118 = add nuw i64 %37, 1, !dbg !199
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !106, metadata !DIExpression()), !dbg !130
  %119 = icmp eq i64 %118, %9, !dbg !131
  br i1 %119, label %120, label %36, !dbg !134, !llvm.loop !200

120:                                              ; preds = %117, %18, %35
  %121 = phi i32 [ 19, %35 ], [ 0, %18 ], [ 0, %117 ], !dbg !202
  ret i32 %121, !dbg !203
}

declare !dbg !204 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_matmult_mod(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 !dbg !209 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !214, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !215, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !216, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !217, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !218, metadata !DIExpression()), !dbg !266
  %6 = or i32 %3, %1, !dbg !267
  %7 = icmp eq i32 %6, 0, !dbg !267
  br i1 %7, label %8, label %10, !dbg !267

8:                                                ; preds = %5
  %9 = tail call i32 @gsl_linalg_matmult(ptr noundef %0, ptr noundef %2, ptr noundef %4), !dbg !268, !range !270
  br label %140, !dbg !271

10:                                               ; preds = %5
  %11 = load i64, ptr %0, align 8, !dbg !272, !tbaa !119
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !219, metadata !DIExpression()), !dbg !273
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !274
  %13 = load i64, ptr %12, align 8, !dbg !274, !tbaa !111
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !222, metadata !DIExpression()), !dbg !273
  %14 = load i64, ptr %2, align 8, !dbg !275, !tbaa !119
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !223, metadata !DIExpression()), !dbg !273
  %15 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !276
  %16 = load i64, ptr %15, align 8, !dbg !276, !tbaa !111
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !224, metadata !DIExpression()), !dbg !273
  %17 = load i64, ptr %4, align 8, !dbg !277, !tbaa !119
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !225, metadata !DIExpression()), !dbg !273
  %18 = getelementptr inbounds %struct.gsl_matrix, ptr %4, i64 0, i32 1, !dbg !278
  %19 = load i64, ptr %18, align 8, !dbg !278, !tbaa !111
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !226, metadata !DIExpression()), !dbg !273
  %20 = and i32 %1, 1, !dbg !279
  %21 = icmp eq i32 %20, 0, !dbg !279
  %22 = select i1 %21, i64 %13, i64 %11, !dbg !280
  %23 = select i1 %21, i64 %11, i64 %13, !dbg !280
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !219, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !222, metadata !DIExpression()), !dbg !273
  %24 = and i32 %3, 1, !dbg !281
  %25 = icmp eq i32 %24, 0, !dbg !281
  %26 = select i1 %25, i64 %16, i64 %14, !dbg !282
  %27 = select i1 %25, i64 %14, i64 %16, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !223, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !224, metadata !DIExpression()), !dbg !273
  %28 = icmp eq i64 %22, %27, !dbg !283
  %29 = icmp eq i64 %23, %17
  %30 = select i1 %28, i1 %29, i1 false, !dbg !284
  %31 = icmp eq i64 %26, %19
  %32 = select i1 %30, i1 %31, i1 false, !dbg !284
  br i1 %32, label %33, label %49, !dbg !284

33:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata i64 0, metadata !238, metadata !DIExpression()), !dbg !285
  %34 = icmp eq i64 %17, 0, !dbg !286
  br i1 %34, label %140, label %35, !dbg !287

35:                                               ; preds = %33
  %36 = icmp eq i64 %19, 0
  %37 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %38 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %39 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %40 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %41 = icmp ugt i64 %22, 1
  %42 = getelementptr inbounds %struct.gsl_matrix, ptr %4, i64 0, i32 3
  %43 = getelementptr inbounds %struct.gsl_matrix, ptr %4, i64 0, i32 2
  %44 = add i64 %22, -1, !dbg !287
  %45 = and i64 %44, 1
  %46 = icmp eq i64 %22, 2
  %47 = and i64 %44, -2
  %48 = icmp eq i64 %45, 0
  br label %50, !dbg !287

49:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 89, i32 noundef 19) #3, !dbg !288
  br label %140, !dbg !288

50:                                               ; preds = %35, %137
  %51 = phi i64 [ 0, %35 ], [ %138, %137 ]
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !238, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 0, metadata !239, metadata !DIExpression()), !dbg !285
  br i1 %36, label %137, label %52, !dbg !291

52:                                               ; preds = %50
  %53 = select i1 %21, i64 %51, i64 0
  %54 = select i1 %21, i64 0, i64 %51
  %55 = load ptr, ptr %37, align 8, !tbaa !141
  %56 = load i64, ptr %38, align 8, !tbaa !142
  %57 = mul i64 %56, %53
  %58 = getelementptr double, ptr %55, i64 %57
  %59 = getelementptr double, ptr %58, i64 %54
  %60 = load ptr, ptr %39, align 8, !tbaa !141
  %61 = load i64, ptr %40, align 8, !tbaa !142
  %62 = load ptr, ptr %42, align 8, !tbaa !141
  %63 = load i64, ptr %43, align 8, !tbaa !142
  %64 = mul i64 %63, %51
  %65 = getelementptr double, ptr %62, i64 %64
  br label %66, !dbg !291

66:                                               ; preds = %52, %132
  %67 = phi i64 [ 0, %52 ], [ %135, %132 ]
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !239, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !241, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 0, metadata !242, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 0, metadata !243, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !244, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !242, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !241, metadata !DIExpression()), !dbg !285
  %68 = select i1 %25, i64 0, i64 %67, !dbg !292
  %69 = select i1 %25, i64 %67, i64 0, !dbg !292
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !244, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !243, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !293
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !293
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !150, metadata !DIExpression()), !dbg !293
  %70 = load double, ptr %59, align 8, !dbg !295, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %70, metadata !233, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !143, metadata !DIExpression()), !dbg !296
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !149, metadata !DIExpression()), !dbg !296
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !150, metadata !DIExpression()), !dbg !296
  %71 = mul i64 %61, %68, !dbg !298
  %72 = getelementptr double, ptr %60, i64 %71, !dbg !299
  %73 = getelementptr double, ptr %72, i64 %69, !dbg !299
  %74 = load double, ptr %73, align 8, !dbg !299, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %74, metadata !236, metadata !DIExpression()), !dbg !285
  %75 = fmul double %70, %74, !dbg !300
  tail call void @llvm.dbg.value(metadata double %75, metadata !237, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 1, metadata !240, metadata !DIExpression()), !dbg !285
  br i1 %41, label %76, label %132, !dbg !301

76:                                               ; preds = %66
  br i1 %46, label %113, label %77, !dbg !301

77:                                               ; preds = %76, %77
  %78 = phi i64 [ %110, %77 ], [ 1, %76 ]
  %79 = phi double [ %109, %77 ], [ %75, %76 ]
  %80 = phi i64 [ %111, %77 ], [ 0, %76 ]
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !240, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata double %79, metadata !237, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !241, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !242, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !243, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !244, metadata !DIExpression()), !dbg !285
  %81 = select i1 %21, i64 %51, i64 %78, !dbg !302
  %82 = select i1 %21, i64 %78, i64 %51, !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !242, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !241, metadata !DIExpression()), !dbg !285
  %83 = select i1 %25, i64 %78, i64 %67, !dbg !303
  %84 = select i1 %25, i64 %67, i64 %78, !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !244, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !243, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !149, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !150, metadata !DIExpression()), !dbg !304
  %85 = mul i64 %81, %56, !dbg !306
  %86 = getelementptr double, ptr %55, i64 %85, !dbg !307
  %87 = getelementptr double, ptr %86, i64 %82, !dbg !307
  %88 = load double, ptr %87, align 8, !dbg !307, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %88, metadata !233, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !143, metadata !DIExpression()), !dbg !308
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !149, metadata !DIExpression()), !dbg !308
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !150, metadata !DIExpression()), !dbg !308
  %89 = mul i64 %83, %61, !dbg !310
  %90 = getelementptr double, ptr %60, i64 %89, !dbg !311
  %91 = getelementptr double, ptr %90, i64 %84, !dbg !311
  %92 = load double, ptr %91, align 8, !dbg !311, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %92, metadata !236, metadata !DIExpression()), !dbg !285
  %93 = fmul double %88, %92, !dbg !312
  %94 = fadd double %79, %93, !dbg !313
  tail call void @llvm.dbg.value(metadata double %94, metadata !237, metadata !DIExpression()), !dbg !285
  %95 = add nuw i64 %78, 1, !dbg !314
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !240, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !240, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata double %94, metadata !237, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !241, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !242, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !243, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !244, metadata !DIExpression()), !dbg !285
  %96 = select i1 %21, i64 %51, i64 %95, !dbg !302
  %97 = select i1 %21, i64 %95, i64 %51, !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !242, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !241, metadata !DIExpression()), !dbg !285
  %98 = select i1 %25, i64 %95, i64 %67, !dbg !303
  %99 = select i1 %25, i64 %67, i64 %95, !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !244, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !243, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !149, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !150, metadata !DIExpression()), !dbg !304
  %100 = mul i64 %96, %56, !dbg !306
  %101 = getelementptr double, ptr %55, i64 %100, !dbg !307
  %102 = getelementptr double, ptr %101, i64 %97, !dbg !307
  %103 = load double, ptr %102, align 8, !dbg !307, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %103, metadata !233, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !143, metadata !DIExpression()), !dbg !308
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !149, metadata !DIExpression()), !dbg !308
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !150, metadata !DIExpression()), !dbg !308
  %104 = mul i64 %98, %61, !dbg !310
  %105 = getelementptr double, ptr %60, i64 %104, !dbg !311
  %106 = getelementptr double, ptr %105, i64 %99, !dbg !311
  %107 = load double, ptr %106, align 8, !dbg !311, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %107, metadata !236, metadata !DIExpression()), !dbg !285
  %108 = fmul double %103, %107, !dbg !312
  %109 = fadd double %94, %108, !dbg !313
  tail call void @llvm.dbg.value(metadata double %109, metadata !237, metadata !DIExpression()), !dbg !285
  %110 = add nuw i64 %78, 2, !dbg !314
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !240, metadata !DIExpression()), !dbg !285
  %111 = add i64 %80, 2, !dbg !301
  %112 = icmp eq i64 %111, %47, !dbg !301
  br i1 %112, label %113, label %77, !dbg !301, !llvm.loop !315

113:                                              ; preds = %77, %76
  %114 = phi double [ undef, %76 ], [ %109, %77 ]
  %115 = phi i64 [ 1, %76 ], [ %110, %77 ]
  %116 = phi double [ %75, %76 ], [ %109, %77 ]
  br i1 %48, label %132, label %117, !dbg !301

117:                                              ; preds = %113
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !240, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata double %116, metadata !237, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !241, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !242, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !243, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !244, metadata !DIExpression()), !dbg !285
  %118 = select i1 %21, i64 %51, i64 %115, !dbg !302
  %119 = select i1 %21, i64 %115, i64 %51, !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !242, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !241, metadata !DIExpression()), !dbg !285
  %120 = select i1 %25, i64 %115, i64 %67, !dbg !303
  %121 = select i1 %25, i64 %67, i64 %115, !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !244, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !243, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !149, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !150, metadata !DIExpression()), !dbg !304
  %122 = mul i64 %118, %56, !dbg !306
  %123 = getelementptr double, ptr %55, i64 %122, !dbg !307
  %124 = getelementptr double, ptr %123, i64 %119, !dbg !307
  %125 = load double, ptr %124, align 8, !dbg !307, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %125, metadata !233, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !143, metadata !DIExpression()), !dbg !308
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !149, metadata !DIExpression()), !dbg !308
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !150, metadata !DIExpression()), !dbg !308
  %126 = mul i64 %120, %61, !dbg !310
  %127 = getelementptr double, ptr %60, i64 %126, !dbg !311
  %128 = getelementptr double, ptr %127, i64 %121, !dbg !311
  %129 = load double, ptr %128, align 8, !dbg !311, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %129, metadata !236, metadata !DIExpression()), !dbg !285
  %130 = fmul double %125, %129, !dbg !312
  %131 = fadd double %116, %130, !dbg !313
  tail call void @llvm.dbg.value(metadata double %131, metadata !237, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !240, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !285
  br label %132, !dbg !317

132:                                              ; preds = %117, %113, %66
  %133 = phi double [ %75, %66 ], [ %114, %113 ], [ %131, %117 ], !dbg !319
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !182, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !188, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !189, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata double %133, metadata !190, metadata !DIExpression()), !dbg !320
  %134 = getelementptr double, ptr %65, i64 %67, !dbg !317
  store double %133, ptr %134, align 8, !dbg !321, !tbaa !156
  %135 = add nuw i64 %67, 1, !dbg !322
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !239, metadata !DIExpression()), !dbg !285
  %136 = icmp eq i64 %135, %19, !dbg !323
  br i1 %136, label %137, label %66, !dbg !291, !llvm.loop !324

137:                                              ; preds = %132, %50
  %138 = add nuw i64 %51, 1, !dbg !326
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !238, metadata !DIExpression()), !dbg !285
  %139 = icmp eq i64 %138, %17, !dbg !286
  br i1 %139, label %140, label %50, !dbg !287, !llvm.loop !327

140:                                              ; preds = %137, %33, %49, %8
  %141 = phi i32 [ %9, %8 ], [ 19, %49 ], [ 0, %33 ], [ 0, %137 ], !dbg !329
  ret i32 %141, !dbg !330
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "multiply.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "4a048db174d920122385e7aebe9ab1fa")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 32)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, globals: !60, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14, !53}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 39, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!18 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!19 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!20 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!21 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!22 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!23 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!24 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!25 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!26 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!27 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!28 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!29 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!30 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!31 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!32 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!33 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!34 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!35 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!36 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!37 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!38 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!39 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!40 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!41 = !DIEnumerator(name: "GSL_ESING", value: 21)
!42 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!43 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!44 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!45 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!46 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!47 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!48 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!49 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!50 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!51 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!52 = !DIEnumerator(name: "GSL_EOF", value: 32)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 44, baseType: !55, size: 32, elements: !56)
!54 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "GSL_LINALG_MOD_NONE", value: 0)
!58 = !DIEnumerator(name: "GSL_LINALG_MOD_TRANSPOSE", value: 1)
!59 = !DIEnumerator(name: "GSL_LINALG_MOD_CONJUGATE", value: 2)
!60 = !{!0, !7}
!61 = !{i32 7, !"Dwarf Version", i32 5}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{i32 8, !"PIC Level", i32 2}
!65 = !{i32 7, !"PIE Level", i32 2}
!66 = !{i32 7, !"uwtable", i32 2}
!67 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!68 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!69 = distinct !DISubprogram(name: "gsl_linalg_matmult", scope: !2, file: !2, line: 30, type: !70, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !97)
!70 = !DISubroutineType(types: !71)
!71 = !{!16, !72, !72, !96}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !75, line: 50, baseType: !76)
!75 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 42, size: 384, elements: !77)
!77 = !{!78, !82, !83, !84, !87, !95}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !76, file: !75, line: 44, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 18, baseType: !81)
!80 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!81 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !76, file: !75, line: 45, baseType: !79, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !76, file: !75, line: 46, baseType: !79, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !76, file: !75, line: 47, baseType: !85, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !76, file: !75, line: 48, baseType: !88, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !90, line: 44, baseType: !91)
!90 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !90, line: 38, size: 128, elements: !92)
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !91, file: !90, line: 40, baseType: !79, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !91, file: !90, line: 41, baseType: !85, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !76, file: !75, line: 49, baseType: !16, size: 32, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!97 = !{!98, !99, !100, !101, !104, !105, !106, !107, !108}
!98 = !DILocalVariable(name: "A", arg: 1, scope: !69, file: !2, line: 30, type: !72)
!99 = !DILocalVariable(name: "B", arg: 2, scope: !69, file: !2, line: 30, type: !72)
!100 = !DILocalVariable(name: "C", arg: 3, scope: !69, file: !2, line: 30, type: !96)
!101 = !DILocalVariable(name: "a", scope: !102, file: !2, line: 38, type: !86)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 37, column: 5)
!103 = distinct !DILexicalBlock(scope: !69, file: !2, line: 32, column: 7)
!104 = !DILocalVariable(name: "b", scope: !102, file: !2, line: 38, type: !86)
!105 = !DILocalVariable(name: "temp", scope: !102, file: !2, line: 39, type: !86)
!106 = !DILocalVariable(name: "i", scope: !102, file: !2, line: 40, type: !79)
!107 = !DILocalVariable(name: "j", scope: !102, file: !2, line: 40, type: !79)
!108 = !DILocalVariable(name: "k", scope: !102, file: !2, line: 40, type: !79)
!109 = !DILocation(line: 0, scope: !69)
!110 = !DILocation(line: 32, column: 10, scope: !103)
!111 = !{!112, !113, i64 8}
!112 = !{!"", !113, i64 0, !113, i64 8, !113, i64 16, !116, i64 24, !116, i64 32, !117, i64 40}
!113 = !{!"long", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !{!"any pointer", !114, i64 0}
!117 = !{!"int", !114, i64 0}
!118 = !DILocation(line: 32, column: 22, scope: !103)
!119 = !{!112, !113, i64 0}
!120 = !DILocation(line: 32, column: 16, scope: !103)
!121 = !DILocation(line: 32, column: 28, scope: !103)
!122 = !DILocation(line: 32, column: 34, scope: !103)
!123 = !DILocation(line: 32, column: 46, scope: !103)
!124 = !DILocation(line: 32, column: 40, scope: !103)
!125 = !DILocation(line: 32, column: 52, scope: !103)
!126 = !DILocation(line: 32, column: 58, scope: !103)
!127 = !DILocation(line: 32, column: 70, scope: !103)
!128 = !DILocation(line: 32, column: 64, scope: !103)
!129 = !DILocation(line: 32, column: 7, scope: !69)
!130 = !DILocation(line: 0, scope: !102)
!131 = !DILocation(line: 42, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !2, line: 42, column: 7)
!133 = distinct !DILexicalBlock(scope: !102, file: !2, line: 42, column: 7)
!134 = !DILocation(line: 42, column: 7, scope: !133)
!135 = !DILocation(line: 34, column: 7, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !2, line: 34, column: 7)
!137 = distinct !DILexicalBlock(scope: !103, file: !2, line: 33, column: 5)
!138 = !DILocation(line: 44, column: 11, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !2, line: 44, column: 11)
!140 = distinct !DILexicalBlock(scope: !132, file: !2, line: 43, column: 9)
!141 = !{!112, !116, i64 24}
!142 = !{!112, !113, i64 16}
!143 = !DILocalVariable(name: "m", arg: 1, scope: !144, file: !75, line: 270, type: !72)
!144 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !75, file: !75, line: 270, type: !145, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !148)
!145 = !DISubroutineType(types: !146)
!146 = !{!86, !72, !147, !147}
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!148 = !{!143, !149, !150}
!149 = !DILocalVariable(name: "i", arg: 2, scope: !144, file: !75, line: 270, type: !147)
!150 = !DILocalVariable(name: "j", arg: 3, scope: !144, file: !75, line: 270, type: !147)
!151 = !DILocation(line: 0, scope: !144, inlinedAt: !152)
!152 = distinct !DILocation(line: 46, column: 19, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !2, line: 45, column: 13)
!154 = distinct !DILexicalBlock(scope: !139, file: !2, line: 44, column: 11)
!155 = !DILocation(line: 285, column: 10, scope: !144, inlinedAt: !152)
!156 = !{!157, !157, i64 0}
!157 = !{!"double", !114, i64 0}
!158 = !DILocation(line: 0, scope: !144, inlinedAt: !159)
!159 = distinct !DILocation(line: 47, column: 19, scope: !153)
!160 = !DILocation(line: 285, column: 10, scope: !144, inlinedAt: !159)
!161 = !DILocation(line: 48, column: 24, scope: !153)
!162 = !DILocation(line: 49, column: 15, scope: !163)
!163 = distinct !DILexicalBlock(scope: !153, file: !2, line: 49, column: 15)
!164 = !DILocation(line: 0, scope: !144, inlinedAt: !165)
!165 = distinct !DILocation(line: 51, column: 23, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 50, column: 17)
!167 = distinct !DILexicalBlock(scope: !163, file: !2, line: 49, column: 15)
!168 = !DILocation(line: 285, column: 10, scope: !144, inlinedAt: !165)
!169 = !DILocation(line: 0, scope: !144, inlinedAt: !170)
!170 = distinct !DILocation(line: 52, column: 23, scope: !166)
!171 = !DILocation(line: 285, column: 20, scope: !144, inlinedAt: !170)
!172 = !DILocation(line: 285, column: 10, scope: !144, inlinedAt: !170)
!173 = !DILocation(line: 53, column: 29, scope: !166)
!174 = !DILocation(line: 53, column: 24, scope: !166)
!175 = !DILocation(line: 49, column: 42, scope: !167)
!176 = distinct !{!176, !162, !177, !178}
!177 = !DILocation(line: 54, column: 17, scope: !163)
!178 = !{!"llvm.loop.mustprogress"}
!179 = distinct !{!179, !180}
!180 = !{!"llvm.loop.unroll.disable"}
!181 = !DILocation(line: 0, scope: !153)
!182 = !DILocalVariable(name: "m", arg: 1, scope: !183, file: !75, line: 290, type: !96)
!183 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !75, file: !75, line: 290, type: !184, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !187)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !96, !147, !147, !186}
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!187 = !{!182, !188, !189, !190}
!188 = !DILocalVariable(name: "i", arg: 2, scope: !183, file: !75, line: 290, type: !147)
!189 = !DILocalVariable(name: "j", arg: 3, scope: !183, file: !75, line: 290, type: !147)
!190 = !DILocalVariable(name: "x", arg: 4, scope: !183, file: !75, line: 290, type: !186)
!191 = !DILocation(line: 0, scope: !183, inlinedAt: !192)
!192 = distinct !DILocation(line: 55, column: 15, scope: !153)
!193 = !DILocation(line: 305, column: 3, scope: !183, inlinedAt: !192)
!194 = !DILocation(line: 305, column: 27, scope: !183, inlinedAt: !192)
!195 = !DILocation(line: 44, column: 38, scope: !154)
!196 = !DILocation(line: 44, column: 25, scope: !154)
!197 = distinct !{!197, !138, !198, !178}
!198 = !DILocation(line: 56, column: 13, scope: !139)
!199 = !DILocation(line: 42, column: 34, scope: !132)
!200 = distinct !{!200, !134, !201, !178}
!201 = !DILocation(line: 57, column: 9, scope: !133)
!202 = !DILocation(line: 0, scope: !103)
!203 = !DILocation(line: 61, column: 1, scope: !69)
!204 = !DISubprogram(name: "gsl_error", scope: !15, file: !15, line: 77, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !207, !207, !16, !16}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!209 = distinct !DISubprogram(name: "gsl_linalg_matmult_mod", scope: !2, file: !2, line: 65, type: !210, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !213)
!210 = !DISubroutineType(types: !211)
!211 = !{!16, !72, !212, !72, !212, !96}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_linalg_matrix_mod_t", file: !54, line: 50, baseType: !53)
!213 = !{!214, !215, !216, !217, !218, !219, !222, !223, !224, !225, !226, !227, !230, !233, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !254, !257, !263}
!214 = !DILocalVariable(name: "A", arg: 1, scope: !209, file: !2, line: 65, type: !72)
!215 = !DILocalVariable(name: "modA", arg: 2, scope: !209, file: !2, line: 65, type: !212)
!216 = !DILocalVariable(name: "B", arg: 3, scope: !209, file: !2, line: 66, type: !72)
!217 = !DILocalVariable(name: "modB", arg: 4, scope: !209, file: !2, line: 66, type: !212)
!218 = !DILocalVariable(name: "C", arg: 5, scope: !209, file: !2, line: 67, type: !96)
!219 = !DILocalVariable(name: "dim1_A", scope: !220, file: !2, line: 75, type: !79)
!220 = distinct !DILexicalBlock(scope: !221, file: !2, line: 74, column: 5)
!221 = distinct !DILexicalBlock(scope: !209, file: !2, line: 69, column: 7)
!222 = !DILocalVariable(name: "dim2_A", scope: !220, file: !2, line: 76, type: !79)
!223 = !DILocalVariable(name: "dim1_B", scope: !220, file: !2, line: 77, type: !79)
!224 = !DILocalVariable(name: "dim2_B", scope: !220, file: !2, line: 78, type: !79)
!225 = !DILocalVariable(name: "dim1_C", scope: !220, file: !2, line: 79, type: !79)
!226 = !DILocalVariable(name: "dim2_C", scope: !220, file: !2, line: 80, type: !79)
!227 = !DILocalVariable(name: "swap_tmp", scope: !228, file: !2, line: 83, type: !79)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 83, column: 9)
!229 = distinct !DILexicalBlock(scope: !220, file: !2, line: 82, column: 11)
!230 = !DILocalVariable(name: "swap_tmp", scope: !231, file: !2, line: 85, type: !79)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 85, column: 9)
!232 = distinct !DILexicalBlock(scope: !220, file: !2, line: 84, column: 11)
!233 = !DILocalVariable(name: "a", scope: !234, file: !2, line: 93, type: !86)
!234 = distinct !DILexicalBlock(scope: !235, file: !2, line: 92, column: 9)
!235 = distinct !DILexicalBlock(scope: !220, file: !2, line: 87, column: 11)
!236 = !DILocalVariable(name: "b", scope: !234, file: !2, line: 93, type: !86)
!237 = !DILocalVariable(name: "temp", scope: !234, file: !2, line: 94, type: !86)
!238 = !DILocalVariable(name: "i", scope: !234, file: !2, line: 95, type: !79)
!239 = !DILocalVariable(name: "j", scope: !234, file: !2, line: 95, type: !79)
!240 = !DILocalVariable(name: "k", scope: !234, file: !2, line: 95, type: !79)
!241 = !DILocalVariable(name: "a1", scope: !234, file: !2, line: 96, type: !79)
!242 = !DILocalVariable(name: "a2", scope: !234, file: !2, line: 96, type: !79)
!243 = !DILocalVariable(name: "b1", scope: !234, file: !2, line: 96, type: !79)
!244 = !DILocalVariable(name: "b2", scope: !234, file: !2, line: 96, type: !79)
!245 = !DILocalVariable(name: "swap_tmp", scope: !246, file: !2, line: 107, type: !79)
!246 = distinct !DILexicalBlock(scope: !247, file: !2, line: 107, column: 21)
!247 = distinct !DILexicalBlock(scope: !248, file: !2, line: 106, column: 23)
!248 = distinct !DILexicalBlock(scope: !249, file: !2, line: 101, column: 17)
!249 = distinct !DILexicalBlock(scope: !250, file: !2, line: 100, column: 15)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 100, column: 15)
!251 = distinct !DILexicalBlock(scope: !252, file: !2, line: 99, column: 13)
!252 = distinct !DILexicalBlock(scope: !253, file: !2, line: 98, column: 11)
!253 = distinct !DILexicalBlock(scope: !234, file: !2, line: 98, column: 11)
!254 = !DILocalVariable(name: "swap_tmp", scope: !255, file: !2, line: 109, type: !79)
!255 = distinct !DILexicalBlock(scope: !256, file: !2, line: 109, column: 21)
!256 = distinct !DILexicalBlock(scope: !248, file: !2, line: 108, column: 23)
!257 = !DILocalVariable(name: "swap_tmp", scope: !258, file: !2, line: 122, type: !79)
!258 = distinct !DILexicalBlock(scope: !259, file: !2, line: 122, column: 25)
!259 = distinct !DILexicalBlock(scope: !260, file: !2, line: 121, column: 27)
!260 = distinct !DILexicalBlock(scope: !261, file: !2, line: 116, column: 21)
!261 = distinct !DILexicalBlock(scope: !262, file: !2, line: 115, column: 19)
!262 = distinct !DILexicalBlock(scope: !248, file: !2, line: 115, column: 19)
!263 = !DILocalVariable(name: "swap_tmp", scope: !264, file: !2, line: 124, type: !79)
!264 = distinct !DILexicalBlock(scope: !265, file: !2, line: 124, column: 25)
!265 = distinct !DILexicalBlock(scope: !260, file: !2, line: 123, column: 27)
!266 = !DILocation(line: 0, scope: !209)
!267 = !DILocation(line: 69, column: 35, scope: !221)
!268 = !DILocation(line: 71, column: 14, scope: !269)
!269 = distinct !DILexicalBlock(scope: !221, file: !2, line: 70, column: 5)
!270 = !{i32 0, i32 20}
!271 = !DILocation(line: 71, column: 7, scope: !269)
!272 = !DILocation(line: 75, column: 26, scope: !220)
!273 = !DILocation(line: 0, scope: !220)
!274 = !DILocation(line: 76, column: 26, scope: !220)
!275 = !DILocation(line: 77, column: 26, scope: !220)
!276 = !DILocation(line: 78, column: 26, scope: !220)
!277 = !DILocation(line: 79, column: 26, scope: !220)
!278 = !DILocation(line: 80, column: 26, scope: !220)
!279 = !DILocation(line: 82, column: 16, scope: !229)
!280 = !DILocation(line: 82, column: 11, scope: !220)
!281 = !DILocation(line: 84, column: 16, scope: !232)
!282 = !DILocation(line: 84, column: 11, scope: !220)
!283 = !DILocation(line: 87, column: 18, scope: !235)
!284 = !DILocation(line: 87, column: 28, scope: !235)
!285 = !DILocation(line: 0, scope: !234)
!286 = !DILocation(line: 98, column: 25, scope: !252)
!287 = !DILocation(line: 98, column: 11, scope: !253)
!288 = !DILocation(line: 89, column: 11, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !2, line: 89, column: 11)
!290 = distinct !DILexicalBlock(scope: !235, file: !2, line: 88, column: 9)
!291 = !DILocation(line: 100, column: 15, scope: !250)
!292 = !DILocation(line: 108, column: 23, scope: !248)
!293 = !DILocation(line: 0, scope: !144, inlinedAt: !294)
!294 = distinct !DILocation(line: 111, column: 23, scope: !248)
!295 = !DILocation(line: 285, column: 10, scope: !144, inlinedAt: !294)
!296 = !DILocation(line: 0, scope: !144, inlinedAt: !297)
!297 = distinct !DILocation(line: 112, column: 23, scope: !248)
!298 = !DILocation(line: 285, column: 20, scope: !144, inlinedAt: !297)
!299 = !DILocation(line: 285, column: 10, scope: !144, inlinedAt: !297)
!300 = !DILocation(line: 113, column: 28, scope: !248)
!301 = !DILocation(line: 115, column: 19, scope: !262)
!302 = !DILocation(line: 121, column: 27, scope: !260)
!303 = !DILocation(line: 123, column: 27, scope: !260)
!304 = !DILocation(line: 0, scope: !144, inlinedAt: !305)
!305 = distinct !DILocation(line: 125, column: 27, scope: !260)
!306 = !DILocation(line: 285, column: 20, scope: !144, inlinedAt: !305)
!307 = !DILocation(line: 285, column: 10, scope: !144, inlinedAt: !305)
!308 = !DILocation(line: 0, scope: !144, inlinedAt: !309)
!309 = distinct !DILocation(line: 126, column: 27, scope: !260)
!310 = !DILocation(line: 285, column: 20, scope: !144, inlinedAt: !309)
!311 = !DILocation(line: 285, column: 10, scope: !144, inlinedAt: !309)
!312 = !DILocation(line: 127, column: 33, scope: !260)
!313 = !DILocation(line: 127, column: 28, scope: !260)
!314 = !DILocation(line: 115, column: 44, scope: !261)
!315 = distinct !{!315, !301, !316, !178}
!316 = !DILocation(line: 128, column: 21, scope: !262)
!317 = !DILocation(line: 305, column: 3, scope: !183, inlinedAt: !318)
!318 = distinct !DILocation(line: 130, column: 19, scope: !248)
!319 = !DILocation(line: 0, scope: !248)
!320 = !DILocation(line: 0, scope: !183, inlinedAt: !318)
!321 = !DILocation(line: 305, column: 27, scope: !183, inlinedAt: !318)
!322 = !DILocation(line: 100, column: 40, scope: !249)
!323 = !DILocation(line: 100, column: 29, scope: !249)
!324 = distinct !{!324, !291, !325, !178}
!325 = !DILocation(line: 131, column: 17, scope: !250)
!326 = !DILocation(line: 98, column: 36, scope: !252)
!327 = distinct !{!327, !287, !328, !178}
!328 = !DILocation(line: 132, column: 13, scope: !253)
!329 = !DILocation(line: 0, scope: !221)
!330 = !DILocation(line: 137, column: 1, scope: !209)
