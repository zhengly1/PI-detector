; ModuleID = 'sger.ll'
source_filename = "sger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"./source_ger.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_sger(i32 noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr nocapture noundef %8, i32 noundef %9) local_unnamed_addr #0 !dbg !35 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !46, metadata !DIExpression()), !dbg !78
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !47, metadata !DIExpression()), !dbg !78
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !48, metadata !DIExpression()), !dbg !78
  tail call void @llvm.dbg.value(metadata float %3, metadata !49, metadata !DIExpression()), !dbg !78
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
  br i1 %22, label %36, label %113, !dbg !101

36:                                               ; preds = %35
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata i32 0, metadata !56, metadata !DIExpression()), !dbg !103
  %37 = icmp sgt i32 %1, 0, !dbg !104
  br i1 %37, label %38, label %193, !dbg !105

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

59:                                               ; preds = %109, %38
  %60 = phi i64 [ %51, %38 ], [ %110, %109 ]
  %61 = phi i64 [ 0, %38 ], [ %111, %109 ]
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !56, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !62, metadata !DIExpression()), !dbg !102
  %62 = getelementptr inbounds float, ptr %4, i64 %60, !dbg !107
  %63 = load float, ptr %62, align 4, !dbg !107, !tbaa !108
  %64 = fmul float %63, %3, !dbg !112
  tail call void @llvm.dbg.value(metadata float %64, metadata !65, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !69, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, metadata !59, metadata !DIExpression()), !dbg !103
  br i1 %47, label %65, label %109, !dbg !114

65:                                               ; preds = %59
  %66 = mul nsw i64 %61, %50
  %67 = getelementptr float, ptr %8, i64 %66, !dbg !114
  br i1 %56, label %96, label %68, !dbg !114

68:                                               ; preds = %68, %65
  %69 = phi i64 [ %93, %68 ], [ 0, %65 ]
  %70 = phi i64 [ %92, %68 ], [ %48, %65 ]
  %71 = phi i64 [ %94, %68 ], [ 0, %65 ]
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !69, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !59, metadata !DIExpression()), !dbg !103
  %72 = getelementptr inbounds float, ptr %6, i64 %70, !dbg !116
  %73 = load float, ptr %72, align 4, !dbg !116, !tbaa !108
  %74 = fmul float %64, %73, !dbg !119
  %75 = getelementptr float, ptr %67, i64 %69, !dbg !120
  %76 = load float, ptr %75, align 4, !dbg !121, !tbaa !108
  %77 = fpext float %76 to double, !dbg !121
  %78 = fpext float %74 to double, !dbg !121
  %79 = fptrunc double %77 to float, !dbg !121
  %80 = fptrunc double %78 to float, !dbg !121
  %handler_result = call float @fAddHandlerFloat(float %79, float %80), !dbg !121
  store float %handler_result, ptr %75, align 4, !dbg !121, !tbaa !108
  %81 = add i64 %70, %49, !dbg !122
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !69, metadata !DIExpression()), !dbg !113
  %82 = or disjoint i64 %69, 1, !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !59, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !69, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !59, metadata !DIExpression()), !dbg !103
  %83 = getelementptr inbounds float, ptr %6, i64 %81, !dbg !116
  %84 = load float, ptr %83, align 4, !dbg !116, !tbaa !108
  %85 = fmul float %64, %84, !dbg !119
  %86 = getelementptr float, ptr %67, i64 %82, !dbg !120
  %87 = load float, ptr %86, align 4, !dbg !121, !tbaa !108
  %88 = fpext float %87 to double, !dbg !121
  %89 = fpext float %85 to double, !dbg !121
  %90 = fptrunc double %88 to float, !dbg !121
  %91 = fptrunc double %89 to float, !dbg !121
  %handler_result1 = call float @fAddHandlerFloat(float %90, float %91), !dbg !121
  store float %handler_result1, ptr %86, align 4, !dbg !121, !tbaa !108
  %92 = add i64 %81, %49, !dbg !122
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !69, metadata !DIExpression()), !dbg !113
  %93 = add nuw nsw i64 %69, 2, !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %93, metadata !59, metadata !DIExpression()), !dbg !103
  %94 = add i64 %71, 2, !dbg !114
  %95 = icmp eq i64 %94, %57, !dbg !114
  br i1 %95, label %96, label %68, !dbg !114, !llvm.loop !124

96:                                               ; preds = %68, %65
  %97 = phi i64 [ 0, %65 ], [ %93, %68 ]
  %98 = phi i64 [ %48, %65 ], [ %92, %68 ]
  br i1 %58, label %109, label %99, !dbg !114

99:                                               ; preds = %96
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !69, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !59, metadata !DIExpression()), !dbg !103
  %100 = getelementptr inbounds float, ptr %6, i64 %98, !dbg !116
  %101 = load float, ptr %100, align 4, !dbg !116, !tbaa !108
  %102 = fmul float %64, %101, !dbg !119
  %103 = getelementptr float, ptr %67, i64 %97, !dbg !120
  %104 = load float, ptr %103, align 4, !dbg !121, !tbaa !108
  %105 = fpext float %104 to double, !dbg !121
  %106 = fpext float %102 to double, !dbg !121
  %107 = fptrunc double %105 to float, !dbg !121
  %108 = fptrunc double %106 to float, !dbg !121
  %handler_result2 = call float @fAddHandlerFloat(float %107, float %108), !dbg !121
  store float %handler_result2, ptr %103, align 4, !dbg !121, !tbaa !108
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %98, i64 %49), metadata !69, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !59, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !103
  br label %109, !dbg !127

109:                                              ; preds = %99, %96, %59
  %110 = add i64 %60, %52, !dbg !127
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !62, metadata !DIExpression()), !dbg !102
  %111 = add nuw nsw i64 %61, 1, !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %111, metadata !56, metadata !DIExpression()), !dbg !103
  %112 = icmp eq i64 %111, %53, !dbg !104
  br i1 %112, label %193, label %59, !dbg !105, !llvm.loop !129

113:                                              ; preds = %35
  %114 = icmp eq i32 %0, 102, !dbg !131
  br i1 %114, label %115, label %192, !dbg !132

115:                                              ; preds = %113
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !70, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i32 0, metadata !59, metadata !DIExpression()), !dbg !103
  %116 = icmp sgt i32 %2, 0, !dbg !134
  br i1 %116, label %117, label %193, !dbg !135

117:                                              ; preds = %115
  %118 = icmp sgt i32 %7, 0, !dbg !136
  %119 = sub nsw i32 1, %2, !dbg !136
  %120 = mul i32 %119, %7, !dbg !136
  %121 = select i1 %118, i32 0, i32 %120, !dbg !136
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !70, metadata !DIExpression()), !dbg !133
  %122 = icmp sgt i32 %5, 0
  %123 = sub i32 1, %1
  %124 = mul i32 %123, %5
  %125 = select i1 %122, i32 0, i32 %124
  %126 = icmp sgt i32 %1, 0
  %127 = sext i32 %125 to i64, !dbg !135
  %128 = sext i32 %5 to i64, !dbg !135
  %129 = sext i32 %121 to i64, !dbg !135
  %130 = sext i32 %7 to i64, !dbg !135
  %131 = sext i32 %9 to i64, !dbg !135
  %132 = zext nneg i32 %2 to i64, !dbg !134
  %133 = zext i32 %1 to i64
  %134 = and i64 %133, 1
  %135 = icmp eq i32 %1, 1
  %136 = and i64 %133, 2147483646
  %137 = icmp eq i64 %134, 0
  br label %138, !dbg !135

138:                                              ; preds = %188, %117
  %139 = phi i64 [ 0, %117 ], [ %190, %188 ]
  %140 = phi i64 [ %129, %117 ], [ %189, %188 ]
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !70, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !59, metadata !DIExpression()), !dbg !103
  %141 = getelementptr inbounds float, ptr %6, i64 %140, !dbg !137
  %142 = load float, ptr %141, align 4, !dbg !137, !tbaa !108
  %143 = fmul float %142, %3, !dbg !138
  tail call void @llvm.dbg.value(metadata float %143, metadata !73, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i32 %125, metadata !77, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i32 0, metadata !56, metadata !DIExpression()), !dbg !103
  br i1 %126, label %144, label %188, !dbg !140

144:                                              ; preds = %138
  %145 = mul nsw i64 %139, %131
  %146 = getelementptr float, ptr %8, i64 %145, !dbg !140
  br i1 %135, label %175, label %147, !dbg !140

147:                                              ; preds = %147, %144
  %148 = phi i64 [ %172, %147 ], [ 0, %144 ]
  %149 = phi i64 [ %171, %147 ], [ %127, %144 ]
  %150 = phi i64 [ %173, %147 ], [ 0, %144 ]
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !77, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !56, metadata !DIExpression()), !dbg !103
  %151 = getelementptr inbounds float, ptr %4, i64 %149, !dbg !142
  %152 = load float, ptr %151, align 4, !dbg !142, !tbaa !108
  %153 = fmul float %143, %152, !dbg !145
  %154 = getelementptr float, ptr %146, i64 %148, !dbg !146
  %155 = load float, ptr %154, align 4, !dbg !147, !tbaa !108
  %156 = fpext float %155 to double, !dbg !147
  %157 = fpext float %153 to double, !dbg !147
  %158 = fptrunc double %156 to float, !dbg !147
  %159 = fptrunc double %157 to float, !dbg !147
  %handler_result3 = call float @fAddHandlerFloat(float %158, float %159), !dbg !147
  store float %handler_result3, ptr %154, align 4, !dbg !147, !tbaa !108
  %160 = add i64 %149, %128, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !77, metadata !DIExpression()), !dbg !139
  %161 = or disjoint i64 %148, 1, !dbg !149
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !56, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !77, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !56, metadata !DIExpression()), !dbg !103
  %162 = getelementptr inbounds float, ptr %4, i64 %160, !dbg !142
  %163 = load float, ptr %162, align 4, !dbg !142, !tbaa !108
  %164 = fmul float %143, %163, !dbg !145
  %165 = getelementptr float, ptr %146, i64 %161, !dbg !146
  %166 = load float, ptr %165, align 4, !dbg !147, !tbaa !108
  %167 = fpext float %166 to double, !dbg !147
  %168 = fpext float %164 to double, !dbg !147
  %169 = fptrunc double %167 to float, !dbg !147
  %170 = fptrunc double %168 to float, !dbg !147
  %handler_result4 = call float @fAddHandlerFloat(float %169, float %170), !dbg !147
  store float %handler_result4, ptr %165, align 4, !dbg !147, !tbaa !108
  %171 = add i64 %160, %128, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !77, metadata !DIExpression()), !dbg !139
  %172 = add nuw nsw i64 %148, 2, !dbg !149
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !56, metadata !DIExpression()), !dbg !103
  %173 = add i64 %150, 2, !dbg !140
  %174 = icmp eq i64 %173, %136, !dbg !140
  br i1 %174, label %175, label %147, !dbg !140, !llvm.loop !150

175:                                              ; preds = %147, %144
  %176 = phi i64 [ 0, %144 ], [ %172, %147 ]
  %177 = phi i64 [ %127, %144 ], [ %171, %147 ]
  br i1 %137, label %188, label %178, !dbg !140

178:                                              ; preds = %175
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !77, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !56, metadata !DIExpression()), !dbg !103
  %179 = getelementptr inbounds float, ptr %4, i64 %177, !dbg !142
  %180 = load float, ptr %179, align 4, !dbg !142, !tbaa !108
  %181 = fmul float %143, %180, !dbg !145
  %182 = getelementptr float, ptr %146, i64 %176, !dbg !146
  %183 = load float, ptr %182, align 4, !dbg !147, !tbaa !108
  %184 = fpext float %183 to double, !dbg !147
  %185 = fpext float %181 to double, !dbg !147
  %186 = fptrunc double %184 to float, !dbg !147
  %187 = fptrunc double %185 to float, !dbg !147
  %handler_result5 = call float @fAddHandlerFloat(float %186, float %187), !dbg !147
  store float %handler_result5, ptr %182, align 4, !dbg !147, !tbaa !108
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %177, i64 %128), metadata !77, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !56, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !103
  br label %188, !dbg !152

188:                                              ; preds = %178, %175, %138
  %189 = add i64 %140, %130, !dbg !152
  tail call void @llvm.dbg.value(metadata i64 %189, metadata !70, metadata !DIExpression()), !dbg !133
  %190 = add nuw nsw i64 %139, 1, !dbg !153
  tail call void @llvm.dbg.value(metadata i64 %190, metadata !59, metadata !DIExpression()), !dbg !103
  %191 = icmp eq i64 %190, %132, !dbg !134
  br i1 %191, label %193, label %138, !dbg !135, !llvm.loop !154

192:                                              ; preds = %113
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !156
  br label %193

193:                                              ; preds = %192, %188, %115, %109, %36
  ret void, !dbg !158
}

declare !dbg !160 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

declare float @fAddHandlerFloat(float, float)

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
!18 = !DIFile(filename: "sger.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "5fb94594450c8ee01f921699476da5d3")
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
!35 = distinct !DISubprogram(name: "cblas_sger", scope: !18, file: !18, line: 7, type: !36, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !45)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !39, !39, !41, !43, !39, !43, !39, !44, !39}
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !59, !60, !62, !65, !69, !70, !73, !77}
!46 = !DILocalVariable(name: "order", arg: 1, scope: !35, file: !18, line: 7, type: !38)
!47 = !DILocalVariable(name: "M", arg: 2, scope: !35, file: !18, line: 7, type: !39)
!48 = !DILocalVariable(name: "N", arg: 3, scope: !35, file: !18, line: 7, type: !39)
!49 = !DILocalVariable(name: "alpha", arg: 4, scope: !35, file: !18, line: 8, type: !41)
!50 = !DILocalVariable(name: "X", arg: 5, scope: !35, file: !18, line: 8, type: !43)
!51 = !DILocalVariable(name: "incX", arg: 6, scope: !35, file: !18, line: 8, type: !39)
!52 = !DILocalVariable(name: "Y", arg: 7, scope: !35, file: !18, line: 8, type: !43)
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
!109 = !{!"float", !110, i64 0}
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
