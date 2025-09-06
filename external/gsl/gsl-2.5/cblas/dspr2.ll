; ModuleID = 'dspr2.c'
source_filename = "dspr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_spr2.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_dspr2(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr nocapture noundef %8) local_unnamed_addr #0 !dbg !39 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !51, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !52, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !53, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata double %3, metadata !54, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !55, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !56, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !57, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !58, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !59, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !89
  %10 = add i32 %0, -103, !dbg !90
  %11 = icmp ult i32 %10, -2, !dbg !90
  %12 = zext i1 %11 to i32, !dbg !90
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !64, metadata !DIExpression()), !dbg !89
  %13 = add i32 %1, -123, !dbg !92
  %14 = icmp ult i32 %13, -2, !dbg !92
  %15 = select i1 %14, i32 2, i32 %12, !dbg !92
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !64, metadata !DIExpression()), !dbg !89
  %16 = icmp slt i32 %2, 0, !dbg !94
  %17 = select i1 %16, i32 3, i32 %15, !dbg !96
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !64, metadata !DIExpression()), !dbg !89
  %18 = icmp eq i32 %5, 0, !dbg !97
  %19 = select i1 %18, i32 6, i32 %17, !dbg !96
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !64, metadata !DIExpression()), !dbg !89
  %20 = icmp eq i32 %7, 0, !dbg !99
  %21 = select i1 %20, i32 8, i32 %19, !dbg !96
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !64, metadata !DIExpression()), !dbg !89
  %22 = icmp eq i32 %21, 0, !dbg !101
  br i1 %22, label %24, label %23, !dbg !96

23:                                               ; preds = %9
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !101
  br label %24, !dbg !101

24:                                               ; preds = %23, %9
  %25 = icmp eq i32 %2, 0, !dbg !103
  %26 = fcmp oeq double %3, 0.000000e+00
  %27 = or i1 %25, %26, !dbg !105
  br i1 %27, label %191, label %28, !dbg !105

28:                                               ; preds = %24
  %29 = icmp eq i32 %0, 101, !dbg !106
  %30 = icmp eq i32 %1, 121
  %31 = and i1 %29, %30, !dbg !107
  br i1 %31, label %36, label %32, !dbg !107

32:                                               ; preds = %28
  %33 = icmp eq i32 %0, 102, !dbg !108
  %34 = icmp eq i32 %1, 122
  %35 = and i1 %33, %34, !dbg !109
  br i1 %35, label %36, label %96, !dbg !109

36:                                               ; preds = %32, %28
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression()), !dbg !110
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !69, metadata !DIExpression()), !dbg !110
  tail call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression()), !dbg !110
  %37 = icmp sgt i32 %2, 0, !dbg !112
  br i1 %37, label %38, label %191, !dbg !113

38:                                               ; preds = %36
  %39 = icmp sgt i32 %7, 0, !dbg !114
  %40 = sub nsw i32 1, %2, !dbg !115
  %41 = mul i32 %40, %7, !dbg !114
  %42 = select i1 %39, i32 0, i32 %41, !dbg !114
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !69, metadata !DIExpression()), !dbg !110
  %43 = icmp sgt i32 %5, 0, !dbg !115
  %44 = mul i32 %40, %5, !dbg !115
  %45 = select i1 %43, i32 0, i32 %44, !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !66, metadata !DIExpression()), !dbg !110
  %46 = shl nuw nsw i32 %2, 1
  %47 = or disjoint i32 %46, 1
  %48 = sext i32 %42 to i64, !dbg !113
  %49 = sext i32 %7 to i64, !dbg !113
  %50 = sext i32 %45 to i64, !dbg !113
  %51 = sext i32 %5 to i64, !dbg !113
  %52 = zext nneg i32 %2 to i64, !dbg !112
  br label %53, !dbg !113

53:                                               ; preds = %38, %90
  %54 = phi i64 [ %50, %38 ], [ %91, %90 ]
  %55 = phi i64 [ %48, %38 ], [ %92, %90 ]
  %56 = phi i64 [ 0, %38 ], [ %93, %90 ]
  %57 = phi i32 [ 0, %38 ], [ %94, %90 ]
  %58 = trunc i64 %56 to i32
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !60, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !69, metadata !DIExpression()), !dbg !110
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !66, metadata !DIExpression()), !dbg !110
  %59 = getelementptr inbounds double, ptr %4, i64 %54, !dbg !116
  %60 = load double, ptr %59, align 8, !dbg !116, !tbaa !117
  %61 = fmul double %60, %3, !dbg !121
  tail call void @llvm.dbg.value(metadata double %61, metadata !70, metadata !DIExpression()), !dbg !122
  %62 = getelementptr inbounds double, ptr %6, i64 %55, !dbg !123
  %63 = load double, ptr %62, align 8, !dbg !123, !tbaa !117
  %64 = fmul double %63, %3, !dbg !124
  tail call void @llvm.dbg.value(metadata double %64, metadata !74, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !75, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !76, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !63, metadata !DIExpression()), !dbg !111
  %65 = add i32 %47, %57
  %66 = mul nsw i32 %65, %58
  %67 = sdiv i32 %66, 2
  %68 = add i32 %67, %57
  br label %69, !dbg !125

69:                                               ; preds = %53, %69
  %70 = phi i64 [ %54, %53 ], [ %86, %69 ]
  %71 = phi i64 [ %55, %53 ], [ %87, %69 ]
  %72 = phi i64 [ %56, %53 ], [ %88, %69 ]
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !63, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !76, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !75, metadata !DIExpression()), !dbg !122
  %73 = getelementptr inbounds double, ptr %6, i64 %71, !dbg !127
  %74 = load double, ptr %73, align 8, !dbg !127, !tbaa !117
  %75 = fmul double %61, %74, !dbg !130
  %76 = getelementptr inbounds double, ptr %4, i64 %70, !dbg !131
  %77 = load double, ptr %76, align 8, !dbg !131, !tbaa !117
  %78 = fmul double %64, %77, !dbg !132
  %79 = fadd double %75, %78, !dbg !133
  %80 = trunc i64 %72 to i32, !dbg !134
  %81 = add i32 %68, %80, !dbg !134
  %82 = sext i32 %81 to i64, !dbg !135
  %83 = getelementptr inbounds double, ptr %8, i64 %82, !dbg !135
  %84 = load double, ptr %83, align 8, !dbg !136, !tbaa !117
  %85 = fadd double %84, %79, !dbg !136
  store double %85, ptr %83, align 8, !dbg !136, !tbaa !117
  %86 = add i64 %70, %51, !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !75, metadata !DIExpression()), !dbg !122
  %87 = add i64 %71, %49, !dbg !138
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !76, metadata !DIExpression()), !dbg !122
  %88 = add nuw nsw i64 %72, 1, !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !63, metadata !DIExpression()), !dbg !111
  %89 = icmp eq i64 %88, %52, !dbg !140
  br i1 %89, label %90, label %69, !dbg !125, !llvm.loop !141

90:                                               ; preds = %69
  %91 = add i64 %54, %51, !dbg !144
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !66, metadata !DIExpression()), !dbg !110
  %92 = add i64 %55, %49, !dbg !145
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !69, metadata !DIExpression()), !dbg !110
  %93 = add nuw nsw i64 %56, 1, !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %93, metadata !60, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !111
  %94 = xor i32 %58, -1
  %95 = icmp eq i64 %93, %52, !dbg !112
  br i1 %95, label %191, label %53, !dbg !113, !llvm.loop !146

96:                                               ; preds = %32
  %97 = and i1 %29, %34, !dbg !148
  %98 = and i1 %33, %30
  %99 = or i1 %97, %98, !dbg !148
  br i1 %99, label %100, label %190, !dbg !148

100:                                              ; preds = %96
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !77, metadata !DIExpression()), !dbg !149
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression()), !dbg !149
  tail call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !77, metadata !DIExpression()), !dbg !149
  %101 = icmp sgt i32 %2, 0, !dbg !150
  br i1 %101, label %102, label %191, !dbg !151

102:                                              ; preds = %100
  %103 = icmp sgt i32 %7, 0, !dbg !152
  %104 = sub nsw i32 1, %2, !dbg !153
  %105 = mul i32 %104, %7, !dbg !152
  %106 = select i1 %103, i32 0, i32 %105, !dbg !152
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !80, metadata !DIExpression()), !dbg !149
  %107 = icmp sgt i32 %5, 0, !dbg !153
  %108 = mul i32 %104, %5, !dbg !153
  %109 = select i1 %107, i32 0, i32 %108, !dbg !153
  tail call void @llvm.dbg.value(metadata i32 %109, metadata !77, metadata !DIExpression()), !dbg !149
  %110 = sext i32 %106 to i64, !dbg !151
  %111 = sext i32 %7 to i64, !dbg !151
  %112 = sext i32 %109 to i64, !dbg !151
  %113 = sext i32 %5 to i64, !dbg !151
  br label %114, !dbg !151

114:                                              ; preds = %102, %184
  %115 = phi i64 [ 0, %102 ], [ %189, %184 ]
  %116 = phi i64 [ %112, %102 ], [ %185, %184 ]
  %117 = phi i64 [ %110, %102 ], [ %186, %184 ]
  %118 = phi i64 [ 1, %102 ], [ %187, %184 ]
  %119 = phi i32 [ 0, %102 ], [ %126, %184 ]
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !60, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !80, metadata !DIExpression()), !dbg !149
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !77, metadata !DIExpression()), !dbg !149
  %120 = getelementptr inbounds double, ptr %4, i64 %116, !dbg !154
  %121 = load double, ptr %120, align 8, !dbg !154, !tbaa !117
  %122 = fmul double %121, %3, !dbg !155
  tail call void @llvm.dbg.value(metadata double %122, metadata !81, metadata !DIExpression()), !dbg !156
  %123 = getelementptr inbounds double, ptr %6, i64 %117, !dbg !157
  %124 = load double, ptr %123, align 8, !dbg !157, !tbaa !117
  %125 = fmul double %124, %3, !dbg !158
  tail call void @llvm.dbg.value(metadata double %125, metadata !85, metadata !DIExpression()), !dbg !156
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !86, metadata !DIExpression()), !dbg !156
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !87, metadata !DIExpression()), !dbg !156
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !111
  %126 = add nuw nsw i32 %119, 1
  %127 = mul nsw i32 %126, %119
  %128 = lshr i32 %127, 1
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !87, metadata !DIExpression()), !dbg !156
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !86, metadata !DIExpression()), !dbg !156
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !111
  %129 = zext nneg i32 %128 to i64, !dbg !159
  %130 = getelementptr double, ptr %8, i64 %129, !dbg !159
  %131 = and i64 %118, 1, !dbg !159
  %132 = icmp eq i64 %115, 0, !dbg !159
  br i1 %132, label %168, label %133, !dbg !159

133:                                              ; preds = %114
  %134 = and i64 %118, 9223372036854775806, !dbg !159
  br label %135, !dbg !159

135:                                              ; preds = %135, %133
  %136 = phi i64 [ 0, %133 ], [ %165, %135 ]
  %137 = phi i64 [ %112, %133 ], [ %163, %135 ]
  %138 = phi i64 [ %110, %133 ], [ %164, %135 ]
  %139 = phi i64 [ 0, %133 ], [ %166, %135 ]
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !87, metadata !DIExpression()), !dbg !156
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !86, metadata !DIExpression()), !dbg !156
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !63, metadata !DIExpression()), !dbg !111
  %140 = getelementptr inbounds double, ptr %6, i64 %138, !dbg !161
  %141 = load double, ptr %140, align 8, !dbg !161, !tbaa !117
  %142 = fmul double %122, %141, !dbg !164
  %143 = getelementptr inbounds double, ptr %4, i64 %137, !dbg !165
  %144 = load double, ptr %143, align 8, !dbg !165, !tbaa !117
  %145 = fmul double %125, %144, !dbg !166
  %146 = fadd double %142, %145, !dbg !167
  %147 = getelementptr double, ptr %130, i64 %136, !dbg !168
  %148 = load double, ptr %147, align 8, !dbg !169, !tbaa !117
  %149 = fadd double %148, %146, !dbg !169
  store double %149, ptr %147, align 8, !dbg !169, !tbaa !117
  %150 = add i64 %137, %113, !dbg !170
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !86, metadata !DIExpression()), !dbg !156
  %151 = add i64 %138, %111, !dbg !171
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !87, metadata !DIExpression()), !dbg !156
  %152 = or disjoint i64 %136, 1, !dbg !172
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !63, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !87, metadata !DIExpression()), !dbg !156
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !86, metadata !DIExpression()), !dbg !156
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !63, metadata !DIExpression()), !dbg !111
  %153 = getelementptr inbounds double, ptr %6, i64 %151, !dbg !161
  %154 = load double, ptr %153, align 8, !dbg !161, !tbaa !117
  %155 = fmul double %122, %154, !dbg !164
  %156 = getelementptr inbounds double, ptr %4, i64 %150, !dbg !165
  %157 = load double, ptr %156, align 8, !dbg !165, !tbaa !117
  %158 = fmul double %125, %157, !dbg !166
  %159 = fadd double %155, %158, !dbg !167
  %160 = getelementptr double, ptr %130, i64 %152, !dbg !168
  %161 = load double, ptr %160, align 8, !dbg !169, !tbaa !117
  %162 = fadd double %161, %159, !dbg !169
  store double %162, ptr %160, align 8, !dbg !169, !tbaa !117
  %163 = add i64 %150, %113, !dbg !170
  tail call void @llvm.dbg.value(metadata i64 %163, metadata !86, metadata !DIExpression()), !dbg !156
  %164 = add i64 %151, %111, !dbg !171
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !87, metadata !DIExpression()), !dbg !156
  %165 = add nuw nsw i64 %136, 2, !dbg !172
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !63, metadata !DIExpression()), !dbg !111
  %166 = add i64 %139, 2, !dbg !159
  %167 = icmp eq i64 %166, %134, !dbg !159
  br i1 %167, label %168, label %135, !dbg !159, !llvm.loop !173

168:                                              ; preds = %135, %114
  %169 = phi i64 [ 0, %114 ], [ %165, %135 ]
  %170 = phi i64 [ %112, %114 ], [ %163, %135 ]
  %171 = phi i64 [ %110, %114 ], [ %164, %135 ]
  %172 = icmp eq i64 %131, 0, !dbg !159
  br i1 %172, label %184, label %173, !dbg !159

173:                                              ; preds = %168
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !87, metadata !DIExpression()), !dbg !156
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !86, metadata !DIExpression()), !dbg !156
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !63, metadata !DIExpression()), !dbg !111
  %174 = getelementptr inbounds double, ptr %6, i64 %171, !dbg !161
  %175 = load double, ptr %174, align 8, !dbg !161, !tbaa !117
  %176 = fmul double %122, %175, !dbg !164
  %177 = getelementptr inbounds double, ptr %4, i64 %170, !dbg !165
  %178 = load double, ptr %177, align 8, !dbg !165, !tbaa !117
  %179 = fmul double %125, %178, !dbg !166
  %180 = fadd double %176, %179, !dbg !167
  %181 = getelementptr double, ptr %130, i64 %169, !dbg !168
  %182 = load double, ptr %181, align 8, !dbg !169, !tbaa !117
  %183 = fadd double %182, %180, !dbg !169
  store double %183, ptr %181, align 8, !dbg !169, !tbaa !117
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %170, i64 %113), metadata !86, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !156
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %171, i64 %111), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !156
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !111
  br label %184, !dbg !175

184:                                              ; preds = %168, %173
  %185 = add i64 %116, %113, !dbg !175
  tail call void @llvm.dbg.value(metadata i64 %185, metadata !77, metadata !DIExpression()), !dbg !149
  %186 = add i64 %117, %111, !dbg !176
  tail call void @llvm.dbg.value(metadata i64 %186, metadata !80, metadata !DIExpression()), !dbg !149
  tail call void @llvm.dbg.value(metadata i32 %126, metadata !60, metadata !DIExpression()), !dbg !111
  %187 = add nuw nsw i64 %118, 1, !dbg !151
  %188 = icmp eq i32 %126, %2, !dbg !150
  %189 = add i64 %115, 1, !dbg !151
  br i1 %188, label %191, label %114, !dbg !151, !llvm.loop !177

190:                                              ; preds = %96
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !179
  br label %191

191:                                              ; preds = %184, %90, %100, %36, %190, %24
  ret void, !dbg !181
}

declare !dbg !183 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_spr2.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "e05a98230429f3fda8d2462f667cc40f")
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
!18 = !DIFile(filename: "dspr2.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "5784c366734621a05d18732ea383da90")
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
!39 = distinct !DISubprogram(name: "cblas_dspr2", scope: !18, file: !18, line: 7, type: !40, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !50)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43, !44, !46, !48, !44, !48, !44, !49}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !63, !64, !66, !69, !70, !74, !75, !76, !77, !80, !81, !85, !86, !87}
!51 = !DILocalVariable(name: "order", arg: 1, scope: !39, file: !18, line: 7, type: !42)
!52 = !DILocalVariable(name: "Uplo", arg: 2, scope: !39, file: !18, line: 7, type: !43)
!53 = !DILocalVariable(name: "N", arg: 3, scope: !39, file: !18, line: 8, type: !44)
!54 = !DILocalVariable(name: "alpha", arg: 4, scope: !39, file: !18, line: 8, type: !46)
!55 = !DILocalVariable(name: "X", arg: 5, scope: !39, file: !18, line: 8, type: !48)
!56 = !DILocalVariable(name: "incX", arg: 6, scope: !39, file: !18, line: 8, type: !44)
!57 = !DILocalVariable(name: "Y", arg: 7, scope: !39, file: !18, line: 9, type: !48)
!58 = !DILocalVariable(name: "incY", arg: 8, scope: !39, file: !18, line: 9, type: !44)
!59 = !DILocalVariable(name: "Ap", arg: 9, scope: !39, file: !18, line: 9, type: !49)
!60 = !DILocalVariable(name: "i", scope: !61, file: !2, line: 21, type: !45)
!61 = distinct !DILexicalBlock(scope: !62, file: !2, line: 20, column: 1)
!62 = !DILexicalBlockFile(scope: !39, file: !2, discriminator: 0)
!63 = !DILocalVariable(name: "j", scope: !61, file: !2, line: 21, type: !45)
!64 = !DILocalVariable(name: "pos", scope: !65, file: !2, line: 23, type: !45)
!65 = distinct !DILexicalBlock(scope: !61, file: !2, line: 23, column: 3)
!66 = !DILocalVariable(name: "ix", scope: !67, file: !2, line: 33, type: !45)
!67 = distinct !DILexicalBlock(scope: !68, file: !2, line: 32, column: 58)
!68 = distinct !DILexicalBlock(scope: !61, file: !2, line: 31, column: 7)
!69 = !DILocalVariable(name: "iy", scope: !67, file: !2, line: 34, type: !45)
!70 = !DILocalVariable(name: "tmp1", scope: !71, file: !2, line: 36, type: !46)
!71 = distinct !DILexicalBlock(scope: !72, file: !2, line: 35, column: 29)
!72 = distinct !DILexicalBlock(scope: !73, file: !2, line: 35, column: 5)
!73 = distinct !DILexicalBlock(scope: !67, file: !2, line: 35, column: 5)
!74 = !DILocalVariable(name: "tmp2", scope: !71, file: !2, line: 37, type: !46)
!75 = !DILocalVariable(name: "jx", scope: !71, file: !2, line: 38, type: !45)
!76 = !DILocalVariable(name: "jy", scope: !71, file: !2, line: 39, type: !45)
!77 = !DILocalVariable(name: "ix", scope: !78, file: !2, line: 50, type: !45)
!78 = distinct !DILexicalBlock(scope: !79, file: !2, line: 49, column: 65)
!79 = distinct !DILexicalBlock(scope: !68, file: !2, line: 48, column: 14)
!80 = !DILocalVariable(name: "iy", scope: !78, file: !2, line: 51, type: !45)
!81 = !DILocalVariable(name: "tmp1", scope: !82, file: !2, line: 53, type: !46)
!82 = distinct !DILexicalBlock(scope: !83, file: !2, line: 52, column: 29)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 52, column: 5)
!84 = distinct !DILexicalBlock(scope: !78, file: !2, line: 52, column: 5)
!85 = !DILocalVariable(name: "tmp2", scope: !82, file: !2, line: 54, type: !46)
!86 = !DILocalVariable(name: "jx", scope: !82, file: !2, line: 55, type: !45)
!87 = !DILocalVariable(name: "jy", scope: !82, file: !2, line: 56, type: !45)
!88 = !DILocation(line: 0, scope: !39)
!89 = !DILocation(line: 0, scope: !65)
!90 = !DILocation(line: 23, column: 3, scope: !91)
!91 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!92 = !DILocation(line: 23, column: 3, scope: !93)
!93 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!94 = !DILocation(line: 23, column: 3, scope: !95)
!95 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!96 = !DILocation(line: 23, column: 3, scope: !65)
!97 = !DILocation(line: 23, column: 3, scope: !98)
!98 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!99 = !DILocation(line: 23, column: 3, scope: !100)
!100 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!101 = !DILocation(line: 23, column: 3, scope: !102)
!102 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!103 = !DILocation(line: 25, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !61, file: !2, line: 25, column: 7)
!105 = !DILocation(line: 25, column: 7, scope: !61)
!106 = !DILocation(line: 31, column: 14, scope: !68)
!107 = !DILocation(line: 31, column: 31, scope: !68)
!108 = !DILocation(line: 32, column: 17, scope: !68)
!109 = !DILocation(line: 32, column: 34, scope: !68)
!110 = !DILocation(line: 0, scope: !67)
!111 = !DILocation(line: 0, scope: !61)
!112 = !DILocation(line: 35, column: 19, scope: !72)
!113 = !DILocation(line: 35, column: 5, scope: !73)
!114 = !DILocation(line: 34, column: 16, scope: !67)
!115 = !DILocation(line: 33, column: 16, scope: !67)
!116 = !DILocation(line: 36, column: 33, scope: !71)
!117 = !{!118, !118, i64 0}
!118 = !{!"double", !119, i64 0}
!119 = !{!"omnipotent char", !120, i64 0}
!120 = !{!"Simple C/C++ TBAA"}
!121 = !DILocation(line: 36, column: 31, scope: !71)
!122 = !DILocation(line: 0, scope: !71)
!123 = !DILocation(line: 37, column: 33, scope: !71)
!124 = !DILocation(line: 37, column: 31, scope: !71)
!125 = !DILocation(line: 40, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !71, file: !2, line: 40, column: 7)
!127 = !DILocation(line: 41, column: 37, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 40, column: 31)
!129 = distinct !DILexicalBlock(scope: !126, file: !2, line: 40, column: 7)
!130 = !DILocation(line: 41, column: 35, scope: !128)
!131 = !DILocation(line: 41, column: 52, scope: !128)
!132 = !DILocation(line: 41, column: 50, scope: !128)
!133 = !DILocation(line: 41, column: 43, scope: !128)
!134 = !DILocation(line: 41, column: 12, scope: !128)
!135 = !DILocation(line: 41, column: 9, scope: !128)
!136 = !DILocation(line: 41, column: 27, scope: !128)
!137 = !DILocation(line: 42, column: 12, scope: !128)
!138 = !DILocation(line: 43, column: 12, scope: !128)
!139 = !DILocation(line: 40, column: 27, scope: !129)
!140 = !DILocation(line: 40, column: 21, scope: !129)
!141 = distinct !{!141, !125, !142, !143}
!142 = !DILocation(line: 44, column: 7, scope: !126)
!143 = !{!"llvm.loop.mustprogress"}
!144 = !DILocation(line: 45, column: 10, scope: !71)
!145 = !DILocation(line: 46, column: 10, scope: !71)
!146 = distinct !{!146, !113, !147, !143}
!147 = !DILocation(line: 47, column: 5, scope: !73)
!148 = !DILocation(line: 48, column: 38, scope: !79)
!149 = !DILocation(line: 0, scope: !78)
!150 = !DILocation(line: 52, column: 19, scope: !83)
!151 = !DILocation(line: 52, column: 5, scope: !84)
!152 = !DILocation(line: 51, column: 16, scope: !78)
!153 = !DILocation(line: 50, column: 16, scope: !78)
!154 = !DILocation(line: 53, column: 33, scope: !82)
!155 = !DILocation(line: 53, column: 31, scope: !82)
!156 = !DILocation(line: 0, scope: !82)
!157 = !DILocation(line: 54, column: 33, scope: !82)
!158 = !DILocation(line: 54, column: 31, scope: !82)
!159 = !DILocation(line: 57, column: 7, scope: !160)
!160 = distinct !DILexicalBlock(scope: !82, file: !2, line: 57, column: 7)
!161 = !DILocation(line: 58, column: 37, scope: !162)
!162 = distinct !DILexicalBlock(scope: !163, file: !2, line: 57, column: 32)
!163 = distinct !DILexicalBlock(scope: !160, file: !2, line: 57, column: 7)
!164 = !DILocation(line: 58, column: 35, scope: !162)
!165 = !DILocation(line: 58, column: 52, scope: !162)
!166 = !DILocation(line: 58, column: 50, scope: !162)
!167 = !DILocation(line: 58, column: 43, scope: !162)
!168 = !DILocation(line: 58, column: 9, scope: !162)
!169 = !DILocation(line: 58, column: 27, scope: !162)
!170 = !DILocation(line: 59, column: 12, scope: !162)
!171 = !DILocation(line: 60, column: 12, scope: !162)
!172 = !DILocation(line: 57, column: 28, scope: !163)
!173 = distinct !{!173, !159, !174, !143}
!174 = !DILocation(line: 61, column: 7, scope: !160)
!175 = !DILocation(line: 62, column: 10, scope: !82)
!176 = !DILocation(line: 63, column: 10, scope: !82)
!177 = distinct !{!177, !151, !178, !143}
!178 = !DILocation(line: 64, column: 5, scope: !84)
!179 = !DILocation(line: 66, column: 5, scope: !180)
!180 = distinct !DILexicalBlock(scope: !79, file: !2, line: 65, column: 10)
!181 = !DILocation(line: 14, column: 1, scope: !182)
!182 = !DILexicalBlockFile(scope: !39, file: !18, discriminator: 0)
!183 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !45, !186, !186, null}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
