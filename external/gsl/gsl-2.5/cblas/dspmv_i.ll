; ModuleID = 'dspmv.ll'
source_filename = "dspmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_spmv.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_dspmv(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i32 noundef %6, double noundef %7, ptr nocapture noundef %8, i32 noundef %9) local_unnamed_addr #0 !dbg !39 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !51, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !52, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !53, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata double %3, metadata !54, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !55, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !56, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !57, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata double %7, metadata !58, metadata !DIExpression()), !dbg !107
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
  %26 = fcmp oeq double %3, 0.000000e+00, !dbg !122
  %27 = fcmp oeq double %7, 1.000000e+00
  %28 = and i1 %26, %27, !dbg !124
  br i1 %28, label %300, label %29, !dbg !124

29:                                               ; preds = %25
  %30 = fcmp oeq double %7, 0.000000e+00, !dbg !125
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
  %47 = getelementptr inbounds double, ptr %8, i64 %45, !dbg !134
  store double 0.000000e+00, ptr %47, align 8, !dbg !136, !tbaa !137
  %48 = add i64 %45, %39, !dbg !141
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !67, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !67, metadata !DIExpression()), !dbg !127
  %49 = getelementptr inbounds double, ptr %8, i64 %48, !dbg !134
  store double 0.000000e+00, ptr %49, align 8, !dbg !136, !tbaa !137
  %50 = add i64 %48, %39, !dbg !141
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !67, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !67, metadata !DIExpression()), !dbg !127
  %51 = getelementptr inbounds double, ptr %8, i64 %50, !dbg !134
  store double 0.000000e+00, ptr %51, align 8, !dbg !136, !tbaa !137
  %52 = add i64 %50, %39, !dbg !141
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !67, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !67, metadata !DIExpression()), !dbg !127
  %53 = getelementptr inbounds double, ptr %8, i64 %52, !dbg !134
  store double 0.000000e+00, ptr %53, align 8, !dbg !136, !tbaa !137
  %54 = add i64 %52, %39, !dbg !141
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !67, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !128
  %55 = add i32 %46, 4, !dbg !132
  %56 = icmp eq i32 %55, %43, !dbg !132
  br i1 %56, label %93, label %44, !dbg !132, !llvm.loop !142

57:                                               ; preds = %29
  %58 = fcmp une double %7, 1.000000e+00, !dbg !145
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
  %75 = getelementptr inbounds double, ptr %8, i64 %73, !dbg !151
  %76 = load double, ptr %75, align 8, !dbg !154, !tbaa !137
  %77 = fmul double %76, %7, !dbg !154
  store double %77, ptr %75, align 8, !dbg !154, !tbaa !137
  %78 = add i64 %73, %67, !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !70, metadata !DIExpression()), !dbg !146
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !70, metadata !DIExpression()), !dbg !146
  %79 = getelementptr inbounds double, ptr %8, i64 %78, !dbg !151
  %80 = load double, ptr %79, align 8, !dbg !154, !tbaa !137
  %81 = fmul double %80, %7, !dbg !154
  store double %81, ptr %79, align 8, !dbg !154, !tbaa !137
  %82 = add i64 %78, %67, !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !70, metadata !DIExpression()), !dbg !146
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !70, metadata !DIExpression()), !dbg !146
  %83 = getelementptr inbounds double, ptr %8, i64 %82, !dbg !151
  %84 = load double, ptr %83, align 8, !dbg !154, !tbaa !137
  %85 = fmul double %84, %7, !dbg !154
  store double %85, ptr %83, align 8, !dbg !154, !tbaa !137
  %86 = add i64 %82, %67, !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !70, metadata !DIExpression()), !dbg !146
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !70, metadata !DIExpression()), !dbg !146
  %87 = getelementptr inbounds double, ptr %8, i64 %86, !dbg !151
  %88 = load double, ptr %87, align 8, !dbg !154, !tbaa !137
  %89 = fmul double %88, %7, !dbg !154
  store double %89, ptr %87, align 8, !dbg !154, !tbaa !137
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
  %99 = getelementptr inbounds double, ptr %8, i64 %97, !dbg !134
  store double 0.000000e+00, ptr %99, align 8, !dbg !136, !tbaa !137
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
  %109 = getelementptr inbounds double, ptr %8, i64 %107, !dbg !151
  %110 = load double, ptr %109, align 8, !dbg !154, !tbaa !137
  %111 = fmul double %110, %7, !dbg !154
  store double %111, ptr %109, align 8, !dbg !154, !tbaa !137
  %112 = add i64 %107, %67, !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !70, metadata !DIExpression()), !dbg !146
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !128
  %113 = add i32 %108, 1, !dbg !149
  %114 = icmp eq i32 %113, %68, !dbg !149
  br i1 %114, label %115, label %106, !dbg !149, !llvm.loop !160

115:                                              ; preds = %106, %103, %96, %93, %57, %31
  br i1 %26, label %300, label %116, !dbg !161

116:                                              ; preds = %115
  %117 = icmp eq i32 %0, 101, !dbg !162
  %118 = icmp eq i32 %1, 121
  %119 = and i1 %117, %118, !dbg !163
  br i1 %119, label %124, label %120, !dbg !163

120:                                              ; preds = %116
  %121 = icmp eq i32 %0, 102, !dbg !164
  %122 = icmp eq i32 %1, 122
  %123 = and i1 %121, %122, !dbg !165
  br i1 %123, label %124, label %200, !dbg !165

124:                                              ; preds = %120, %116
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !76, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i32 0, metadata !61, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !73, metadata !DIExpression()), !dbg !166
  %125 = icmp sgt i32 %2, 0, !dbg !167
  br i1 %125, label %126, label %300, !dbg !168

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

141:                                              ; preds = %191, %126
  %142 = phi i64 [ %139, %126 ], [ %196, %191 ]
  %143 = phi i64 [ %138, %126 ], [ %195, %191 ]
  %144 = phi i32 [ %133, %126 ], [ %150, %191 ]
  %145 = phi i32 [ %130, %126 ], [ %149, %191 ]
  %146 = phi i64 [ 1, %126 ], [ %198, %191 ]
  %147 = phi i32 [ 0, %126 ], [ %197, %191 ]
  %148 = phi i32 [ 0, %126 ], [ %154, %191 ]
  %149 = add i32 %145, %9, !dbg !168
  %150 = add i32 %144, %6, !dbg !168
  tail call void @llvm.dbg.value(metadata i32 %148, metadata !61, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !73, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !76, metadata !DIExpression()), !dbg !166
  %151 = getelementptr inbounds double, ptr %5, i64 %143, !dbg !171
  %152 = load double, ptr %151, align 8, !dbg !171, !tbaa !137
  %153 = fmul double %152, %3, !dbg !172
  tail call void @llvm.dbg.value(metadata double %153, metadata !77, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !81, metadata !DIExpression()), !dbg !173
  %154 = add nuw nsw i32 %148, 1, !dbg !174
  tail call void @llvm.dbg.value(metadata i32 %154, metadata !82, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !83, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !84, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !173
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !173
  %155 = add i32 %135, %147, !dbg !175
  %156 = mul nsw i32 %155, %148, !dbg !175
  %157 = sdiv i32 %156, 2, !dbg !175
  %158 = sext i32 %157 to i64, !dbg !176
  %159 = getelementptr inbounds double, ptr %4, i64 %158, !dbg !176
  %160 = load double, ptr %159, align 8, !dbg !176, !tbaa !137
  %161 = fmul double %153, %160, !dbg !177
  %162 = getelementptr inbounds double, ptr %8, i64 %142, !dbg !178
  %163 = load double, ptr %162, align 8, !dbg !179, !tbaa !137
  %handler_result = call double @fAddHandlerDouble(double %163, double %161), !dbg !179
  store double %handler_result, ptr %162, align 8, !dbg !179, !tbaa !137
  tail call void @llvm.dbg.value(metadata i32 %154, metadata !64, metadata !DIExpression()), !dbg !128
  %164 = icmp slt i32 %154, %2, !dbg !180
  br i1 %164, label %165, label %191, !dbg !181

165:                                              ; preds = %141
  %166 = sext i32 %150 to i64, !dbg !171
  %167 = sext i32 %149 to i64, !dbg !171
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !173
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !84, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !173
  %168 = add i32 %157, %147
  br label %169, !dbg !181

169:                                              ; preds = %169, %165
  %170 = phi i64 [ %166, %165 ], [ %186, %169 ]
  %171 = phi i64 [ %167, %165 ], [ %185, %169 ]
  %172 = phi i64 [ %146, %165 ], [ %187, %169 ]
  %173 = phi double [ 0.000000e+00, %165 ], [ %handler_result2, %169 ]
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !64, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !85, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !84, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata double %173, metadata !81, metadata !DIExpression()), !dbg !173
  %174 = trunc i64 %172 to i32, !dbg !182
  %175 = add i32 %168, %174, !dbg !182
  %176 = sext i32 %175 to i64, !dbg !183
  %177 = getelementptr inbounds double, ptr %4, i64 %176, !dbg !183
  %178 = load double, ptr %177, align 8, !dbg !183, !tbaa !137
  tail call void @llvm.dbg.value(metadata double %178, metadata !86, metadata !DIExpression()), !dbg !184
  %179 = fmul double %153, %178, !dbg !185
  %180 = getelementptr inbounds double, ptr %8, i64 %171, !dbg !186
  %181 = load double, ptr %180, align 8, !dbg !187, !tbaa !137
  %handler_result1 = call double @fAddHandlerDouble(double %181, double %179), !dbg !187
  store double %handler_result1, ptr %180, align 8, !dbg !187, !tbaa !137
  %182 = getelementptr inbounds double, ptr %5, i64 %170, !dbg !188
  %183 = load double, ptr %182, align 8, !dbg !188, !tbaa !137
  %184 = fmul double %178, %183, !dbg !189
  %handler_result2 = call double @fAddHandlerDouble(double %173, double %184), !dbg !190
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !81, metadata !DIExpression()), !dbg !173
  %185 = add i64 %171, %136, !dbg !190
  tail call void @llvm.dbg.value(metadata i64 %185, metadata !85, metadata !DIExpression()), !dbg !173
  %186 = add i64 %170, %137, !dbg !191
  tail call void @llvm.dbg.value(metadata i64 %186, metadata !84, metadata !DIExpression()), !dbg !173
  %187 = add nuw nsw i64 %172, 1, !dbg !192
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !64, metadata !DIExpression()), !dbg !128
  %188 = icmp eq i64 %187, %140, !dbg !180
  br i1 %188, label %189, label %169, !dbg !181, !llvm.loop !193

189:                                              ; preds = %169
  %190 = load double, ptr %162, align 8, !dbg !195, !tbaa !137
  br label %191, !dbg !196

191:                                              ; preds = %189, %141
  %192 = phi double [ %handler_result, %141 ], [ %190, %189 ], !dbg !195
  %193 = phi double [ 0.000000e+00, %141 ], [ %handler_result2, %189 ], !dbg !173
  %194 = fmul double %193, %3, !dbg !196
  %handler_result3 = call double @fAddHandlerDouble(double %194, double %192), !dbg !195
  store double %handler_result3, ptr %162, align 8, !dbg !195, !tbaa !137
  %195 = add i64 %143, %137, !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %195, metadata !73, metadata !DIExpression()), !dbg !166
  %196 = add i64 %142, %136, !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !76, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i32 %154, metadata !61, metadata !DIExpression()), !dbg !128
  %197 = xor i32 %148, -1
  %198 = add nuw nsw i64 %146, 1, !dbg !168
  %199 = icmp eq i32 %154, %2, !dbg !167
  br i1 %199, label %300, label %141, !dbg !168, !llvm.loop !199

200:                                              ; preds = %120
  %201 = and i1 %117, %122, !dbg !201
  %202 = and i1 %121, %118
  %203 = or i1 %201, %202, !dbg !201
  br i1 %203, label %204, label %299, !dbg !201

204:                                              ; preds = %200
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !93, metadata !DIExpression()), !dbg !202
  tail call void @llvm.dbg.value(metadata i32 0, metadata !61, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !90, metadata !DIExpression()), !dbg !202
  %205 = icmp sgt i32 %2, 0, !dbg !203
  br i1 %205, label %206, label %300, !dbg !204

206:                                              ; preds = %204
  %207 = icmp sgt i32 %9, 0, !dbg !205
  %208 = sub nsw i32 1, %2, !dbg !206
  %209 = mul i32 %208, %9, !dbg !205
  %210 = select i1 %207, i32 0, i32 %209, !dbg !205
  tail call void @llvm.dbg.value(metadata i32 %210, metadata !93, metadata !DIExpression()), !dbg !202
  %211 = icmp sgt i32 %6, 0, !dbg !206
  %212 = mul i32 %208, %6, !dbg !206
  %213 = select i1 %211, i32 0, i32 %212, !dbg !206
  tail call void @llvm.dbg.value(metadata i32 %213, metadata !90, metadata !DIExpression()), !dbg !202
  %214 = sext i32 %210 to i64, !dbg !204
  %215 = sext i32 %9 to i64, !dbg !204
  %216 = sext i32 %213 to i64, !dbg !204
  %217 = sext i32 %6 to i64, !dbg !204
  %218 = zext nneg i32 %2 to i64, !dbg !203
  br label %219, !dbg !204

219:                                              ; preds = %292, %206
  %220 = phi i64 [ %216, %206 ], [ %296, %292 ]
  %221 = phi i64 [ %214, %206 ], [ %297, %292 ]
  %222 = phi i64 [ 0, %206 ], [ %226, %292 ]
  tail call void @llvm.dbg.value(metadata i64 %222, metadata !61, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %221, metadata !93, metadata !DIExpression()), !dbg !202
  tail call void @llvm.dbg.value(metadata i64 %220, metadata !90, metadata !DIExpression()), !dbg !202
  %223 = getelementptr inbounds double, ptr %5, i64 %220, !dbg !207
  %224 = load double, ptr %223, align 8, !dbg !207, !tbaa !137
  %225 = fmul double %224, %3, !dbg !208
  tail call void @llvm.dbg.value(metadata double %225, metadata !94, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i32 0, metadata !99, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %222, metadata !100, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !101, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !102, metadata !DIExpression()), !dbg !209
  %226 = add nuw nsw i64 %222, 1, !dbg !210
  %227 = mul i64 %226, %222, !dbg !210
  %228 = lshr i64 %227, 1, !dbg !210
  %229 = and i64 %228, 2147483647, !dbg !210
  %230 = getelementptr double, ptr %4, i64 %229, !dbg !211
  %231 = getelementptr double, ptr %230, i64 %222, !dbg !211
  %232 = load double, ptr %231, align 8, !dbg !211, !tbaa !137
  %233 = fmul double %225, %232, !dbg !212
  %234 = getelementptr inbounds double, ptr %8, i64 %221, !dbg !213
  %235 = load double, ptr %234, align 8, !dbg !214, !tbaa !137
  %handler_result4 = call double @fAddHandlerDouble(double %235, double %233), !dbg !214
  store double %handler_result4, ptr %234, align 8, !dbg !214, !tbaa !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !128
  %236 = icmp eq i64 %222, 0, !dbg !215
  br i1 %236, label %292, label %237, !dbg !216

237:                                              ; preds = %219
  %238 = getelementptr double, ptr %4, i64 %229, !dbg !216
  %239 = and i64 %222, 1, !dbg !216
  %240 = icmp eq i64 %222, 1, !dbg !216
  br i1 %240, label %273, label %241, !dbg !216

241:                                              ; preds = %237
  %242 = and i64 %222, 9223372036854775806, !dbg !216
  br label %243, !dbg !216

243:                                              ; preds = %243, %241
  %244 = phi i64 [ 0, %241 ], [ %270, %243 ]
  %245 = phi i64 [ %216, %241 ], [ %269, %243 ]
  %246 = phi i64 [ %214, %241 ], [ %268, %243 ]
  %247 = phi double [ 0.000000e+00, %241 ], [ %handler_result8, %243 ]
  %248 = phi i64 [ 0, %241 ], [ %271, %243 ]
  tail call void @llvm.dbg.value(metadata i64 %246, metadata !102, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !101, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %244, metadata !64, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata double %247, metadata !98, metadata !DIExpression()), !dbg !209
  %249 = getelementptr double, ptr %238, i64 %244, !dbg !217
  %250 = load double, ptr %249, align 8, !dbg !217, !tbaa !137
  tail call void @llvm.dbg.value(metadata double %250, metadata !103, metadata !DIExpression()), !dbg !218
  %251 = fmul double %225, %250, !dbg !219
  %252 = getelementptr inbounds double, ptr %8, i64 %246, !dbg !220
  %253 = load double, ptr %252, align 8, !dbg !221, !tbaa !137
  %handler_result5 = call double @fAddHandlerDouble(double %253, double %251), !dbg !221
  store double %handler_result5, ptr %252, align 8, !dbg !221, !tbaa !137
  %254 = getelementptr inbounds double, ptr %5, i64 %245, !dbg !222
  %255 = load double, ptr %254, align 8, !dbg !222, !tbaa !137
  %256 = fmul double %250, %255, !dbg !223
  %handler_result6 = call double @fAddHandlerDouble(double %247, double %256), !dbg !224
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !98, metadata !DIExpression()), !dbg !209
  %257 = add i64 %246, %215, !dbg !224
  tail call void @llvm.dbg.value(metadata i64 %257, metadata !102, metadata !DIExpression()), !dbg !209
  %258 = add i64 %245, %217, !dbg !225
  tail call void @llvm.dbg.value(metadata i64 %258, metadata !101, metadata !DIExpression()), !dbg !209
  %259 = or disjoint i64 %244, 1, !dbg !226
  tail call void @llvm.dbg.value(metadata i64 %259, metadata !64, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %257, metadata !102, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %258, metadata !101, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %259, metadata !64, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !98, metadata !DIExpression()), !dbg !209
  %260 = getelementptr double, ptr %238, i64 %259, !dbg !217
  %261 = load double, ptr %260, align 8, !dbg !217, !tbaa !137
  tail call void @llvm.dbg.value(metadata double %261, metadata !103, metadata !DIExpression()), !dbg !218
  %262 = fmul double %225, %261, !dbg !219
  %263 = getelementptr inbounds double, ptr %8, i64 %257, !dbg !220
  %264 = load double, ptr %263, align 8, !dbg !221, !tbaa !137
  %handler_result7 = call double @fAddHandlerDouble(double %264, double %262), !dbg !221
  store double %handler_result7, ptr %263, align 8, !dbg !221, !tbaa !137
  %265 = getelementptr inbounds double, ptr %5, i64 %258, !dbg !222
  %266 = load double, ptr %265, align 8, !dbg !222, !tbaa !137
  %267 = fmul double %261, %266, !dbg !223
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result6, double %267), !dbg !224
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !98, metadata !DIExpression()), !dbg !209
  %268 = add i64 %257, %215, !dbg !224
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !102, metadata !DIExpression()), !dbg !209
  %269 = add i64 %258, %217, !dbg !225
  tail call void @llvm.dbg.value(metadata i64 %269, metadata !101, metadata !DIExpression()), !dbg !209
  %270 = add nuw nsw i64 %244, 2, !dbg !226
  tail call void @llvm.dbg.value(metadata i64 %270, metadata !64, metadata !DIExpression()), !dbg !128
  %271 = add i64 %248, 2, !dbg !216
  %272 = icmp eq i64 %271, %242, !dbg !216
  br i1 %272, label %273, label %243, !dbg !216, !llvm.loop !227

273:                                              ; preds = %243, %237
  %274 = phi double [ undef, %237 ], [ %handler_result8, %243 ]
  %275 = phi i64 [ 0, %237 ], [ %270, %243 ]
  %276 = phi i64 [ %216, %237 ], [ %269, %243 ]
  %277 = phi i64 [ %214, %237 ], [ %268, %243 ]
  %278 = phi double [ 0.000000e+00, %237 ], [ %handler_result8, %243 ]
  %279 = icmp eq i64 %239, 0, !dbg !216
  br i1 %279, label %289, label %280, !dbg !216

280:                                              ; preds = %273
  tail call void @llvm.dbg.value(metadata i64 %277, metadata !102, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %276, metadata !101, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %275, metadata !64, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata double %278, metadata !98, metadata !DIExpression()), !dbg !209
  %281 = getelementptr double, ptr %238, i64 %275, !dbg !217
  %282 = load double, ptr %281, align 8, !dbg !217, !tbaa !137
  tail call void @llvm.dbg.value(metadata double %282, metadata !103, metadata !DIExpression()), !dbg !218
  %283 = fmul double %225, %282, !dbg !219
  %284 = getelementptr inbounds double, ptr %8, i64 %277, !dbg !220
  %285 = load double, ptr %284, align 8, !dbg !221, !tbaa !137
  %handler_result9 = call double @fAddHandlerDouble(double %285, double %283), !dbg !221
  store double %handler_result9, ptr %284, align 8, !dbg !221, !tbaa !137
  %286 = getelementptr inbounds double, ptr %5, i64 %276, !dbg !222
  %287 = load double, ptr %286, align 8, !dbg !222, !tbaa !137
  %288 = fmul double %282, %287, !dbg !223
  %handler_result10 = call double @fAddHandlerDouble(double %278, double %288), !dbg !229
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !98, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %277, i64 %215), metadata !102, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !209
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %276, i64 %217), metadata !101, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %275, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !128
  br label %289, !dbg !229

289:                                              ; preds = %280, %273
  %290 = phi double [ %274, %273 ], [ %handler_result10, %280 ], !dbg !230
  %291 = load double, ptr %234, align 8, !dbg !229, !tbaa !137
  br label %292, !dbg !231

292:                                              ; preds = %289, %219
  %293 = phi double [ %handler_result4, %219 ], [ %291, %289 ], !dbg !229
  %294 = phi double [ 0.000000e+00, %219 ], [ %290, %289 ], !dbg !209
  %295 = fmul double %294, %3, !dbg !231
  %handler_result11 = call double @fAddHandlerDouble(double %295, double %293), !dbg !229
  store double %handler_result11, ptr %234, align 8, !dbg !229, !tbaa !137
  %296 = add i64 %220, %217, !dbg !232
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !90, metadata !DIExpression()), !dbg !202
  %297 = add i64 %221, %215, !dbg !233
  tail call void @llvm.dbg.value(metadata i64 %226, metadata !61, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i64 %297, metadata !93, metadata !DIExpression()), !dbg !202
  %298 = icmp eq i64 %226, %218, !dbg !203
  br i1 %298, label %300, label %219, !dbg !204, !llvm.loop !234

299:                                              ; preds = %200
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !236
  br label %300

300:                                              ; preds = %299, %292, %204, %191, %124, %115, %25
  ret void, !dbg !238
}

declare !dbg !240 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

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
!18 = !DIFile(filename: "dspmv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "fec9a62614cefcb5ab46493e83ded0d9")
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
!39 = distinct !DISubprogram(name: "cblas_dspmv", scope: !18, file: !18, line: 7, type: !40, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !50)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43, !44, !46, !48, !48, !44, !46, !49, !44}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !64, !65, !67, !70, !73, !76, !77, !81, !82, !83, !84, !85, !86, !90, !93, !94, !98, !99, !100, !101, !102, !103}
!51 = !DILocalVariable(name: "order", arg: 1, scope: !39, file: !18, line: 7, type: !42)
!52 = !DILocalVariable(name: "Uplo", arg: 2, scope: !39, file: !18, line: 7, type: !43)
!53 = !DILocalVariable(name: "N", arg: 3, scope: !39, file: !18, line: 8, type: !44)
!54 = !DILocalVariable(name: "alpha", arg: 4, scope: !39, file: !18, line: 8, type: !46)
!55 = !DILocalVariable(name: "Ap", arg: 5, scope: !39, file: !18, line: 8, type: !48)
!56 = !DILocalVariable(name: "X", arg: 6, scope: !39, file: !18, line: 9, type: !48)
!57 = !DILocalVariable(name: "incX", arg: 7, scope: !39, file: !18, line: 9, type: !44)
!58 = !DILocalVariable(name: "beta", arg: 8, scope: !39, file: !18, line: 9, type: !46)
!59 = !DILocalVariable(name: "Y", arg: 9, scope: !39, file: !18, line: 9, type: !49)
!60 = !DILocalVariable(name: "incY", arg: 10, scope: !39, file: !18, line: 10, type: !44)
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
!138 = !{!"double", !139, i64 0}
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
!238 = !DILocation(line: 15, column: 1, scope: !239)
!239 = !DILexicalBlockFile(scope: !39, file: !18, discriminator: 0)
!240 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !45, !243, !243, null}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
