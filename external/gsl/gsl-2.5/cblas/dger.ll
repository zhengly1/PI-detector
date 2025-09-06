; ModuleID = 'dger.c'
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

33:                                               ; preds = %26, %23, %31
  %34 = phi i32 [ %21, %31 ], [ 10, %23 ], [ 10, %26 ]
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %34, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !99
  br label %35, !dbg !99

35:                                               ; preds = %33, %31
  br i1 %22, label %36, label %104, !dbg !101

36:                                               ; preds = %35
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata i32 0, metadata !56, metadata !DIExpression()), !dbg !103
  %37 = icmp sgt i32 %1, 0, !dbg !104
  br i1 %37, label %38, label %175, !dbg !105

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

59:                                               ; preds = %38, %100
  %60 = phi i64 [ %51, %38 ], [ %101, %100 ]
  %61 = phi i64 [ 0, %38 ], [ %102, %100 ]
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !56, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !62, metadata !DIExpression()), !dbg !102
  %62 = getelementptr inbounds double, ptr %4, i64 %60, !dbg !107
  %63 = load double, ptr %62, align 8, !dbg !107, !tbaa !108
  %64 = fmul double %63, %3, !dbg !112
  tail call void @llvm.dbg.value(metadata double %64, metadata !65, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !69, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, metadata !59, metadata !DIExpression()), !dbg !103
  br i1 %47, label %65, label %100, !dbg !114

65:                                               ; preds = %59
  %66 = mul nsw i64 %61, %50
  %67 = getelementptr double, ptr %8, i64 %66, !dbg !114
  br i1 %56, label %90, label %68, !dbg !114

68:                                               ; preds = %65, %68
  %69 = phi i64 [ %87, %68 ], [ 0, %65 ]
  %70 = phi i64 [ %86, %68 ], [ %48, %65 ]
  %71 = phi i64 [ %88, %68 ], [ 0, %65 ]
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !69, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !59, metadata !DIExpression()), !dbg !103
  %72 = getelementptr inbounds double, ptr %6, i64 %70, !dbg !116
  %73 = load double, ptr %72, align 8, !dbg !116, !tbaa !108
  %74 = fmul double %64, %73, !dbg !119
  %75 = getelementptr double, ptr %67, i64 %69, !dbg !120
  %76 = load double, ptr %75, align 8, !dbg !121, !tbaa !108
  %77 = fadd double %76, %74, !dbg !121
  store double %77, ptr %75, align 8, !dbg !121, !tbaa !108
  %78 = add i64 %70, %49, !dbg !122
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !69, metadata !DIExpression()), !dbg !113
  %79 = or disjoint i64 %69, 1, !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !59, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !69, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !59, metadata !DIExpression()), !dbg !103
  %80 = getelementptr inbounds double, ptr %6, i64 %78, !dbg !116
  %81 = load double, ptr %80, align 8, !dbg !116, !tbaa !108
  %82 = fmul double %64, %81, !dbg !119
  %83 = getelementptr double, ptr %67, i64 %79, !dbg !120
  %84 = load double, ptr %83, align 8, !dbg !121, !tbaa !108
  %85 = fadd double %84, %82, !dbg !121
  store double %85, ptr %83, align 8, !dbg !121, !tbaa !108
  %86 = add i64 %78, %49, !dbg !122
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !69, metadata !DIExpression()), !dbg !113
  %87 = add nuw nsw i64 %69, 2, !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !59, metadata !DIExpression()), !dbg !103
  %88 = add i64 %71, 2, !dbg !114
  %89 = icmp eq i64 %88, %57, !dbg !114
  br i1 %89, label %90, label %68, !dbg !114, !llvm.loop !124

90:                                               ; preds = %68, %65
  %91 = phi i64 [ 0, %65 ], [ %87, %68 ]
  %92 = phi i64 [ %48, %65 ], [ %86, %68 ]
  br i1 %58, label %100, label %93, !dbg !114

93:                                               ; preds = %90
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !69, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !59, metadata !DIExpression()), !dbg !103
  %94 = getelementptr inbounds double, ptr %6, i64 %92, !dbg !116
  %95 = load double, ptr %94, align 8, !dbg !116, !tbaa !108
  %96 = fmul double %64, %95, !dbg !119
  %97 = getelementptr double, ptr %67, i64 %91, !dbg !120
  %98 = load double, ptr %97, align 8, !dbg !121, !tbaa !108
  %99 = fadd double %98, %96, !dbg !121
  store double %99, ptr %97, align 8, !dbg !121, !tbaa !108
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %92, i64 %49), metadata !69, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !59, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !103
  br label %100, !dbg !127

100:                                              ; preds = %93, %90, %59
  %101 = add i64 %60, %52, !dbg !127
  tail call void @llvm.dbg.value(metadata i64 %101, metadata !62, metadata !DIExpression()), !dbg !102
  %102 = add nuw nsw i64 %61, 1, !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !56, metadata !DIExpression()), !dbg !103
  %103 = icmp eq i64 %102, %53, !dbg !104
  br i1 %103, label %175, label %59, !dbg !105, !llvm.loop !129

104:                                              ; preds = %35
  %105 = icmp eq i32 %0, 102, !dbg !131
  br i1 %105, label %106, label %174, !dbg !132

106:                                              ; preds = %104
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !70, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i32 0, metadata !59, metadata !DIExpression()), !dbg !103
  %107 = icmp sgt i32 %2, 0, !dbg !134
  br i1 %107, label %108, label %175, !dbg !135

108:                                              ; preds = %106
  %109 = icmp sgt i32 %7, 0, !dbg !136
  %110 = sub nsw i32 1, %2, !dbg !136
  %111 = mul i32 %110, %7, !dbg !136
  %112 = select i1 %109, i32 0, i32 %111, !dbg !136
  tail call void @llvm.dbg.value(metadata i32 %112, metadata !70, metadata !DIExpression()), !dbg !133
  %113 = icmp sgt i32 %5, 0
  %114 = sub i32 1, %1
  %115 = mul i32 %114, %5
  %116 = select i1 %113, i32 0, i32 %115
  %117 = icmp sgt i32 %1, 0
  %118 = sext i32 %116 to i64, !dbg !135
  %119 = sext i32 %5 to i64, !dbg !135
  %120 = sext i32 %112 to i64, !dbg !135
  %121 = sext i32 %7 to i64, !dbg !135
  %122 = sext i32 %9 to i64, !dbg !135
  %123 = zext nneg i32 %2 to i64, !dbg !134
  %124 = zext i32 %1 to i64
  %125 = and i64 %124, 1
  %126 = icmp eq i32 %1, 1
  %127 = and i64 %124, 2147483646
  %128 = icmp eq i64 %125, 0
  br label %129, !dbg !135

129:                                              ; preds = %108, %170
  %130 = phi i64 [ 0, %108 ], [ %172, %170 ]
  %131 = phi i64 [ %120, %108 ], [ %171, %170 ]
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !70, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i64 %130, metadata !59, metadata !DIExpression()), !dbg !103
  %132 = getelementptr inbounds double, ptr %6, i64 %131, !dbg !137
  %133 = load double, ptr %132, align 8, !dbg !137, !tbaa !108
  %134 = fmul double %133, %3, !dbg !138
  tail call void @llvm.dbg.value(metadata double %134, metadata !73, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !77, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i32 0, metadata !56, metadata !DIExpression()), !dbg !103
  br i1 %117, label %135, label %170, !dbg !140

135:                                              ; preds = %129
  %136 = mul nsw i64 %130, %122
  %137 = getelementptr double, ptr %8, i64 %136, !dbg !140
  br i1 %126, label %160, label %138, !dbg !140

138:                                              ; preds = %135, %138
  %139 = phi i64 [ %157, %138 ], [ 0, %135 ]
  %140 = phi i64 [ %156, %138 ], [ %118, %135 ]
  %141 = phi i64 [ %158, %138 ], [ 0, %135 ]
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !77, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !56, metadata !DIExpression()), !dbg !103
  %142 = getelementptr inbounds double, ptr %4, i64 %140, !dbg !142
  %143 = load double, ptr %142, align 8, !dbg !142, !tbaa !108
  %144 = fmul double %134, %143, !dbg !145
  %145 = getelementptr double, ptr %137, i64 %139, !dbg !146
  %146 = load double, ptr %145, align 8, !dbg !147, !tbaa !108
  %147 = fadd double %146, %144, !dbg !147
  store double %147, ptr %145, align 8, !dbg !147, !tbaa !108
  %148 = add i64 %140, %119, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !77, metadata !DIExpression()), !dbg !139
  %149 = or disjoint i64 %139, 1, !dbg !149
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !56, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !77, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !56, metadata !DIExpression()), !dbg !103
  %150 = getelementptr inbounds double, ptr %4, i64 %148, !dbg !142
  %151 = load double, ptr %150, align 8, !dbg !142, !tbaa !108
  %152 = fmul double %134, %151, !dbg !145
  %153 = getelementptr double, ptr %137, i64 %149, !dbg !146
  %154 = load double, ptr %153, align 8, !dbg !147, !tbaa !108
  %155 = fadd double %154, %152, !dbg !147
  store double %155, ptr %153, align 8, !dbg !147, !tbaa !108
  %156 = add i64 %148, %119, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !77, metadata !DIExpression()), !dbg !139
  %157 = add nuw nsw i64 %139, 2, !dbg !149
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !56, metadata !DIExpression()), !dbg !103
  %158 = add i64 %141, 2, !dbg !140
  %159 = icmp eq i64 %158, %127, !dbg !140
  br i1 %159, label %160, label %138, !dbg !140, !llvm.loop !150

160:                                              ; preds = %138, %135
  %161 = phi i64 [ 0, %135 ], [ %157, %138 ]
  %162 = phi i64 [ %118, %135 ], [ %156, %138 ]
  br i1 %128, label %170, label %163, !dbg !140

163:                                              ; preds = %160
  tail call void @llvm.dbg.value(metadata i64 %162, metadata !77, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !56, metadata !DIExpression()), !dbg !103
  %164 = getelementptr inbounds double, ptr %4, i64 %162, !dbg !142
  %165 = load double, ptr %164, align 8, !dbg !142, !tbaa !108
  %166 = fmul double %134, %165, !dbg !145
  %167 = getelementptr double, ptr %137, i64 %161, !dbg !146
  %168 = load double, ptr %167, align 8, !dbg !147, !tbaa !108
  %169 = fadd double %168, %166, !dbg !147
  store double %169, ptr %167, align 8, !dbg !147, !tbaa !108
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %162, i64 %119), metadata !77, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !56, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !103
  br label %170, !dbg !152

170:                                              ; preds = %163, %160, %129
  %171 = add i64 %131, %121, !dbg !152
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !70, metadata !DIExpression()), !dbg !133
  %172 = add nuw nsw i64 %130, 1, !dbg !153
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !59, metadata !DIExpression()), !dbg !103
  %173 = icmp eq i64 %172, %123, !dbg !134
  br i1 %173, label %175, label %129, !dbg !135, !llvm.loop !154

174:                                              ; preds = %104
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !156
  br label %175

175:                                              ; preds = %170, %100, %106, %36, %174
  ret void, !dbg !158
}

declare !dbg !160 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

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
