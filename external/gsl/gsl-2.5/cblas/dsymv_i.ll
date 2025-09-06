; ModuleID = 'dsymv.ll'
source_filename = "dsymv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_symv.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_dsymv(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, double noundef %8, ptr nocapture noundef %9, i32 noundef %10) local_unnamed_addr #0 !dbg !39 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !51, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !52, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !53, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata double %3, metadata !54, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !55, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !56, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !57, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !58, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata double %8, metadata !59, metadata !DIExpression()), !dbg !100
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
  %30 = fcmp oeq double %3, 0.000000e+00, !dbg !117
  %31 = fcmp oeq double %8, 1.000000e+00
  %32 = and i1 %30, %31, !dbg !119
  br i1 %32, label %319, label %33, !dbg !119

33:                                               ; preds = %29
  %34 = fcmp oeq double %8, 0.000000e+00, !dbg !120
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
  %51 = getelementptr inbounds double, ptr %9, i64 %49, !dbg !129
  store double 0.000000e+00, ptr %51, align 8, !dbg !131, !tbaa !132
  %52 = add i64 %49, %43, !dbg !136
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !68, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !68, metadata !DIExpression()), !dbg !122
  %53 = getelementptr inbounds double, ptr %9, i64 %52, !dbg !129
  store double 0.000000e+00, ptr %53, align 8, !dbg !131, !tbaa !132
  %54 = add i64 %52, %43, !dbg !136
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !68, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !68, metadata !DIExpression()), !dbg !122
  %55 = getelementptr inbounds double, ptr %9, i64 %54, !dbg !129
  store double 0.000000e+00, ptr %55, align 8, !dbg !131, !tbaa !132
  %56 = add i64 %54, %43, !dbg !136
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !68, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !68, metadata !DIExpression()), !dbg !122
  %57 = getelementptr inbounds double, ptr %9, i64 %56, !dbg !129
  store double 0.000000e+00, ptr %57, align 8, !dbg !131, !tbaa !132
  %58 = add i64 %56, %43, !dbg !136
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !68, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !123
  %59 = add i32 %50, 4, !dbg !127
  %60 = icmp eq i32 %59, %47, !dbg !127
  br i1 %60, label %97, label %48, !dbg !127, !llvm.loop !137

61:                                               ; preds = %33
  %62 = fcmp une double %8, 1.000000e+00, !dbg !140
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
  %79 = getelementptr inbounds double, ptr %9, i64 %77, !dbg !146
  %80 = load double, ptr %79, align 8, !dbg !149, !tbaa !132
  %81 = fmul double %80, %8, !dbg !149
  store double %81, ptr %79, align 8, !dbg !149, !tbaa !132
  %82 = add i64 %77, %71, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !71, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !71, metadata !DIExpression()), !dbg !141
  %83 = getelementptr inbounds double, ptr %9, i64 %82, !dbg !146
  %84 = load double, ptr %83, align 8, !dbg !149, !tbaa !132
  %85 = fmul double %84, %8, !dbg !149
  store double %85, ptr %83, align 8, !dbg !149, !tbaa !132
  %86 = add i64 %82, %71, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !71, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !71, metadata !DIExpression()), !dbg !141
  %87 = getelementptr inbounds double, ptr %9, i64 %86, !dbg !146
  %88 = load double, ptr %87, align 8, !dbg !149, !tbaa !132
  %89 = fmul double %88, %8, !dbg !149
  store double %89, ptr %87, align 8, !dbg !149, !tbaa !132
  %90 = add i64 %86, %71, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !71, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !71, metadata !DIExpression()), !dbg !141
  %91 = getelementptr inbounds double, ptr %9, i64 %90, !dbg !146
  %92 = load double, ptr %91, align 8, !dbg !149, !tbaa !132
  %93 = fmul double %92, %8, !dbg !149
  store double %93, ptr %91, align 8, !dbg !149, !tbaa !132
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
  %103 = getelementptr inbounds double, ptr %9, i64 %101, !dbg !129
  store double 0.000000e+00, ptr %103, align 8, !dbg !131, !tbaa !132
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
  %113 = getelementptr inbounds double, ptr %9, i64 %111, !dbg !146
  %114 = load double, ptr %113, align 8, !dbg !149, !tbaa !132
  %115 = fmul double %114, %8, !dbg !149
  store double %115, ptr %113, align 8, !dbg !149, !tbaa !132
  %116 = add i64 %111, %71, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !71, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !123
  %117 = add i32 %112, 1, !dbg !144
  %118 = icmp eq i32 %117, %72, !dbg !144
  br i1 %118, label %119, label %110, !dbg !144, !llvm.loop !155

119:                                              ; preds = %110, %107, %100, %97, %61, %35
  br i1 %30, label %319, label %120, !dbg !156

120:                                              ; preds = %119
  %121 = icmp eq i32 %0, 101, !dbg !157
  %122 = icmp eq i32 %1, 121
  %123 = and i1 %121, %122, !dbg !158
  br i1 %123, label %128, label %124, !dbg !158

124:                                              ; preds = %120
  %125 = icmp eq i32 %0, 102, !dbg !159
  %126 = icmp eq i32 %1, 122
  %127 = and i1 %125, %126, !dbg !160
  br i1 %127, label %128, label %201, !dbg !160

128:                                              ; preds = %124, %120
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !77, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !74, metadata !DIExpression()), !dbg !161
  %129 = icmp sgt i32 %2, 0, !dbg !162
  br i1 %129, label %130, label %319, !dbg !163

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

145:                                              ; preds = %193, %130
  %146 = phi i64 [ %143, %130 ], [ %197, %193 ]
  %147 = phi i64 [ %142, %130 ], [ %198, %193 ]
  %148 = phi i64 [ 0, %130 ], [ %158, %193 ]
  %149 = phi i32 [ %137, %130 ], [ %153, %193 ]
  %150 = phi i32 [ %134, %130 ], [ %152, %193 ]
  %151 = phi i64 [ 1, %130 ], [ %199, %193 ]
  %152 = add i32 %150, %10, !dbg !163
  %153 = add i32 %149, %7, !dbg !163
  %154 = trunc i64 %148 to i32
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %147, metadata !77, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !74, metadata !DIExpression()), !dbg !161
  %155 = getelementptr inbounds double, ptr %6, i64 %146, !dbg !166
  %156 = load double, ptr %155, align 8, !dbg !166, !tbaa !132
  %157 = fmul double %156, %3, !dbg !167
  tail call void @llvm.dbg.value(metadata double %157, metadata !78, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !82, metadata !DIExpression()), !dbg !168
  %158 = add nuw nsw i64 %148, 1, !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !83, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !84, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !168
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !86, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !168
  %159 = mul nsw i32 %154, %5, !dbg !170
  %160 = sext i32 %159 to i64, !dbg !171
  %161 = getelementptr double, ptr %4, i64 %148, !dbg !172
  %162 = getelementptr double, ptr %161, i64 %160, !dbg !172
  %163 = load double, ptr %162, align 8, !dbg !172, !tbaa !132
  %164 = fmul double %157, %163, !dbg !173
  %165 = getelementptr inbounds double, ptr %9, i64 %147, !dbg !174
  %166 = load double, ptr %165, align 8, !dbg !175, !tbaa !132
  %handler_result = call double @fAddHandlerDouble(double %166, double %164), !dbg !175
  store double %handler_result, ptr %165, align 8, !dbg !175, !tbaa !132
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !65, metadata !DIExpression()), !dbg !123
  %167 = icmp ult i64 %158, %140, !dbg !176
  br i1 %167, label %168, label %193, !dbg !179

168:                                              ; preds = %145
  %169 = mul nsw i64 %148, %141, !dbg !170
  %170 = sext i32 %153 to i64, !dbg !166
  %171 = sext i32 %152 to i64, !dbg !166
  %172 = getelementptr double, ptr %4, i64 %169, !dbg !179
  br label %173, !dbg !179

173:                                              ; preds = %173, %168
  %174 = phi i64 [ %170, %168 ], [ %187, %173 ]
  %175 = phi i64 [ %171, %168 ], [ %188, %173 ]
  %176 = phi i64 [ %151, %168 ], [ %189, %173 ]
  %177 = phi double [ 0.000000e+00, %168 ], [ %handler_result2, %173 ]
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !86, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !85, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata double %177, metadata !82, metadata !DIExpression()), !dbg !168
  %178 = getelementptr double, ptr %172, i64 %176, !dbg !180
  %179 = load double, ptr %178, align 8, !dbg !180, !tbaa !132
  %180 = fmul double %157, %179, !dbg !182
  %181 = getelementptr inbounds double, ptr %9, i64 %175, !dbg !183
  %182 = load double, ptr %181, align 8, !dbg !184, !tbaa !132
  %handler_result1 = call double @fAddHandlerDouble(double %182, double %180), !dbg !184
  store double %handler_result1, ptr %181, align 8, !dbg !184, !tbaa !132
  %183 = getelementptr inbounds double, ptr %6, i64 %174, !dbg !185
  %184 = load double, ptr %183, align 8, !dbg !185, !tbaa !132
  %185 = load double, ptr %178, align 8, !dbg !186, !tbaa !132
  %186 = fmul double %184, %185, !dbg !187
  %handler_result2 = call double @fAddHandlerDouble(double %177, double %186), !dbg !188
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !82, metadata !DIExpression()), !dbg !168
  %187 = add i64 %174, %139, !dbg !188
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !85, metadata !DIExpression()), !dbg !168
  %188 = add i64 %175, %138, !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !86, metadata !DIExpression()), !dbg !168
  %189 = add nuw nsw i64 %176, 1, !dbg !190
  tail call void @llvm.dbg.value(metadata i64 %189, metadata !65, metadata !DIExpression()), !dbg !123
  %190 = icmp eq i64 %189, %144, !dbg !176
  br i1 %190, label %191, label %173, !dbg !179, !llvm.loop !191

191:                                              ; preds = %173
  %192 = load double, ptr %165, align 8, !dbg !193, !tbaa !132
  br label %193, !dbg !194

193:                                              ; preds = %191, %145
  %194 = phi double [ %handler_result, %145 ], [ %192, %191 ], !dbg !193
  %195 = phi double [ 0.000000e+00, %145 ], [ %handler_result2, %191 ], !dbg !168
  %196 = fmul double %195, %3, !dbg !194
  %handler_result3 = call double @fAddHandlerDouble(double %196, double %194), !dbg !193
  store double %handler_result3, ptr %165, align 8, !dbg !193, !tbaa !132
  %197 = add i64 %146, %139, !dbg !195
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !74, metadata !DIExpression()), !dbg !161
  %198 = add i64 %147, %138, !dbg !196
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %198, metadata !77, metadata !DIExpression()), !dbg !161
  %199 = add nuw nsw i64 %151, 1, !dbg !163
  %200 = icmp eq i64 %158, %144, !dbg !162
  br i1 %200, label %319, label %145, !dbg !163, !llvm.loop !197

201:                                              ; preds = %124
  %202 = and i1 %121, %126, !dbg !199
  %203 = and i1 %125, %122
  %204 = or i1 %202, %203, !dbg !199
  br i1 %204, label %205, label %318, !dbg !199

205:                                              ; preds = %201
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison), metadata !90, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !200
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !200
  %206 = icmp sgt i32 %2, 0, !dbg !201
  br i1 %206, label %207, label %319, !dbg !202

207:                                              ; preds = %205
  %208 = icmp sgt i32 %10, 0, !dbg !203
  %209 = add nsw i32 %2, -1, !dbg !204
  %210 = mul i32 %209, %10, !dbg !203
  %211 = sub i32 0, %210, !dbg !203
  %212 = select i1 %208, i32 0, i32 %211, !dbg !203
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %212, i32 %210), metadata !90, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !200
  %213 = add nsw i32 %212, %210, !dbg !205
  tail call void @llvm.dbg.value(metadata i32 %213, metadata !90, metadata !DIExpression()), !dbg !200
  %214 = icmp sgt i32 %7, 0, !dbg !206
  %215 = sub nsw i32 1, %2, !dbg !206
  %216 = mul i32 %215, %7, !dbg !206
  %217 = select i1 %214, i32 0, i32 %216, !dbg !206
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %217, i32 %209, i32 %7), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !200
  %218 = mul i32 %209, %7, !dbg !207
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %217, i32 %218), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !200
  %219 = add nsw i32 %217, %218, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %219, metadata !87, metadata !DIExpression()), !dbg !200
  %220 = sub i32 0, %218
  %221 = select i1 %214, i32 0, i32 %220
  %222 = sext i32 %212 to i64, !dbg !202
  %223 = sext i32 %10 to i64, !dbg !202
  %224 = sext i32 %221 to i64, !dbg !202
  %225 = sext i32 %7 to i64, !dbg !202
  %226 = zext i32 %209 to i64, !dbg !202
  %227 = zext nneg i32 %2 to i64, !dbg !202
  %228 = sext i32 %5 to i64, !dbg !202
  %229 = add nsw i64 %226, -1
  br label %230, !dbg !202

230:                                              ; preds = %310, %207
  %231 = phi i64 [ 0, %207 ], [ %317, %310 ]
  %232 = phi i64 [ %227, %207 ], [ %236, %310 ]
  %233 = phi i64 [ %226, %207 ], [ %316, %310 ]
  %234 = phi i32 [ %213, %207 ], [ %315, %310 ]
  %235 = phi i32 [ %219, %207 ], [ %314, %310 ]
  tail call void @llvm.dbg.value(metadata i64 %232, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %234, metadata !90, metadata !DIExpression()), !dbg !200
  tail call void @llvm.dbg.value(metadata i32 %235, metadata !87, metadata !DIExpression()), !dbg !200
  %236 = add nsw i64 %232, -1, !dbg !209
  %237 = trunc i64 %236 to i32, !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %236, metadata !62, metadata !DIExpression()), !dbg !123
  %238 = sext i32 %235 to i64, !dbg !210
  %239 = getelementptr inbounds double, ptr %6, i64 %238, !dbg !210
  %240 = load double, ptr %239, align 8, !dbg !210, !tbaa !132
  %241 = fmul double %240, %3, !dbg !211
  tail call void @llvm.dbg.value(metadata double %241, metadata !91, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !95, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %236, metadata !97, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i32 %221, metadata !98, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !99, metadata !DIExpression()), !dbg !212
  %242 = mul nsw i32 %237, %5, !dbg !213
  %243 = sext i32 %242 to i64, !dbg !214
  %244 = getelementptr double, ptr %4, i64 %236, !dbg !215
  %245 = getelementptr double, ptr %244, i64 %243, !dbg !215
  %246 = load double, ptr %245, align 8, !dbg !215, !tbaa !132
  %247 = fmul double %241, %246, !dbg !216
  %248 = sext i32 %234 to i64, !dbg !217
  %249 = getelementptr inbounds double, ptr %9, i64 %248, !dbg !217
  %250 = load double, ptr %249, align 8, !dbg !218, !tbaa !132
  %handler_result4 = call double @fAddHandlerDouble(double %250, double %247), !dbg !218
  store double %handler_result4, ptr %249, align 8, !dbg !218, !tbaa !132
  tail call void @llvm.dbg.value(metadata i32 0, metadata !65, metadata !DIExpression()), !dbg !123
  %251 = icmp ugt i64 %232, 1, !dbg !219
  br i1 %251, label %254, label %252, !dbg !222

252:                                              ; preds = %230
  %253 = fmul double %3, 0.000000e+00, !dbg !223
  %handler_result5 = call double @fAddHandlerDouble(double %253, double %handler_result4), !dbg !224
  store double %handler_result5, ptr %249, align 8, !dbg !224, !tbaa !132
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %235, i32 %7), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !200
  tail call void @llvm.dbg.value(metadata i64 %236, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %234, i32 %10), metadata !90, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !200
  br label %319, !dbg !202

254:                                              ; preds = %230
  %255 = mul nsw i64 %236, %228, !dbg !213
  %256 = getelementptr double, ptr %4, i64 %255, !dbg !222
  %257 = and i64 %233, 1, !dbg !222
  %258 = icmp eq i64 %231, %229, !dbg !222
  br i1 %258, label %293, label %259, !dbg !222

259:                                              ; preds = %254
  %260 = and i64 %233, -2, !dbg !222
  br label %261, !dbg !222

261:                                              ; preds = %261, %259
  %262 = phi i64 [ 0, %259 ], [ %290, %261 ]
  %263 = phi i64 [ %224, %259 ], [ %288, %261 ]
  %264 = phi i64 [ %222, %259 ], [ %289, %261 ]
  %265 = phi double [ 0.000000e+00, %259 ], [ %handler_result9, %261 ]
  %266 = phi i64 [ 0, %259 ], [ %291, %261 ]
  tail call void @llvm.dbg.value(metadata i64 %264, metadata !99, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %263, metadata !98, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %262, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata double %265, metadata !95, metadata !DIExpression()), !dbg !212
  %267 = getelementptr double, ptr %256, i64 %262, !dbg !225
  %268 = load double, ptr %267, align 8, !dbg !225, !tbaa !132
  %269 = fmul double %241, %268, !dbg !227
  %270 = getelementptr inbounds double, ptr %9, i64 %264, !dbg !228
  %271 = load double, ptr %270, align 8, !dbg !229, !tbaa !132
  %handler_result6 = call double @fAddHandlerDouble(double %271, double %269), !dbg !229
  store double %handler_result6, ptr %270, align 8, !dbg !229, !tbaa !132
  %272 = getelementptr inbounds double, ptr %6, i64 %263, !dbg !230
  %273 = load double, ptr %272, align 8, !dbg !230, !tbaa !132
  %274 = load double, ptr %267, align 8, !dbg !231, !tbaa !132
  %275 = fmul double %273, %274, !dbg !232
  %handler_result7 = call double @fAddHandlerDouble(double %265, double %275), !dbg !233
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !95, metadata !DIExpression()), !dbg !212
  %276 = add i64 %263, %225, !dbg !233
  tail call void @llvm.dbg.value(metadata i64 %276, metadata !98, metadata !DIExpression()), !dbg !212
  %277 = add i64 %264, %223, !dbg !234
  tail call void @llvm.dbg.value(metadata i64 %277, metadata !99, metadata !DIExpression()), !dbg !212
  %278 = or disjoint i64 %262, 1, !dbg !235
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %277, metadata !99, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %276, metadata !98, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !95, metadata !DIExpression()), !dbg !212
  %279 = getelementptr double, ptr %256, i64 %278, !dbg !225
  %280 = load double, ptr %279, align 8, !dbg !225, !tbaa !132
  %281 = fmul double %241, %280, !dbg !227
  %282 = getelementptr inbounds double, ptr %9, i64 %277, !dbg !228
  %283 = load double, ptr %282, align 8, !dbg !229, !tbaa !132
  %handler_result8 = call double @fAddHandlerDouble(double %283, double %281), !dbg !229
  store double %handler_result8, ptr %282, align 8, !dbg !229, !tbaa !132
  %284 = getelementptr inbounds double, ptr %6, i64 %276, !dbg !230
  %285 = load double, ptr %284, align 8, !dbg !230, !tbaa !132
  %286 = load double, ptr %279, align 8, !dbg !231, !tbaa !132
  %287 = fmul double %285, %286, !dbg !232
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result7, double %287), !dbg !233
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !95, metadata !DIExpression()), !dbg !212
  %288 = add i64 %276, %225, !dbg !233
  tail call void @llvm.dbg.value(metadata i64 %288, metadata !98, metadata !DIExpression()), !dbg !212
  %289 = add i64 %277, %223, !dbg !234
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !99, metadata !DIExpression()), !dbg !212
  %290 = add nuw nsw i64 %262, 2, !dbg !235
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !65, metadata !DIExpression()), !dbg !123
  %291 = add i64 %266, 2, !dbg !222
  %292 = icmp eq i64 %291, %260, !dbg !222
  br i1 %292, label %293, label %261, !dbg !222, !llvm.loop !236

293:                                              ; preds = %261, %254
  %294 = phi double [ undef, %254 ], [ %handler_result9, %261 ]
  %295 = phi i64 [ 0, %254 ], [ %290, %261 ]
  %296 = phi i64 [ %224, %254 ], [ %288, %261 ]
  %297 = phi i64 [ %222, %254 ], [ %289, %261 ]
  %298 = phi double [ 0.000000e+00, %254 ], [ %handler_result9, %261 ]
  %299 = icmp eq i64 %257, 0, !dbg !222
  br i1 %299, label %310, label %300, !dbg !222

300:                                              ; preds = %293
  tail call void @llvm.dbg.value(metadata i64 %297, metadata !99, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !98, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata double %298, metadata !95, metadata !DIExpression()), !dbg !212
  %301 = getelementptr double, ptr %256, i64 %295, !dbg !225
  %302 = load double, ptr %301, align 8, !dbg !225, !tbaa !132
  %303 = fmul double %241, %302, !dbg !227
  %304 = getelementptr inbounds double, ptr %9, i64 %297, !dbg !228
  %305 = load double, ptr %304, align 8, !dbg !229, !tbaa !132
  %handler_result10 = call double @fAddHandlerDouble(double %305, double %303), !dbg !229
  store double %handler_result10, ptr %304, align 8, !dbg !229, !tbaa !132
  %306 = getelementptr inbounds double, ptr %6, i64 %296, !dbg !230
  %307 = load double, ptr %306, align 8, !dbg !230, !tbaa !132
  %308 = load double, ptr %301, align 8, !dbg !231, !tbaa !132
  %309 = fmul double %307, %308, !dbg !232
  %handler_result11 = call double @fAddHandlerDouble(double %298, double %309), !dbg !224
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !95, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %296, i64 %225), metadata !98, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !212
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %297, i64 %223), metadata !99, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !65, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !123
  br label %310, !dbg !224

310:                                              ; preds = %300, %293
  %311 = phi double [ %294, %293 ], [ %handler_result11, %300 ], !dbg !238
  %312 = load double, ptr %249, align 8, !dbg !224, !tbaa !132
  %313 = fmul double %311, %3, !dbg !223
  %handler_result12 = call double @fAddHandlerDouble(double %313, double %312), !dbg !224
  store double %handler_result12, ptr %249, align 8, !dbg !224, !tbaa !132
  %314 = sub nsw i32 %235, %7, !dbg !239
  tail call void @llvm.dbg.value(metadata i32 %314, metadata !87, metadata !DIExpression()), !dbg !200
  %315 = sub nsw i32 %234, %10, !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %236, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %315, metadata !90, metadata !DIExpression()), !dbg !200
  %316 = add nsw i64 %233, -1, !dbg !202
  %317 = add i64 %231, 1, !dbg !202
  br i1 %251, label %230, label %319, !dbg !202, !llvm.loop !241

318:                                              ; preds = %201
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !244
  br label %319

319:                                              ; preds = %318, %310, %252, %205, %193, %128, %119, %29
  ret void, !dbg !246
}

declare !dbg !248 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!18 = !DIFile(filename: "dsymv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "e9abdffdc13fd55da51d28c875868309")
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
!39 = distinct !DISubprogram(name: "cblas_dsymv", scope: !18, file: !18, line: 7, type: !40, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !50)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43, !44, !46, !48, !44, !48, !44, !46, !49, !44}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
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
!133 = !{!"double", !134, i64 0}
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
