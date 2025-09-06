; ModuleID = 'ssymv.ll'
source_filename = "ssymv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_symv.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_ssymv(i32 noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, float noundef %8, ptr nocapture noundef %9, i32 noundef %10) local_unnamed_addr #0 !dbg !39 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !51, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !52, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !53, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata float %3, metadata !54, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !55, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !56, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !57, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !58, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata float %8, metadata !59, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !60, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !61, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !101
  %12 = add i32 %0, -103, !dbg !102
  %13 = icmp ult i32 %12, -2, !dbg !102
  %14 = zext i1 %13 to i32, !dbg !102
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !66, metadata !DIExpression()), !dbg !101
  %15 = add i32 %1, -123, !dbg !104
  %16 = icmp ult i32 %15, -2, !dbg !104
  %17 = select i1 %16, i32 2, i32 %14, !dbg !104
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !66, metadata !DIExpression()), !dbg !101
  %18 = icmp slt i32 %2, 0, !dbg !106
  %19 = select i1 %18, i32 3, i32 %17, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !66, metadata !DIExpression()), !dbg !101
  %20 = tail call i32 @llvm.smax.i32(i32 %2, i32 1), !dbg !109
  %21 = icmp sgt i32 %20, %5, !dbg !109
  %22 = select i1 %21, i32 6, i32 %19, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !66, metadata !DIExpression()), !dbg !101
  %23 = icmp eq i32 %7, 0, !dbg !111
  %24 = select i1 %23, i32 8, i32 %22, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !66, metadata !DIExpression()), !dbg !101
  %25 = icmp eq i32 %10, 0, !dbg !113
  %26 = select i1 %25, i32 11, i32 %24, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !66, metadata !DIExpression()), !dbg !101
  %27 = icmp eq i32 %26, 0, !dbg !115
  br i1 %27, label %29, label %28, !dbg !108

28:                                               ; preds = %11
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !115
  br label %29, !dbg !115

29:                                               ; preds = %28, %11
  %30 = fcmp oeq float %3, 0.000000e+00, !dbg !117
  %31 = fcmp oeq float %8, 1.000000e+00
  %32 = and i1 %30, %31, !dbg !119
  br i1 %32, label %371, label %33, !dbg !119

33:                                               ; preds = %29
  %34 = fcmp oeq float %8, 0.000000e+00, !dbg !120
  br i1 %34, label %35, label %61, !dbg !121

35:                                               ; preds = %33
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !68, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !123
  %36 = icmp sgt i32 %2, 0, !dbg !124
  br i1 %36, label %37, label %119, !dbg !127

37:                                               ; preds = %35
  %38 = icmp sgt i32 %10, 0, !dbg !128
  %39 = sub nsw i32 1, %2, !dbg !128
  %40 = mul i32 %39, %10, !dbg !128
  %41 = select i1 %38, i32 0, i32 %40, !dbg !128
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !68, metadata !DIExpression()), !dbg !122
  %42 = sext i32 %41 to i64, !dbg !127
  %43 = sext i32 %10 to i64, !dbg !127
  %44 = and i32 %2, 3, !dbg !127
  %45 = icmp ult i32 %2, 4, !dbg !127
  br i1 %45, label %97, label %46, !dbg !127

46:                                               ; preds = %37
  %47 = and i32 %2, 2147483644, !dbg !127
  br label %48, !dbg !127

48:                                               ; preds = %48, %46
  %49 = phi i64 [ %42, %46 ], [ %58, %48 ]
  %50 = phi i32 [ 0, %46 ], [ %59, %48 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !68, metadata !DIExpression()), !dbg !122
  %51 = getelementptr inbounds float, ptr %9, i64 %49, !dbg !129
  store float 0.000000e+00, ptr %51, align 4, !dbg !131, !tbaa !132
  %52 = add i64 %49, %43, !dbg !136
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !68, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !68, metadata !DIExpression()), !dbg !122
  %53 = getelementptr inbounds float, ptr %9, i64 %52, !dbg !129
  store float 0.000000e+00, ptr %53, align 4, !dbg !131, !tbaa !132
  %54 = add i64 %52, %43, !dbg !136
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !68, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !68, metadata !DIExpression()), !dbg !122
  %55 = getelementptr inbounds float, ptr %9, i64 %54, !dbg !129
  store float 0.000000e+00, ptr %55, align 4, !dbg !131, !tbaa !132
  %56 = add i64 %54, %43, !dbg !136
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !68, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !68, metadata !DIExpression()), !dbg !122
  %57 = getelementptr inbounds float, ptr %9, i64 %56, !dbg !129
  store float 0.000000e+00, ptr %57, align 4, !dbg !131, !tbaa !132
  %58 = add i64 %56, %43, !dbg !136
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !68, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !123
  %59 = add i32 %50, 4, !dbg !127
  %60 = icmp eq i32 %59, %47, !dbg !127
  br i1 %60, label %97, label %48, !dbg !127, !llvm.loop !137

61:                                               ; preds = %33
  %62 = fcmp une float %8, 1.000000e+00, !dbg !140
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !71, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !123
  %63 = icmp sgt i32 %2, 0
  %64 = and i1 %62, %63, !dbg !142
  br i1 %64, label %65, label %119, !dbg !142

65:                                               ; preds = %61
  %66 = icmp sgt i32 %10, 0, !dbg !143
  %67 = sub nsw i32 1, %2, !dbg !143
  %68 = mul i32 %67, %10, !dbg !143
  %69 = select i1 %66, i32 0, i32 %68, !dbg !143
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !71, metadata !DIExpression()), !dbg !141
  %70 = sext i32 %69 to i64, !dbg !144
  %71 = sext i32 %10 to i64, !dbg !144
  %72 = and i32 %2, 3, !dbg !144
  %73 = icmp ult i32 %2, 4, !dbg !144
  br i1 %73, label %107, label %74, !dbg !144

74:                                               ; preds = %65
  %75 = and i32 %2, -4, !dbg !144
  br label %76, !dbg !144

76:                                               ; preds = %76, %74
  %77 = phi i64 [ %70, %74 ], [ %94, %76 ]
  %78 = phi i32 [ 0, %74 ], [ %95, %76 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !71, metadata !DIExpression()), !dbg !141
  %79 = getelementptr inbounds float, ptr %9, i64 %77, !dbg !146
  %80 = load float, ptr %79, align 4, !dbg !149, !tbaa !132
  %81 = fmul float %80, %8, !dbg !149
  store float %81, ptr %79, align 4, !dbg !149, !tbaa !132
  %82 = add i64 %77, %71, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !71, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !71, metadata !DIExpression()), !dbg !141
  %83 = getelementptr inbounds float, ptr %9, i64 %82, !dbg !146
  %84 = load float, ptr %83, align 4, !dbg !149, !tbaa !132
  %85 = fmul float %84, %8, !dbg !149
  store float %85, ptr %83, align 4, !dbg !149, !tbaa !132
  %86 = add i64 %82, %71, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !71, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !71, metadata !DIExpression()), !dbg !141
  %87 = getelementptr inbounds float, ptr %9, i64 %86, !dbg !146
  %88 = load float, ptr %87, align 4, !dbg !149, !tbaa !132
  %89 = fmul float %88, %8, !dbg !149
  store float %89, ptr %87, align 4, !dbg !149, !tbaa !132
  %90 = add i64 %86, %71, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !71, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !71, metadata !DIExpression()), !dbg !141
  %91 = getelementptr inbounds float, ptr %9, i64 %90, !dbg !146
  %92 = load float, ptr %91, align 4, !dbg !149, !tbaa !132
  %93 = fmul float %92, %8, !dbg !149
  store float %93, ptr %91, align 4, !dbg !149, !tbaa !132
  %94 = add i64 %90, %71, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !71, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !123
  %95 = add i32 %78, 4, !dbg !144
  %96 = icmp eq i32 %95, %75, !dbg !144
  br i1 %96, label %107, label %76, !dbg !144, !llvm.loop !151

97:                                               ; preds = %48, %37
  %98 = phi i64 [ %42, %37 ], [ %58, %48 ]
  %99 = icmp eq i32 %44, 0, !dbg !127
  br i1 %99, label %119, label %100, !dbg !127

100:                                              ; preds = %100, %97
  %101 = phi i64 [ %104, %100 ], [ %98, %97 ]
  %102 = phi i32 [ %105, %100 ], [ 0, %97 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %101, metadata !68, metadata !DIExpression()), !dbg !122
  %103 = getelementptr inbounds float, ptr %9, i64 %101, !dbg !129
  store float 0.000000e+00, ptr %103, align 4, !dbg !131, !tbaa !132
  %104 = add i64 %101, %43, !dbg !136
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !68, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !123
  %105 = add i32 %102, 1, !dbg !127
  %106 = icmp eq i32 %105, %44, !dbg !127
  br i1 %106, label %119, label %100, !dbg !127, !llvm.loop !153

107:                                              ; preds = %76, %65
  %108 = phi i64 [ %70, %65 ], [ %94, %76 ]
  %109 = icmp eq i32 %72, 0, !dbg !144
  br i1 %109, label %119, label %110, !dbg !144

110:                                              ; preds = %110, %107
  %111 = phi i64 [ %116, %110 ], [ %108, %107 ]
  %112 = phi i32 [ %117, %110 ], [ 0, %107 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %111, metadata !71, metadata !DIExpression()), !dbg !141
  %113 = getelementptr inbounds float, ptr %9, i64 %111, !dbg !146
  %114 = load float, ptr %113, align 4, !dbg !149, !tbaa !132
  %115 = fmul float %114, %8, !dbg !149
  store float %115, ptr %113, align 4, !dbg !149, !tbaa !132
  %116 = add i64 %111, %71, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !71, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !123
  %117 = add i32 %112, 1, !dbg !144
  %118 = icmp eq i32 %117, %72, !dbg !144
  br i1 %118, label %119, label %110, !dbg !144, !llvm.loop !155

119:                                              ; preds = %110, %107, %100, %97, %61, %35
  br i1 %30, label %371, label %120, !dbg !156

120:                                              ; preds = %119
  %121 = icmp eq i32 %0, 101, !dbg !157
  %122 = icmp eq i32 %1, 121
  %123 = and i1 %121, %122, !dbg !158
  br i1 %123, label %128, label %124, !dbg !158

124:                                              ; preds = %120
  %125 = icmp eq i32 %0, 102, !dbg !159
  %126 = icmp eq i32 %1, 122
  %127 = and i1 %125, %126, !dbg !160
  br i1 %127, label %128, label %217, !dbg !160

128:                                              ; preds = %124, %120
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !77, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !74, metadata !DIExpression()), !dbg !161
  %129 = icmp sgt i32 %2, 0, !dbg !162
  br i1 %129, label %130, label %371, !dbg !163

130:                                              ; preds = %128
  %131 = icmp sgt i32 %10, 0, !dbg !164
  %132 = sub nsw i32 1, %2, !dbg !165
  %133 = mul i32 %132, %10, !dbg !164
  %134 = select i1 %131, i32 0, i32 %133, !dbg !164
  tail call void @llvm.dbg.value(metadata i32 %134, metadata !77, metadata !DIExpression()), !dbg !161
  %135 = icmp sgt i32 %7, 0, !dbg !165
  %136 = mul i32 %132, %7, !dbg !165
  %137 = select i1 %135, i32 0, i32 %136, !dbg !165
  tail call void @llvm.dbg.value(metadata i32 %137, metadata !74, metadata !DIExpression()), !dbg !161
  %138 = sext i32 %10 to i64, !dbg !163
  %139 = sext i32 %7 to i64, !dbg !163
  %140 = zext nneg i32 %2 to i64, !dbg !163
  %141 = sext i32 %5 to i64, !dbg !163
  %142 = sext i32 %134 to i64, !dbg !163
  %143 = sext i32 %137 to i64, !dbg !163
  %144 = zext nneg i32 %2 to i64, !dbg !162
  br label %145, !dbg !163

145:                                              ; preds = %205, %130
  %146 = phi i64 [ %143, %130 ], [ %213, %205 ]
  %147 = phi i64 [ %142, %130 ], [ %214, %205 ]
  %148 = phi i64 [ 0, %130 ], [ %158, %205 ]
  %149 = phi i32 [ %137, %130 ], [ %153, %205 ]
  %150 = phi i32 [ %134, %130 ], [ %152, %205 ]
  %151 = phi i64 [ 1, %130 ], [ %215, %205 ]
  %152 = add i32 %150, %10, !dbg !163
  %153 = add i32 %149, %7, !dbg !163
  %154 = trunc i64 %148 to i32
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %147, metadata !77, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !74, metadata !DIExpression()), !dbg !161
  %155 = getelementptr inbounds float, ptr %6, i64 %146, !dbg !166
  %156 = load float, ptr %155, align 4, !dbg !166, !tbaa !132
  %157 = fmul float %156, %3, !dbg !167
  tail call void @llvm.dbg.value(metadata float %157, metadata !78, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !82, metadata !DIExpression()), !dbg !168
  %158 = add nuw nsw i64 %148, 1, !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !83, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !84, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !168
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !86, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !168
  %159 = mul nsw i32 %154, %5, !dbg !170
  %160 = sext i32 %159 to i64, !dbg !171
  %161 = getelementptr float, ptr %4, i64 %148, !dbg !172
  %162 = getelementptr float, ptr %161, i64 %160, !dbg !172
  %163 = load float, ptr %162, align 4, !dbg !172, !tbaa !132
  %164 = fmul float %157, %163, !dbg !173
  %165 = getelementptr inbounds float, ptr %9, i64 %147, !dbg !174
  %166 = load float, ptr %165, align 4, !dbg !175, !tbaa !132
  %167 = fpext float %166 to double, !dbg !175
  %168 = fpext float %164 to double, !dbg !175
  %169 = fptrunc double %167 to float, !dbg !175
  %170 = fptrunc double %168 to float, !dbg !175
  %handler_result = call float @fAddHandlerFloat(float %169, float %170), !dbg !175
  store float %handler_result, ptr %165, align 4, !dbg !175, !tbaa !132
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !65, metadata !DIExpression()), !dbg !123
  %171 = icmp ult i64 %158, %140, !dbg !176
  br i1 %171, label %172, label %205, !dbg !179

172:                                              ; preds = %145
  %173 = mul nsw i64 %148, %141, !dbg !170
  %174 = sext i32 %153 to i64, !dbg !166
  %175 = sext i32 %152 to i64, !dbg !166
  %176 = getelementptr float, ptr %4, i64 %173, !dbg !179
  br label %177, !dbg !179

177:                                              ; preds = %177, %172
  %178 = phi i64 [ %174, %172 ], [ %199, %177 ]
  %179 = phi i64 [ %175, %172 ], [ %200, %177 ]
  %180 = phi i64 [ %151, %172 ], [ %201, %177 ]
  %181 = phi float [ 0.000000e+00, %172 ], [ %handler_result2, %177 ]
  tail call void @llvm.dbg.value(metadata i64 %180, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !86, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %178, metadata !85, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata float %181, metadata !82, metadata !DIExpression()), !dbg !168
  %182 = getelementptr float, ptr %176, i64 %180, !dbg !180
  %183 = load float, ptr %182, align 4, !dbg !180, !tbaa !132
  %184 = fmul float %157, %183, !dbg !182
  %185 = getelementptr inbounds float, ptr %9, i64 %179, !dbg !183
  %186 = load float, ptr %185, align 4, !dbg !184, !tbaa !132
  %187 = fpext float %186 to double, !dbg !184
  %188 = fpext float %184 to double, !dbg !184
  %189 = fptrunc double %187 to float, !dbg !184
  %190 = fptrunc double %188 to float, !dbg !184
  %handler_result1 = call float @fAddHandlerFloat(float %189, float %190), !dbg !184
  store float %handler_result1, ptr %185, align 4, !dbg !184, !tbaa !132
  %191 = getelementptr inbounds float, ptr %6, i64 %178, !dbg !185
  %192 = load float, ptr %191, align 4, !dbg !185, !tbaa !132
  %193 = load float, ptr %182, align 4, !dbg !186, !tbaa !132
  %194 = fmul float %192, %193, !dbg !187
  %195 = fpext float %181 to double, !dbg !188
  %196 = fpext float %194 to double, !dbg !188
  %197 = fptrunc double %195 to float, !dbg !188
  %198 = fptrunc double %196 to float, !dbg !188
  %handler_result2 = call float @fAddHandlerFloat(float %197, float %198), !dbg !188
  tail call void @llvm.dbg.value(metadata float %handler_result2, metadata !82, metadata !DIExpression()), !dbg !168
  %199 = add i64 %178, %139, !dbg !188
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !85, metadata !DIExpression()), !dbg !168
  %200 = add i64 %179, %138, !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %200, metadata !86, metadata !DIExpression()), !dbg !168
  %201 = add nuw nsw i64 %180, 1, !dbg !190
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !65, metadata !DIExpression()), !dbg !123
  %202 = icmp eq i64 %201, %144, !dbg !176
  br i1 %202, label %203, label %177, !dbg !179, !llvm.loop !191

203:                                              ; preds = %177
  %204 = load float, ptr %165, align 4, !dbg !193, !tbaa !132
  br label %205, !dbg !194

205:                                              ; preds = %203, %145
  %206 = phi float [ %handler_result, %145 ], [ %204, %203 ], !dbg !193
  %207 = phi float [ 0.000000e+00, %145 ], [ %handler_result2, %203 ], !dbg !168
  %208 = fmul float %207, %3, !dbg !194
  %209 = fpext float %208 to double, !dbg !193
  %210 = fpext float %206 to double, !dbg !193
  %211 = fptrunc double %209 to float, !dbg !193
  %212 = fptrunc double %210 to float, !dbg !193
  %handler_result3 = call float @fAddHandlerFloat(float %211, float %212), !dbg !193
  store float %handler_result3, ptr %165, align 4, !dbg !193, !tbaa !132
  %213 = add i64 %146, %139, !dbg !195
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !74, metadata !DIExpression()), !dbg !161
  %214 = add i64 %147, %138, !dbg !196
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !77, metadata !DIExpression()), !dbg !161
  %215 = add nuw nsw i64 %151, 1, !dbg !163
  %216 = icmp eq i64 %158, %144, !dbg !162
  br i1 %216, label %371, label %145, !dbg !163, !llvm.loop !197

217:                                              ; preds = %124
  %218 = and i1 %121, %126, !dbg !199
  %219 = and i1 %125, %122
  %220 = or i1 %218, %219, !dbg !199
  br i1 %220, label %221, label %370, !dbg !199

221:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison), metadata !90, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !200
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !200
  %222 = icmp sgt i32 %2, 0, !dbg !201
  br i1 %222, label %223, label %371, !dbg !202

223:                                              ; preds = %221
  %224 = icmp sgt i32 %10, 0, !dbg !203
  %225 = add nsw i32 %2, -1, !dbg !204
  %226 = mul i32 %225, %10, !dbg !203
  %227 = sub i32 0, %226, !dbg !203
  %228 = select i1 %224, i32 0, i32 %227, !dbg !203
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %228, i32 %226), metadata !90, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !200
  %229 = add nsw i32 %228, %226, !dbg !205
  tail call void @llvm.dbg.value(metadata i32 %229, metadata !90, metadata !DIExpression()), !dbg !200
  %230 = icmp sgt i32 %7, 0, !dbg !206
  %231 = sub nsw i32 1, %2, !dbg !206
  %232 = mul i32 %231, %7, !dbg !206
  %233 = select i1 %230, i32 0, i32 %232, !dbg !206
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %233, i32 %225, i32 %7), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !200
  %234 = mul i32 %225, %7, !dbg !207
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %233, i32 %234), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !200
  %235 = add nsw i32 %233, %234, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %235, metadata !87, metadata !DIExpression()), !dbg !200
  %236 = sub i32 0, %234
  %237 = select i1 %230, i32 0, i32 %236
  %238 = sext i32 %228 to i64, !dbg !202
  %239 = sext i32 %10 to i64, !dbg !202
  %240 = sext i32 %237 to i64, !dbg !202
  %241 = sext i32 %7 to i64, !dbg !202
  %242 = zext i32 %225 to i64, !dbg !202
  %243 = zext nneg i32 %2 to i64, !dbg !202
  %244 = sext i32 %5 to i64, !dbg !202
  %245 = add nsw i64 %242, -1
  br label %246, !dbg !202

246:                                              ; preds = %358, %223
  %247 = phi i64 [ 0, %223 ], [ %369, %358 ]
  %248 = phi i64 [ %243, %223 ], [ %252, %358 ]
  %249 = phi i64 [ %242, %223 ], [ %368, %358 ]
  %250 = phi i32 [ %229, %223 ], [ %367, %358 ]
  %251 = phi i32 [ %235, %223 ], [ %366, %358 ]
  tail call void @llvm.dbg.value(metadata i64 %248, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %250, metadata !90, metadata !DIExpression()), !dbg !200
  tail call void @llvm.dbg.value(metadata i32 %251, metadata !87, metadata !DIExpression()), !dbg !200
  %252 = add nsw i64 %248, -1, !dbg !209
  %253 = trunc i64 %252 to i32, !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %252, metadata !62, metadata !DIExpression()), !dbg !123
  %254 = sext i32 %251 to i64, !dbg !210
  %255 = getelementptr inbounds float, ptr %6, i64 %254, !dbg !210
  %256 = load float, ptr %255, align 4, !dbg !210, !tbaa !132
  %257 = fmul float %256, %3, !dbg !211
  tail call void @llvm.dbg.value(metadata float %257, metadata !91, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !95, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %252, metadata !97, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i32 %237, metadata !98, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !99, metadata !DIExpression()), !dbg !212
  %258 = mul nsw i32 %253, %5, !dbg !213
  %259 = sext i32 %258 to i64, !dbg !214
  %260 = getelementptr float, ptr %4, i64 %252, !dbg !215
  %261 = getelementptr float, ptr %260, i64 %259, !dbg !215
  %262 = load float, ptr %261, align 4, !dbg !215, !tbaa !132
  %263 = fmul float %257, %262, !dbg !216
  %264 = sext i32 %250 to i64, !dbg !217
  %265 = getelementptr inbounds float, ptr %9, i64 %264, !dbg !217
  %266 = load float, ptr %265, align 4, !dbg !218, !tbaa !132
  %267 = fpext float %266 to double, !dbg !218
  %268 = fpext float %263 to double, !dbg !218
  %269 = fptrunc double %267 to float, !dbg !218
  %270 = fptrunc double %268 to float, !dbg !218
  %handler_result4 = call float @fAddHandlerFloat(float %269, float %270), !dbg !218
  store float %handler_result4, ptr %265, align 4, !dbg !218, !tbaa !132
  tail call void @llvm.dbg.value(metadata i32 0, metadata !65, metadata !DIExpression()), !dbg !123
  %271 = icmp ugt i64 %248, 1, !dbg !219
  br i1 %271, label %278, label %272, !dbg !222

272:                                              ; preds = %246
  %273 = fmul float %3, 0.000000e+00, !dbg !223
  %274 = fpext float %273 to double, !dbg !224
  %275 = fpext float %handler_result4 to double, !dbg !224
  %276 = fptrunc double %274 to float, !dbg !224
  %277 = fptrunc double %275 to float, !dbg !224
  %handler_result5 = call float @fAddHandlerFloat(float %276, float %277), !dbg !224
  store float %handler_result5, ptr %265, align 4, !dbg !224, !tbaa !132
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %251, i32 %7), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !200
  tail call void @llvm.dbg.value(metadata i64 %252, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %250, i32 %10), metadata !90, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !200
  br label %371, !dbg !202

278:                                              ; preds = %246
  %279 = mul nsw i64 %252, %244, !dbg !213
  %280 = getelementptr float, ptr %4, i64 %279, !dbg !222
  %281 = and i64 %249, 1, !dbg !222
  %282 = icmp eq i64 %247, %245, !dbg !222
  br i1 %282, label %333, label %283, !dbg !222

283:                                              ; preds = %278
  %284 = and i64 %249, -2, !dbg !222
  br label %285, !dbg !222

285:                                              ; preds = %285, %283
  %286 = phi i64 [ 0, %283 ], [ %330, %285 ]
  %287 = phi i64 [ %240, %283 ], [ %328, %285 ]
  %288 = phi i64 [ %238, %283 ], [ %329, %285 ]
  %289 = phi float [ 0.000000e+00, %283 ], [ %handler_result9, %285 ]
  %290 = phi i64 [ 0, %283 ], [ %331, %285 ]
  tail call void @llvm.dbg.value(metadata i64 %288, metadata !99, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %287, metadata !98, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %286, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata float %289, metadata !95, metadata !DIExpression()), !dbg !212
  %291 = getelementptr float, ptr %280, i64 %286, !dbg !225
  %292 = load float, ptr %291, align 4, !dbg !225, !tbaa !132
  %293 = fmul float %257, %292, !dbg !227
  %294 = getelementptr inbounds float, ptr %9, i64 %288, !dbg !228
  %295 = load float, ptr %294, align 4, !dbg !229, !tbaa !132
  %296 = fpext float %295 to double, !dbg !229
  %297 = fpext float %293 to double, !dbg !229
  %298 = fptrunc double %296 to float, !dbg !229
  %299 = fptrunc double %297 to float, !dbg !229
  %handler_result6 = call float @fAddHandlerFloat(float %298, float %299), !dbg !229
  store float %handler_result6, ptr %294, align 4, !dbg !229, !tbaa !132
  %300 = getelementptr inbounds float, ptr %6, i64 %287, !dbg !230
  %301 = load float, ptr %300, align 4, !dbg !230, !tbaa !132
  %302 = load float, ptr %291, align 4, !dbg !231, !tbaa !132
  %303 = fmul float %301, %302, !dbg !232
  %304 = fpext float %289 to double, !dbg !233
  %305 = fpext float %303 to double, !dbg !233
  %306 = fptrunc double %304 to float, !dbg !233
  %307 = fptrunc double %305 to float, !dbg !233
  %handler_result7 = call float @fAddHandlerFloat(float %306, float %307), !dbg !233
  tail call void @llvm.dbg.value(metadata float %handler_result7, metadata !95, metadata !DIExpression()), !dbg !212
  %308 = add i64 %287, %241, !dbg !233
  tail call void @llvm.dbg.value(metadata i64 %308, metadata !98, metadata !DIExpression()), !dbg !212
  %309 = add i64 %288, %239, !dbg !234
  tail call void @llvm.dbg.value(metadata i64 %309, metadata !99, metadata !DIExpression()), !dbg !212
  %310 = or disjoint i64 %286, 1, !dbg !235
  tail call void @llvm.dbg.value(metadata i64 %310, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %309, metadata !99, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %308, metadata !98, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %310, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata float %handler_result7, metadata !95, metadata !DIExpression()), !dbg !212
  %311 = getelementptr float, ptr %280, i64 %310, !dbg !225
  %312 = load float, ptr %311, align 4, !dbg !225, !tbaa !132
  %313 = fmul float %257, %312, !dbg !227
  %314 = getelementptr inbounds float, ptr %9, i64 %309, !dbg !228
  %315 = load float, ptr %314, align 4, !dbg !229, !tbaa !132
  %316 = fpext float %315 to double, !dbg !229
  %317 = fpext float %313 to double, !dbg !229
  %318 = fptrunc double %316 to float, !dbg !229
  %319 = fptrunc double %317 to float, !dbg !229
  %handler_result8 = call float @fAddHandlerFloat(float %318, float %319), !dbg !229
  store float %handler_result8, ptr %314, align 4, !dbg !229, !tbaa !132
  %320 = getelementptr inbounds float, ptr %6, i64 %308, !dbg !230
  %321 = load float, ptr %320, align 4, !dbg !230, !tbaa !132
  %322 = load float, ptr %311, align 4, !dbg !231, !tbaa !132
  %323 = fmul float %321, %322, !dbg !232
  %324 = fpext float %handler_result7 to double, !dbg !233
  %325 = fpext float %323 to double, !dbg !233
  %326 = fptrunc double %324 to float, !dbg !233
  %327 = fptrunc double %325 to float, !dbg !233
  %handler_result9 = call float @fAddHandlerFloat(float %326, float %327), !dbg !233
  tail call void @llvm.dbg.value(metadata float %handler_result9, metadata !95, metadata !DIExpression()), !dbg !212
  %328 = add i64 %308, %241, !dbg !233
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !98, metadata !DIExpression()), !dbg !212
  %329 = add i64 %309, %239, !dbg !234
  tail call void @llvm.dbg.value(metadata i64 %329, metadata !99, metadata !DIExpression()), !dbg !212
  %330 = add nuw nsw i64 %286, 2, !dbg !235
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !65, metadata !DIExpression()), !dbg !123
  %331 = add i64 %290, 2, !dbg !222
  %332 = icmp eq i64 %331, %284, !dbg !222
  br i1 %332, label %333, label %285, !dbg !222, !llvm.loop !236

333:                                              ; preds = %285, %278
  %334 = phi float [ undef, %278 ], [ %handler_result9, %285 ]
  %335 = phi i64 [ 0, %278 ], [ %330, %285 ]
  %336 = phi i64 [ %240, %278 ], [ %328, %285 ]
  %337 = phi i64 [ %238, %278 ], [ %329, %285 ]
  %338 = phi float [ 0.000000e+00, %278 ], [ %handler_result9, %285 ]
  %339 = icmp eq i64 %281, 0, !dbg !222
  br i1 %339, label %358, label %340, !dbg !222

340:                                              ; preds = %333
  tail call void @llvm.dbg.value(metadata i64 %337, metadata !99, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !98, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata float %338, metadata !95, metadata !DIExpression()), !dbg !212
  %341 = getelementptr float, ptr %280, i64 %335, !dbg !225
  %342 = load float, ptr %341, align 4, !dbg !225, !tbaa !132
  %343 = fmul float %257, %342, !dbg !227
  %344 = getelementptr inbounds float, ptr %9, i64 %337, !dbg !228
  %345 = load float, ptr %344, align 4, !dbg !229, !tbaa !132
  %346 = fpext float %345 to double, !dbg !229
  %347 = fpext float %343 to double, !dbg !229
  %348 = fptrunc double %346 to float, !dbg !229
  %349 = fptrunc double %347 to float, !dbg !229
  %handler_result10 = call float @fAddHandlerFloat(float %348, float %349), !dbg !229
  store float %handler_result10, ptr %344, align 4, !dbg !229, !tbaa !132
  %350 = getelementptr inbounds float, ptr %6, i64 %336, !dbg !230
  %351 = load float, ptr %350, align 4, !dbg !230, !tbaa !132
  %352 = load float, ptr %341, align 4, !dbg !231, !tbaa !132
  %353 = fmul float %351, %352, !dbg !232
  %354 = fpext float %338 to double, !dbg !224
  %355 = fpext float %353 to double, !dbg !224
  %356 = fptrunc double %354 to float, !dbg !224
  %357 = fptrunc double %355 to float, !dbg !224
  %handler_result11 = call float @fAddHandlerFloat(float %356, float %357), !dbg !224
  tail call void @llvm.dbg.value(metadata float %handler_result11, metadata !95, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %336, i64 %241), metadata !98, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !212
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %337, i64 %239), metadata !99, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !65, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !123
  br label %358, !dbg !224

358:                                              ; preds = %340, %333
  %359 = phi float [ %334, %333 ], [ %handler_result11, %340 ], !dbg !238
  %360 = load float, ptr %265, align 4, !dbg !224, !tbaa !132
  %361 = fmul float %359, %3, !dbg !223
  %362 = fpext float %361 to double, !dbg !224
  %363 = fpext float %360 to double, !dbg !224
  %364 = fptrunc double %362 to float, !dbg !224
  %365 = fptrunc double %363 to float, !dbg !224
  %handler_result12 = call float @fAddHandlerFloat(float %364, float %365), !dbg !224
  store float %handler_result12, ptr %265, align 4, !dbg !224, !tbaa !132
  %366 = sub nsw i32 %251, %7, !dbg !239
  tail call void @llvm.dbg.value(metadata i32 %366, metadata !87, metadata !DIExpression()), !dbg !200
  %367 = sub nsw i32 %250, %10, !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %252, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %367, metadata !90, metadata !DIExpression()), !dbg !200
  %368 = add nsw i64 %249, -1, !dbg !202
  %369 = add i64 %247, 1, !dbg !202
  br i1 %271, label %246, label %371, !dbg !202, !llvm.loop !241

370:                                              ; preds = %217
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !244
  br label %371

371:                                              ; preds = %370, %358, %272, %221, %205, %128, %119, %29
  ret void, !dbg !246
}

declare !dbg !248 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_symv.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "9da23ac1c39facc0ca7ef87464410844")
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
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !30, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "ssymv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "b35074279bd9454510e0d33278c2d0fb")
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
!39 = distinct !DISubprogram(name: "cblas_ssymv", scope: !18, file: !18, line: 7, type: !40, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !50)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43, !44, !46, !48, !44, !48, !44, !46, !49, !44}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !65, !66, !68, !71, !74, !77, !78, !82, !83, !84, !85, !86, !87, !90, !91, !95, !96, !97, !98, !99}
!51 = !DILocalVariable(name: "order", arg: 1, scope: !39, file: !18, line: 7, type: !42)
!52 = !DILocalVariable(name: "Uplo", arg: 2, scope: !39, file: !18, line: 7, type: !43)
!53 = !DILocalVariable(name: "N", arg: 3, scope: !39, file: !18, line: 8, type: !44)
!54 = !DILocalVariable(name: "alpha", arg: 4, scope: !39, file: !18, line: 8, type: !46)
!55 = !DILocalVariable(name: "A", arg: 5, scope: !39, file: !18, line: 8, type: !48)
!56 = !DILocalVariable(name: "lda", arg: 6, scope: !39, file: !18, line: 8, type: !44)
!57 = !DILocalVariable(name: "X", arg: 7, scope: !39, file: !18, line: 9, type: !48)
!58 = !DILocalVariable(name: "incX", arg: 8, scope: !39, file: !18, line: 9, type: !44)
!59 = !DILocalVariable(name: "beta", arg: 9, scope: !39, file: !18, line: 9, type: !46)
!60 = !DILocalVariable(name: "Y", arg: 10, scope: !39, file: !18, line: 9, type: !49)
!61 = !DILocalVariable(name: "incY", arg: 11, scope: !39, file: !18, line: 10, type: !44)
!62 = !DILocalVariable(name: "i", scope: !63, file: !2, line: 21, type: !45)
!63 = distinct !DILexicalBlock(scope: !64, file: !2, line: 20, column: 1)
!64 = !DILexicalBlockFile(scope: !39, file: !2, discriminator: 0)
!65 = !DILocalVariable(name: "j", scope: !63, file: !2, line: 21, type: !45)
!66 = !DILocalVariable(name: "pos", scope: !67, file: !2, line: 23, type: !45)
!67 = distinct !DILexicalBlock(scope: !63, file: !2, line: 23, column: 3)
!68 = !DILocalVariable(name: "iy", scope: !69, file: !2, line: 30, type: !45)
!69 = distinct !DILexicalBlock(scope: !70, file: !2, line: 29, column: 20)
!70 = distinct !DILexicalBlock(scope: !63, file: !2, line: 29, column: 7)
!71 = !DILocalVariable(name: "iy", scope: !72, file: !2, line: 36, type: !45)
!72 = distinct !DILexicalBlock(scope: !73, file: !2, line: 35, column: 27)
!73 = distinct !DILexicalBlock(scope: !70, file: !2, line: 35, column: 14)
!74 = !DILocalVariable(name: "ix", scope: !75, file: !2, line: 50, type: !45)
!75 = distinct !DILexicalBlock(scope: !76, file: !2, line: 49, column: 58)
!76 = distinct !DILexicalBlock(scope: !63, file: !2, line: 48, column: 7)
!77 = !DILocalVariable(name: "iy", scope: !75, file: !2, line: 51, type: !45)
!78 = !DILocalVariable(name: "temp1", scope: !79, file: !2, line: 53, type: !47)
!79 = distinct !DILexicalBlock(scope: !80, file: !2, line: 52, column: 29)
!80 = distinct !DILexicalBlock(scope: !81, file: !2, line: 52, column: 5)
!81 = distinct !DILexicalBlock(scope: !75, file: !2, line: 52, column: 5)
!82 = !DILocalVariable(name: "temp2", scope: !79, file: !2, line: 54, type: !47)
!83 = !DILocalVariable(name: "j_min", scope: !79, file: !2, line: 55, type: !44)
!84 = !DILocalVariable(name: "j_max", scope: !79, file: !2, line: 56, type: !44)
!85 = !DILocalVariable(name: "jx", scope: !79, file: !2, line: 57, type: !45)
!86 = !DILocalVariable(name: "jy", scope: !79, file: !2, line: 58, type: !45)
!87 = !DILocalVariable(name: "ix", scope: !88, file: !2, line: 72, type: !45)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 71, column: 65)
!89 = distinct !DILexicalBlock(scope: !76, file: !2, line: 70, column: 14)
!90 = !DILocalVariable(name: "iy", scope: !88, file: !2, line: 73, type: !45)
!91 = !DILocalVariable(name: "temp1", scope: !92, file: !2, line: 75, type: !47)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 74, column: 32)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 74, column: 5)
!94 = distinct !DILexicalBlock(scope: !88, file: !2, line: 74, column: 5)
!95 = !DILocalVariable(name: "temp2", scope: !92, file: !2, line: 76, type: !47)
!96 = !DILocalVariable(name: "j_min", scope: !92, file: !2, line: 77, type: !44)
!97 = !DILocalVariable(name: "j_max", scope: !92, file: !2, line: 78, type: !44)
!98 = !DILocalVariable(name: "jx", scope: !92, file: !2, line: 79, type: !45)
!99 = !DILocalVariable(name: "jy", scope: !92, file: !2, line: 80, type: !45)
!100 = !DILocation(line: 0, scope: !39)
!101 = !DILocation(line: 0, scope: !67)
!102 = !DILocation(line: 23, column: 3, scope: !103)
!103 = distinct !DILexicalBlock(scope: !67, file: !2, line: 23, column: 3)
!104 = !DILocation(line: 23, column: 3, scope: !105)
!105 = distinct !DILexicalBlock(scope: !67, file: !2, line: 23, column: 3)
!106 = !DILocation(line: 23, column: 3, scope: !107)
!107 = distinct !DILexicalBlock(scope: !67, file: !2, line: 23, column: 3)
!108 = !DILocation(line: 23, column: 3, scope: !67)
!109 = !DILocation(line: 23, column: 3, scope: !110)
!110 = distinct !DILexicalBlock(scope: !67, file: !2, line: 23, column: 3)
!111 = !DILocation(line: 23, column: 3, scope: !112)
!112 = distinct !DILexicalBlock(scope: !67, file: !2, line: 23, column: 3)
!113 = !DILocation(line: 23, column: 3, scope: !114)
!114 = distinct !DILexicalBlock(scope: !67, file: !2, line: 23, column: 3)
!115 = !DILocation(line: 23, column: 3, scope: !116)
!116 = distinct !DILexicalBlock(scope: !67, file: !2, line: 23, column: 3)
!117 = !DILocation(line: 25, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !63, file: !2, line: 25, column: 7)
!119 = !DILocation(line: 25, column: 20, scope: !118)
!120 = !DILocation(line: 29, column: 12, scope: !70)
!121 = !DILocation(line: 29, column: 7, scope: !63)
!122 = !DILocation(line: 0, scope: !69)
!123 = !DILocation(line: 0, scope: !63)
!124 = !DILocation(line: 31, column: 19, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !2, line: 31, column: 5)
!126 = distinct !DILexicalBlock(scope: !69, file: !2, line: 31, column: 5)
!127 = !DILocation(line: 31, column: 5, scope: !126)
!128 = !DILocation(line: 30, column: 16, scope: !69)
!129 = !DILocation(line: 32, column: 7, scope: !130)
!130 = distinct !DILexicalBlock(scope: !125, file: !2, line: 31, column: 29)
!131 = !DILocation(line: 32, column: 13, scope: !130)
!132 = !{!133, !133, i64 0}
!133 = !{!"float", !134, i64 0}
!134 = !{!"omnipotent char", !135, i64 0}
!135 = !{!"Simple C/C++ TBAA"}
!136 = !DILocation(line: 33, column: 10, scope: !130)
!137 = distinct !{!137, !127, !138, !139}
!138 = !DILocation(line: 34, column: 5, scope: !126)
!139 = !{!"llvm.loop.mustprogress"}
!140 = !DILocation(line: 35, column: 19, scope: !73)
!141 = !DILocation(line: 0, scope: !72)
!142 = !DILocation(line: 35, column: 14, scope: !70)
!143 = !DILocation(line: 36, column: 16, scope: !72)
!144 = !DILocation(line: 37, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !72, file: !2, line: 37, column: 5)
!146 = !DILocation(line: 38, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !2, line: 37, column: 29)
!148 = distinct !DILexicalBlock(scope: !145, file: !2, line: 37, column: 5)
!149 = !DILocation(line: 38, column: 13, scope: !147)
!150 = !DILocation(line: 39, column: 10, scope: !147)
!151 = distinct !{!151, !144, !152, !139}
!152 = !DILocation(line: 40, column: 5, scope: !145)
!153 = distinct !{!153, !154}
!154 = !{!"llvm.loop.unroll.disable"}
!155 = distinct !{!155, !154}
!156 = !DILocation(line: 43, column: 7, scope: !63)
!157 = !DILocation(line: 48, column: 14, scope: !76)
!158 = !DILocation(line: 48, column: 31, scope: !76)
!159 = !DILocation(line: 49, column: 17, scope: !76)
!160 = !DILocation(line: 49, column: 34, scope: !76)
!161 = !DILocation(line: 0, scope: !75)
!162 = !DILocation(line: 52, column: 19, scope: !80)
!163 = !DILocation(line: 52, column: 5, scope: !81)
!164 = !DILocation(line: 51, column: 16, scope: !75)
!165 = !DILocation(line: 50, column: 16, scope: !75)
!166 = !DILocation(line: 53, column: 28, scope: !79)
!167 = !DILocation(line: 53, column: 26, scope: !79)
!168 = !DILocation(line: 0, scope: !79)
!169 = !DILocation(line: 55, column: 29, scope: !79)
!170 = !DILocation(line: 59, column: 30, scope: !79)
!171 = !DILocation(line: 59, column: 34, scope: !79)
!172 = !DILocation(line: 59, column: 24, scope: !79)
!173 = !DILocation(line: 59, column: 22, scope: !79)
!174 = !DILocation(line: 59, column: 7, scope: !79)
!175 = !DILocation(line: 59, column: 13, scope: !79)
!176 = !DILocation(line: 60, column: 25, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !2, line: 60, column: 7)
!178 = distinct !DILexicalBlock(scope: !79, file: !2, line: 60, column: 7)
!179 = !DILocation(line: 60, column: 7, scope: !178)
!180 = !DILocation(line: 61, column: 26, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !2, line: 60, column: 39)
!182 = !DILocation(line: 61, column: 24, scope: !181)
!183 = !DILocation(line: 61, column: 9, scope: !181)
!184 = !DILocation(line: 61, column: 15, scope: !181)
!185 = !DILocation(line: 62, column: 18, scope: !181)
!186 = !DILocation(line: 62, column: 26, scope: !181)
!187 = !DILocation(line: 62, column: 24, scope: !181)
!188 = !DILocation(line: 63, column: 12, scope: !181)
!189 = !DILocation(line: 64, column: 12, scope: !181)
!190 = !DILocation(line: 60, column: 35, scope: !177)
!191 = distinct !{!191, !179, !192, !139}
!192 = !DILocation(line: 65, column: 7, scope: !178)
!193 = !DILocation(line: 66, column: 13, scope: !79)
!194 = !DILocation(line: 66, column: 22, scope: !79)
!195 = !DILocation(line: 67, column: 10, scope: !79)
!196 = !DILocation(line: 68, column: 10, scope: !79)
!197 = distinct !{!197, !163, !198, !139}
!198 = !DILocation(line: 69, column: 5, scope: !81)
!199 = !DILocation(line: 70, column: 38, scope: !89)
!200 = !DILocation(line: 0, scope: !88)
!201 = !DILocation(line: 74, column: 19, scope: !93)
!202 = !DILocation(line: 74, column: 23, scope: !93)
!203 = !DILocation(line: 73, column: 16, scope: !88)
!204 = !DILocation(line: 72, column: 37, scope: !88)
!205 = !DILocation(line: 73, column: 32, scope: !88)
!206 = !DILocation(line: 72, column: 16, scope: !88)
!207 = !DILocation(line: 72, column: 42, scope: !88)
!208 = !DILocation(line: 72, column: 32, scope: !88)
!209 = !DILocation(line: 74, column: 27, scope: !93)
!210 = !DILocation(line: 75, column: 28, scope: !92)
!211 = !DILocation(line: 75, column: 26, scope: !92)
!212 = !DILocation(line: 0, scope: !92)
!213 = !DILocation(line: 81, column: 30, scope: !92)
!214 = !DILocation(line: 81, column: 34, scope: !92)
!215 = !DILocation(line: 81, column: 24, scope: !92)
!216 = !DILocation(line: 81, column: 22, scope: !92)
!217 = !DILocation(line: 81, column: 7, scope: !92)
!218 = !DILocation(line: 81, column: 13, scope: !92)
!219 = !DILocation(line: 82, column: 25, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !2, line: 82, column: 7)
!221 = distinct !DILexicalBlock(scope: !92, file: !2, line: 82, column: 7)
!222 = !DILocation(line: 82, column: 7, scope: !221)
!223 = !DILocation(line: 88, column: 22, scope: !92)
!224 = !DILocation(line: 88, column: 13, scope: !92)
!225 = !DILocation(line: 83, column: 26, scope: !226)
!226 = distinct !DILexicalBlock(scope: !220, file: !2, line: 82, column: 39)
!227 = !DILocation(line: 83, column: 24, scope: !226)
!228 = !DILocation(line: 83, column: 9, scope: !226)
!229 = !DILocation(line: 83, column: 15, scope: !226)
!230 = !DILocation(line: 84, column: 18, scope: !226)
!231 = !DILocation(line: 84, column: 26, scope: !226)
!232 = !DILocation(line: 84, column: 24, scope: !226)
!233 = !DILocation(line: 85, column: 12, scope: !226)
!234 = !DILocation(line: 86, column: 12, scope: !226)
!235 = !DILocation(line: 82, column: 35, scope: !220)
!236 = distinct !{!236, !222, !237, !139}
!237 = !DILocation(line: 87, column: 7, scope: !221)
!238 = !DILocation(line: 84, column: 15, scope: !226)
!239 = !DILocation(line: 89, column: 10, scope: !92)
!240 = !DILocation(line: 90, column: 10, scope: !92)
!241 = distinct !{!241, !242, !243, !139}
!242 = !DILocation(line: 74, column: 5, scope: !94)
!243 = !DILocation(line: 91, column: 5, scope: !94)
!244 = !DILocation(line: 93, column: 5, scope: !245)
!245 = distinct !DILexicalBlock(scope: !89, file: !2, line: 92, column: 10)
!246 = !DILocation(line: 15, column: 1, scope: !247)
!247 = !DILexicalBlockFile(scope: !39, file: !18, discriminator: 0)
!248 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !45, !251, !251, null}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
