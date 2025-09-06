; ModuleID = 'dger.ll'
source_filename = "dger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"./source_ger.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_dger(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr nocapture noundef %8, i32 noundef %9) local_unnamed_addr #0 !dbg !35 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !46, metadata !DIExpression()), !dbg !78
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !47, metadata !DIExpression()), !dbg !78
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !48, metadata !DIExpression()), !dbg !78
  tail call void @llvm.dbg.value(metadata double %3, metadata !49, metadata !DIExpression()), !dbg !78
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !50, metadata !DIExpression()), !dbg !78
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !51, metadata !DIExpression()), !dbg !78
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !52, metadata !DIExpression()), !dbg !78
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !53, metadata !DIExpression()), !dbg !78
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !54, metadata !DIExpression()), !dbg !78
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !55, metadata !DIExpression()), !dbg !78
  tail call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !79
  %11 = add i32 %0, -103, !dbg !80
  %12 = icmp ult i32 %11, -2, !dbg !80
  %13 = zext i1 %12 to i32, !dbg !80
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !60, metadata !DIExpression()), !dbg !79
  %14 = icmp slt i32 %1, 0, !dbg !82
  %15 = select i1 %14, i32 2, i32 %13, !dbg !84
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !60, metadata !DIExpression()), !dbg !79
  %16 = icmp slt i32 %2, 0, !dbg !85
  %17 = select i1 %16, i32 3, i32 %15, !dbg !84
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !60, metadata !DIExpression()), !dbg !79
  %18 = icmp eq i32 %5, 0, !dbg !87
  %19 = select i1 %18, i32 6, i32 %17, !dbg !84
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !60, metadata !DIExpression()), !dbg !79
  %20 = icmp eq i32 %7, 0, !dbg !89
  %21 = select i1 %20, i32 8, i32 %19, !dbg !84
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !60, metadata !DIExpression()), !dbg !79
  %22 = icmp eq i32 %0, 101, !dbg !91
  br i1 %22, label %23, label %26, !dbg !84

23:                                               ; preds = %10
  %24 = tail call i32 @llvm.smax.i32(i32 %2, i32 1), !dbg !93
  %25 = icmp sgt i32 %24, %9, !dbg !93
  br i1 %25, label %33, label %31, !dbg !96

26:                                               ; preds = %10
  %27 = icmp eq i32 %0, 102, !dbg !97
  %28 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %29 = icmp sgt i32 %28, %9
  %30 = and i1 %27, %29, !dbg !91
  br i1 %30, label %33, label %31, !dbg !91

31:                                               ; preds = %26, %23
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !60, metadata !DIExpression()), !dbg !79
  %32 = icmp eq i32 %21, 0, !dbg !99
  br i1 %32, label %35, label %33, !dbg !84

33:                                               ; preds = %31, %26, %23
  %34 = phi i32 [ %21, %31 ], [ 10, %23 ], [ 10, %26 ]
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %34, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !99
  br label %35, !dbg !99

35:                                               ; preds = %33, %31
  br i1 %22, label %36, label %101, !dbg !101

36:                                               ; preds = %35
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata i32 0, metadata !56, metadata !DIExpression()), !dbg !103
  %37 = icmp sgt i32 %1, 0, !dbg !104
  br i1 %37, label %38, label %169, !dbg !105

38:                                               ; preds = %36
  %39 = icmp sgt i32 %5, 0, !dbg !106
  %40 = sub nsw i32 1, %1, !dbg !106
  %41 = mul i32 %40, %5, !dbg !106
  %42 = select i1 %39, i32 0, i32 %41, !dbg !106
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !62, metadata !DIExpression()), !dbg !102
  %43 = icmp sgt i32 %7, 0
  %44 = sub i32 1, %2
  %45 = mul i32 %44, %7
  %46 = select i1 %43, i32 0, i32 %45
  %47 = icmp sgt i32 %2, 0
  %48 = sext i32 %46 to i64, !dbg !105
  %49 = sext i32 %7 to i64, !dbg !105
  %50 = sext i32 %9 to i64, !dbg !105
  %51 = sext i32 %42 to i64, !dbg !105
  %52 = sext i32 %5 to i64, !dbg !105
  %53 = zext nneg i32 %1 to i64, !dbg !104
  %54 = zext i32 %2 to i64
  %55 = and i64 %54, 1
  %56 = icmp eq i32 %2, 1
  %57 = and i64 %54, 2147483646
  %58 = icmp eq i64 %55, 0
  br label %59, !dbg !105

59:                                               ; preds = %97, %38
  %60 = phi i64 [ %51, %38 ], [ %98, %97 ]
  %61 = phi i64 [ 0, %38 ], [ %99, %97 ]
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !56, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !62, metadata !DIExpression()), !dbg !102
  %62 = getelementptr inbounds double, ptr %4, i64 %60, !dbg !107
  %63 = load double, ptr %62, align 8, !dbg !107, !tbaa !108
  %64 = fmul double %63, %3, !dbg !112
  tail call void @llvm.dbg.value(metadata double %64, metadata !65, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !69, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, metadata !59, metadata !DIExpression()), !dbg !103
  br i1 %47, label %65, label %97, !dbg !114

65:                                               ; preds = %59
  %66 = mul nsw i64 %61, %50
  %67 = getelementptr double, ptr %8, i64 %66, !dbg !114
  br i1 %56, label %88, label %68, !dbg !114

68:                                               ; preds = %68, %65
  %69 = phi i64 [ %85, %68 ], [ 0, %65 ]
  %70 = phi i64 [ %84, %68 ], [ %48, %65 ]
  %71 = phi i64 [ %86, %68 ], [ 0, %65 ]
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !69, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !59, metadata !DIExpression()), !dbg !103
  %72 = getelementptr inbounds double, ptr %6, i64 %70, !dbg !116
  %73 = load double, ptr %72, align 8, !dbg !116, !tbaa !108
  %74 = fmul double %64, %73, !dbg !119
  %75 = getelementptr double, ptr %67, i64 %69, !dbg !120
  %76 = load double, ptr %75, align 8, !dbg !121, !tbaa !108
  %handler_result = call double @fAddHandlerDouble(double %76, double %74), !dbg !121
  store double %handler_result, ptr %75, align 8, !dbg !121, !tbaa !108
  %77 = add i64 %70, %49, !dbg !122
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !69, metadata !DIExpression()), !dbg !113
  %78 = or disjoint i64 %69, 1, !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !59, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !69, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !59, metadata !DIExpression()), !dbg !103
  %79 = getelementptr inbounds double, ptr %6, i64 %77, !dbg !116
  %80 = load double, ptr %79, align 8, !dbg !116, !tbaa !108
  %81 = fmul double %64, %80, !dbg !119
  %82 = getelementptr double, ptr %67, i64 %78, !dbg !120
  %83 = load double, ptr %82, align 8, !dbg !121, !tbaa !108
  %handler_result1 = call double @fAddHandlerDouble(double %83, double %81), !dbg !121
  store double %handler_result1, ptr %82, align 8, !dbg !121, !tbaa !108
  %84 = add i64 %77, %49, !dbg !122
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !69, metadata !DIExpression()), !dbg !113
  %85 = add nuw nsw i64 %69, 2, !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !59, metadata !DIExpression()), !dbg !103
  %86 = add i64 %71, 2, !dbg !114
  %87 = icmp eq i64 %86, %57, !dbg !114
  br i1 %87, label %88, label %68, !dbg !114, !llvm.loop !124

88:                                               ; preds = %68, %65
  %89 = phi i64 [ 0, %65 ], [ %85, %68 ]
  %90 = phi i64 [ %48, %65 ], [ %84, %68 ]
  br i1 %58, label %97, label %91, !dbg !114

91:                                               ; preds = %88
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !69, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !59, metadata !DIExpression()), !dbg !103
  %92 = getelementptr inbounds double, ptr %6, i64 %90, !dbg !116
  %93 = load double, ptr %92, align 8, !dbg !116, !tbaa !108
  %94 = fmul double %64, %93, !dbg !119
  %95 = getelementptr double, ptr %67, i64 %89, !dbg !120
  %96 = load double, ptr %95, align 8, !dbg !121, !tbaa !108
  %handler_result2 = call double @fAddHandlerDouble(double %96, double %94), !dbg !121
  store double %handler_result2, ptr %95, align 8, !dbg !121, !tbaa !108
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %90, i64 %49), metadata !69, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !59, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !103
  br label %97, !dbg !127

97:                                               ; preds = %91, %88, %59
  %98 = add i64 %60, %52, !dbg !127
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !62, metadata !DIExpression()), !dbg !102
  %99 = add nuw nsw i64 %61, 1, !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !56, metadata !DIExpression()), !dbg !103
  %100 = icmp eq i64 %99, %53, !dbg !104
  br i1 %100, label %169, label %59, !dbg !105, !llvm.loop !129

101:                                              ; preds = %35
  %102 = icmp eq i32 %0, 102, !dbg !131
  br i1 %102, label %103, label %168, !dbg !132

103:                                              ; preds = %101
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !70, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i32 0, metadata !59, metadata !DIExpression()), !dbg !103
  %104 = icmp sgt i32 %2, 0, !dbg !134
  br i1 %104, label %105, label %169, !dbg !135

105:                                              ; preds = %103
  %106 = icmp sgt i32 %7, 0, !dbg !136
  %107 = sub nsw i32 1, %2, !dbg !136
  %108 = mul i32 %107, %7, !dbg !136
  %109 = select i1 %106, i32 0, i32 %108, !dbg !136
  tail call void @llvm.dbg.value(metadata i32 %109, metadata !70, metadata !DIExpression()), !dbg !133
  %110 = icmp sgt i32 %5, 0
  %111 = sub i32 1, %1
  %112 = mul i32 %111, %5
  %113 = select i1 %110, i32 0, i32 %112
  %114 = icmp sgt i32 %1, 0
  %115 = sext i32 %113 to i64, !dbg !135
  %116 = sext i32 %5 to i64, !dbg !135
  %117 = sext i32 %109 to i64, !dbg !135
  %118 = sext i32 %7 to i64, !dbg !135
  %119 = sext i32 %9 to i64, !dbg !135
  %120 = zext nneg i32 %2 to i64, !dbg !134
  %121 = zext i32 %1 to i64
  %122 = and i64 %121, 1
  %123 = icmp eq i32 %1, 1
  %124 = and i64 %121, 2147483646
  %125 = icmp eq i64 %122, 0
  br label %126, !dbg !135

126:                                              ; preds = %164, %105
  %127 = phi i64 [ 0, %105 ], [ %166, %164 ]
  %128 = phi i64 [ %117, %105 ], [ %165, %164 ]
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !70, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i64 %127, metadata !59, metadata !DIExpression()), !dbg !103
  %129 = getelementptr inbounds double, ptr %6, i64 %128, !dbg !137
  %130 = load double, ptr %129, align 8, !dbg !137, !tbaa !108
  %131 = fmul double %130, %3, !dbg !138
  tail call void @llvm.dbg.value(metadata double %131, metadata !73, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !77, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i32 0, metadata !56, metadata !DIExpression()), !dbg !103
  br i1 %114, label %132, label %164, !dbg !140

132:                                              ; preds = %126
  %133 = mul nsw i64 %127, %119
  %134 = getelementptr double, ptr %8, i64 %133, !dbg !140
  br i1 %123, label %155, label %135, !dbg !140

135:                                              ; preds = %135, %132
  %136 = phi i64 [ %152, %135 ], [ 0, %132 ]
  %137 = phi i64 [ %151, %135 ], [ %115, %132 ]
  %138 = phi i64 [ %153, %135 ], [ 0, %132 ]
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !77, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !56, metadata !DIExpression()), !dbg !103
  %139 = getelementptr inbounds double, ptr %4, i64 %137, !dbg !142
  %140 = load double, ptr %139, align 8, !dbg !142, !tbaa !108
  %141 = fmul double %131, %140, !dbg !145
  %142 = getelementptr double, ptr %134, i64 %136, !dbg !146
  %143 = load double, ptr %142, align 8, !dbg !147, !tbaa !108
  %handler_result3 = call double @fAddHandlerDouble(double %143, double %141), !dbg !147
  store double %handler_result3, ptr %142, align 8, !dbg !147, !tbaa !108
  %144 = add i64 %137, %116, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !77, metadata !DIExpression()), !dbg !139
  %145 = or disjoint i64 %136, 1, !dbg !149
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !56, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !77, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !56, metadata !DIExpression()), !dbg !103
  %146 = getelementptr inbounds double, ptr %4, i64 %144, !dbg !142
  %147 = load double, ptr %146, align 8, !dbg !142, !tbaa !108
  %148 = fmul double %131, %147, !dbg !145
  %149 = getelementptr double, ptr %134, i64 %145, !dbg !146
  %150 = load double, ptr %149, align 8, !dbg !147, !tbaa !108
  %handler_result4 = call double @fAddHandlerDouble(double %150, double %148), !dbg !147
  store double %handler_result4, ptr %149, align 8, !dbg !147, !tbaa !108
  %151 = add i64 %144, %116, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !77, metadata !DIExpression()), !dbg !139
  %152 = add nuw nsw i64 %136, 2, !dbg !149
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !56, metadata !DIExpression()), !dbg !103
  %153 = add i64 %138, 2, !dbg !140
  %154 = icmp eq i64 %153, %124, !dbg !140
  br i1 %154, label %155, label %135, !dbg !140, !llvm.loop !150

155:                                              ; preds = %135, %132
  %156 = phi i64 [ 0, %132 ], [ %152, %135 ]
  %157 = phi i64 [ %115, %132 ], [ %151, %135 ]
  br i1 %125, label %164, label %158, !dbg !140

158:                                              ; preds = %155
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !77, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !56, metadata !DIExpression()), !dbg !103
  %159 = getelementptr inbounds double, ptr %4, i64 %157, !dbg !142
  %160 = load double, ptr %159, align 8, !dbg !142, !tbaa !108
  %161 = fmul double %131, %160, !dbg !145
  %162 = getelementptr double, ptr %134, i64 %156, !dbg !146
  %163 = load double, ptr %162, align 8, !dbg !147, !tbaa !108
  %handler_result5 = call double @fAddHandlerDouble(double %163, double %161), !dbg !147
  store double %handler_result5, ptr %162, align 8, !dbg !147, !tbaa !108
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %157, i64 %116), metadata !77, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !56, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !103
  br label %164, !dbg !152

164:                                              ; preds = %158, %155, %126
  %165 = add i64 %128, %118, !dbg !152
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !70, metadata !DIExpression()), !dbg !133
  %166 = add nuw nsw i64 %127, 1, !dbg !153
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !59, metadata !DIExpression()), !dbg !103
  %167 = icmp eq i64 %166, %120, !dbg !134
  br i1 %167, label %169, label %126, !dbg !135, !llvm.loop !154

168:                                              ; preds = %101
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !156
  br label %169

169:                                              ; preds = %168, %164, %103, %97, %36
  ret void, !dbg !158
}

declare !dbg !160 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_ger.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "2e2be022e43c3d25284b088beab86885")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !26, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "dger.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "066ed4a591985ff41415f8e8d98c178c")
!19 = !{!20}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_ORDER", file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "CblasRowMajor", value: 101)
!25 = !DIEnumerator(name: "CblasColMajor", value: 102)
!26 = !{!0, !7, !12}
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!34 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!35 = distinct !DISubprogram(name: "cblas_dger", scope: !18, file: !18, line: 7, type: !36, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !45)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !39, !39, !41, !43, !39, !43, !39, !44, !39}
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !59, !60, !62, !65, !69, !70, !73, !77}
!46 = !DILocalVariable(name: "order", arg: 1, scope: !35, file: !18, line: 7, type: !38)
!47 = !DILocalVariable(name: "M", arg: 2, scope: !35, file: !18, line: 7, type: !39)
!48 = !DILocalVariable(name: "N", arg: 3, scope: !35, file: !18, line: 7, type: !39)
!49 = !DILocalVariable(name: "alpha", arg: 4, scope: !35, file: !18, line: 8, type: !41)
!50 = !DILocalVariable(name: "X", arg: 5, scope: !35, file: !18, line: 8, type: !43)
!51 = !DILocalVariable(name: "incX", arg: 6, scope: !35, file: !18, line: 8, type: !39)
!52 = !DILocalVariable(name: "Y", arg: 7, scope: !35, file: !18, line: 9, type: !43)
!53 = !DILocalVariable(name: "incY", arg: 8, scope: !35, file: !18, line: 9, type: !39)
!54 = !DILocalVariable(name: "A", arg: 9, scope: !35, file: !18, line: 9, type: !44)
!55 = !DILocalVariable(name: "lda", arg: 10, scope: !35, file: !18, line: 9, type: !39)
!56 = !DILocalVariable(name: "i", scope: !57, file: !2, line: 21, type: !40)
!57 = distinct !DILexicalBlock(scope: !58, file: !2, line: 20, column: 1)
!58 = !DILexicalBlockFile(scope: !35, file: !2, discriminator: 0)
!59 = !DILocalVariable(name: "j", scope: !57, file: !2, line: 21, type: !40)
!60 = !DILocalVariable(name: "pos", scope: !61, file: !2, line: 23, type: !40)
!61 = distinct !DILexicalBlock(scope: !57, file: !2, line: 23, column: 3)
!62 = !DILocalVariable(name: "ix", scope: !63, file: !2, line: 26, type: !40)
!63 = distinct !DILexicalBlock(scope: !64, file: !2, line: 25, column: 31)
!64 = distinct !DILexicalBlock(scope: !57, file: !2, line: 25, column: 7)
!65 = !DILocalVariable(name: "tmp", scope: !66, file: !2, line: 28, type: !41)
!66 = distinct !DILexicalBlock(scope: !67, file: !2, line: 27, column: 29)
!67 = distinct !DILexicalBlock(scope: !68, file: !2, line: 27, column: 5)
!68 = distinct !DILexicalBlock(scope: !63, file: !2, line: 27, column: 5)
!69 = !DILocalVariable(name: "jy", scope: !66, file: !2, line: 29, type: !40)
!70 = !DILocalVariable(name: "jy", scope: !71, file: !2, line: 37, type: !40)
!71 = distinct !DILexicalBlock(scope: !72, file: !2, line: 36, column: 38)
!72 = distinct !DILexicalBlock(scope: !64, file: !2, line: 36, column: 14)
!73 = !DILocalVariable(name: "tmp", scope: !74, file: !2, line: 39, type: !41)
!74 = distinct !DILexicalBlock(scope: !75, file: !2, line: 38, column: 29)
!75 = distinct !DILexicalBlock(scope: !76, file: !2, line: 38, column: 5)
!76 = distinct !DILexicalBlock(scope: !71, file: !2, line: 38, column: 5)
!77 = !DILocalVariable(name: "ix", scope: !74, file: !2, line: 40, type: !40)
!78 = !DILocation(line: 0, scope: !35)
!79 = !DILocation(line: 0, scope: !61)
!80 = !DILocation(line: 23, column: 3, scope: !81)
!81 = distinct !DILexicalBlock(scope: !61, file: !2, line: 23, column: 3)
!82 = !DILocation(line: 23, column: 3, scope: !83)
!83 = distinct !DILexicalBlock(scope: !61, file: !2, line: 23, column: 3)
!84 = !DILocation(line: 23, column: 3, scope: !61)
!85 = !DILocation(line: 23, column: 3, scope: !86)
!86 = distinct !DILexicalBlock(scope: !61, file: !2, line: 23, column: 3)
!87 = !DILocation(line: 23, column: 3, scope: !88)
!88 = distinct !DILexicalBlock(scope: !61, file: !2, line: 23, column: 3)
!89 = !DILocation(line: 23, column: 3, scope: !90)
!90 = distinct !DILexicalBlock(scope: !61, file: !2, line: 23, column: 3)
!91 = !DILocation(line: 23, column: 3, scope: !92)
!92 = distinct !DILexicalBlock(scope: !61, file: !2, line: 23, column: 3)
!93 = !DILocation(line: 23, column: 3, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 23, column: 3)
!95 = distinct !DILexicalBlock(scope: !92, file: !2, line: 23, column: 3)
!96 = !DILocation(line: 23, column: 3, scope: !95)
!97 = !DILocation(line: 23, column: 3, scope: !98)
!98 = distinct !DILexicalBlock(scope: !92, file: !2, line: 23, column: 3)
!99 = !DILocation(line: 23, column: 3, scope: !100)
!100 = distinct !DILexicalBlock(scope: !61, file: !2, line: 23, column: 3)
!101 = !DILocation(line: 25, column: 7, scope: !57)
!102 = !DILocation(line: 0, scope: !63)
!103 = !DILocation(line: 0, scope: !57)
!104 = !DILocation(line: 27, column: 19, scope: !67)
!105 = !DILocation(line: 27, column: 5, scope: !68)
!106 = !DILocation(line: 26, column: 16, scope: !63)
!107 = !DILocation(line: 28, column: 32, scope: !66)
!108 = !{!109, !109, i64 0}
!109 = !{!"double", !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !DILocation(line: 28, column: 30, scope: !66)
!113 = !DILocation(line: 0, scope: !66)
!114 = !DILocation(line: 30, column: 7, scope: !115)
!115 = distinct !DILexicalBlock(scope: !66, file: !2, line: 30, column: 7)
!116 = !DILocation(line: 31, column: 27, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 30, column: 31)
!118 = distinct !DILexicalBlock(scope: !115, file: !2, line: 30, column: 7)
!119 = !DILocation(line: 31, column: 33, scope: !117)
!120 = !DILocation(line: 31, column: 9, scope: !117)
!121 = !DILocation(line: 31, column: 24, scope: !117)
!122 = !DILocation(line: 32, column: 12, scope: !117)
!123 = !DILocation(line: 30, column: 27, scope: !118)
!124 = distinct !{!124, !114, !125, !126}
!125 = !DILocation(line: 33, column: 7, scope: !115)
!126 = !{!"llvm.loop.mustprogress"}
!127 = !DILocation(line: 34, column: 10, scope: !66)
!128 = !DILocation(line: 27, column: 25, scope: !67)
!129 = distinct !{!129, !105, !130, !126}
!130 = !DILocation(line: 35, column: 5, scope: !68)
!131 = !DILocation(line: 36, column: 20, scope: !72)
!132 = !DILocation(line: 36, column: 14, scope: !64)
!133 = !DILocation(line: 0, scope: !71)
!134 = !DILocation(line: 38, column: 19, scope: !75)
!135 = !DILocation(line: 38, column: 5, scope: !76)
!136 = !DILocation(line: 37, column: 16, scope: !71)
!137 = !DILocation(line: 39, column: 32, scope: !74)
!138 = !DILocation(line: 39, column: 30, scope: !74)
!139 = !DILocation(line: 0, scope: !74)
!140 = !DILocation(line: 41, column: 7, scope: !141)
!141 = distinct !DILexicalBlock(scope: !74, file: !2, line: 41, column: 7)
!142 = !DILocation(line: 42, column: 27, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !2, line: 41, column: 31)
!144 = distinct !DILexicalBlock(scope: !141, file: !2, line: 41, column: 7)
!145 = !DILocation(line: 42, column: 33, scope: !143)
!146 = !DILocation(line: 42, column: 9, scope: !143)
!147 = !DILocation(line: 42, column: 24, scope: !143)
!148 = !DILocation(line: 43, column: 12, scope: !143)
!149 = !DILocation(line: 41, column: 27, scope: !144)
!150 = distinct !{!150, !140, !151, !126}
!151 = !DILocation(line: 44, column: 7, scope: !141)
!152 = !DILocation(line: 45, column: 10, scope: !74)
!153 = !DILocation(line: 38, column: 25, scope: !75)
!154 = distinct !{!154, !135, !155, !126}
!155 = !DILocation(line: 46, column: 5, scope: !76)
!156 = !DILocation(line: 48, column: 5, scope: !157)
!157 = distinct !DILexicalBlock(scope: !72, file: !2, line: 47, column: 10)
!158 = !DILocation(line: 14, column: 1, scope: !159)
!159 = !DILexicalBlockFile(scope: !35, file: !18, discriminator: 0)
!160 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !40, !163, !163, null}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
