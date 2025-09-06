; ModuleID = 'multiply.ll'
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
  br i1 %19, label %115, label %20, !dbg !134

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

35:                                               ; preds = %12, %8, %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 34, i32 noundef 19) #3, !dbg !135
  br label %115, !dbg !135

36:                                               ; preds = %112, %20
  %37 = phi i64 [ 0, %20 ], [ %113, %112 ]
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !106, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !130
  br i1 %21, label %112, label %38, !dbg !138

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

48:                                               ; preds = %107, %38
  %49 = phi i64 [ 0, %38 ], [ %110, %107 ]
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
  br i1 %26, label %54, label %107, !dbg !162

54:                                               ; preds = %48
  %55 = load i64, ptr %25, align 8, !tbaa !142
  br i1 %32, label %90, label %56, !dbg !162

56:                                               ; preds = %56, %54
  %57 = phi i64 [ %87, %56 ], [ 1, %54 ]
  %58 = phi double [ %handler_result3, %56 ], [ %53, %54 ]
  %59 = phi i64 [ %88, %56 ], [ 0, %54 ]
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
  %handler_result = call double @fAddHandlerDouble(double %58, double %65), !dbg !174
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !105, metadata !DIExpression()), !dbg !130
  %66 = add nuw nsw i64 %57, 1, !dbg !174
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !105, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !149, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !150, metadata !DIExpression()), !dbg !164
  %67 = getelementptr double, ptr %42, i64 %66, !dbg !168
  %68 = load double, ptr %67, align 8, !dbg !168, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %68, metadata !101, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !143, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !149, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !150, metadata !DIExpression()), !dbg !169
  %69 = mul i64 %55, %66, !dbg !171
  %70 = getelementptr double, ptr %51, i64 %69, !dbg !172
  %71 = load double, ptr %70, align 8, !dbg !172, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %71, metadata !104, metadata !DIExpression()), !dbg !130
  %72 = fmul double %68, %71, !dbg !173
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %72), !dbg !174
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !105, metadata !DIExpression()), !dbg !130
  %73 = add nuw nsw i64 %57, 2, !dbg !174
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !105, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !149, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !150, metadata !DIExpression()), !dbg !164
  %74 = getelementptr double, ptr %42, i64 %73, !dbg !168
  %75 = load double, ptr %74, align 8, !dbg !168, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %75, metadata !101, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !143, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !149, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !150, metadata !DIExpression()), !dbg !169
  %76 = mul i64 %55, %73, !dbg !171
  %77 = getelementptr double, ptr %51, i64 %76, !dbg !172
  %78 = load double, ptr %77, align 8, !dbg !172, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %78, metadata !104, metadata !DIExpression()), !dbg !130
  %79 = fmul double %75, %78, !dbg !173
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %79), !dbg !174
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !105, metadata !DIExpression()), !dbg !130
  %80 = add nuw i64 %57, 3, !dbg !174
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !105, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !149, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !150, metadata !DIExpression()), !dbg !164
  %81 = getelementptr double, ptr %42, i64 %80, !dbg !168
  %82 = load double, ptr %81, align 8, !dbg !168, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %82, metadata !101, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !143, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !149, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !150, metadata !DIExpression()), !dbg !169
  %83 = mul i64 %55, %80, !dbg !171
  %84 = getelementptr double, ptr %51, i64 %83, !dbg !172
  %85 = load double, ptr %84, align 8, !dbg !172, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %85, metadata !104, metadata !DIExpression()), !dbg !130
  %86 = fmul double %82, %85, !dbg !173
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %86), !dbg !174
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !105, metadata !DIExpression()), !dbg !130
  %87 = add nuw i64 %57, 4, !dbg !174
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !108, metadata !DIExpression()), !dbg !130
  %88 = add i64 %59, 4, !dbg !162
  %89 = icmp eq i64 %88, %33, !dbg !162
  br i1 %89, label %90, label %56, !dbg !162, !llvm.loop !175

90:                                               ; preds = %56, %54
  %91 = phi double [ undef, %54 ], [ %handler_result3, %56 ]
  %92 = phi i64 [ 1, %54 ], [ %87, %56 ]
  %93 = phi double [ %53, %54 ], [ %handler_result3, %56 ]
  br i1 %34, label %107, label %94, !dbg !162

94:                                               ; preds = %94, %90
  %95 = phi i64 [ %104, %94 ], [ %92, %90 ]
  %96 = phi double [ %handler_result4, %94 ], [ %93, %90 ]
  %97 = phi i64 [ %105, %94 ], [ 0, %90 ]
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %96, metadata !105, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !149, metadata !DIExpression()), !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !150, metadata !DIExpression()), !dbg !164
  %98 = getelementptr double, ptr %42, i64 %95, !dbg !168
  %99 = load double, ptr %98, align 8, !dbg !168, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %99, metadata !101, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !143, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !149, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !150, metadata !DIExpression()), !dbg !169
  %100 = mul i64 %55, %95, !dbg !171
  %101 = getelementptr double, ptr %51, i64 %100, !dbg !172
  %102 = load double, ptr %101, align 8, !dbg !172, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %102, metadata !104, metadata !DIExpression()), !dbg !130
  %103 = fmul double %99, %102, !dbg !173
  %handler_result4 = call double @fAddHandlerDouble(double %96, double %103), !dbg !174
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !105, metadata !DIExpression()), !dbg !130
  %104 = add nuw i64 %95, 1, !dbg !174
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !108, metadata !DIExpression()), !dbg !130
  %105 = add i64 %97, 1, !dbg !162
  %106 = icmp eq i64 %105, %31, !dbg !162
  br i1 %106, label %107, label %94, !dbg !162, !llvm.loop !178

107:                                              ; preds = %94, %90, %48
  %108 = phi double [ %53, %48 ], [ %91, %90 ], [ %handler_result4, %94 ], !dbg !180
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !181, metadata !DIExpression()), !dbg !190
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !187, metadata !DIExpression()), !dbg !190
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !188, metadata !DIExpression()), !dbg !190
  tail call void @llvm.dbg.value(metadata double %108, metadata !189, metadata !DIExpression()), !dbg !190
  %109 = getelementptr double, ptr %47, i64 %49, !dbg !192
  store double %108, ptr %109, align 8, !dbg !193, !tbaa !156
  %110 = add nuw i64 %49, 1, !dbg !194
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !107, metadata !DIExpression()), !dbg !130
  %111 = icmp eq i64 %110, %14, !dbg !195
  br i1 %111, label %112, label %48, !dbg !138, !llvm.loop !196

112:                                              ; preds = %107, %36
  %113 = add nuw i64 %37, 1, !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %113, metadata !106, metadata !DIExpression()), !dbg !130
  %114 = icmp eq i64 %113, %9, !dbg !131
  br i1 %114, label %115, label %36, !dbg !134, !llvm.loop !199

115:                                              ; preds = %112, %35, %18
  %116 = phi i32 [ 19, %35 ], [ 0, %18 ], [ 0, %112 ], !dbg !201
  ret i32 %116, !dbg !202
}

declare !dbg !203 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_matmult_mod(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 !dbg !208 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !213, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !214, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !215, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !216, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !217, metadata !DIExpression()), !dbg !265
  %6 = or i32 %3, %1, !dbg !266
  %7 = icmp eq i32 %6, 0, !dbg !266
  br i1 %7, label %8, label %10, !dbg !266

8:                                                ; preds = %5
  %9 = tail call i32 @gsl_linalg_matmult(ptr noundef %0, ptr noundef %2, ptr noundef %4), !dbg !267, !range !269
  br label %137, !dbg !270

10:                                               ; preds = %5
  %11 = load i64, ptr %0, align 8, !dbg !271, !tbaa !119
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !218, metadata !DIExpression()), !dbg !272
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !273
  %13 = load i64, ptr %12, align 8, !dbg !273, !tbaa !111
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !221, metadata !DIExpression()), !dbg !272
  %14 = load i64, ptr %2, align 8, !dbg !274, !tbaa !119
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !222, metadata !DIExpression()), !dbg !272
  %15 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !275
  %16 = load i64, ptr %15, align 8, !dbg !275, !tbaa !111
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !223, metadata !DIExpression()), !dbg !272
  %17 = load i64, ptr %4, align 8, !dbg !276, !tbaa !119
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !224, metadata !DIExpression()), !dbg !272
  %18 = getelementptr inbounds %struct.gsl_matrix, ptr %4, i64 0, i32 1, !dbg !277
  %19 = load i64, ptr %18, align 8, !dbg !277, !tbaa !111
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !225, metadata !DIExpression()), !dbg !272
  %20 = and i32 %1, 1, !dbg !278
  %21 = icmp eq i32 %20, 0, !dbg !278
  %22 = select i1 %21, i64 %13, i64 %11, !dbg !279
  %23 = select i1 %21, i64 %11, i64 %13, !dbg !279
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !218, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !221, metadata !DIExpression()), !dbg !272
  %24 = and i32 %3, 1, !dbg !280
  %25 = icmp eq i32 %24, 0, !dbg !280
  %26 = select i1 %25, i64 %16, i64 %14, !dbg !281
  %27 = select i1 %25, i64 %14, i64 %16, !dbg !281
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !222, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !223, metadata !DIExpression()), !dbg !272
  %28 = icmp eq i64 %22, %27, !dbg !282
  %29 = icmp eq i64 %23, %17
  %30 = select i1 %28, i1 %29, i1 false, !dbg !283
  %31 = icmp eq i64 %26, %19
  %32 = select i1 %30, i1 %31, i1 false, !dbg !283
  br i1 %32, label %33, label %49, !dbg !283

33:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata i64 0, metadata !237, metadata !DIExpression()), !dbg !284
  %34 = icmp eq i64 %17, 0, !dbg !285
  br i1 %34, label %137, label %35, !dbg !286

35:                                               ; preds = %33
  %36 = icmp eq i64 %19, 0
  %37 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %38 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %39 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %40 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %41 = icmp ugt i64 %22, 1
  %42 = getelementptr inbounds %struct.gsl_matrix, ptr %4, i64 0, i32 3
  %43 = getelementptr inbounds %struct.gsl_matrix, ptr %4, i64 0, i32 2
  %44 = add i64 %22, -1, !dbg !286
  %45 = and i64 %44, 1
  %46 = icmp eq i64 %22, 2
  %47 = and i64 %44, -2
  %48 = icmp eq i64 %45, 0
  br label %50, !dbg !286

49:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 89, i32 noundef 19) #3, !dbg !287
  br label %137, !dbg !287

50:                                               ; preds = %134, %35
  %51 = phi i64 [ 0, %35 ], [ %135, %134 ]
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !237, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 0, metadata !238, metadata !DIExpression()), !dbg !284
  br i1 %36, label %134, label %52, !dbg !290

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
  br label %66, !dbg !290

66:                                               ; preds = %129, %52
  %67 = phi i64 [ 0, %52 ], [ %132, %129 ]
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !238, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !240, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 0, metadata !241, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 0, metadata !242, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !243, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !241, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !240, metadata !DIExpression()), !dbg !284
  %68 = select i1 %25, i64 0, i64 %67, !dbg !291
  %69 = select i1 %25, i64 %67, i64 0, !dbg !291
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !243, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !242, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !292
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !292
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !150, metadata !DIExpression()), !dbg !292
  %70 = load double, ptr %59, align 8, !dbg !294, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %70, metadata !232, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !143, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !149, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !150, metadata !DIExpression()), !dbg !295
  %71 = mul i64 %61, %68, !dbg !297
  %72 = getelementptr double, ptr %60, i64 %71, !dbg !298
  %73 = getelementptr double, ptr %72, i64 %69, !dbg !298
  %74 = load double, ptr %73, align 8, !dbg !298, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %74, metadata !235, metadata !DIExpression()), !dbg !284
  %75 = fmul double %70, %74, !dbg !299
  tail call void @llvm.dbg.value(metadata double %75, metadata !236, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !239, metadata !DIExpression()), !dbg !284
  br i1 %41, label %76, label %129, !dbg !300

76:                                               ; preds = %66
  br i1 %46, label %111, label %77, !dbg !300

77:                                               ; preds = %77, %76
  %78 = phi i64 [ %108, %77 ], [ 1, %76 ]
  %79 = phi double [ %handler_result1, %77 ], [ %75, %76 ]
  %80 = phi i64 [ %109, %77 ], [ 0, %76 ]
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !239, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %79, metadata !236, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !240, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !241, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !242, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !243, metadata !DIExpression()), !dbg !284
  %81 = select i1 %21, i64 %51, i64 %78, !dbg !301
  %82 = select i1 %21, i64 %78, i64 %51, !dbg !301
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !241, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !240, metadata !DIExpression()), !dbg !284
  %83 = select i1 %25, i64 %78, i64 %67, !dbg !302
  %84 = select i1 %25, i64 %67, i64 %78, !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !243, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !242, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !149, metadata !DIExpression()), !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !150, metadata !DIExpression()), !dbg !303
  %85 = mul i64 %81, %56, !dbg !305
  %86 = getelementptr double, ptr %55, i64 %85, !dbg !306
  %87 = getelementptr double, ptr %86, i64 %82, !dbg !306
  %88 = load double, ptr %87, align 8, !dbg !306, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %88, metadata !232, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !143, metadata !DIExpression()), !dbg !307
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !149, metadata !DIExpression()), !dbg !307
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !150, metadata !DIExpression()), !dbg !307
  %89 = mul i64 %83, %61, !dbg !309
  %90 = getelementptr double, ptr %60, i64 %89, !dbg !310
  %91 = getelementptr double, ptr %90, i64 %84, !dbg !310
  %92 = load double, ptr %91, align 8, !dbg !310, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %92, metadata !235, metadata !DIExpression()), !dbg !284
  %93 = fmul double %88, %92, !dbg !311
  %handler_result = call double @fAddHandlerDouble(double %79, double %93), !dbg !312
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !236, metadata !DIExpression()), !dbg !284
  %94 = add nuw i64 %78, 1, !dbg !312
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !239, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !239, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !236, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !240, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !241, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !242, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !243, metadata !DIExpression()), !dbg !284
  %95 = select i1 %21, i64 %51, i64 %94, !dbg !301
  %96 = select i1 %21, i64 %94, i64 %51, !dbg !301
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !241, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !240, metadata !DIExpression()), !dbg !284
  %97 = select i1 %25, i64 %94, i64 %67, !dbg !302
  %98 = select i1 %25, i64 %67, i64 %94, !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !243, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !242, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !149, metadata !DIExpression()), !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !150, metadata !DIExpression()), !dbg !303
  %99 = mul i64 %95, %56, !dbg !305
  %100 = getelementptr double, ptr %55, i64 %99, !dbg !306
  %101 = getelementptr double, ptr %100, i64 %96, !dbg !306
  %102 = load double, ptr %101, align 8, !dbg !306, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %102, metadata !232, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !143, metadata !DIExpression()), !dbg !307
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !149, metadata !DIExpression()), !dbg !307
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !150, metadata !DIExpression()), !dbg !307
  %103 = mul i64 %97, %61, !dbg !309
  %104 = getelementptr double, ptr %60, i64 %103, !dbg !310
  %105 = getelementptr double, ptr %104, i64 %98, !dbg !310
  %106 = load double, ptr %105, align 8, !dbg !310, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %106, metadata !235, metadata !DIExpression()), !dbg !284
  %107 = fmul double %102, %106, !dbg !311
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %107), !dbg !312
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !236, metadata !DIExpression()), !dbg !284
  %108 = add nuw i64 %78, 2, !dbg !312
  tail call void @llvm.dbg.value(metadata i64 %108, metadata !239, metadata !DIExpression()), !dbg !284
  %109 = add i64 %80, 2, !dbg !300
  %110 = icmp eq i64 %109, %47, !dbg !300
  br i1 %110, label %111, label %77, !dbg !300, !llvm.loop !313

111:                                              ; preds = %77, %76
  %112 = phi double [ undef, %76 ], [ %handler_result1, %77 ]
  %113 = phi i64 [ 1, %76 ], [ %108, %77 ]
  %114 = phi double [ %75, %76 ], [ %handler_result1, %77 ]
  br i1 %48, label %129, label %115, !dbg !300

115:                                              ; preds = %111
  tail call void @llvm.dbg.value(metadata i64 %113, metadata !239, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %114, metadata !236, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !240, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %113, metadata !241, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %113, metadata !242, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !243, metadata !DIExpression()), !dbg !284
  %116 = select i1 %21, i64 %51, i64 %113, !dbg !301
  %117 = select i1 %21, i64 %113, i64 %51, !dbg !301
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !241, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !240, metadata !DIExpression()), !dbg !284
  %118 = select i1 %25, i64 %113, i64 %67, !dbg !302
  %119 = select i1 %25, i64 %67, i64 %113, !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !243, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !242, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !149, metadata !DIExpression()), !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !150, metadata !DIExpression()), !dbg !303
  %120 = mul i64 %116, %56, !dbg !305
  %121 = getelementptr double, ptr %55, i64 %120, !dbg !306
  %122 = getelementptr double, ptr %121, i64 %117, !dbg !306
  %123 = load double, ptr %122, align 8, !dbg !306, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %123, metadata !232, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !143, metadata !DIExpression()), !dbg !307
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !149, metadata !DIExpression()), !dbg !307
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !150, metadata !DIExpression()), !dbg !307
  %124 = mul i64 %118, %61, !dbg !309
  %125 = getelementptr double, ptr %60, i64 %124, !dbg !310
  %126 = getelementptr double, ptr %125, i64 %119, !dbg !310
  %127 = load double, ptr %126, align 8, !dbg !310, !tbaa !156
  tail call void @llvm.dbg.value(metadata double %127, metadata !235, metadata !DIExpression()), !dbg !284
  %128 = fmul double %123, %127, !dbg !311
  %handler_result2 = call double @fAddHandlerDouble(double %114, double %128), !dbg !315
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !236, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %113, metadata !239, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !284
  br label %129, !dbg !315

129:                                              ; preds = %115, %111, %66
  %130 = phi double [ %75, %66 ], [ %112, %111 ], [ %handler_result2, %115 ], !dbg !317
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !181, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !187, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !188, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata double %130, metadata !189, metadata !DIExpression()), !dbg !318
  %131 = getelementptr double, ptr %65, i64 %67, !dbg !315
  store double %130, ptr %131, align 8, !dbg !319, !tbaa !156
  %132 = add nuw i64 %67, 1, !dbg !320
  tail call void @llvm.dbg.value(metadata i64 %132, metadata !238, metadata !DIExpression()), !dbg !284
  %133 = icmp eq i64 %132, %19, !dbg !321
  br i1 %133, label %134, label %66, !dbg !290, !llvm.loop !322

134:                                              ; preds = %129, %50
  %135 = add nuw i64 %51, 1, !dbg !324
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !237, metadata !DIExpression()), !dbg !284
  %136 = icmp eq i64 %135, %17, !dbg !285
  br i1 %136, label %137, label %50, !dbg !286, !llvm.loop !325

137:                                              ; preds = %134, %49, %33, %8
  %138 = phi i32 [ %9, %8 ], [ 19, %49 ], [ 0, %33 ], [ 0, %134 ], !dbg !327
  ret i32 %138, !dbg !328
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

declare double @fAddHandlerDouble(double, double)

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
!174 = !DILocation(line: 49, column: 42, scope: !167)
!175 = distinct !{!175, !162, !176, !177}
!176 = !DILocation(line: 54, column: 17, scope: !163)
!177 = !{!"llvm.loop.mustprogress"}
!178 = distinct !{!178, !179}
!179 = !{!"llvm.loop.unroll.disable"}
!180 = !DILocation(line: 0, scope: !153)
!181 = !DILocalVariable(name: "m", arg: 1, scope: !182, file: !75, line: 290, type: !96)
!182 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !75, file: !75, line: 290, type: !183, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !186)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !96, !147, !147, !185}
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!186 = !{!181, !187, !188, !189}
!187 = !DILocalVariable(name: "i", arg: 2, scope: !182, file: !75, line: 290, type: !147)
!188 = !DILocalVariable(name: "j", arg: 3, scope: !182, file: !75, line: 290, type: !147)
!189 = !DILocalVariable(name: "x", arg: 4, scope: !182, file: !75, line: 290, type: !185)
!190 = !DILocation(line: 0, scope: !182, inlinedAt: !191)
!191 = distinct !DILocation(line: 55, column: 15, scope: !153)
!192 = !DILocation(line: 305, column: 3, scope: !182, inlinedAt: !191)
!193 = !DILocation(line: 305, column: 27, scope: !182, inlinedAt: !191)
!194 = !DILocation(line: 44, column: 38, scope: !154)
!195 = !DILocation(line: 44, column: 25, scope: !154)
!196 = distinct !{!196, !138, !197, !177}
!197 = !DILocation(line: 56, column: 13, scope: !139)
!198 = !DILocation(line: 42, column: 34, scope: !132)
!199 = distinct !{!199, !134, !200, !177}
!200 = !DILocation(line: 57, column: 9, scope: !133)
!201 = !DILocation(line: 0, scope: !103)
!202 = !DILocation(line: 61, column: 1, scope: !69)
!203 = !DISubprogram(name: "gsl_error", scope: !15, file: !15, line: 77, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !206, !206, !16, !16}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!208 = distinct !DISubprogram(name: "gsl_linalg_matmult_mod", scope: !2, file: !2, line: 65, type: !209, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !212)
!209 = !DISubroutineType(types: !210)
!210 = !{!16, !72, !211, !72, !211, !96}
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_linalg_matrix_mod_t", file: !54, line: 50, baseType: !53)
!212 = !{!213, !214, !215, !216, !217, !218, !221, !222, !223, !224, !225, !226, !229, !232, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !253, !256, !262}
!213 = !DILocalVariable(name: "A", arg: 1, scope: !208, file: !2, line: 65, type: !72)
!214 = !DILocalVariable(name: "modA", arg: 2, scope: !208, file: !2, line: 65, type: !211)
!215 = !DILocalVariable(name: "B", arg: 3, scope: !208, file: !2, line: 66, type: !72)
!216 = !DILocalVariable(name: "modB", arg: 4, scope: !208, file: !2, line: 66, type: !211)
!217 = !DILocalVariable(name: "C", arg: 5, scope: !208, file: !2, line: 67, type: !96)
!218 = !DILocalVariable(name: "dim1_A", scope: !219, file: !2, line: 75, type: !79)
!219 = distinct !DILexicalBlock(scope: !220, file: !2, line: 74, column: 5)
!220 = distinct !DILexicalBlock(scope: !208, file: !2, line: 69, column: 7)
!221 = !DILocalVariable(name: "dim2_A", scope: !219, file: !2, line: 76, type: !79)
!222 = !DILocalVariable(name: "dim1_B", scope: !219, file: !2, line: 77, type: !79)
!223 = !DILocalVariable(name: "dim2_B", scope: !219, file: !2, line: 78, type: !79)
!224 = !DILocalVariable(name: "dim1_C", scope: !219, file: !2, line: 79, type: !79)
!225 = !DILocalVariable(name: "dim2_C", scope: !219, file: !2, line: 80, type: !79)
!226 = !DILocalVariable(name: "swap_tmp", scope: !227, file: !2, line: 83, type: !79)
!227 = distinct !DILexicalBlock(scope: !228, file: !2, line: 83, column: 9)
!228 = distinct !DILexicalBlock(scope: !219, file: !2, line: 82, column: 11)
!229 = !DILocalVariable(name: "swap_tmp", scope: !230, file: !2, line: 85, type: !79)
!230 = distinct !DILexicalBlock(scope: !231, file: !2, line: 85, column: 9)
!231 = distinct !DILexicalBlock(scope: !219, file: !2, line: 84, column: 11)
!232 = !DILocalVariable(name: "a", scope: !233, file: !2, line: 93, type: !86)
!233 = distinct !DILexicalBlock(scope: !234, file: !2, line: 92, column: 9)
!234 = distinct !DILexicalBlock(scope: !219, file: !2, line: 87, column: 11)
!235 = !DILocalVariable(name: "b", scope: !233, file: !2, line: 93, type: !86)
!236 = !DILocalVariable(name: "temp", scope: !233, file: !2, line: 94, type: !86)
!237 = !DILocalVariable(name: "i", scope: !233, file: !2, line: 95, type: !79)
!238 = !DILocalVariable(name: "j", scope: !233, file: !2, line: 95, type: !79)
!239 = !DILocalVariable(name: "k", scope: !233, file: !2, line: 95, type: !79)
!240 = !DILocalVariable(name: "a1", scope: !233, file: !2, line: 96, type: !79)
!241 = !DILocalVariable(name: "a2", scope: !233, file: !2, line: 96, type: !79)
!242 = !DILocalVariable(name: "b1", scope: !233, file: !2, line: 96, type: !79)
!243 = !DILocalVariable(name: "b2", scope: !233, file: !2, line: 96, type: !79)
!244 = !DILocalVariable(name: "swap_tmp", scope: !245, file: !2, line: 107, type: !79)
!245 = distinct !DILexicalBlock(scope: !246, file: !2, line: 107, column: 21)
!246 = distinct !DILexicalBlock(scope: !247, file: !2, line: 106, column: 23)
!247 = distinct !DILexicalBlock(scope: !248, file: !2, line: 101, column: 17)
!248 = distinct !DILexicalBlock(scope: !249, file: !2, line: 100, column: 15)
!249 = distinct !DILexicalBlock(scope: !250, file: !2, line: 100, column: 15)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 99, column: 13)
!251 = distinct !DILexicalBlock(scope: !252, file: !2, line: 98, column: 11)
!252 = distinct !DILexicalBlock(scope: !233, file: !2, line: 98, column: 11)
!253 = !DILocalVariable(name: "swap_tmp", scope: !254, file: !2, line: 109, type: !79)
!254 = distinct !DILexicalBlock(scope: !255, file: !2, line: 109, column: 21)
!255 = distinct !DILexicalBlock(scope: !247, file: !2, line: 108, column: 23)
!256 = !DILocalVariable(name: "swap_tmp", scope: !257, file: !2, line: 122, type: !79)
!257 = distinct !DILexicalBlock(scope: !258, file: !2, line: 122, column: 25)
!258 = distinct !DILexicalBlock(scope: !259, file: !2, line: 121, column: 27)
!259 = distinct !DILexicalBlock(scope: !260, file: !2, line: 116, column: 21)
!260 = distinct !DILexicalBlock(scope: !261, file: !2, line: 115, column: 19)
!261 = distinct !DILexicalBlock(scope: !247, file: !2, line: 115, column: 19)
!262 = !DILocalVariable(name: "swap_tmp", scope: !263, file: !2, line: 124, type: !79)
!263 = distinct !DILexicalBlock(scope: !264, file: !2, line: 124, column: 25)
!264 = distinct !DILexicalBlock(scope: !259, file: !2, line: 123, column: 27)
!265 = !DILocation(line: 0, scope: !208)
!266 = !DILocation(line: 69, column: 35, scope: !220)
!267 = !DILocation(line: 71, column: 14, scope: !268)
!268 = distinct !DILexicalBlock(scope: !220, file: !2, line: 70, column: 5)
!269 = !{i32 0, i32 20}
!270 = !DILocation(line: 71, column: 7, scope: !268)
!271 = !DILocation(line: 75, column: 26, scope: !219)
!272 = !DILocation(line: 0, scope: !219)
!273 = !DILocation(line: 76, column: 26, scope: !219)
!274 = !DILocation(line: 77, column: 26, scope: !219)
!275 = !DILocation(line: 78, column: 26, scope: !219)
!276 = !DILocation(line: 79, column: 26, scope: !219)
!277 = !DILocation(line: 80, column: 26, scope: !219)
!278 = !DILocation(line: 82, column: 16, scope: !228)
!279 = !DILocation(line: 82, column: 11, scope: !219)
!280 = !DILocation(line: 84, column: 16, scope: !231)
!281 = !DILocation(line: 84, column: 11, scope: !219)
!282 = !DILocation(line: 87, column: 18, scope: !234)
!283 = !DILocation(line: 87, column: 28, scope: !234)
!284 = !DILocation(line: 0, scope: !233)
!285 = !DILocation(line: 98, column: 25, scope: !251)
!286 = !DILocation(line: 98, column: 11, scope: !252)
!287 = !DILocation(line: 89, column: 11, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !2, line: 89, column: 11)
!289 = distinct !DILexicalBlock(scope: !234, file: !2, line: 88, column: 9)
!290 = !DILocation(line: 100, column: 15, scope: !249)
!291 = !DILocation(line: 108, column: 23, scope: !247)
!292 = !DILocation(line: 0, scope: !144, inlinedAt: !293)
!293 = distinct !DILocation(line: 111, column: 23, scope: !247)
!294 = !DILocation(line: 285, column: 10, scope: !144, inlinedAt: !293)
!295 = !DILocation(line: 0, scope: !144, inlinedAt: !296)
!296 = distinct !DILocation(line: 112, column: 23, scope: !247)
!297 = !DILocation(line: 285, column: 20, scope: !144, inlinedAt: !296)
!298 = !DILocation(line: 285, column: 10, scope: !144, inlinedAt: !296)
!299 = !DILocation(line: 113, column: 28, scope: !247)
!300 = !DILocation(line: 115, column: 19, scope: !261)
!301 = !DILocation(line: 121, column: 27, scope: !259)
!302 = !DILocation(line: 123, column: 27, scope: !259)
!303 = !DILocation(line: 0, scope: !144, inlinedAt: !304)
!304 = distinct !DILocation(line: 125, column: 27, scope: !259)
!305 = !DILocation(line: 285, column: 20, scope: !144, inlinedAt: !304)
!306 = !DILocation(line: 285, column: 10, scope: !144, inlinedAt: !304)
!307 = !DILocation(line: 0, scope: !144, inlinedAt: !308)
!308 = distinct !DILocation(line: 126, column: 27, scope: !259)
!309 = !DILocation(line: 285, column: 20, scope: !144, inlinedAt: !308)
!310 = !DILocation(line: 285, column: 10, scope: !144, inlinedAt: !308)
!311 = !DILocation(line: 127, column: 33, scope: !259)
!312 = !DILocation(line: 115, column: 44, scope: !260)
!313 = distinct !{!313, !300, !314, !177}
!314 = !DILocation(line: 128, column: 21, scope: !261)
!315 = !DILocation(line: 305, column: 3, scope: !182, inlinedAt: !316)
!316 = distinct !DILocation(line: 130, column: 19, scope: !247)
!317 = !DILocation(line: 0, scope: !247)
!318 = !DILocation(line: 0, scope: !182, inlinedAt: !316)
!319 = !DILocation(line: 305, column: 27, scope: !182, inlinedAt: !316)
!320 = !DILocation(line: 100, column: 40, scope: !248)
!321 = !DILocation(line: 100, column: 29, scope: !248)
!322 = distinct !{!322, !290, !323, !177}
!323 = !DILocation(line: 131, column: 17, scope: !249)
!324 = !DILocation(line: 98, column: 36, scope: !251)
!325 = distinct !{!325, !286, !326, !177}
!326 = !DILocation(line: 132, column: 13, scope: !252)
!327 = !DILocation(line: 0, scope: !220)
!328 = !DILocation(line: 137, column: 1, scope: !208)
