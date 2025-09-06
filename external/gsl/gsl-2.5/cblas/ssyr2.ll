; ModuleID = 'ssyr2.c'
source_filename = "ssyr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_syr2.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_ssyr2(i32 noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr nocapture noundef %8, i32 noundef %9) local_unnamed_addr #0 !dbg !39 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !51, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !52, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !53, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata float %3, metadata !54, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !55, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !56, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !57, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !58, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !59, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !60, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata i32 0, metadata !65, metadata !DIExpression()), !dbg !90
  %11 = add i32 %0, -103, !dbg !91
  %12 = icmp ult i32 %11, -2, !dbg !91
  %13 = zext i1 %12 to i32, !dbg !91
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !65, metadata !DIExpression()), !dbg !90
  %14 = add i32 %1, -123, !dbg !93
  %15 = icmp ult i32 %14, -2, !dbg !93
  %16 = select i1 %15, i32 2, i32 %13, !dbg !93
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !65, metadata !DIExpression()), !dbg !90
  %17 = icmp slt i32 %2, 0, !dbg !95
  %18 = select i1 %17, i32 3, i32 %16, !dbg !97
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !65, metadata !DIExpression()), !dbg !90
  %19 = icmp eq i32 %5, 0, !dbg !98
  %20 = select i1 %19, i32 6, i32 %18, !dbg !97
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !65, metadata !DIExpression()), !dbg !90
  %21 = icmp eq i32 %7, 0, !dbg !100
  %22 = select i1 %21, i32 8, i32 %20, !dbg !97
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !65, metadata !DIExpression()), !dbg !90
  %23 = tail call i32 @llvm.smax.i32(i32 %2, i32 1), !dbg !102
  %24 = icmp sgt i32 %23, %9, !dbg !102
  %25 = select i1 %24, i32 10, i32 %22, !dbg !97
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !65, metadata !DIExpression()), !dbg !90
  %26 = icmp eq i32 %25, 0, !dbg !104
  br i1 %26, label %28, label %27, !dbg !97

27:                                               ; preds = %10
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !104
  br label %28, !dbg !104

28:                                               ; preds = %27, %10
  %29 = icmp eq i32 %2, 0, !dbg !106
  %30 = fcmp oeq float %3, 0.000000e+00
  %31 = or i1 %29, %30, !dbg !108
  br i1 %31, label %184, label %32, !dbg !108

32:                                               ; preds = %28
  %33 = icmp eq i32 %0, 101, !dbg !109
  %34 = icmp eq i32 %1, 121
  %35 = and i1 %33, %34, !dbg !110
  br i1 %35, label %40, label %36, !dbg !110

36:                                               ; preds = %32
  %37 = icmp eq i32 %0, 102, !dbg !111
  %38 = icmp eq i32 %1, 122
  %39 = and i1 %37, %38, !dbg !112
  br i1 %39, label %40, label %91, !dbg !112

40:                                               ; preds = %36, %32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !67, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !70, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, metadata !61, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !67, metadata !DIExpression()), !dbg !113
  %41 = icmp sgt i32 %2, 0, !dbg !115
  br i1 %41, label %42, label %184, !dbg !116

42:                                               ; preds = %40
  %43 = icmp sgt i32 %7, 0, !dbg !117
  %44 = sub nsw i32 1, %2, !dbg !118
  %45 = mul i32 %44, %7, !dbg !117
  %46 = select i1 %43, i32 0, i32 %45, !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !70, metadata !DIExpression()), !dbg !113
  %47 = icmp sgt i32 %5, 0, !dbg !118
  %48 = mul i32 %44, %5, !dbg !118
  %49 = select i1 %47, i32 0, i32 %48, !dbg !118
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !67, metadata !DIExpression()), !dbg !113
  %50 = sext i32 %46 to i64, !dbg !116
  %51 = sext i32 %7 to i64, !dbg !116
  %52 = sext i32 %49 to i64, !dbg !116
  %53 = sext i32 %5 to i64, !dbg !116
  %54 = sext i32 %9 to i64, !dbg !116
  %55 = zext nneg i32 %2 to i64, !dbg !115
  br label %56, !dbg !116

56:                                               ; preds = %42, %86
  %57 = phi i64 [ %52, %42 ], [ %87, %86 ]
  %58 = phi i64 [ %50, %42 ], [ %88, %86 ]
  %59 = phi i64 [ 0, %42 ], [ %89, %86 ]
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !61, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !70, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !67, metadata !DIExpression()), !dbg !113
  %60 = getelementptr inbounds float, ptr %4, i64 %57, !dbg !119
  %61 = load float, ptr %60, align 4, !dbg !119, !tbaa !120
  %62 = fmul float %61, %3, !dbg !124
  tail call void @llvm.dbg.value(metadata float %62, metadata !71, metadata !DIExpression()), !dbg !125
  %63 = getelementptr inbounds float, ptr %6, i64 %58, !dbg !126
  %64 = load float, ptr %63, align 4, !dbg !126, !tbaa !120
  %65 = fmul float %64, %3, !dbg !127
  tail call void @llvm.dbg.value(metadata float %65, metadata !75, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !76, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !77, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !64, metadata !DIExpression()), !dbg !114
  %66 = mul nsw i64 %59, %54
  %67 = getelementptr float, ptr %8, i64 %66, !dbg !128
  br label %68, !dbg !128

68:                                               ; preds = %56, %68
  %69 = phi i64 [ %57, %56 ], [ %82, %68 ]
  %70 = phi i64 [ %58, %56 ], [ %83, %68 ]
  %71 = phi i64 [ %59, %56 ], [ %84, %68 ]
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !64, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !77, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !76, metadata !DIExpression()), !dbg !125
  %72 = getelementptr inbounds float, ptr %6, i64 %70, !dbg !130
  %73 = load float, ptr %72, align 4, !dbg !130, !tbaa !120
  %74 = fmul float %62, %73, !dbg !133
  %75 = getelementptr inbounds float, ptr %4, i64 %69, !dbg !134
  %76 = load float, ptr %75, align 4, !dbg !134, !tbaa !120
  %77 = fmul float %65, %76, !dbg !135
  %78 = fadd float %74, %77, !dbg !136
  %79 = getelementptr float, ptr %67, i64 %71, !dbg !137
  %80 = load float, ptr %79, align 4, !dbg !138, !tbaa !120
  %81 = fadd float %80, %78, !dbg !138
  store float %81, ptr %79, align 4, !dbg !138, !tbaa !120
  %82 = add i64 %69, %53, !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !76, metadata !DIExpression()), !dbg !125
  %83 = add i64 %70, %51, !dbg !140
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !77, metadata !DIExpression()), !dbg !125
  %84 = add nuw nsw i64 %71, 1, !dbg !141
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !64, metadata !DIExpression()), !dbg !114
  %85 = icmp eq i64 %84, %55, !dbg !142
  br i1 %85, label %86, label %68, !dbg !128, !llvm.loop !143

86:                                               ; preds = %68
  %87 = add i64 %57, %53, !dbg !146
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !67, metadata !DIExpression()), !dbg !113
  %88 = add i64 %58, %51, !dbg !147
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !70, metadata !DIExpression()), !dbg !113
  %89 = add nuw nsw i64 %59, 1, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !61, metadata !DIExpression()), !dbg !114
  %90 = icmp eq i64 %89, %55, !dbg !115
  br i1 %90, label %184, label %56, !dbg !116, !llvm.loop !149

91:                                               ; preds = %36
  %92 = and i1 %33, %38, !dbg !151
  %93 = and i1 %37, %34
  %94 = or i1 %92, %93, !dbg !151
  br i1 %94, label %95, label %183, !dbg !151

95:                                               ; preds = %91
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !78, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !81, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata i32 0, metadata !61, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !78, metadata !DIExpression()), !dbg !152
  %96 = icmp sgt i32 %2, 0, !dbg !153
  br i1 %96, label %97, label %184, !dbg !154

97:                                               ; preds = %95
  %98 = icmp sgt i32 %7, 0, !dbg !155
  %99 = sub nsw i32 1, %2, !dbg !156
  %100 = mul i32 %99, %7, !dbg !155
  %101 = select i1 %98, i32 0, i32 %100, !dbg !155
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !81, metadata !DIExpression()), !dbg !152
  %102 = icmp sgt i32 %5, 0, !dbg !156
  %103 = mul i32 %99, %5, !dbg !156
  %104 = select i1 %102, i32 0, i32 %103, !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !78, metadata !DIExpression()), !dbg !152
  %105 = sext i32 %101 to i64, !dbg !154
  %106 = sext i32 %7 to i64, !dbg !154
  %107 = sext i32 %104 to i64, !dbg !154
  %108 = sext i32 %5 to i64, !dbg !154
  %109 = sext i32 %9 to i64, !dbg !154
  %110 = zext nneg i32 %2 to i64, !dbg !153
  br label %111, !dbg !154

111:                                              ; preds = %97, %177
  %112 = phi i64 [ %107, %97 ], [ %178, %177 ]
  %113 = phi i64 [ %105, %97 ], [ %179, %177 ]
  %114 = phi i64 [ 0, %97 ], [ %180, %177 ]
  %115 = phi i64 [ 1, %97 ], [ %181, %177 ]
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !61, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i64 %113, metadata !81, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !78, metadata !DIExpression()), !dbg !152
  %116 = getelementptr inbounds float, ptr %4, i64 %112, !dbg !157
  %117 = load float, ptr %116, align 4, !dbg !157, !tbaa !120
  %118 = fmul float %117, %3, !dbg !158
  tail call void @llvm.dbg.value(metadata float %118, metadata !82, metadata !DIExpression()), !dbg !159
  %119 = getelementptr inbounds float, ptr %6, i64 %113, !dbg !160
  %120 = load float, ptr %119, align 4, !dbg !160, !tbaa !120
  %121 = fmul float %120, %3, !dbg !161
  tail call void @llvm.dbg.value(metadata float %121, metadata !86, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !87, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !88, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !114
  %122 = mul nsw i64 %114, %109
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !88, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !87, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !114
  %123 = getelementptr float, ptr %8, i64 %122, !dbg !162
  %124 = and i64 %115, 1, !dbg !162
  %125 = icmp eq i64 %114, 0, !dbg !162
  br i1 %125, label %161, label %126, !dbg !162

126:                                              ; preds = %111
  %127 = and i64 %115, 9223372036854775806, !dbg !162
  br label %128, !dbg !162

128:                                              ; preds = %128, %126
  %129 = phi i64 [ 0, %126 ], [ %158, %128 ]
  %130 = phi i64 [ %107, %126 ], [ %156, %128 ]
  %131 = phi i64 [ %105, %126 ], [ %157, %128 ]
  %132 = phi i64 [ 0, %126 ], [ %159, %128 ]
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !88, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i64 %130, metadata !87, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !64, metadata !DIExpression()), !dbg !114
  %133 = getelementptr inbounds float, ptr %6, i64 %131, !dbg !164
  %134 = load float, ptr %133, align 4, !dbg !164, !tbaa !120
  %135 = fmul float %118, %134, !dbg !167
  %136 = getelementptr inbounds float, ptr %4, i64 %130, !dbg !168
  %137 = load float, ptr %136, align 4, !dbg !168, !tbaa !120
  %138 = fmul float %121, %137, !dbg !169
  %139 = fadd float %135, %138, !dbg !170
  %140 = getelementptr float, ptr %123, i64 %129, !dbg !171
  %141 = load float, ptr %140, align 4, !dbg !172, !tbaa !120
  %142 = fadd float %141, %139, !dbg !172
  store float %142, ptr %140, align 4, !dbg !172, !tbaa !120
  %143 = add i64 %130, %108, !dbg !173
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !87, metadata !DIExpression()), !dbg !159
  %144 = add i64 %131, %106, !dbg !174
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !88, metadata !DIExpression()), !dbg !159
  %145 = or disjoint i64 %129, 1, !dbg !175
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !64, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !88, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !87, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !64, metadata !DIExpression()), !dbg !114
  %146 = getelementptr inbounds float, ptr %6, i64 %144, !dbg !164
  %147 = load float, ptr %146, align 4, !dbg !164, !tbaa !120
  %148 = fmul float %118, %147, !dbg !167
  %149 = getelementptr inbounds float, ptr %4, i64 %143, !dbg !168
  %150 = load float, ptr %149, align 4, !dbg !168, !tbaa !120
  %151 = fmul float %121, %150, !dbg !169
  %152 = fadd float %148, %151, !dbg !170
  %153 = getelementptr float, ptr %123, i64 %145, !dbg !171
  %154 = load float, ptr %153, align 4, !dbg !172, !tbaa !120
  %155 = fadd float %154, %152, !dbg !172
  store float %155, ptr %153, align 4, !dbg !172, !tbaa !120
  %156 = add i64 %143, %108, !dbg !173
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !87, metadata !DIExpression()), !dbg !159
  %157 = add i64 %144, %106, !dbg !174
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !88, metadata !DIExpression()), !dbg !159
  %158 = add nuw nsw i64 %129, 2, !dbg !175
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !64, metadata !DIExpression()), !dbg !114
  %159 = add i64 %132, 2, !dbg !162
  %160 = icmp eq i64 %159, %127, !dbg !162
  br i1 %160, label %161, label %128, !dbg !162, !llvm.loop !176

161:                                              ; preds = %128, %111
  %162 = phi i64 [ 0, %111 ], [ %158, %128 ]
  %163 = phi i64 [ %107, %111 ], [ %156, %128 ]
  %164 = phi i64 [ %105, %111 ], [ %157, %128 ]
  %165 = icmp eq i64 %124, 0, !dbg !162
  br i1 %165, label %177, label %166, !dbg !162

166:                                              ; preds = %161
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !88, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i64 %163, metadata !87, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i64 %162, metadata !64, metadata !DIExpression()), !dbg !114
  %167 = getelementptr inbounds float, ptr %6, i64 %164, !dbg !164
  %168 = load float, ptr %167, align 4, !dbg !164, !tbaa !120
  %169 = fmul float %118, %168, !dbg !167
  %170 = getelementptr inbounds float, ptr %4, i64 %163, !dbg !168
  %171 = load float, ptr %170, align 4, !dbg !168, !tbaa !120
  %172 = fmul float %121, %171, !dbg !169
  %173 = fadd float %169, %172, !dbg !170
  %174 = getelementptr float, ptr %123, i64 %162, !dbg !171
  %175 = load float, ptr %174, align 4, !dbg !172, !tbaa !120
  %176 = fadd float %175, %173, !dbg !172
  store float %176, ptr %174, align 4, !dbg !172, !tbaa !120
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %163, i64 %108), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !159
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %164, i64 %106), metadata !88, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !159
  tail call void @llvm.dbg.value(metadata i64 %162, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !114
  br label %177, !dbg !178

177:                                              ; preds = %161, %166
  %178 = add i64 %112, %108, !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %178, metadata !78, metadata !DIExpression()), !dbg !152
  %179 = add i64 %113, %106, !dbg !179
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !81, metadata !DIExpression()), !dbg !152
  %180 = add nuw nsw i64 %114, 1, !dbg !180
  tail call void @llvm.dbg.value(metadata i64 %180, metadata !61, metadata !DIExpression()), !dbg !114
  %181 = add nuw nsw i64 %115, 1, !dbg !154
  %182 = icmp eq i64 %180, %110, !dbg !153
  br i1 %182, label %184, label %111, !dbg !154, !llvm.loop !181

183:                                              ; preds = %91
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !183
  br label %184

184:                                              ; preds = %177, %86, %95, %40, %183, %28
  ret void, !dbg !185
}

declare !dbg !187 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_syr2.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "b136eeb7c095eb73b8a2452a9a2eaba7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !30, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "ssyr2.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "78c75d2efef86fa0881e697e0ab20346")
!19 = !{!20, !26}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_ORDER", file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "CblasRowMajor", value: 101)
!25 = !DIEnumerator(name: "CblasColMajor", value: 102)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_UPLO", file: !21, line: 48, baseType: !22, size: 32, elements: !27)
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "CblasUpper", value: 121)
!29 = !DIEnumerator(name: "CblasLower", value: 122)
!30 = !{!0, !7, !12}
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 8, !"PIC Level", i32 2}
!35 = !{i32 7, !"PIE Level", i32 2}
!36 = !{i32 7, !"uwtable", i32 2}
!37 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!38 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!39 = distinct !DISubprogram(name: "cblas_ssyr2", scope: !18, file: !18, line: 7, type: !40, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !50)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43, !44, !46, !48, !44, !48, !44, !49, !44}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !64, !65, !67, !70, !71, !75, !76, !77, !78, !81, !82, !86, !87, !88}
!51 = !DILocalVariable(name: "order", arg: 1, scope: !39, file: !18, line: 7, type: !42)
!52 = !DILocalVariable(name: "Uplo", arg: 2, scope: !39, file: !18, line: 7, type: !43)
!53 = !DILocalVariable(name: "N", arg: 3, scope: !39, file: !18, line: 8, type: !44)
!54 = !DILocalVariable(name: "alpha", arg: 4, scope: !39, file: !18, line: 8, type: !46)
!55 = !DILocalVariable(name: "X", arg: 5, scope: !39, file: !18, line: 8, type: !48)
!56 = !DILocalVariable(name: "incX", arg: 6, scope: !39, file: !18, line: 8, type: !44)
!57 = !DILocalVariable(name: "Y", arg: 7, scope: !39, file: !18, line: 9, type: !48)
!58 = !DILocalVariable(name: "incY", arg: 8, scope: !39, file: !18, line: 9, type: !44)
!59 = !DILocalVariable(name: "A", arg: 9, scope: !39, file: !18, line: 9, type: !49)
!60 = !DILocalVariable(name: "lda", arg: 10, scope: !39, file: !18, line: 9, type: !44)
!61 = !DILocalVariable(name: "i", scope: !62, file: !2, line: 21, type: !45)
!62 = distinct !DILexicalBlock(scope: !63, file: !2, line: 20, column: 1)
!63 = !DILexicalBlockFile(scope: !39, file: !2, discriminator: 0)
!64 = !DILocalVariable(name: "j", scope: !62, file: !2, line: 21, type: !45)
!65 = !DILocalVariable(name: "pos", scope: !66, file: !2, line: 23, type: !45)
!66 = distinct !DILexicalBlock(scope: !62, file: !2, line: 23, column: 3)
!67 = !DILocalVariable(name: "ix", scope: !68, file: !2, line: 33, type: !45)
!68 = distinct !DILexicalBlock(scope: !69, file: !2, line: 32, column: 58)
!69 = distinct !DILexicalBlock(scope: !62, file: !2, line: 31, column: 7)
!70 = !DILocalVariable(name: "iy", scope: !68, file: !2, line: 34, type: !45)
!71 = !DILocalVariable(name: "tmp1", scope: !72, file: !2, line: 36, type: !46)
!72 = distinct !DILexicalBlock(scope: !73, file: !2, line: 35, column: 29)
!73 = distinct !DILexicalBlock(scope: !74, file: !2, line: 35, column: 5)
!74 = distinct !DILexicalBlock(scope: !68, file: !2, line: 35, column: 5)
!75 = !DILocalVariable(name: "tmp2", scope: !72, file: !2, line: 37, type: !46)
!76 = !DILocalVariable(name: "jx", scope: !72, file: !2, line: 38, type: !45)
!77 = !DILocalVariable(name: "jy", scope: !72, file: !2, line: 39, type: !45)
!78 = !DILocalVariable(name: "ix", scope: !79, file: !2, line: 50, type: !45)
!79 = distinct !DILexicalBlock(scope: !80, file: !2, line: 49, column: 65)
!80 = distinct !DILexicalBlock(scope: !69, file: !2, line: 48, column: 14)
!81 = !DILocalVariable(name: "iy", scope: !79, file: !2, line: 51, type: !45)
!82 = !DILocalVariable(name: "tmp1", scope: !83, file: !2, line: 53, type: !46)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 52, column: 29)
!84 = distinct !DILexicalBlock(scope: !85, file: !2, line: 52, column: 5)
!85 = distinct !DILexicalBlock(scope: !79, file: !2, line: 52, column: 5)
!86 = !DILocalVariable(name: "tmp2", scope: !83, file: !2, line: 54, type: !46)
!87 = !DILocalVariable(name: "jx", scope: !83, file: !2, line: 55, type: !45)
!88 = !DILocalVariable(name: "jy", scope: !83, file: !2, line: 56, type: !45)
!89 = !DILocation(line: 0, scope: !39)
!90 = !DILocation(line: 0, scope: !66)
!91 = !DILocation(line: 23, column: 3, scope: !92)
!92 = distinct !DILexicalBlock(scope: !66, file: !2, line: 23, column: 3)
!93 = !DILocation(line: 23, column: 3, scope: !94)
!94 = distinct !DILexicalBlock(scope: !66, file: !2, line: 23, column: 3)
!95 = !DILocation(line: 23, column: 3, scope: !96)
!96 = distinct !DILexicalBlock(scope: !66, file: !2, line: 23, column: 3)
!97 = !DILocation(line: 23, column: 3, scope: !66)
!98 = !DILocation(line: 23, column: 3, scope: !99)
!99 = distinct !DILexicalBlock(scope: !66, file: !2, line: 23, column: 3)
!100 = !DILocation(line: 23, column: 3, scope: !101)
!101 = distinct !DILexicalBlock(scope: !66, file: !2, line: 23, column: 3)
!102 = !DILocation(line: 23, column: 3, scope: !103)
!103 = distinct !DILexicalBlock(scope: !66, file: !2, line: 23, column: 3)
!104 = !DILocation(line: 23, column: 3, scope: !105)
!105 = distinct !DILexicalBlock(scope: !66, file: !2, line: 23, column: 3)
!106 = !DILocation(line: 25, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !62, file: !2, line: 25, column: 7)
!108 = !DILocation(line: 25, column: 7, scope: !62)
!109 = !DILocation(line: 31, column: 14, scope: !69)
!110 = !DILocation(line: 31, column: 31, scope: !69)
!111 = !DILocation(line: 32, column: 17, scope: !69)
!112 = !DILocation(line: 32, column: 34, scope: !69)
!113 = !DILocation(line: 0, scope: !68)
!114 = !DILocation(line: 0, scope: !62)
!115 = !DILocation(line: 35, column: 19, scope: !73)
!116 = !DILocation(line: 35, column: 5, scope: !74)
!117 = !DILocation(line: 34, column: 16, scope: !68)
!118 = !DILocation(line: 33, column: 16, scope: !68)
!119 = !DILocation(line: 36, column: 33, scope: !72)
!120 = !{!121, !121, i64 0}
!121 = !{!"float", !122, i64 0}
!122 = !{!"omnipotent char", !123, i64 0}
!123 = !{!"Simple C/C++ TBAA"}
!124 = !DILocation(line: 36, column: 31, scope: !72)
!125 = !DILocation(line: 0, scope: !72)
!126 = !DILocation(line: 37, column: 33, scope: !72)
!127 = !DILocation(line: 37, column: 31, scope: !72)
!128 = !DILocation(line: 40, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !72, file: !2, line: 40, column: 7)
!130 = !DILocation(line: 41, column: 34, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 40, column: 31)
!132 = distinct !DILexicalBlock(scope: !129, file: !2, line: 40, column: 7)
!133 = !DILocation(line: 41, column: 32, scope: !131)
!134 = !DILocation(line: 41, column: 49, scope: !131)
!135 = !DILocation(line: 41, column: 47, scope: !131)
!136 = !DILocation(line: 41, column: 40, scope: !131)
!137 = !DILocation(line: 41, column: 9, scope: !131)
!138 = !DILocation(line: 41, column: 24, scope: !131)
!139 = !DILocation(line: 42, column: 12, scope: !131)
!140 = !DILocation(line: 43, column: 12, scope: !131)
!141 = !DILocation(line: 40, column: 27, scope: !132)
!142 = !DILocation(line: 40, column: 21, scope: !132)
!143 = distinct !{!143, !128, !144, !145}
!144 = !DILocation(line: 44, column: 7, scope: !129)
!145 = !{!"llvm.loop.mustprogress"}
!146 = !DILocation(line: 45, column: 10, scope: !72)
!147 = !DILocation(line: 46, column: 10, scope: !72)
!148 = !DILocation(line: 35, column: 25, scope: !73)
!149 = distinct !{!149, !116, !150, !145}
!150 = !DILocation(line: 47, column: 5, scope: !74)
!151 = !DILocation(line: 48, column: 38, scope: !80)
!152 = !DILocation(line: 0, scope: !79)
!153 = !DILocation(line: 52, column: 19, scope: !84)
!154 = !DILocation(line: 52, column: 5, scope: !85)
!155 = !DILocation(line: 51, column: 16, scope: !79)
!156 = !DILocation(line: 50, column: 16, scope: !79)
!157 = !DILocation(line: 53, column: 33, scope: !83)
!158 = !DILocation(line: 53, column: 31, scope: !83)
!159 = !DILocation(line: 0, scope: !83)
!160 = !DILocation(line: 54, column: 33, scope: !83)
!161 = !DILocation(line: 54, column: 31, scope: !83)
!162 = !DILocation(line: 57, column: 7, scope: !163)
!163 = distinct !DILexicalBlock(scope: !83, file: !2, line: 57, column: 7)
!164 = !DILocation(line: 58, column: 34, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !2, line: 57, column: 32)
!166 = distinct !DILexicalBlock(scope: !163, file: !2, line: 57, column: 7)
!167 = !DILocation(line: 58, column: 32, scope: !165)
!168 = !DILocation(line: 58, column: 49, scope: !165)
!169 = !DILocation(line: 58, column: 47, scope: !165)
!170 = !DILocation(line: 58, column: 40, scope: !165)
!171 = !DILocation(line: 58, column: 9, scope: !165)
!172 = !DILocation(line: 58, column: 24, scope: !165)
!173 = !DILocation(line: 59, column: 12, scope: !165)
!174 = !DILocation(line: 60, column: 12, scope: !165)
!175 = !DILocation(line: 57, column: 28, scope: !166)
!176 = distinct !{!176, !162, !177, !145}
!177 = !DILocation(line: 61, column: 7, scope: !163)
!178 = !DILocation(line: 62, column: 10, scope: !83)
!179 = !DILocation(line: 63, column: 10, scope: !83)
!180 = !DILocation(line: 52, column: 25, scope: !84)
!181 = distinct !{!181, !154, !182, !145}
!182 = !DILocation(line: 64, column: 5, scope: !85)
!183 = !DILocation(line: 66, column: 5, scope: !184)
!184 = distinct !DILexicalBlock(scope: !80, file: !2, line: 65, column: 10)
!185 = !DILocation(line: 14, column: 1, scope: !186)
!186 = !DILexicalBlockFile(scope: !39, file: !18, discriminator: 0)
!187 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !45, !190, !190, null}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
