; ModuleID = 'dsymv.c'
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
  br i1 %32, label %332, label %33, !dbg !119

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

100:                                              ; preds = %97, %100
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

110:                                              ; preds = %107, %110
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

119:                                              ; preds = %107, %110, %97, %100, %35, %61
  br i1 %30, label %332, label %120, !dbg !156

120:                                              ; preds = %119
  %121 = icmp eq i32 %0, 101, !dbg !157
  %122 = icmp eq i32 %1, 121
  %123 = and i1 %121, %122, !dbg !158
  br i1 %123, label %128, label %124, !dbg !158

124:                                              ; preds = %120
  %125 = icmp eq i32 %0, 102, !dbg !159
  %126 = icmp eq i32 %1, 122
  %127 = and i1 %125, %126, !dbg !160
  br i1 %127, label %128, label %205, !dbg !160

128:                                              ; preds = %124, %120
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !77, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !74, metadata !DIExpression()), !dbg !161
  %129 = icmp sgt i32 %2, 0, !dbg !162
  br i1 %129, label %130, label %332, !dbg !163

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

145:                                              ; preds = %130, %196
  %146 = phi i64 [ %143, %130 ], [ %201, %196 ]
  %147 = phi i64 [ %142, %130 ], [ %202, %196 ]
  %148 = phi i64 [ 0, %130 ], [ %158, %196 ]
  %149 = phi i32 [ %137, %130 ], [ %153, %196 ]
  %150 = phi i32 [ %134, %130 ], [ %152, %196 ]
  %151 = phi i64 [ 1, %130 ], [ %203, %196 ]
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
  %167 = fadd double %166, %164, !dbg !175
  store double %167, ptr %165, align 8, !dbg !175, !tbaa !132
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !65, metadata !DIExpression()), !dbg !123
  %168 = icmp ult i64 %158, %140, !dbg !176
  br i1 %168, label %169, label %196, !dbg !179

169:                                              ; preds = %145
  %170 = mul nsw i64 %148, %141, !dbg !170
  %171 = sext i32 %153 to i64, !dbg !166
  %172 = sext i32 %152 to i64, !dbg !166
  %173 = getelementptr double, ptr %4, i64 %170, !dbg !179
  br label %174, !dbg !179

174:                                              ; preds = %169, %174
  %175 = phi i64 [ %171, %169 ], [ %190, %174 ]
  %176 = phi i64 [ %172, %169 ], [ %191, %174 ]
  %177 = phi i64 [ %151, %169 ], [ %192, %174 ]
  %178 = phi double [ 0.000000e+00, %169 ], [ %189, %174 ]
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !86, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !85, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata double %178, metadata !82, metadata !DIExpression()), !dbg !168
  %179 = getelementptr double, ptr %173, i64 %177, !dbg !180
  %180 = load double, ptr %179, align 8, !dbg !180, !tbaa !132
  %181 = fmul double %157, %180, !dbg !182
  %182 = getelementptr inbounds double, ptr %9, i64 %176, !dbg !183
  %183 = load double, ptr %182, align 8, !dbg !184, !tbaa !132
  %184 = fadd double %183, %181, !dbg !184
  store double %184, ptr %182, align 8, !dbg !184, !tbaa !132
  %185 = getelementptr inbounds double, ptr %6, i64 %175, !dbg !185
  %186 = load double, ptr %185, align 8, !dbg !185, !tbaa !132
  %187 = load double, ptr %179, align 8, !dbg !186, !tbaa !132
  %188 = fmul double %186, %187, !dbg !187
  %189 = fadd double %178, %188, !dbg !188
  tail call void @llvm.dbg.value(metadata double %189, metadata !82, metadata !DIExpression()), !dbg !168
  %190 = add i64 %175, %139, !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %190, metadata !85, metadata !DIExpression()), !dbg !168
  %191 = add i64 %176, %138, !dbg !190
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !86, metadata !DIExpression()), !dbg !168
  %192 = add nuw nsw i64 %177, 1, !dbg !191
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !65, metadata !DIExpression()), !dbg !123
  %193 = icmp eq i64 %192, %144, !dbg !176
  br i1 %193, label %194, label %174, !dbg !179, !llvm.loop !192

194:                                              ; preds = %174
  %195 = load double, ptr %165, align 8, !dbg !194, !tbaa !132
  br label %196, !dbg !195

196:                                              ; preds = %194, %145
  %197 = phi double [ %167, %145 ], [ %195, %194 ], !dbg !194
  %198 = phi double [ 0.000000e+00, %145 ], [ %189, %194 ], !dbg !168
  %199 = fmul double %198, %3, !dbg !195
  %200 = fadd double %199, %197, !dbg !194
  store double %200, ptr %165, align 8, !dbg !194, !tbaa !132
  %201 = add i64 %146, %139, !dbg !196
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !74, metadata !DIExpression()), !dbg !161
  %202 = add i64 %147, %138, !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !77, metadata !DIExpression()), !dbg !161
  %203 = add nuw nsw i64 %151, 1, !dbg !163
  %204 = icmp eq i64 %158, %144, !dbg !162
  br i1 %204, label %332, label %145, !dbg !163, !llvm.loop !198

205:                                              ; preds = %124
  %206 = and i1 %121, %126, !dbg !200
  %207 = and i1 %125, %122
  %208 = or i1 %206, %207, !dbg !200
  br i1 %208, label %209, label %331, !dbg !200

209:                                              ; preds = %205
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison), metadata !90, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !201
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !201
  %210 = icmp sgt i32 %2, 0, !dbg !202
  br i1 %210, label %211, label %332, !dbg !203

211:                                              ; preds = %209
  %212 = icmp sgt i32 %10, 0, !dbg !204
  %213 = add nsw i32 %2, -1, !dbg !205
  %214 = mul i32 %213, %10, !dbg !204
  %215 = sub i32 0, %214, !dbg !204
  %216 = select i1 %212, i32 0, i32 %215, !dbg !204
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %216, i32 %214), metadata !90, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !201
  %217 = add nsw i32 %216, %214, !dbg !206
  tail call void @llvm.dbg.value(metadata i32 %217, metadata !90, metadata !DIExpression()), !dbg !201
  %218 = icmp sgt i32 %7, 0, !dbg !207
  %219 = sub nsw i32 1, %2, !dbg !207
  %220 = mul i32 %219, %7, !dbg !207
  %221 = select i1 %218, i32 0, i32 %220, !dbg !207
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %221, i32 %213, i32 %7), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !201
  %222 = mul i32 %213, %7, !dbg !208
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %221, i32 %222), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !201
  %223 = add nsw i32 %221, %222, !dbg !209
  tail call void @llvm.dbg.value(metadata i32 %223, metadata !87, metadata !DIExpression()), !dbg !201
  %224 = sub i32 0, %222
  %225 = select i1 %218, i32 0, i32 %224
  %226 = sext i32 %216 to i64, !dbg !203
  %227 = sext i32 %10 to i64, !dbg !203
  %228 = sext i32 %225 to i64, !dbg !203
  %229 = sext i32 %7 to i64, !dbg !203
  %230 = zext i32 %213 to i64, !dbg !203
  %231 = zext nneg i32 %2 to i64, !dbg !203
  %232 = sext i32 %5 to i64, !dbg !203
  %233 = add nsw i64 %230, -1
  br label %234, !dbg !203

234:                                              ; preds = %211, %322
  %235 = phi i64 [ 0, %211 ], [ %330, %322 ]
  %236 = phi i64 [ %231, %211 ], [ %240, %322 ]
  %237 = phi i64 [ %230, %211 ], [ %329, %322 ]
  %238 = phi i32 [ %217, %211 ], [ %328, %322 ]
  %239 = phi i32 [ %223, %211 ], [ %327, %322 ]
  tail call void @llvm.dbg.value(metadata i64 %236, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %238, metadata !90, metadata !DIExpression()), !dbg !201
  tail call void @llvm.dbg.value(metadata i32 %239, metadata !87, metadata !DIExpression()), !dbg !201
  %240 = add nsw i64 %236, -1, !dbg !210
  %241 = trunc i64 %240 to i32, !dbg !210
  tail call void @llvm.dbg.value(metadata i64 %240, metadata !62, metadata !DIExpression()), !dbg !123
  %242 = sext i32 %239 to i64, !dbg !211
  %243 = getelementptr inbounds double, ptr %6, i64 %242, !dbg !211
  %244 = load double, ptr %243, align 8, !dbg !211, !tbaa !132
  %245 = fmul double %244, %3, !dbg !212
  tail call void @llvm.dbg.value(metadata double %245, metadata !91, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !95, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %240, metadata !97, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i32 %225, metadata !98, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !99, metadata !DIExpression()), !dbg !213
  %246 = mul nsw i32 %241, %5, !dbg !214
  %247 = sext i32 %246 to i64, !dbg !215
  %248 = getelementptr double, ptr %4, i64 %240, !dbg !216
  %249 = getelementptr double, ptr %248, i64 %247, !dbg !216
  %250 = load double, ptr %249, align 8, !dbg !216, !tbaa !132
  %251 = fmul double %245, %250, !dbg !217
  %252 = sext i32 %238 to i64, !dbg !218
  %253 = getelementptr inbounds double, ptr %9, i64 %252, !dbg !218
  %254 = load double, ptr %253, align 8, !dbg !219, !tbaa !132
  %255 = fadd double %254, %251, !dbg !219
  store double %255, ptr %253, align 8, !dbg !219, !tbaa !132
  tail call void @llvm.dbg.value(metadata i32 0, metadata !65, metadata !DIExpression()), !dbg !123
  %256 = icmp ugt i64 %236, 1, !dbg !220
  br i1 %256, label %260, label %257, !dbg !223

257:                                              ; preds = %234
  %258 = fmul double %3, 0.000000e+00, !dbg !224
  %259 = fadd double %258, %255, !dbg !225
  store double %259, ptr %253, align 8, !dbg !225, !tbaa !132
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %239, i32 %7), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !201
  tail call void @llvm.dbg.value(metadata i64 %240, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %238, i32 %10), metadata !90, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !201
  br label %332, !dbg !203

260:                                              ; preds = %234
  %261 = mul nsw i64 %240, %232, !dbg !214
  %262 = getelementptr double, ptr %4, i64 %261, !dbg !223
  %263 = and i64 %237, 1, !dbg !223
  %264 = icmp eq i64 %235, %233, !dbg !223
  br i1 %264, label %303, label %265, !dbg !223

265:                                              ; preds = %260
  %266 = and i64 %237, -2, !dbg !223
  br label %267, !dbg !223

267:                                              ; preds = %267, %265
  %268 = phi i64 [ 0, %265 ], [ %300, %267 ]
  %269 = phi i64 [ %228, %265 ], [ %298, %267 ]
  %270 = phi i64 [ %226, %265 ], [ %299, %267 ]
  %271 = phi double [ 0.000000e+00, %265 ], [ %297, %267 ]
  %272 = phi i64 [ 0, %265 ], [ %301, %267 ]
  tail call void @llvm.dbg.value(metadata i64 %270, metadata !99, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %269, metadata !98, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata double %271, metadata !95, metadata !DIExpression()), !dbg !213
  %273 = getelementptr double, ptr %262, i64 %268, !dbg !226
  %274 = load double, ptr %273, align 8, !dbg !226, !tbaa !132
  %275 = fmul double %245, %274, !dbg !228
  %276 = getelementptr inbounds double, ptr %9, i64 %270, !dbg !229
  %277 = load double, ptr %276, align 8, !dbg !230, !tbaa !132
  %278 = fadd double %277, %275, !dbg !230
  store double %278, ptr %276, align 8, !dbg !230, !tbaa !132
  %279 = getelementptr inbounds double, ptr %6, i64 %269, !dbg !231
  %280 = load double, ptr %279, align 8, !dbg !231, !tbaa !132
  %281 = load double, ptr %273, align 8, !dbg !232, !tbaa !132
  %282 = fmul double %280, %281, !dbg !233
  %283 = fadd double %271, %282, !dbg !234
  tail call void @llvm.dbg.value(metadata double %283, metadata !95, metadata !DIExpression()), !dbg !213
  %284 = add i64 %269, %229, !dbg !235
  tail call void @llvm.dbg.value(metadata i64 %284, metadata !98, metadata !DIExpression()), !dbg !213
  %285 = add i64 %270, %227, !dbg !236
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !99, metadata !DIExpression()), !dbg !213
  %286 = or disjoint i64 %268, 1, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %286, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !99, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %284, metadata !98, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %286, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata double %283, metadata !95, metadata !DIExpression()), !dbg !213
  %287 = getelementptr double, ptr %262, i64 %286, !dbg !226
  %288 = load double, ptr %287, align 8, !dbg !226, !tbaa !132
  %289 = fmul double %245, %288, !dbg !228
  %290 = getelementptr inbounds double, ptr %9, i64 %285, !dbg !229
  %291 = load double, ptr %290, align 8, !dbg !230, !tbaa !132
  %292 = fadd double %291, %289, !dbg !230
  store double %292, ptr %290, align 8, !dbg !230, !tbaa !132
  %293 = getelementptr inbounds double, ptr %6, i64 %284, !dbg !231
  %294 = load double, ptr %293, align 8, !dbg !231, !tbaa !132
  %295 = load double, ptr %287, align 8, !dbg !232, !tbaa !132
  %296 = fmul double %294, %295, !dbg !233
  %297 = fadd double %283, %296, !dbg !234
  tail call void @llvm.dbg.value(metadata double %297, metadata !95, metadata !DIExpression()), !dbg !213
  %298 = add i64 %284, %229, !dbg !235
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !98, metadata !DIExpression()), !dbg !213
  %299 = add i64 %285, %227, !dbg !236
  tail call void @llvm.dbg.value(metadata i64 %299, metadata !99, metadata !DIExpression()), !dbg !213
  %300 = add nuw nsw i64 %268, 2, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !65, metadata !DIExpression()), !dbg !123
  %301 = add i64 %272, 2, !dbg !223
  %302 = icmp eq i64 %301, %266, !dbg !223
  br i1 %302, label %303, label %267, !dbg !223, !llvm.loop !238

303:                                              ; preds = %267, %260
  %304 = phi double [ undef, %260 ], [ %297, %267 ]
  %305 = phi i64 [ 0, %260 ], [ %300, %267 ]
  %306 = phi i64 [ %228, %260 ], [ %298, %267 ]
  %307 = phi i64 [ %226, %260 ], [ %299, %267 ]
  %308 = phi double [ 0.000000e+00, %260 ], [ %297, %267 ]
  %309 = icmp eq i64 %263, 0, !dbg !223
  br i1 %309, label %322, label %310, !dbg !223

310:                                              ; preds = %303
  tail call void @llvm.dbg.value(metadata i64 %307, metadata !99, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !98, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !65, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata double %308, metadata !95, metadata !DIExpression()), !dbg !213
  %311 = getelementptr double, ptr %262, i64 %305, !dbg !226
  %312 = load double, ptr %311, align 8, !dbg !226, !tbaa !132
  %313 = fmul double %245, %312, !dbg !228
  %314 = getelementptr inbounds double, ptr %9, i64 %307, !dbg !229
  %315 = load double, ptr %314, align 8, !dbg !230, !tbaa !132
  %316 = fadd double %315, %313, !dbg !230
  store double %316, ptr %314, align 8, !dbg !230, !tbaa !132
  %317 = getelementptr inbounds double, ptr %6, i64 %306, !dbg !231
  %318 = load double, ptr %317, align 8, !dbg !231, !tbaa !132
  %319 = load double, ptr %311, align 8, !dbg !232, !tbaa !132
  %320 = fmul double %318, %319, !dbg !233
  %321 = fadd double %308, %320, !dbg !234
  tail call void @llvm.dbg.value(metadata double %321, metadata !95, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %306, i64 %229), metadata !98, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !213
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %307, i64 %227), metadata !99, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !65, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !123
  br label %322, !dbg !225

322:                                              ; preds = %303, %310
  %323 = phi double [ %304, %303 ], [ %321, %310 ], !dbg !234
  %324 = load double, ptr %253, align 8, !dbg !225, !tbaa !132
  %325 = fmul double %323, %3, !dbg !224
  %326 = fadd double %325, %324, !dbg !225
  store double %326, ptr %253, align 8, !dbg !225, !tbaa !132
  %327 = sub nsw i32 %239, %7, !dbg !240
  tail call void @llvm.dbg.value(metadata i32 %327, metadata !87, metadata !DIExpression()), !dbg !201
  %328 = sub nsw i32 %238, %10, !dbg !241
  tail call void @llvm.dbg.value(metadata i64 %240, metadata !62, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %328, metadata !90, metadata !DIExpression()), !dbg !201
  %329 = add nsw i64 %237, -1, !dbg !203
  %330 = add i64 %235, 1, !dbg !203
  br i1 %256, label %234, label %332, !dbg !203, !llvm.loop !242

331:                                              ; preds = %205
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !245
  br label %332

332:                                              ; preds = %322, %196, %257, %209, %128, %331, %119, %29
  ret void, !dbg !247
}

declare !dbg !249 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!188 = !DILocation(line: 62, column: 15, scope: !181)
!189 = !DILocation(line: 63, column: 12, scope: !181)
!190 = !DILocation(line: 64, column: 12, scope: !181)
!191 = !DILocation(line: 60, column: 35, scope: !177)
!192 = distinct !{!192, !179, !193, !139}
!193 = !DILocation(line: 65, column: 7, scope: !178)
!194 = !DILocation(line: 66, column: 13, scope: !79)
!195 = !DILocation(line: 66, column: 22, scope: !79)
!196 = !DILocation(line: 67, column: 10, scope: !79)
!197 = !DILocation(line: 68, column: 10, scope: !79)
!198 = distinct !{!198, !163, !199, !139}
!199 = !DILocation(line: 69, column: 5, scope: !81)
!200 = !DILocation(line: 70, column: 38, scope: !89)
!201 = !DILocation(line: 0, scope: !88)
!202 = !DILocation(line: 74, column: 19, scope: !93)
!203 = !DILocation(line: 74, column: 23, scope: !93)
!204 = !DILocation(line: 73, column: 16, scope: !88)
!205 = !DILocation(line: 72, column: 37, scope: !88)
!206 = !DILocation(line: 73, column: 32, scope: !88)
!207 = !DILocation(line: 72, column: 16, scope: !88)
!208 = !DILocation(line: 72, column: 42, scope: !88)
!209 = !DILocation(line: 72, column: 32, scope: !88)
!210 = !DILocation(line: 74, column: 27, scope: !93)
!211 = !DILocation(line: 75, column: 28, scope: !92)
!212 = !DILocation(line: 75, column: 26, scope: !92)
!213 = !DILocation(line: 0, scope: !92)
!214 = !DILocation(line: 81, column: 30, scope: !92)
!215 = !DILocation(line: 81, column: 34, scope: !92)
!216 = !DILocation(line: 81, column: 24, scope: !92)
!217 = !DILocation(line: 81, column: 22, scope: !92)
!218 = !DILocation(line: 81, column: 7, scope: !92)
!219 = !DILocation(line: 81, column: 13, scope: !92)
!220 = !DILocation(line: 82, column: 25, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !2, line: 82, column: 7)
!222 = distinct !DILexicalBlock(scope: !92, file: !2, line: 82, column: 7)
!223 = !DILocation(line: 82, column: 7, scope: !222)
!224 = !DILocation(line: 88, column: 22, scope: !92)
!225 = !DILocation(line: 88, column: 13, scope: !92)
!226 = !DILocation(line: 83, column: 26, scope: !227)
!227 = distinct !DILexicalBlock(scope: !221, file: !2, line: 82, column: 39)
!228 = !DILocation(line: 83, column: 24, scope: !227)
!229 = !DILocation(line: 83, column: 9, scope: !227)
!230 = !DILocation(line: 83, column: 15, scope: !227)
!231 = !DILocation(line: 84, column: 18, scope: !227)
!232 = !DILocation(line: 84, column: 26, scope: !227)
!233 = !DILocation(line: 84, column: 24, scope: !227)
!234 = !DILocation(line: 84, column: 15, scope: !227)
!235 = !DILocation(line: 85, column: 12, scope: !227)
!236 = !DILocation(line: 86, column: 12, scope: !227)
!237 = !DILocation(line: 82, column: 35, scope: !221)
!238 = distinct !{!238, !223, !239, !139}
!239 = !DILocation(line: 87, column: 7, scope: !222)
!240 = !DILocation(line: 89, column: 10, scope: !92)
!241 = !DILocation(line: 90, column: 10, scope: !92)
!242 = distinct !{!242, !243, !244, !139}
!243 = !DILocation(line: 74, column: 5, scope: !94)
!244 = !DILocation(line: 91, column: 5, scope: !94)
!245 = !DILocation(line: 93, column: 5, scope: !246)
!246 = distinct !DILexicalBlock(scope: !89, file: !2, line: 92, column: 10)
!247 = !DILocation(line: 15, column: 1, scope: !248)
!248 = !DILexicalBlockFile(scope: !39, file: !18, discriminator: 0)
!249 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !45, !252, !252, null}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
