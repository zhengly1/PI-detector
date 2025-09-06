; ModuleID = 'sspmv.ll'
source_filename = "sspmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_spmv.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_sspmv(i32 noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i32 noundef %6, float noundef %7, ptr nocapture noundef %8, i32 noundef %9) local_unnamed_addr #0 !dbg !39 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !51, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !52, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !53, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata float %3, metadata !54, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !55, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !56, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !57, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata float %7, metadata !58, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !59, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !60, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 0, metadata !65, metadata !DIExpression()), !dbg !108
  %11 = add i32 %0, -103, !dbg !109
  %12 = icmp ult i32 %11, -2, !dbg !109
  %13 = zext i1 %12 to i32, !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !65, metadata !DIExpression()), !dbg !108
  %14 = add i32 %1, -123, !dbg !111
  %15 = icmp ult i32 %14, -2, !dbg !111
  %16 = select i1 %15, i32 2, i32 %13, !dbg !111
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !65, metadata !DIExpression()), !dbg !108
  %17 = icmp slt i32 %2, 0, !dbg !113
  %18 = select i1 %17, i32 3, i32 %16, !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !65, metadata !DIExpression()), !dbg !108
  %19 = icmp eq i32 %6, 0, !dbg !116
  %20 = select i1 %19, i32 7, i32 %18, !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !65, metadata !DIExpression()), !dbg !108
  %21 = icmp eq i32 %9, 0, !dbg !118
  %22 = select i1 %21, i32 10, i32 %20, !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !65, metadata !DIExpression()), !dbg !108
  %23 = icmp eq i32 %22, 0, !dbg !120
  br i1 %23, label %25, label %24, !dbg !115

24:                                               ; preds = %10
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !120
  br label %25, !dbg !120

25:                                               ; preds = %24, %10
  %26 = fcmp oeq float %3, 0.000000e+00, !dbg !122
  %27 = fcmp oeq float %7, 1.000000e+00
  %28 = and i1 %26, %27, !dbg !124
  br i1 %28, label %348, label %29, !dbg !124

29:                                               ; preds = %25
  %30 = fcmp oeq float %7, 0.000000e+00, !dbg !125
  br i1 %30, label %31, label %57, !dbg !126

31:                                               ; preds = %29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !67, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata i32 0, metadata !61, metadata !DIExpression()), !dbg !128
  %32 = icmp sgt i32 %2, 0, !dbg !129
  br i1 %32, label %33, label %115, !dbg !132

33:                                               ; preds = %31
  %34 = icmp sgt i32 %9, 0, !dbg !133
  %35 = sub nsw i32 1, %2, !dbg !133
  %36 = mul i32 %35, %9, !dbg !133
  %37 = select i1 %34, i32 0, i32 %36, !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !67, metadata !DIExpression()), !dbg !127
  %38 = sext i32 %37 to i64, !dbg !132
  %39 = sext i32 %9 to i64, !dbg !132
  %40 = and i32 %2, 3, !dbg !132
  %41 = icmp ult i32 %2, 4, !dbg !132
  br i1 %41, label %93, label %42, !dbg !132

42:                                               ; preds = %33
  %43 = and i32 %2, 2147483644, !dbg !132
  br label %44, !dbg !132

44:                                               ; preds = %44, %42
  %45 = phi i64 [ %38, %42 ], [ %54, %44 ]
  %46 = phi i32 [ 0, %42 ], [ %55, %44 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !67, metadata !DIExpression()), !dbg !127
  %47 = getelementptr inbounds float, ptr %8, i64 %45, !dbg !134
  store float 0.000000e+00, ptr %47, align 4, !dbg !136, !tbaa !137
  %48 = add i64 %45, %39, !dbg !141
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !67, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !67, metadata !DIExpression()), !dbg !127
  %49 = getelementptr inbounds float, ptr %8, i64 %48, !dbg !134
  store float 0.000000e+00, ptr %49, align 4, !dbg !136, !tbaa !137
  %50 = add i64 %48, %39, !dbg !141
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !67, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !67, metadata !DIExpression()), !dbg !127
  %51 = getelementptr inbounds float, ptr %8, i64 %50, !dbg !134
  store float 0.000000e+00, ptr %51, align 4, !dbg !136, !tbaa !137
  %52 = add i64 %50, %39, !dbg !141
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !67, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !67, metadata !DIExpression()), !dbg !127
  %53 = getelementptr inbounds float, ptr %8, i64 %52, !dbg !134
  store float 0.000000e+00, ptr %53, align 4, !dbg !136, !tbaa !137
  %54 = add i64 %52, %39, !dbg !141
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !67, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !128
  %55 = add i32 %46, 4, !dbg !132
  %56 = icmp eq i32 %55, %43, !dbg !132
  br i1 %56, label %93, label %44, !dbg !132, !llvm.loop !142

57:                                               ; preds = %29
  %58 = fcmp une float %7, 1.000000e+00, !dbg !145
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !70, metadata !DIExpression()), !dbg !146
  tail call void @llvm.dbg.value(metadata i32 0, metadata !61, metadata !DIExpression()), !dbg !128
  %59 = icmp sgt i32 %2, 0
  %60 = and i1 %58, %59, !dbg !147
  br i1 %60, label %61, label %115, !dbg !147

61:                                               ; preds = %57
  %62 = icmp sgt i32 %9, 0, !dbg !148
  %63 = sub nsw i32 1, %2, !dbg !148
  %64 = mul i32 %63, %9, !dbg !148
  %65 = select i1 %62, i32 0, i32 %64, !dbg !148
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !70, metadata !DIExpression()), !dbg !146
  %66 = sext i32 %65 to i64, !dbg !149
  %67 = sext i32 %9 to i64, !dbg !149
  %68 = and i32 %2, 3, !dbg !149
  %69 = icmp ult i32 %2, 4, !dbg !149
  br i1 %69, label %103, label %70, !dbg !149

70:                                               ; preds = %61
  %71 = and i32 %2, -4, !dbg !149
  br label %72, !dbg !149

72:                                               ; preds = %72, %70
  %73 = phi i64 [ %66, %70 ], [ %90, %72 ]
  %74 = phi i32 [ 0, %70 ], [ %91, %72 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !70, metadata !DIExpression()), !dbg !146
  %75 = getelementptr inbounds float, ptr %8, i64 %73, !dbg !151
  %76 = load float, ptr %75, align 4, !dbg !154, !tbaa !137
  %77 = fmul float %76, %7, !dbg !154
  store float %77, ptr %75, align 4, !dbg !154, !tbaa !137
  %78 = add i64 %73, %67, !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !70, metadata !DIExpression()), !dbg !146
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !70, metadata !DIExpression()), !dbg !146
  %79 = getelementptr inbounds float, ptr %8, i64 %78, !dbg !151
  %80 = load float, ptr %79, align 4, !dbg !154, !tbaa !137
  %81 = fmul float %80, %7, !dbg !154
  store float %81, ptr %79, align 4, !dbg !154, !tbaa !137
  %82 = add i64 %78, %67, !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !70, metadata !DIExpression()), !dbg !146
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !70, metadata !DIExpression()), !dbg !146
  %83 = getelementptr inbounds float, ptr %8, i64 %82, !dbg !151
  %84 = load float, ptr %83, align 4, !dbg !154, !tbaa !137
  %85 = fmul float %84, %7, !dbg !154
  store float %85, ptr %83, align 4, !dbg !154, !tbaa !137
  %86 = add i64 %82, %67, !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !70, metadata !DIExpression()), !dbg !146
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !70, metadata !DIExpression()), !dbg !146
  %87 = getelementptr inbounds float, ptr %8, i64 %86, !dbg !151
  %88 = load float, ptr %87, align 4, !dbg !154, !tbaa !137
  %89 = fmul float %88, %7, !dbg !154
  store float %89, ptr %87, align 4, !dbg !154, !tbaa !137
  %90 = add i64 %86, %67, !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !70, metadata !DIExpression()), !dbg !146
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !128
  %91 = add i32 %74, 4, !dbg !149
  %92 = icmp eq i32 %91, %71, !dbg !149
  br i1 %92, label %103, label %72, !dbg !149, !llvm.loop !156

93:                                               ; preds = %44, %33
  %94 = phi i64 [ %38, %33 ], [ %54, %44 ]
  %95 = icmp eq i32 %40, 0, !dbg !132
  br i1 %95, label %115, label %96, !dbg !132

96:                                               ; preds = %96, %93
  %97 = phi i64 [ %100, %96 ], [ %94, %93 ]
  %98 = phi i32 [ %101, %96 ], [ 0, %93 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !67, metadata !DIExpression()), !dbg !127
  %99 = getelementptr inbounds float, ptr %8, i64 %97, !dbg !134
  store float 0.000000e+00, ptr %99, align 4, !dbg !136, !tbaa !137
  %100 = add i64 %97, %39, !dbg !141
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !67, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !128
  %101 = add i32 %98, 1, !dbg !132
  %102 = icmp eq i32 %101, %40, !dbg !132
  br i1 %102, label %115, label %96, !dbg !132, !llvm.loop !158

103:                                              ; preds = %72, %61
  %104 = phi i64 [ %66, %61 ], [ %90, %72 ]
  %105 = icmp eq i32 %68, 0, !dbg !149
  br i1 %105, label %115, label %106, !dbg !149

106:                                              ; preds = %106, %103
  %107 = phi i64 [ %112, %106 ], [ %104, %103 ]
  %108 = phi i32 [ %113, %106 ], [ 0, %103 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !70, metadata !DIExpression()), !dbg !146
  %109 = getelementptr inbounds float, ptr %8, i64 %107, !dbg !151
  %110 = load float, ptr %109, align 4, !dbg !154, !tbaa !137
  %111 = fmul float %110, %7, !dbg !154
  store float %111, ptr %109, align 4, !dbg !154, !tbaa !137
  %112 = add i64 %107, %67, !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !70, metadata !DIExpression()), !dbg !146
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !128
  %113 = add i32 %108, 1, !dbg !149
  %114 = icmp eq i32 %113, %68, !dbg !149
  br i1 %114, label %115, label %106, !dbg !149, !llvm.loop !160

115:                                              ; preds = %106, %103, %96, %93, %57, %31
  br i1 %26, label %348, label %116, !dbg !161

116:                                              ; preds = %115
  %117 = icmp eq i32 %0, 101, !dbg !162
  %118 = icmp eq i32 %1, 121
  %119 = and i1 %117, %118, !dbg !163
  br i1 %119, label %124, label %120, !dbg !163

120:                                              ; preds = %116
  %121 = icmp eq i32 %0, 102, !dbg !164
  %122 = icmp eq i32 %1, 122
  %123 = and i1 %121, %122, !dbg !165
  br i1 %123, label %124, label %216, !dbg !165

124:                                              ; preds = %120, %116
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !76, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i32 0, metadata !61, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !73, metadata !DIExpression()), !dbg !166
  %125 = icmp sgt i32 %2, 0, !dbg !167
  br i1 %125, label %126, label %348, !dbg !168

126:                                              ; preds = %124
  %127 = icmp sgt i32 %9, 0, !dbg !169
  %128 = sub nsw i32 1, %2, !dbg !170
  %129 = mul i32 %128, %9, !dbg !169
  %130 = select i1 %127, i32 0, i32 %129, !dbg !169
  tail call void @llvm.dbg.value(metadata i32 %130, metadata !76, metadata !DIExpression()), !dbg !166
  %131 = icmp sgt i32 %6, 0, !dbg !170
  %132 = mul i32 %128, %6, !dbg !170
  %133 = select i1 %131, i32 0, i32 %132, !dbg !170
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !73, metadata !DIExpression()), !dbg !166
  %134 = shl nuw nsw i32 %2, 1
  %135 = or disjoint i32 %134, 1
  %136 = sext i32 %9 to i64, !dbg !168
  %137 = sext i32 %6 to i64, !dbg !168
  %138 = sext i32 %133 to i64, !dbg !168
  %139 = sext i32 %130 to i64, !dbg !168
  %140 = zext nneg i32 %2 to i64
  br label %141, !dbg !168

141:                                              ; preds = %203, %126
  %142 = phi i64 [ %139, %126 ], [ %212, %203 ]
  %143 = phi i64 [ %138, %126 ], [ %211, %203 ]
  %144 = phi i32 [ %133, %126 ], [ %150, %203 ]
  %145 = phi i32 [ %130, %126 ], [ %149, %203 ]
  %146 = phi i64 [ 1, %126 ], [ %214, %203 ]
  %147 = phi i32 [ 0, %126 ], [ %213, %203 ]
  %148 = phi i32 [ 0, %126 ], [ %154, %203 ]
  %149 = add i32 %145, %9, !dbg !168
  %150 = add i32 %144, %6, !dbg !168
  tail call void @llvm.dbg.value(metadata i32 %148, metadata !61, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !73, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !76, metadata !DIExpression()), !dbg !166
  %151 = getelementptr inbounds float, ptr %5, i64 %143, !dbg !171
  %152 = load float, ptr %151, align 4, !dbg !171, !tbaa !137
  %153 = fmul float %152, %3, !dbg !172
  tail call void @llvm.dbg.value(metadata float %153, metadata !77, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !81, metadata !DIExpression()), !dbg !173
  %154 = add nuw nsw i32 %148, 1, !dbg !174
  tail call void @llvm.dbg.value(metadata i32 %154, metadata !82, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !83, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !84, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !173
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !173
  %155 = add i32 %135, %147, !dbg !175
  %156 = mul nsw i32 %155, %148, !dbg !175
  %157 = sdiv i32 %156, 2, !dbg !175
  %158 = sext i32 %157 to i64, !dbg !176
  %159 = getelementptr inbounds float, ptr %4, i64 %158, !dbg !176
  %160 = load float, ptr %159, align 4, !dbg !176, !tbaa !137
  %161 = fmul float %153, %160, !dbg !177
  %162 = getelementptr inbounds float, ptr %8, i64 %142, !dbg !178
  %163 = load float, ptr %162, align 4, !dbg !179, !tbaa !137
  %164 = fpext float %163 to double, !dbg !179
  %165 = fpext float %161 to double, !dbg !179
  %166 = fptrunc double %164 to float, !dbg !179
  %167 = fptrunc double %165 to float, !dbg !179
  %handler_result = call float @fAddHandlerFloat(float %166, float %167), !dbg !179
  store float %handler_result, ptr %162, align 4, !dbg !179, !tbaa !137
  tail call void @llvm.dbg.value(metadata i32 %154, metadata !64, metadata !DIExpression()), !dbg !128
  %168 = icmp slt i32 %154, %2, !dbg !180
  br i1 %168, label %169, label %203, !dbg !181

169:                                              ; preds = %141
  %170 = sext i32 %150 to i64, !dbg !171
  %171 = sext i32 %149 to i64, !dbg !171
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !173
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !84, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !173
  %172 = add i32 %157, %147
  br label %173, !dbg !181

173:                                              ; preds = %173, %169
  %174 = phi i64 [ %170, %169 ], [ %198, %173 ]
  %175 = phi i64 [ %171, %169 ], [ %197, %173 ]
  %176 = phi i64 [ %146, %169 ], [ %199, %173 ]
  %177 = phi float [ 0.000000e+00, %169 ], [ %handler_result2, %173 ]
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !64, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !85, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !84, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata float %177, metadata !81, metadata !DIExpression()), !dbg !173
  %178 = trunc i64 %176 to i32, !dbg !182
  %179 = add i32 %172, %178, !dbg !182
  %180 = sext i32 %179 to i64, !dbg !183
  %181 = getelementptr inbounds float, ptr %4, i64 %180, !dbg !183
  %182 = load float, ptr %181, align 4, !dbg !183, !tbaa !137
  tail call void @llvm.dbg.value(metadata float %182, metadata !86, metadata !DIExpression()), !dbg !184
  %183 = fmul float %153, %182, !dbg !185
  %184 = getelementptr inbounds float, ptr %8, i64 %175, !dbg !186
  %185 = load float, ptr %184, align 4, !dbg !187, !tbaa !137
  %186 = fpext float %185 to double, !dbg !187
  %187 = fpext float %183 to double, !dbg !187
  %188 = fptrunc double %186 to float, !dbg !187
  %189 = fptrunc double %187 to float, !dbg !187
  %handler_result1 = call float @fAddHandlerFloat(float %188, float %189), !dbg !187
  store float %handler_result1, ptr %184, align 4, !dbg !187, !tbaa !137
  %190 = getelementptr inbounds float, ptr %5, i64 %174, !dbg !188
  %191 = load float, ptr %190, align 4, !dbg !188, !tbaa !137
  %192 = fmul float %182, %191, !dbg !189
  %193 = fpext float %177 to double, !dbg !190
  %194 = fpext float %192 to double, !dbg !190
  %195 = fptrunc double %193 to float, !dbg !190
  %196 = fptrunc double %194 to float, !dbg !190
  %handler_result2 = call float @fAddHandlerFloat(float %195, float %196), !dbg !190
  tail call void @llvm.dbg.value(metadata float %handler_result2, metadata !81, metadata !DIExpression()), !dbg !173
  %197 = add i64 %175, %136, !dbg !190
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !85, metadata !DIExpression()), !dbg !173
  %198 = add i64 %174, %137, !dbg !191
  tail call void @llvm.dbg.value(metadata i64 %198, metadata !84, metadata !DIExpression()), !dbg !173
  %199 = add nuw nsw i64 %176, 1, !dbg !192
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !64, metadata !DIExpression()), !dbg !128
  %200 = icmp eq i64 %199, %140, !dbg !180
  br i1 %200, label %201, label %173, !dbg !181, !llvm.loop !193

201:                                              ; preds = %173
  %202 = load float, ptr %162, align 4, !dbg !195, !tbaa !137
  br label %203, !dbg !196

203:                                              ; preds = %201, %141
  %204 = phi float [ %handler_result, %141 ], [ %202, %201 ], !dbg !195
  %205 = phi float [ 0.000000e+00, %141 ], [ %handler_result2, %201 ], !dbg !173
  %206 = fmul float %205, %3, !dbg !196
  %207 = fpext float %206 to double, !dbg !195
  %208 = fpext float %204 to double, !dbg !195
  %209 = fptrunc double %207 to float, !dbg !195
  %210 = fptrunc double %208 to float, !dbg !195
  %handler_result3 = call float @fAddHandlerFloat(float %209, float %210), !dbg !195
  store float %handler_result3, ptr %162, align 4, !dbg !195, !tbaa !137
  %211 = add i64 %143, %137, !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !73, metadata !DIExpression()), !dbg !166
  %212 = add i64 %142, %136, !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !76, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i32 %154, metadata !61, metadata !DIExpression()), !dbg !128
  %213 = xor i32 %148, -1
  %214 = add nuw nsw i64 %146, 1, !dbg !168
  %215 = icmp eq i32 %154, %2, !dbg !167
  br i1 %215, label %348, label %141, !dbg !168, !llvm.loop !199

216:                                              ; preds = %120
  %217 = and i1 %117, %122, !dbg !201
  %218 = and i1 %121, %118
  %219 = or i1 %217, %218, !dbg !201
  br i1 %219, label %220, label %347, !dbg !201

220:                                              ; preds = %216
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !93, metadata !DIExpression()), !dbg !202
  tail call void @llvm.dbg.value(metadata i32 0, metadata !61, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !90, metadata !DIExpression()), !dbg !202
  %221 = icmp sgt i32 %2, 0, !dbg !203
  br i1 %221, label %222, label %348, !dbg !204

222:                                              ; preds = %220
  %223 = icmp sgt i32 %9, 0, !dbg !205
  %224 = sub nsw i32 1, %2, !dbg !206
  %225 = mul i32 %224, %9, !dbg !205
  %226 = select i1 %223, i32 0, i32 %225, !dbg !205
  tail call void @llvm.dbg.value(metadata i32 %226, metadata !93, metadata !DIExpression()), !dbg !202
  %227 = icmp sgt i32 %6, 0, !dbg !206
  %228 = mul i32 %224, %6, !dbg !206
  %229 = select i1 %227, i32 0, i32 %228, !dbg !206
  tail call void @llvm.dbg.value(metadata i32 %229, metadata !90, metadata !DIExpression()), !dbg !202
  %230 = sext i32 %226 to i64, !dbg !204
  %231 = sext i32 %9 to i64, !dbg !204
  %232 = sext i32 %229 to i64, !dbg !204
  %233 = sext i32 %6 to i64, !dbg !204
  %234 = zext nneg i32 %2 to i64, !dbg !203
  br label %235, !dbg !204

235:                                              ; preds = %336, %222
  %236 = phi i64 [ %232, %222 ], [ %344, %336 ]
  %237 = phi i64 [ %230, %222 ], [ %345, %336 ]
  %238 = phi i64 [ 0, %222 ], [ %242, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !61, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %237, metadata !93, metadata !DIExpression()), !dbg !202
  tail call void @llvm.dbg.value(metadata i64 %236, metadata !90, metadata !DIExpression()), !dbg !202
  %239 = getelementptr inbounds float, ptr %5, i64 %236, !dbg !207
  %240 = load float, ptr %239, align 4, !dbg !207, !tbaa !137
  %241 = fmul float %240, %3, !dbg !208
  tail call void @llvm.dbg.value(metadata float %241, metadata !94, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i32 0, metadata !99, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !100, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !101, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !102, metadata !DIExpression()), !dbg !209
  %242 = add nuw nsw i64 %238, 1, !dbg !210
  %243 = mul i64 %242, %238, !dbg !210
  %244 = lshr i64 %243, 1, !dbg !210
  %245 = and i64 %244, 2147483647, !dbg !210
  %246 = getelementptr float, ptr %4, i64 %245, !dbg !211
  %247 = getelementptr float, ptr %246, i64 %238, !dbg !211
  %248 = load float, ptr %247, align 4, !dbg !211, !tbaa !137
  %249 = fmul float %241, %248, !dbg !212
  %250 = getelementptr inbounds float, ptr %8, i64 %237, !dbg !213
  %251 = load float, ptr %250, align 4, !dbg !214, !tbaa !137
  %252 = fpext float %251 to double, !dbg !214
  %253 = fpext float %249 to double, !dbg !214
  %254 = fptrunc double %252 to float, !dbg !214
  %255 = fptrunc double %253 to float, !dbg !214
  %handler_result4 = call float @fAddHandlerFloat(float %254, float %255), !dbg !214
  store float %handler_result4, ptr %250, align 4, !dbg !214, !tbaa !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !128
  %256 = icmp eq i64 %238, 0, !dbg !215
  br i1 %256, label %336, label %257, !dbg !216

257:                                              ; preds = %235
  %258 = getelementptr float, ptr %4, i64 %245, !dbg !216
  %259 = and i64 %238, 1, !dbg !216
  %260 = icmp eq i64 %238, 1, !dbg !216
  br i1 %260, label %309, label %261, !dbg !216

261:                                              ; preds = %257
  %262 = and i64 %238, 9223372036854775806, !dbg !216
  br label %263, !dbg !216

263:                                              ; preds = %263, %261
  %264 = phi i64 [ 0, %261 ], [ %306, %263 ]
  %265 = phi i64 [ %232, %261 ], [ %305, %263 ]
  %266 = phi i64 [ %230, %261 ], [ %304, %263 ]
  %267 = phi float [ 0.000000e+00, %261 ], [ %handler_result8, %263 ]
  %268 = phi i64 [ 0, %261 ], [ %307, %263 ]
  tail call void @llvm.dbg.value(metadata i64 %266, metadata !102, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %265, metadata !101, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %264, metadata !64, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata float %267, metadata !98, metadata !DIExpression()), !dbg !209
  %269 = getelementptr float, ptr %258, i64 %264, !dbg !217
  %270 = load float, ptr %269, align 4, !dbg !217, !tbaa !137
  tail call void @llvm.dbg.value(metadata float %270, metadata !103, metadata !DIExpression()), !dbg !218
  %271 = fmul float %241, %270, !dbg !219
  %272 = getelementptr inbounds float, ptr %8, i64 %266, !dbg !220
  %273 = load float, ptr %272, align 4, !dbg !221, !tbaa !137
  %274 = fpext float %273 to double, !dbg !221
  %275 = fpext float %271 to double, !dbg !221
  %276 = fptrunc double %274 to float, !dbg !221
  %277 = fptrunc double %275 to float, !dbg !221
  %handler_result5 = call float @fAddHandlerFloat(float %276, float %277), !dbg !221
  store float %handler_result5, ptr %272, align 4, !dbg !221, !tbaa !137
  %278 = getelementptr inbounds float, ptr %5, i64 %265, !dbg !222
  %279 = load float, ptr %278, align 4, !dbg !222, !tbaa !137
  %280 = fmul float %270, %279, !dbg !223
  %281 = fpext float %267 to double, !dbg !224
  %282 = fpext float %280 to double, !dbg !224
  %283 = fptrunc double %281 to float, !dbg !224
  %284 = fptrunc double %282 to float, !dbg !224
  %handler_result6 = call float @fAddHandlerFloat(float %283, float %284), !dbg !224
  tail call void @llvm.dbg.value(metadata float %handler_result6, metadata !98, metadata !DIExpression()), !dbg !209
  %285 = add i64 %266, %231, !dbg !224
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !102, metadata !DIExpression()), !dbg !209
  %286 = add i64 %265, %233, !dbg !225
  tail call void @llvm.dbg.value(metadata i64 %286, metadata !101, metadata !DIExpression()), !dbg !209
  %287 = or disjoint i64 %264, 1, !dbg !226
  tail call void @llvm.dbg.value(metadata i64 %287, metadata !64, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !102, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %286, metadata !101, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %287, metadata !64, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata float %handler_result6, metadata !98, metadata !DIExpression()), !dbg !209
  %288 = getelementptr float, ptr %258, i64 %287, !dbg !217
  %289 = load float, ptr %288, align 4, !dbg !217, !tbaa !137
  tail call void @llvm.dbg.value(metadata float %289, metadata !103, metadata !DIExpression()), !dbg !218
  %290 = fmul float %241, %289, !dbg !219
  %291 = getelementptr inbounds float, ptr %8, i64 %285, !dbg !220
  %292 = load float, ptr %291, align 4, !dbg !221, !tbaa !137
  %293 = fpext float %292 to double, !dbg !221
  %294 = fpext float %290 to double, !dbg !221
  %295 = fptrunc double %293 to float, !dbg !221
  %296 = fptrunc double %294 to float, !dbg !221
  %handler_result7 = call float @fAddHandlerFloat(float %295, float %296), !dbg !221
  store float %handler_result7, ptr %291, align 4, !dbg !221, !tbaa !137
  %297 = getelementptr inbounds float, ptr %5, i64 %286, !dbg !222
  %298 = load float, ptr %297, align 4, !dbg !222, !tbaa !137
  %299 = fmul float %289, %298, !dbg !223
  %300 = fpext float %handler_result6 to double, !dbg !224
  %301 = fpext float %299 to double, !dbg !224
  %302 = fptrunc double %300 to float, !dbg !224
  %303 = fptrunc double %301 to float, !dbg !224
  %handler_result8 = call float @fAddHandlerFloat(float %302, float %303), !dbg !224
  tail call void @llvm.dbg.value(metadata float %handler_result8, metadata !98, metadata !DIExpression()), !dbg !209
  %304 = add i64 %285, %231, !dbg !224
  tail call void @llvm.dbg.value(metadata i64 %304, metadata !102, metadata !DIExpression()), !dbg !209
  %305 = add i64 %286, %233, !dbg !225
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !101, metadata !DIExpression()), !dbg !209
  %306 = add nuw nsw i64 %264, 2, !dbg !226
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !64, metadata !DIExpression()), !dbg !128
  %307 = add i64 %268, 2, !dbg !216
  %308 = icmp eq i64 %307, %262, !dbg !216
  br i1 %308, label %309, label %263, !dbg !216, !llvm.loop !227

309:                                              ; preds = %263, %257
  %310 = phi float [ undef, %257 ], [ %handler_result8, %263 ]
  %311 = phi i64 [ 0, %257 ], [ %306, %263 ]
  %312 = phi i64 [ %232, %257 ], [ %305, %263 ]
  %313 = phi i64 [ %230, %257 ], [ %304, %263 ]
  %314 = phi float [ 0.000000e+00, %257 ], [ %handler_result8, %263 ]
  %315 = icmp eq i64 %259, 0, !dbg !216
  br i1 %315, label %333, label %316, !dbg !216

316:                                              ; preds = %309
  tail call void @llvm.dbg.value(metadata i64 %313, metadata !102, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %312, metadata !101, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !64, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata float %314, metadata !98, metadata !DIExpression()), !dbg !209
  %317 = getelementptr float, ptr %258, i64 %311, !dbg !217
  %318 = load float, ptr %317, align 4, !dbg !217, !tbaa !137
  tail call void @llvm.dbg.value(metadata float %318, metadata !103, metadata !DIExpression()), !dbg !218
  %319 = fmul float %241, %318, !dbg !219
  %320 = getelementptr inbounds float, ptr %8, i64 %313, !dbg !220
  %321 = load float, ptr %320, align 4, !dbg !221, !tbaa !137
  %322 = fpext float %321 to double, !dbg !221
  %323 = fpext float %319 to double, !dbg !221
  %324 = fptrunc double %322 to float, !dbg !221
  %325 = fptrunc double %323 to float, !dbg !221
  %handler_result9 = call float @fAddHandlerFloat(float %324, float %325), !dbg !221
  store float %handler_result9, ptr %320, align 4, !dbg !221, !tbaa !137
  %326 = getelementptr inbounds float, ptr %5, i64 %312, !dbg !222
  %327 = load float, ptr %326, align 4, !dbg !222, !tbaa !137
  %328 = fmul float %318, %327, !dbg !223
  %329 = fpext float %314 to double, !dbg !229
  %330 = fpext float %328 to double, !dbg !229
  %331 = fptrunc double %329 to float, !dbg !229
  %332 = fptrunc double %330 to float, !dbg !229
  %handler_result10 = call float @fAddHandlerFloat(float %331, float %332), !dbg !229
  tail call void @llvm.dbg.value(metadata float %handler_result10, metadata !98, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %313, i64 %231), metadata !102, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !209
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %312, i64 %233), metadata !101, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !128
  br label %333, !dbg !229

333:                                              ; preds = %316, %309
  %334 = phi float [ %310, %309 ], [ %handler_result10, %316 ], !dbg !230
  %335 = load float, ptr %250, align 4, !dbg !229, !tbaa !137
  br label %336, !dbg !231

336:                                              ; preds = %333, %235
  %337 = phi float [ %handler_result4, %235 ], [ %335, %333 ], !dbg !229
  %338 = phi float [ 0.000000e+00, %235 ], [ %334, %333 ], !dbg !209
  %339 = fmul float %338, %3, !dbg !231
  %340 = fpext float %339 to double, !dbg !229
  %341 = fpext float %337 to double, !dbg !229
  %342 = fptrunc double %340 to float, !dbg !229
  %343 = fptrunc double %341 to float, !dbg !229
  %handler_result11 = call float @fAddHandlerFloat(float %342, float %343), !dbg !229
  store float %handler_result11, ptr %250, align 4, !dbg !229, !tbaa !137
  %344 = add i64 %236, %233, !dbg !232
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !90, metadata !DIExpression()), !dbg !202
  %345 = add i64 %237, %231, !dbg !233
  tail call void @llvm.dbg.value(metadata i64 %242, metadata !61, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !93, metadata !DIExpression()), !dbg !202
  %346 = icmp eq i64 %242, %234, !dbg !203
  br i1 %346, label %348, label %235, !dbg !204, !llvm.loop !234

347:                                              ; preds = %216
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !236
  br label %348

348:                                              ; preds = %347, %336, %220, %203, %124, %115, %25
  ret void, !dbg !238
}

declare !dbg !240 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

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
!2 = !DIFile(filename: "./source_spmv.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "000e9a9112c459077b57233a84026206")
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
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !30, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "sspmv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "e52c771954621e7950de5770406e260a")
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
!39 = distinct !DISubprogram(name: "cblas_sspmv", scope: !18, file: !18, line: 7, type: !40, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !50)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43, !44, !46, !48, !48, !44, !46, !49, !44}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !64, !65, !67, !70, !73, !76, !77, !81, !82, !83, !84, !85, !86, !90, !93, !94, !98, !99, !100, !101, !102, !103}
!51 = !DILocalVariable(name: "order", arg: 1, scope: !39, file: !18, line: 7, type: !42)
!52 = !DILocalVariable(name: "Uplo", arg: 2, scope: !39, file: !18, line: 7, type: !43)
!53 = !DILocalVariable(name: "N", arg: 3, scope: !39, file: !18, line: 8, type: !44)
!54 = !DILocalVariable(name: "alpha", arg: 4, scope: !39, file: !18, line: 8, type: !46)
!55 = !DILocalVariable(name: "Ap", arg: 5, scope: !39, file: !18, line: 8, type: !48)
!56 = !DILocalVariable(name: "X", arg: 6, scope: !39, file: !18, line: 8, type: !48)
!57 = !DILocalVariable(name: "incX", arg: 7, scope: !39, file: !18, line: 9, type: !44)
!58 = !DILocalVariable(name: "beta", arg: 8, scope: !39, file: !18, line: 9, type: !46)
!59 = !DILocalVariable(name: "Y", arg: 9, scope: !39, file: !18, line: 9, type: !49)
!60 = !DILocalVariable(name: "incY", arg: 10, scope: !39, file: !18, line: 9, type: !44)
!61 = !DILocalVariable(name: "i", scope: !62, file: !2, line: 21, type: !45)
!62 = distinct !DILexicalBlock(scope: !63, file: !2, line: 20, column: 1)
!63 = !DILexicalBlockFile(scope: !39, file: !2, discriminator: 0)
!64 = !DILocalVariable(name: "j", scope: !62, file: !2, line: 21, type: !45)
!65 = !DILocalVariable(name: "pos", scope: !66, file: !2, line: 23, type: !45)
!66 = distinct !DILexicalBlock(scope: !62, file: !2, line: 23, column: 3)
!67 = !DILocalVariable(name: "iy", scope: !68, file: !2, line: 30, type: !45)
!68 = distinct !DILexicalBlock(scope: !69, file: !2, line: 29, column: 20)
!69 = distinct !DILexicalBlock(scope: !62, file: !2, line: 29, column: 7)
!70 = !DILocalVariable(name: "iy", scope: !71, file: !2, line: 36, type: !45)
!71 = distinct !DILexicalBlock(scope: !72, file: !2, line: 35, column: 27)
!72 = distinct !DILexicalBlock(scope: !69, file: !2, line: 35, column: 14)
!73 = !DILocalVariable(name: "ix", scope: !74, file: !2, line: 50, type: !45)
!74 = distinct !DILexicalBlock(scope: !75, file: !2, line: 49, column: 58)
!75 = distinct !DILexicalBlock(scope: !62, file: !2, line: 48, column: 7)
!76 = !DILocalVariable(name: "iy", scope: !74, file: !2, line: 51, type: !45)
!77 = !DILocalVariable(name: "tmp1", scope: !78, file: !2, line: 53, type: !47)
!78 = distinct !DILexicalBlock(scope: !79, file: !2, line: 52, column: 29)
!79 = distinct !DILexicalBlock(scope: !80, file: !2, line: 52, column: 5)
!80 = distinct !DILexicalBlock(scope: !74, file: !2, line: 52, column: 5)
!81 = !DILocalVariable(name: "tmp2", scope: !78, file: !2, line: 54, type: !47)
!82 = !DILocalVariable(name: "j_min", scope: !78, file: !2, line: 55, type: !44)
!83 = !DILocalVariable(name: "j_max", scope: !78, file: !2, line: 56, type: !44)
!84 = !DILocalVariable(name: "jx", scope: !78, file: !2, line: 57, type: !45)
!85 = !DILocalVariable(name: "jy", scope: !78, file: !2, line: 58, type: !45)
!86 = !DILocalVariable(name: "apk", scope: !87, file: !2, line: 63, type: !46)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 62, column: 39)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 62, column: 7)
!89 = distinct !DILexicalBlock(scope: !78, file: !2, line: 62, column: 7)
!90 = !DILocalVariable(name: "ix", scope: !91, file: !2, line: 75, type: !45)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 74, column: 65)
!92 = distinct !DILexicalBlock(scope: !75, file: !2, line: 73, column: 14)
!93 = !DILocalVariable(name: "iy", scope: !91, file: !2, line: 76, type: !45)
!94 = !DILocalVariable(name: "tmp1", scope: !95, file: !2, line: 78, type: !47)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 77, column: 29)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 77, column: 5)
!97 = distinct !DILexicalBlock(scope: !91, file: !2, line: 77, column: 5)
!98 = !DILocalVariable(name: "tmp2", scope: !95, file: !2, line: 79, type: !47)
!99 = !DILocalVariable(name: "j_min", scope: !95, file: !2, line: 81, type: !44)
!100 = !DILocalVariable(name: "j_max", scope: !95, file: !2, line: 82, type: !44)
!101 = !DILocalVariable(name: "jx", scope: !95, file: !2, line: 83, type: !45)
!102 = !DILocalVariable(name: "jy", scope: !95, file: !2, line: 84, type: !45)
!103 = !DILocalVariable(name: "apk", scope: !104, file: !2, line: 89, type: !46)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 88, column: 39)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 88, column: 7)
!106 = distinct !DILexicalBlock(scope: !95, file: !2, line: 88, column: 7)
!107 = !DILocation(line: 0, scope: !39)
!108 = !DILocation(line: 0, scope: !66)
!109 = !DILocation(line: 23, column: 3, scope: !110)
!110 = distinct !DILexicalBlock(scope: !66, file: !2, line: 23, column: 3)
!111 = !DILocation(line: 23, column: 3, scope: !112)
!112 = distinct !DILexicalBlock(scope: !66, file: !2, line: 23, column: 3)
!113 = !DILocation(line: 23, column: 3, scope: !114)
!114 = distinct !DILexicalBlock(scope: !66, file: !2, line: 23, column: 3)
!115 = !DILocation(line: 23, column: 3, scope: !66)
!116 = !DILocation(line: 23, column: 3, scope: !117)
!117 = distinct !DILexicalBlock(scope: !66, file: !2, line: 23, column: 3)
!118 = !DILocation(line: 23, column: 3, scope: !119)
!119 = distinct !DILexicalBlock(scope: !66, file: !2, line: 23, column: 3)
!120 = !DILocation(line: 23, column: 3, scope: !121)
!121 = distinct !DILexicalBlock(scope: !66, file: !2, line: 23, column: 3)
!122 = !DILocation(line: 25, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !62, file: !2, line: 25, column: 7)
!124 = !DILocation(line: 25, column: 20, scope: !123)
!125 = !DILocation(line: 29, column: 12, scope: !69)
!126 = !DILocation(line: 29, column: 7, scope: !62)
!127 = !DILocation(line: 0, scope: !68)
!128 = !DILocation(line: 0, scope: !62)
!129 = !DILocation(line: 31, column: 19, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 31, column: 5)
!131 = distinct !DILexicalBlock(scope: !68, file: !2, line: 31, column: 5)
!132 = !DILocation(line: 31, column: 5, scope: !131)
!133 = !DILocation(line: 30, column: 16, scope: !68)
!134 = !DILocation(line: 32, column: 7, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !2, line: 31, column: 29)
!136 = !DILocation(line: 32, column: 13, scope: !135)
!137 = !{!138, !138, i64 0}
!138 = !{!"float", !139, i64 0}
!139 = !{!"omnipotent char", !140, i64 0}
!140 = !{!"Simple C/C++ TBAA"}
!141 = !DILocation(line: 33, column: 10, scope: !135)
!142 = distinct !{!142, !132, !143, !144}
!143 = !DILocation(line: 34, column: 5, scope: !131)
!144 = !{!"llvm.loop.mustprogress"}
!145 = !DILocation(line: 35, column: 19, scope: !72)
!146 = !DILocation(line: 0, scope: !71)
!147 = !DILocation(line: 35, column: 14, scope: !69)
!148 = !DILocation(line: 36, column: 16, scope: !71)
!149 = !DILocation(line: 37, column: 5, scope: !150)
!150 = distinct !DILexicalBlock(scope: !71, file: !2, line: 37, column: 5)
!151 = !DILocation(line: 38, column: 7, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !2, line: 37, column: 29)
!153 = distinct !DILexicalBlock(scope: !150, file: !2, line: 37, column: 5)
!154 = !DILocation(line: 38, column: 13, scope: !152)
!155 = !DILocation(line: 39, column: 10, scope: !152)
!156 = distinct !{!156, !149, !157, !144}
!157 = !DILocation(line: 40, column: 5, scope: !150)
!158 = distinct !{!158, !159}
!159 = !{!"llvm.loop.unroll.disable"}
!160 = distinct !{!160, !159}
!161 = !DILocation(line: 43, column: 7, scope: !62)
!162 = !DILocation(line: 48, column: 14, scope: !75)
!163 = !DILocation(line: 48, column: 31, scope: !75)
!164 = !DILocation(line: 49, column: 17, scope: !75)
!165 = !DILocation(line: 49, column: 34, scope: !75)
!166 = !DILocation(line: 0, scope: !74)
!167 = !DILocation(line: 52, column: 19, scope: !79)
!168 = !DILocation(line: 52, column: 5, scope: !80)
!169 = !DILocation(line: 51, column: 16, scope: !74)
!170 = !DILocation(line: 50, column: 16, scope: !74)
!171 = !DILocation(line: 53, column: 27, scope: !78)
!172 = !DILocation(line: 53, column: 25, scope: !78)
!173 = !DILocation(line: 0, scope: !78)
!174 = !DILocation(line: 55, column: 29, scope: !78)
!175 = !DILocation(line: 60, column: 26, scope: !78)
!176 = !DILocation(line: 60, column: 23, scope: !78)
!177 = !DILocation(line: 60, column: 21, scope: !78)
!178 = !DILocation(line: 60, column: 7, scope: !78)
!179 = !DILocation(line: 60, column: 13, scope: !78)
!180 = !DILocation(line: 62, column: 25, scope: !88)
!181 = !DILocation(line: 62, column: 7, scope: !89)
!182 = !DILocation(line: 63, column: 29, scope: !87)
!183 = !DILocation(line: 63, column: 26, scope: !87)
!184 = !DILocation(line: 0, scope: !87)
!185 = !DILocation(line: 64, column: 23, scope: !87)
!186 = !DILocation(line: 64, column: 9, scope: !87)
!187 = !DILocation(line: 64, column: 15, scope: !87)
!188 = !DILocation(line: 65, column: 23, scope: !87)
!189 = !DILocation(line: 65, column: 21, scope: !87)
!190 = !DILocation(line: 66, column: 12, scope: !87)
!191 = !DILocation(line: 67, column: 12, scope: !87)
!192 = !DILocation(line: 62, column: 35, scope: !88)
!193 = distinct !{!193, !181, !194, !144}
!194 = !DILocation(line: 68, column: 7, scope: !89)
!195 = !DILocation(line: 69, column: 13, scope: !78)
!196 = !DILocation(line: 69, column: 22, scope: !78)
!197 = !DILocation(line: 70, column: 10, scope: !78)
!198 = !DILocation(line: 71, column: 10, scope: !78)
!199 = distinct !{!199, !168, !200, !144}
!200 = !DILocation(line: 72, column: 5, scope: !80)
!201 = !DILocation(line: 73, column: 38, scope: !92)
!202 = !DILocation(line: 0, scope: !91)
!203 = !DILocation(line: 77, column: 19, scope: !96)
!204 = !DILocation(line: 77, column: 5, scope: !97)
!205 = !DILocation(line: 76, column: 16, scope: !91)
!206 = !DILocation(line: 75, column: 16, scope: !91)
!207 = !DILocation(line: 78, column: 27, scope: !95)
!208 = !DILocation(line: 78, column: 25, scope: !95)
!209 = !DILocation(line: 0, scope: !95)
!210 = !DILocation(line: 86, column: 26, scope: !95)
!211 = !DILocation(line: 86, column: 23, scope: !95)
!212 = !DILocation(line: 86, column: 21, scope: !95)
!213 = !DILocation(line: 86, column: 7, scope: !95)
!214 = !DILocation(line: 86, column: 13, scope: !95)
!215 = !DILocation(line: 88, column: 25, scope: !105)
!216 = !DILocation(line: 88, column: 7, scope: !106)
!217 = !DILocation(line: 89, column: 26, scope: !104)
!218 = !DILocation(line: 0, scope: !104)
!219 = !DILocation(line: 90, column: 23, scope: !104)
!220 = !DILocation(line: 90, column: 9, scope: !104)
!221 = !DILocation(line: 90, column: 15, scope: !104)
!222 = !DILocation(line: 91, column: 23, scope: !104)
!223 = !DILocation(line: 91, column: 21, scope: !104)
!224 = !DILocation(line: 92, column: 12, scope: !104)
!225 = !DILocation(line: 93, column: 12, scope: !104)
!226 = !DILocation(line: 88, column: 35, scope: !105)
!227 = distinct !{!227, !216, !228, !144}
!228 = !DILocation(line: 94, column: 7, scope: !106)
!229 = !DILocation(line: 95, column: 13, scope: !95)
!230 = !DILocation(line: 91, column: 14, scope: !104)
!231 = !DILocation(line: 95, column: 22, scope: !95)
!232 = !DILocation(line: 96, column: 10, scope: !95)
!233 = !DILocation(line: 97, column: 10, scope: !95)
!234 = distinct !{!234, !204, !235, !144}
!235 = !DILocation(line: 98, column: 5, scope: !97)
!236 = !DILocation(line: 100, column: 5, scope: !237)
!237 = distinct !DILexicalBlock(scope: !92, file: !2, line: 99, column: 10)
!238 = !DILocation(line: 14, column: 1, scope: !239)
!239 = !DILexicalBlockFile(scope: !39, file: !18, discriminator: 0)
!240 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !45, !243, !243, null}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
