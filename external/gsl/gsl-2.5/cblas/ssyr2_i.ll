; ModuleID = 'ssyr2.ll'
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
  br i1 %31, label %208, label %32, !dbg !108

32:                                               ; preds = %28
  %33 = icmp eq i32 %0, 101, !dbg !109
  %34 = icmp eq i32 %1, 121
  %35 = and i1 %33, %34, !dbg !110
  br i1 %35, label %40, label %36, !dbg !110

36:                                               ; preds = %32
  %37 = icmp eq i32 %0, 102, !dbg !111
  %38 = icmp eq i32 %1, 122
  %39 = and i1 %37, %38, !dbg !112
  br i1 %39, label %40, label %97, !dbg !112

40:                                               ; preds = %36, %32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !67, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !70, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, metadata !61, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !67, metadata !DIExpression()), !dbg !113
  %41 = icmp sgt i32 %2, 0, !dbg !115
  br i1 %41, label %42, label %208, !dbg !116

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

56:                                               ; preds = %92, %42
  %57 = phi i64 [ %52, %42 ], [ %93, %92 ]
  %58 = phi i64 [ %50, %42 ], [ %94, %92 ]
  %59 = phi i64 [ 0, %42 ], [ %95, %92 ]
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

68:                                               ; preds = %68, %56
  %69 = phi i64 [ %57, %56 ], [ %88, %68 ]
  %70 = phi i64 [ %58, %56 ], [ %89, %68 ]
  %71 = phi i64 [ %59, %56 ], [ %90, %68 ]
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !64, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !77, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !76, metadata !DIExpression()), !dbg !125
  %72 = getelementptr inbounds float, ptr %6, i64 %70, !dbg !130
  %73 = load float, ptr %72, align 4, !dbg !130, !tbaa !120
  %74 = fmul float %62, %73, !dbg !133
  %75 = getelementptr inbounds float, ptr %4, i64 %69, !dbg !134
  %76 = load float, ptr %75, align 4, !dbg !134, !tbaa !120
  %77 = fmul float %65, %76, !dbg !135
  %78 = fpext float %74 to double, !dbg !136
  %79 = fpext float %77 to double, !dbg !136
  %80 = fptrunc double %78 to float, !dbg !136
  %81 = fptrunc double %79 to float, !dbg !136
  %handler_result = call float @fAddHandlerFloat(float %80, float %81), !dbg !136
  %82 = getelementptr float, ptr %67, i64 %71, !dbg !136
  %83 = load float, ptr %82, align 4, !dbg !137, !tbaa !120
  %84 = fpext float %83 to double, !dbg !137
  %85 = fpext float %handler_result to double, !dbg !137
  %86 = fptrunc double %84 to float, !dbg !137
  %87 = fptrunc double %85 to float, !dbg !137
  %handler_result1 = call float @fAddHandlerFloat(float %86, float %87), !dbg !137
  store float %handler_result1, ptr %82, align 4, !dbg !137, !tbaa !120
  %88 = add i64 %69, %53, !dbg !138
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !76, metadata !DIExpression()), !dbg !125
  %89 = add i64 %70, %51, !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !77, metadata !DIExpression()), !dbg !125
  %90 = add nuw nsw i64 %71, 1, !dbg !140
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !64, metadata !DIExpression()), !dbg !114
  %91 = icmp eq i64 %90, %55, !dbg !141
  br i1 %91, label %92, label %68, !dbg !128, !llvm.loop !142

92:                                               ; preds = %68
  %93 = add i64 %57, %53, !dbg !145
  tail call void @llvm.dbg.value(metadata i64 %93, metadata !67, metadata !DIExpression()), !dbg !113
  %94 = add i64 %58, %51, !dbg !146
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !70, metadata !DIExpression()), !dbg !113
  %95 = add nuw nsw i64 %59, 1, !dbg !147
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !61, metadata !DIExpression()), !dbg !114
  %96 = icmp eq i64 %95, %55, !dbg !115
  br i1 %96, label %208, label %56, !dbg !116, !llvm.loop !148

97:                                               ; preds = %36
  %98 = and i1 %33, %38, !dbg !150
  %99 = and i1 %37, %34
  %100 = or i1 %98, %99, !dbg !150
  br i1 %100, label %101, label %207, !dbg !150

101:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !78, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !81, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 0, metadata !61, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !78, metadata !DIExpression()), !dbg !151
  %102 = icmp sgt i32 %2, 0, !dbg !152
  br i1 %102, label %103, label %208, !dbg !153

103:                                              ; preds = %101
  %104 = icmp sgt i32 %7, 0, !dbg !154
  %105 = sub nsw i32 1, %2, !dbg !155
  %106 = mul i32 %105, %7, !dbg !154
  %107 = select i1 %104, i32 0, i32 %106, !dbg !154
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !81, metadata !DIExpression()), !dbg !151
  %108 = icmp sgt i32 %5, 0, !dbg !155
  %109 = mul i32 %105, %5, !dbg !155
  %110 = select i1 %108, i32 0, i32 %109, !dbg !155
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !78, metadata !DIExpression()), !dbg !151
  %111 = sext i32 %107 to i64, !dbg !153
  %112 = sext i32 %7 to i64, !dbg !153
  %113 = sext i32 %110 to i64, !dbg !153
  %114 = sext i32 %5 to i64, !dbg !153
  %115 = sext i32 %9 to i64, !dbg !153
  %116 = zext nneg i32 %2 to i64, !dbg !152
  br label %117, !dbg !153

117:                                              ; preds = %201, %103
  %118 = phi i64 [ %113, %103 ], [ %202, %201 ]
  %119 = phi i64 [ %111, %103 ], [ %203, %201 ]
  %120 = phi i64 [ 0, %103 ], [ %204, %201 ]
  %121 = phi i64 [ 1, %103 ], [ %205, %201 ]
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !61, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !81, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !78, metadata !DIExpression()), !dbg !151
  %122 = getelementptr inbounds float, ptr %4, i64 %118, !dbg !156
  %123 = load float, ptr %122, align 4, !dbg !156, !tbaa !120
  %124 = fmul float %123, %3, !dbg !157
  tail call void @llvm.dbg.value(metadata float %124, metadata !82, metadata !DIExpression()), !dbg !158
  %125 = getelementptr inbounds float, ptr %6, i64 %119, !dbg !159
  %126 = load float, ptr %125, align 4, !dbg !159, !tbaa !120
  %127 = fmul float %126, %3, !dbg !160
  tail call void @llvm.dbg.value(metadata float %127, metadata !86, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !87, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !88, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !114
  %128 = mul nsw i64 %120, %115
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !88, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !87, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !114
  %129 = getelementptr float, ptr %8, i64 %128, !dbg !161
  %130 = and i64 %121, 1, !dbg !161
  %131 = icmp eq i64 %120, 0, !dbg !161
  br i1 %131, label %179, label %132, !dbg !161

132:                                              ; preds = %117
  %133 = and i64 %121, 9223372036854775806, !dbg !161
  br label %134, !dbg !161

134:                                              ; preds = %134, %132
  %135 = phi i64 [ 0, %132 ], [ %176, %134 ]
  %136 = phi i64 [ %113, %132 ], [ %174, %134 ]
  %137 = phi i64 [ %111, %132 ], [ %175, %134 ]
  %138 = phi i64 [ 0, %132 ], [ %177, %134 ]
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !88, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !87, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !64, metadata !DIExpression()), !dbg !114
  %139 = getelementptr inbounds float, ptr %6, i64 %137, !dbg !163
  %140 = load float, ptr %139, align 4, !dbg !163, !tbaa !120
  %141 = fmul float %124, %140, !dbg !166
  %142 = getelementptr inbounds float, ptr %4, i64 %136, !dbg !167
  %143 = load float, ptr %142, align 4, !dbg !167, !tbaa !120
  %144 = fmul float %127, %143, !dbg !168
  %145 = fpext float %141 to double, !dbg !169
  %146 = fpext float %144 to double, !dbg !169
  %147 = fptrunc double %145 to float, !dbg !169
  %148 = fptrunc double %146 to float, !dbg !169
  %handler_result2 = call float @fAddHandlerFloat(float %147, float %148), !dbg !169
  %149 = getelementptr float, ptr %129, i64 %135, !dbg !169
  %150 = load float, ptr %149, align 4, !dbg !170, !tbaa !120
  %151 = fpext float %150 to double, !dbg !170
  %152 = fpext float %handler_result2 to double, !dbg !170
  %153 = fptrunc double %151 to float, !dbg !170
  %154 = fptrunc double %152 to float, !dbg !170
  %handler_result3 = call float @fAddHandlerFloat(float %153, float %154), !dbg !170
  store float %handler_result3, ptr %149, align 4, !dbg !170, !tbaa !120
  %155 = add i64 %136, %114, !dbg !171
  tail call void @llvm.dbg.value(metadata i64 %155, metadata !87, metadata !DIExpression()), !dbg !158
  %156 = add i64 %137, %112, !dbg !172
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !88, metadata !DIExpression()), !dbg !158
  %157 = or disjoint i64 %135, 1, !dbg !173
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !64, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !88, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata i64 %155, metadata !87, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !64, metadata !DIExpression()), !dbg !114
  %158 = getelementptr inbounds float, ptr %6, i64 %156, !dbg !163
  %159 = load float, ptr %158, align 4, !dbg !163, !tbaa !120
  %160 = fmul float %124, %159, !dbg !166
  %161 = getelementptr inbounds float, ptr %4, i64 %155, !dbg !167
  %162 = load float, ptr %161, align 4, !dbg !167, !tbaa !120
  %163 = fmul float %127, %162, !dbg !168
  %164 = fpext float %160 to double, !dbg !169
  %165 = fpext float %163 to double, !dbg !169
  %166 = fptrunc double %164 to float, !dbg !169
  %167 = fptrunc double %165 to float, !dbg !169
  %handler_result4 = call float @fAddHandlerFloat(float %166, float %167), !dbg !169
  %168 = getelementptr float, ptr %129, i64 %157, !dbg !169
  %169 = load float, ptr %168, align 4, !dbg !170, !tbaa !120
  %170 = fpext float %169 to double, !dbg !170
  %171 = fpext float %handler_result4 to double, !dbg !170
  %172 = fptrunc double %170 to float, !dbg !170
  %173 = fptrunc double %171 to float, !dbg !170
  %handler_result5 = call float @fAddHandlerFloat(float %172, float %173), !dbg !170
  store float %handler_result5, ptr %168, align 4, !dbg !170, !tbaa !120
  %174 = add i64 %155, %114, !dbg !171
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !87, metadata !DIExpression()), !dbg !158
  %175 = add i64 %156, %112, !dbg !172
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !88, metadata !DIExpression()), !dbg !158
  %176 = add nuw nsw i64 %135, 2, !dbg !173
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !64, metadata !DIExpression()), !dbg !114
  %177 = add i64 %138, 2, !dbg !161
  %178 = icmp eq i64 %177, %133, !dbg !161
  br i1 %178, label %179, label %134, !dbg !161, !llvm.loop !174

179:                                              ; preds = %134, %117
  %180 = phi i64 [ 0, %117 ], [ %176, %134 ]
  %181 = phi i64 [ %113, %117 ], [ %174, %134 ]
  %182 = phi i64 [ %111, %117 ], [ %175, %134 ]
  %183 = icmp eq i64 %130, 0, !dbg !161
  br i1 %183, label %201, label %184, !dbg !161

184:                                              ; preds = %179
  tail call void @llvm.dbg.value(metadata i64 %182, metadata !88, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata i64 %181, metadata !87, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata i64 %180, metadata !64, metadata !DIExpression()), !dbg !114
  %185 = getelementptr inbounds float, ptr %6, i64 %182, !dbg !163
  %186 = load float, ptr %185, align 4, !dbg !163, !tbaa !120
  %187 = fmul float %124, %186, !dbg !166
  %188 = getelementptr inbounds float, ptr %4, i64 %181, !dbg !167
  %189 = load float, ptr %188, align 4, !dbg !167, !tbaa !120
  %190 = fmul float %127, %189, !dbg !168
  %191 = fpext float %187 to double, !dbg !169
  %192 = fpext float %190 to double, !dbg !169
  %193 = fptrunc double %191 to float, !dbg !169
  %194 = fptrunc double %192 to float, !dbg !169
  %handler_result6 = call float @fAddHandlerFloat(float %193, float %194), !dbg !169
  %195 = getelementptr float, ptr %129, i64 %180, !dbg !169
  %196 = load float, ptr %195, align 4, !dbg !170, !tbaa !120
  %197 = fpext float %196 to double, !dbg !170
  %198 = fpext float %handler_result6 to double, !dbg !170
  %199 = fptrunc double %197 to float, !dbg !170
  %200 = fptrunc double %198 to float, !dbg !170
  %handler_result7 = call float @fAddHandlerFloat(float %199, float %200), !dbg !170
  store float %handler_result7, ptr %195, align 4, !dbg !170, !tbaa !120
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %181, i64 %114), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !158
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %182, i64 %112), metadata !88, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !158
  tail call void @llvm.dbg.value(metadata i64 %180, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !114
  br label %201, !dbg !176

201:                                              ; preds = %184, %179
  %202 = add i64 %118, %114, !dbg !176
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !78, metadata !DIExpression()), !dbg !151
  %203 = add i64 %119, %112, !dbg !177
  tail call void @llvm.dbg.value(metadata i64 %203, metadata !81, metadata !DIExpression()), !dbg !151
  %204 = add nuw nsw i64 %120, 1, !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !61, metadata !DIExpression()), !dbg !114
  %205 = add nuw nsw i64 %121, 1, !dbg !153
  %206 = icmp eq i64 %204, %116, !dbg !152
  br i1 %206, label %208, label %117, !dbg !153, !llvm.loop !179

207:                                              ; preds = %97
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !181
  br label %208

208:                                              ; preds = %207, %201, %101, %92, %40, %28
  ret void, !dbg !183
}

declare !dbg !185 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!136 = !DILocation(line: 41, column: 9, scope: !131)
!137 = !DILocation(line: 41, column: 24, scope: !131)
!138 = !DILocation(line: 42, column: 12, scope: !131)
!139 = !DILocation(line: 43, column: 12, scope: !131)
!140 = !DILocation(line: 40, column: 27, scope: !132)
!141 = !DILocation(line: 40, column: 21, scope: !132)
!142 = distinct !{!142, !128, !143, !144}
!143 = !DILocation(line: 44, column: 7, scope: !129)
!144 = !{!"llvm.loop.mustprogress"}
!145 = !DILocation(line: 45, column: 10, scope: !72)
!146 = !DILocation(line: 46, column: 10, scope: !72)
!147 = !DILocation(line: 35, column: 25, scope: !73)
!148 = distinct !{!148, !116, !149, !144}
!149 = !DILocation(line: 47, column: 5, scope: !74)
!150 = !DILocation(line: 48, column: 38, scope: !80)
!151 = !DILocation(line: 0, scope: !79)
!152 = !DILocation(line: 52, column: 19, scope: !84)
!153 = !DILocation(line: 52, column: 5, scope: !85)
!154 = !DILocation(line: 51, column: 16, scope: !79)
!155 = !DILocation(line: 50, column: 16, scope: !79)
!156 = !DILocation(line: 53, column: 33, scope: !83)
!157 = !DILocation(line: 53, column: 31, scope: !83)
!158 = !DILocation(line: 0, scope: !83)
!159 = !DILocation(line: 54, column: 33, scope: !83)
!160 = !DILocation(line: 54, column: 31, scope: !83)
!161 = !DILocation(line: 57, column: 7, scope: !162)
!162 = distinct !DILexicalBlock(scope: !83, file: !2, line: 57, column: 7)
!163 = !DILocation(line: 58, column: 34, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !2, line: 57, column: 32)
!165 = distinct !DILexicalBlock(scope: !162, file: !2, line: 57, column: 7)
!166 = !DILocation(line: 58, column: 32, scope: !164)
!167 = !DILocation(line: 58, column: 49, scope: !164)
!168 = !DILocation(line: 58, column: 47, scope: !164)
!169 = !DILocation(line: 58, column: 9, scope: !164)
!170 = !DILocation(line: 58, column: 24, scope: !164)
!171 = !DILocation(line: 59, column: 12, scope: !164)
!172 = !DILocation(line: 60, column: 12, scope: !164)
!173 = !DILocation(line: 57, column: 28, scope: !165)
!174 = distinct !{!174, !161, !175, !144}
!175 = !DILocation(line: 61, column: 7, scope: !162)
!176 = !DILocation(line: 62, column: 10, scope: !83)
!177 = !DILocation(line: 63, column: 10, scope: !83)
!178 = !DILocation(line: 52, column: 25, scope: !84)
!179 = distinct !{!179, !153, !180, !144}
!180 = !DILocation(line: 64, column: 5, scope: !85)
!181 = !DILocation(line: 66, column: 5, scope: !182)
!182 = distinct !DILexicalBlock(scope: !80, file: !2, line: 65, column: 10)
!183 = !DILocation(line: 14, column: 1, scope: !184)
!184 = !DILexicalBlockFile(scope: !39, file: !18, discriminator: 0)
!185 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !45, !188, !188, null}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
