; ModuleID = 'legendre_P.ll'
source_filename = "legendre_P.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"x is outside [-1,1]\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [20 x i8] c"./legendre_source.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [26 x i8] c"csphase has invalid value\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [50 x i8] c"x cannot equal 1 or -1 for derivative computation\00", align 1, !dbg !14

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_array(i32 noundef %0, i64 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !80 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !92, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !93, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata double %2, metadata !94, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !95, metadata !DIExpression()), !dbg !97
  %5 = tail call i32 @gsl_sf_legendre_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef 1.000000e+00, ptr noundef %3), !dbg !98, !range !99
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !96, metadata !DIExpression()), !dbg !97
  ret i32 %5, !dbg !100
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !dbg !101 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !105, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !106, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %2, metadata !107, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %3, metadata !108, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !109, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !126
  %6 = add i64 %1, 1, !dbg !128
  %7 = add i64 %1, 2, !dbg !129
  %8 = mul i64 %6, %7, !dbg !130
  %9 = lshr i64 %8, 1, !dbg !131
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !111, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !114, metadata !DIExpression()), !dbg !120
  %10 = icmp eq i32 %0, 3, !dbg !132
  %11 = fcmp ogt double %2, 1.000000e+00, !dbg !134
  %12 = fcmp olt double %2, -1.000000e+00
  %13 = or i1 %11, %12, !dbg !134
  br i1 %10, label %14, label %107, !dbg !135

14:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64 %1, metadata !136, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata double %2, metadata !141, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata double %3, metadata !142, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata ptr %4, metadata !143, metadata !DIExpression()), !dbg !157
  br i1 %13, label %15, label %16, !dbg !160

15:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 1) #5, !dbg !161
  br label %344, !dbg !161

16:                                               ; preds = %14
  %17 = fcmp une double %3, 1.000000e+00, !dbg !164
  %18 = fcmp une double %3, -1.000000e+00
  %19 = and i1 %17, %18, !dbg !165
  br i1 %19, label %20, label %21, !dbg !165

20:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 1) #5, !dbg !166
  br label %344, !dbg !166

21:                                               ; preds = %16
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !169
  %handler_result1 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !170
  %22 = fmul double %handler_result, %handler_result1, !dbg !170
  %23 = tail call double @sqrt(double noundef %22) #5, !dbg !171
  call void @llvm.dbg.value(metadata double %23, metadata !144, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !155, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double %2, metadata !154, metadata !DIExpression()), !dbg !172
  store double 1.000000e+00, ptr %4, align 8, !dbg !173, !tbaa !174
  %24 = icmp eq i64 %1, 0, !dbg !178
  br i1 %24, label %344, label %25, !dbg !180

25:                                               ; preds = %21
  %26 = getelementptr inbounds double, ptr %4, i64 1, !dbg !181
  store double %2, ptr %26, align 8, !dbg !182, !tbaa !174
  call void @llvm.dbg.value(metadata i64 1, metadata !150, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 2, metadata !148, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !155, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double %2, metadata !154, metadata !DIExpression()), !dbg !172
  %27 = icmp eq i64 %1, 1, !dbg !183
  br i1 %27, label %32, label %28, !dbg !186

28:                                               ; preds = %25
  %29 = tail call i64 @llvm.umax.i64(i64 %6, i64 3), !dbg !186
  br label %34, !dbg !186

30:                                               ; preds = %34
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !156, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !153, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 0, metadata !151, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 1, metadata !149, metadata !DIExpression()), !dbg !172
  %31 = fmul double %23, %3
  br label %55, !dbg !187

32:                                               ; preds = %25
  %33 = fmul double %23, %3, !dbg !189
  br label %97, !dbg !187

34:                                               ; preds = %34, %28
  %35 = phi double [ %36, %34 ], [ 1.000000e+00, %28 ]
  %36 = phi double [ %49, %34 ], [ %2, %28 ]
  %37 = phi i64 [ %39, %34 ], [ 1, %28 ]
  %38 = phi i64 [ %51, %34 ], [ 2, %28 ]
  call void @llvm.dbg.value(metadata double %35, metadata !155, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double %36, metadata !154, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 %37, metadata !150, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 %38, metadata !148, metadata !DIExpression()), !dbg !172
  %39 = add i64 %38, %37, !dbg !190
  call void @llvm.dbg.value(metadata i64 %39, metadata !150, metadata !DIExpression()), !dbg !172
  %40 = shl i64 %38, 1, !dbg !192
  %41 = add i64 %40, -1, !dbg !193
  %42 = uitofp i64 %41 to double, !dbg !194
  %43 = fmul double %42, %2, !dbg !195
  %44 = fmul double %36, %43, !dbg !196
  %45 = add i64 %38, -1, !dbg !197
  %46 = uitofp i64 %45 to double, !dbg !198
  %47 = fmul double %35, %46, !dbg !199
  %handler_result2 = call double @fSubHandlerDouble(double %44, double %47), !dbg !200
  %48 = uitofp i64 %38 to double, !dbg !200
  %49 = fdiv double %handler_result2, %48, !dbg !201
  call void @llvm.dbg.value(metadata double %49, metadata !152, metadata !DIExpression()), !dbg !172
  %50 = getelementptr inbounds double, ptr %4, i64 %39, !dbg !202
  store double %49, ptr %50, align 8, !dbg !203, !tbaa !174
  call void @llvm.dbg.value(metadata double %36, metadata !155, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double %49, metadata !154, metadata !DIExpression()), !dbg !172
  %51 = add nuw i64 %38, 1, !dbg !204
  call void @llvm.dbg.value(metadata i64 %51, metadata !148, metadata !DIExpression()), !dbg !172
  %52 = icmp eq i64 %51, %29, !dbg !183
  br i1 %52, label %30, label %34, !dbg !186, !llvm.loop !205

53:                                               ; preds = %76, %55
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !156, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double %63, metadata !153, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 %61, metadata !151, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 %60, metadata !149, metadata !DIExpression()), !dbg !172
  %54 = icmp eq i64 %60, %1, !dbg !208
  br i1 %54, label %96, label %55, !dbg !187, !llvm.loop !210

55:                                               ; preds = %53, %30
  %56 = phi double [ -1.000000e+00, %30 ], [ %handler_result3, %53 ]
  %57 = phi double [ 1.000000e+00, %30 ], [ %63, %53 ]
  %58 = phi i64 [ 0, %30 ], [ %61, %53 ]
  %59 = phi i64 [ 1, %30 ], [ %60, %53 ]
  call void @llvm.dbg.value(metadata double %56, metadata !156, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double %57, metadata !153, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 %58, metadata !151, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 %59, metadata !149, metadata !DIExpression()), !dbg !172
  %60 = add nuw i64 %59, 1, !dbg !212
  %61 = add i64 %60, %58, !dbg !214
  call void @llvm.dbg.value(metadata i64 %61, metadata !151, metadata !DIExpression()), !dbg !172
  %handler_result3 = call double @fAddHandlerDouble(double %56, double 2.000000e+00), !dbg !215
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !156, metadata !DIExpression()), !dbg !172
  %62 = fmul double %31, %handler_result3, !dbg !215
  %63 = fmul double %57, %62, !dbg !216
  call void @llvm.dbg.value(metadata double %63, metadata !153, metadata !DIExpression()), !dbg !172
  %64 = getelementptr inbounds double, ptr %4, i64 %61, !dbg !217
  store double %63, ptr %64, align 8, !dbg !218, !tbaa !174
  call void @llvm.dbg.value(metadata double %63, metadata !155, metadata !DIExpression()), !dbg !172
  %65 = add i64 %61, %60, !dbg !219
  call void @llvm.dbg.value(metadata i64 %65, metadata !150, metadata !DIExpression()), !dbg !172
  %66 = fmul double %63, %2, !dbg !220
  %67 = shl i64 %59, 1, !dbg !221
  %68 = or disjoint i64 %67, 1, !dbg !222
  %69 = uitofp i64 %68 to double, !dbg !223
  %70 = fmul double %66, %69, !dbg !224
  call void @llvm.dbg.value(metadata double %70, metadata !154, metadata !DIExpression()), !dbg !172
  %71 = getelementptr inbounds double, ptr %4, i64 %65, !dbg !225
  store double %70, ptr %71, align 8, !dbg !226, !tbaa !174
  %72 = add i64 %59, 2, !dbg !227
  call void @llvm.dbg.value(metadata i64 %72, metadata !148, metadata !DIExpression()), !dbg !172
  %73 = icmp ugt i64 %72, %1, !dbg !229
  br i1 %73, label %53, label %74, !dbg !231

74:                                               ; preds = %55
  %75 = add i64 %59, -1
  br label %76, !dbg !231

76:                                               ; preds = %76, %74
  %77 = phi double [ %63, %74 ], [ %78, %76 ]
  %78 = phi double [ %70, %74 ], [ %92, %76 ]
  %79 = phi i64 [ %65, %74 ], [ %81, %76 ]
  %80 = phi i64 [ %72, %74 ], [ %94, %76 ]
  call void @llvm.dbg.value(metadata double %77, metadata !155, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double %78, metadata !154, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 %79, metadata !150, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 %80, metadata !148, metadata !DIExpression()), !dbg !172
  %81 = add i64 %80, %79, !dbg !232
  call void @llvm.dbg.value(metadata i64 %81, metadata !150, metadata !DIExpression()), !dbg !172
  %82 = shl i64 %80, 1, !dbg !234
  %83 = add i64 %82, -1, !dbg !235
  %84 = uitofp i64 %83 to double, !dbg !236
  %85 = fmul double %84, %2, !dbg !237
  %86 = fmul double %78, %85, !dbg !238
  %87 = add i64 %75, %80, !dbg !239
  %88 = uitofp i64 %87 to double, !dbg !240
  %89 = fmul double %77, %88, !dbg !241
  %handler_result4 = call double @fSubHandlerDouble(double %86, double %89), !dbg !242
  %90 = sub i64 %80, %59, !dbg !242
  %91 = uitofp i64 %90 to double, !dbg !243
  %92 = fdiv double %handler_result4, %91, !dbg !244
  call void @llvm.dbg.value(metadata double %92, metadata !152, metadata !DIExpression()), !dbg !172
  %93 = getelementptr inbounds double, ptr %4, i64 %81, !dbg !245
  store double %92, ptr %93, align 8, !dbg !246, !tbaa !174
  call void @llvm.dbg.value(metadata double %78, metadata !155, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double %92, metadata !154, metadata !DIExpression()), !dbg !172
  %94 = add i64 %80, 1, !dbg !247
  call void @llvm.dbg.value(metadata i64 %94, metadata !148, metadata !DIExpression()), !dbg !172
  %95 = icmp ugt i64 %94, %1, !dbg !229
  br i1 %95, label %53, label %76, !dbg !231, !llvm.loop !248

96:                                               ; preds = %53
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result3, double 2.000000e+00), !dbg !250
  br label %97, !dbg !250

97:                                               ; preds = %96, %32
  %98 = phi double [ %33, %32 ], [ %31, %96 ], !dbg !189
  %99 = phi i64 [ 0, %32 ], [ %61, %96 ], !dbg !172
  %100 = phi double [ 1.000000e+00, %32 ], [ %63, %96 ], !dbg !172
  %101 = phi double [ 1.000000e+00, %32 ], [ %handler_result5, %96 ], !dbg !172
  call void @llvm.dbg.value(metadata !DIArgList(i64 %99, i64 %1), metadata !151, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !172
  call void @llvm.dbg.value(metadata double %101, metadata !156, metadata !DIExpression()), !dbg !172
  %102 = fmul double %98, %101, !dbg !251
  %103 = fmul double %100, %102, !dbg !252
  call void @llvm.dbg.value(metadata double %103, metadata !153, metadata !DIExpression()), !dbg !172
  %104 = getelementptr double, ptr %4, i64 %99, !dbg !253
  %105 = getelementptr double, ptr %104, i64 %1, !dbg !253
  %106 = getelementptr double, ptr %105, i64 1, !dbg !253
  store double %103, ptr %106, align 8, !dbg !254, !tbaa !174
  br label %288, !dbg !255

107:                                              ; preds = %5
  call void @llvm.dbg.value(metadata i64 %1, metadata !256, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %2, metadata !259, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %3, metadata !260, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata ptr %4, metadata !261, metadata !DIExpression()), !dbg !282
  br i1 %13, label %108, label %109, !dbg !285

108:                                              ; preds = %107
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 222, i32 noundef 1) #5, !dbg !286
  br label %288, !dbg !286

109:                                              ; preds = %107
  %110 = fcmp une double %3, 1.000000e+00, !dbg !289
  %111 = fcmp une double %3, -1.000000e+00
  %112 = and i1 %110, %111, !dbg !290
  br i1 %112, label %113, label %114, !dbg !290

113:                                              ; preds = %109
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 232, i32 noundef 1) #5, !dbg !291
  br label %288, !dbg !291

114:                                              ; preds = %109
  call void @llvm.dbg.value(metadata double 0x5CD0B15A491EB84, metadata !262, metadata !DIExpression()), !dbg !294
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !295
  %handler_result7 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !296
  %115 = fmul double %handler_result6, %handler_result7, !dbg !296
  %116 = tail call double @sqrt(double noundef %115) #5, !dbg !297
  call void @llvm.dbg.value(metadata double %116, metadata !266, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 %9, metadata !276, metadata !DIExpression()), !dbg !294
  %117 = getelementptr inbounds double, ptr %4, i64 %9, !dbg !300
  call void @llvm.dbg.value(metadata ptr %117, metadata !277, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 %1, metadata !301, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata ptr %117, metadata !306, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 0, metadata !307, metadata !DIExpression()), !dbg !308
  %118 = shl i64 %1, 1
  %119 = add i64 %118, 2, !dbg !310
  %120 = tail call i64 @llvm.umax.i64(i64 %119, i64 1), !dbg !310
  %121 = and i64 %120, 3, !dbg !310
  %122 = icmp ult i64 %119, 4, !dbg !310
  br i1 %122, label %146, label %123, !dbg !310

123:                                              ; preds = %114
  %124 = and i64 %120, -4, !dbg !310
  br label %125, !dbg !310

125:                                              ; preds = %125, %123
  %126 = phi i64 [ 0, %123 ], [ %143, %125 ]
  %127 = phi i64 [ 0, %123 ], [ %144, %125 ]
  call void @llvm.dbg.value(metadata i64 %126, metadata !307, metadata !DIExpression()), !dbg !308
  %128 = uitofp i64 %126 to double, !dbg !312
  %129 = tail call double @llvm.sqrt.f64(double %128), !dbg !314
  %130 = getelementptr inbounds double, ptr %117, i64 %126, !dbg !315
  store double %129, ptr %130, align 8, !dbg !316, !tbaa !174
  %131 = or disjoint i64 %126, 1, !dbg !317
  call void @llvm.dbg.value(metadata i64 %131, metadata !307, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %131, metadata !307, metadata !DIExpression()), !dbg !308
  %132 = uitofp i64 %131 to double, !dbg !312
  %133 = tail call double @llvm.sqrt.f64(double %132), !dbg !314
  %134 = getelementptr inbounds double, ptr %117, i64 %131, !dbg !315
  store double %133, ptr %134, align 8, !dbg !316, !tbaa !174
  %135 = or disjoint i64 %126, 2, !dbg !317
  call void @llvm.dbg.value(metadata i64 %135, metadata !307, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %135, metadata !307, metadata !DIExpression()), !dbg !308
  %136 = uitofp i64 %135 to double, !dbg !312
  %137 = tail call double @llvm.sqrt.f64(double %136), !dbg !314
  %138 = getelementptr inbounds double, ptr %117, i64 %135, !dbg !315
  store double %137, ptr %138, align 8, !dbg !316, !tbaa !174
  %139 = or disjoint i64 %126, 3, !dbg !317
  call void @llvm.dbg.value(metadata i64 %139, metadata !307, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %139, metadata !307, metadata !DIExpression()), !dbg !308
  %140 = uitofp i64 %139 to double, !dbg !312
  %141 = tail call double @llvm.sqrt.f64(double %140), !dbg !314
  %142 = getelementptr inbounds double, ptr %117, i64 %139, !dbg !315
  store double %141, ptr %142, align 8, !dbg !316, !tbaa !174
  %143 = add nuw i64 %126, 4, !dbg !317
  call void @llvm.dbg.value(metadata i64 %143, metadata !307, metadata !DIExpression()), !dbg !308
  %144 = add i64 %127, 4, !dbg !310
  %145 = icmp eq i64 %144, %124, !dbg !310
  br i1 %145, label %146, label %125, !dbg !310, !llvm.loop !318

146:                                              ; preds = %125, %114
  %147 = phi i64 [ 0, %114 ], [ %143, %125 ]
  %148 = icmp eq i64 %121, 0, !dbg !310
  br i1 %148, label %158, label %149, !dbg !310

149:                                              ; preds = %149, %146
  %150 = phi i64 [ %155, %149 ], [ %147, %146 ]
  %151 = phi i64 [ %156, %149 ], [ 0, %146 ]
  call void @llvm.dbg.value(metadata i64 %150, metadata !307, metadata !DIExpression()), !dbg !308
  %152 = uitofp i64 %150 to double, !dbg !312
  %153 = tail call double @llvm.sqrt.f64(double %152), !dbg !314
  %154 = getelementptr inbounds double, ptr %117, i64 %150, !dbg !315
  store double %153, ptr %154, align 8, !dbg !316, !tbaa !174
  %155 = add nuw i64 %150, 1, !dbg !317
  call void @llvm.dbg.value(metadata i64 %155, metadata !307, metadata !DIExpression()), !dbg !308
  %156 = add i64 %151, 1, !dbg !310
  %157 = icmp eq i64 %156, %121, !dbg !310
  br i1 %157, label %158, label %149, !dbg !310, !llvm.loop !320

158:                                              ; preds = %149, %146
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !275, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %2, metadata !274, metadata !DIExpression()), !dbg !294
  store double 1.000000e+00, ptr %4, align 8, !dbg !322, !tbaa !174
  %159 = icmp eq i64 %1, 0, !dbg !323
  br i1 %159, label %288, label %160, !dbg !325

160:                                              ; preds = %158
  %161 = getelementptr inbounds double, ptr %4, i64 1, !dbg !326
  store double %2, ptr %161, align 8, !dbg !327, !tbaa !174
  call void @llvm.dbg.value(metadata i64 1, metadata !269, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 2, metadata !267, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !275, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %2, metadata !274, metadata !DIExpression()), !dbg !294
  %162 = icmp eq i64 %1, 1, !dbg !328
  br i1 %162, label %271, label %163, !dbg !329

163:                                              ; preds = %160
  %164 = tail call i64 @llvm.umax.i64(i64 %6, i64 3), !dbg !329
  %165 = and i64 %164, 1, !dbg !329
  %166 = icmp ult i64 %6, 4, !dbg !329
  br i1 %166, label %170, label %167, !dbg !329

167:                                              ; preds = %163
  %168 = and i64 %164, -2, !dbg !329
  %169 = add i64 %168, -4
  br label %186, !dbg !329

170:                                              ; preds = %186, %163
  %171 = phi i64 [ 2, %163 ], [ %207, %186 ]
  %172 = phi double [ 1.000000e+00, %163 ], [ %handler_result13, %186 ]
  %173 = phi double [ %2, %163 ], [ %handler_result16, %186 ]
  %174 = phi i64 [ 1, %163 ], [ %202, %186 ]
  %175 = icmp eq i64 %165, 0, !dbg !329
  br i1 %175, label %184, label %176, !dbg !329

176:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i64 %171, metadata !267, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %172, metadata !275, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %173, metadata !274, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 %174, metadata !269, metadata !DIExpression()), !dbg !294
  %177 = uitofp i64 %171 to double, !dbg !330
  %178 = fdiv double 1.000000e+00, %177, !dbg !331
  call void @llvm.dbg.value(metadata double %178, metadata !278, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.value(metadata !DIArgList(i64 %174, i64 %171), metadata !269, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !294
  %handler_result8 = call double @fSubHandlerDouble(double 2.000000e+00, double %178), !dbg !333
  %179 = fmul double %handler_result8, %2, !dbg !333
  %180 = fmul double %173, %179, !dbg !334
  %handler_result9 = call double @fSubHandlerDouble(double 1.000000e+00, double %178), !dbg !335
  %181 = fmul double %172, %handler_result9, !dbg !335
  %handler_result10 = call double @fSubHandlerDouble(double %180, double %181), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !271, metadata !DIExpression()), !dbg !294
  %182 = getelementptr double, ptr %4, i64 %174, !dbg !336
  %183 = getelementptr double, ptr %182, i64 %171, !dbg !336
  store double %handler_result10, ptr %183, align 8, !dbg !337, !tbaa !174
  call void @llvm.dbg.value(metadata double %173, metadata !275, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !274, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 %171, metadata !267, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !294
  br label %184, !dbg !338

184:                                              ; preds = %176, %170
  call void @llvm.dbg.value(metadata i64 1, metadata !268, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double 1.000000e+280, metadata !273, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double 0x5D48966111CD756, metadata !272, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 0, metadata !270, metadata !DIExpression()), !dbg !294
  %185 = tail call i64 @llvm.umax.i64(i64 %1, i64 2), !dbg !338
  br label %212, !dbg !338

186:                                              ; preds = %186, %167
  %187 = phi i64 [ 2, %167 ], [ %207, %186 ]
  %188 = phi double [ 1.000000e+00, %167 ], [ %handler_result13, %186 ]
  %189 = phi double [ %2, %167 ], [ %handler_result16, %186 ]
  %190 = phi i64 [ 1, %167 ], [ %202, %186 ]
  %191 = phi i64 [ 0, %167 ], [ %208, %186 ]
  call void @llvm.dbg.value(metadata i64 %187, metadata !267, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %188, metadata !275, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %189, metadata !274, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 %190, metadata !269, metadata !DIExpression()), !dbg !294
  %192 = uitofp i64 %187 to double, !dbg !330
  %193 = fdiv double 1.000000e+00, %192, !dbg !331
  call void @llvm.dbg.value(metadata double %193, metadata !278, metadata !DIExpression()), !dbg !332
  %194 = add i64 %190, %187, !dbg !340
  call void @llvm.dbg.value(metadata i64 %194, metadata !269, metadata !DIExpression()), !dbg !294
  %handler_result11 = call double @fSubHandlerDouble(double 2.000000e+00, double %193), !dbg !333
  %195 = fmul double %handler_result11, %2, !dbg !333
  %196 = fmul double %189, %195, !dbg !334
  %handler_result12 = call double @fSubHandlerDouble(double 1.000000e+00, double %193), !dbg !335
  %197 = fmul double %188, %handler_result12, !dbg !335
  %handler_result13 = call double @fSubHandlerDouble(double %196, double %197), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !271, metadata !DIExpression()), !dbg !294
  %198 = getelementptr inbounds double, ptr %4, i64 %194, !dbg !336
  store double %handler_result13, ptr %198, align 8, !dbg !337, !tbaa !174
  call void @llvm.dbg.value(metadata double %189, metadata !275, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !274, metadata !DIExpression()), !dbg !294
  %199 = or disjoint i64 %187, 1, !dbg !341
  call void @llvm.dbg.value(metadata i64 %199, metadata !267, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 %199, metadata !267, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %189, metadata !275, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !274, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 %194, metadata !269, metadata !DIExpression()), !dbg !294
  %200 = uitofp i64 %199 to double, !dbg !330
  %201 = fdiv double 1.000000e+00, %200, !dbg !331
  call void @llvm.dbg.value(metadata double %201, metadata !278, metadata !DIExpression()), !dbg !332
  %202 = add i64 %194, %199, !dbg !340
  call void @llvm.dbg.value(metadata i64 %202, metadata !269, metadata !DIExpression()), !dbg !294
  %handler_result14 = call double @fSubHandlerDouble(double 2.000000e+00, double %201), !dbg !333
  %203 = fmul double %handler_result14, %2, !dbg !333
  %204 = fmul double %handler_result13, %203, !dbg !334
  %handler_result15 = call double @fSubHandlerDouble(double 1.000000e+00, double %201), !dbg !335
  %205 = fmul double %189, %handler_result15, !dbg !335
  %handler_result16 = call double @fSubHandlerDouble(double %204, double %205), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !271, metadata !DIExpression()), !dbg !294
  %206 = getelementptr inbounds double, ptr %4, i64 %202, !dbg !336
  store double %handler_result16, ptr %206, align 8, !dbg !337, !tbaa !174
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !275, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !274, metadata !DIExpression()), !dbg !294
  %207 = add nuw i64 %187, 2, !dbg !341
  call void @llvm.dbg.value(metadata i64 %207, metadata !267, metadata !DIExpression()), !dbg !294
  %208 = add i64 %191, 2, !dbg !329
  %209 = icmp eq i64 %191, %169, !dbg !329
  br i1 %209, label %170, label %186, !dbg !329, !llvm.loop !342

210:                                              ; preds = %241, %212
  call void @llvm.dbg.value(metadata i64 %218, metadata !268, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %217, metadata !273, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %227, metadata !272, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 %219, metadata !270, metadata !DIExpression()), !dbg !294
  %211 = icmp eq i64 %218, %185, !dbg !344
  br i1 %211, label %271, label %212, !dbg !338, !llvm.loop !346

212:                                              ; preds = %210, %184
  %213 = phi i64 [ %218, %210 ], [ 1, %184 ]
  %214 = phi double [ %217, %210 ], [ 1.000000e+280, %184 ]
  %215 = phi double [ %227, %210 ], [ 0x5D48966111CD756, %184 ]
  %216 = phi i64 [ %219, %210 ], [ 0, %184 ]
  call void @llvm.dbg.value(metadata i64 %213, metadata !268, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %214, metadata !273, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %215, metadata !272, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 %216, metadata !270, metadata !DIExpression()), !dbg !294
  %217 = fmul double %116, %214, !dbg !348
  call void @llvm.dbg.value(metadata double %217, metadata !273, metadata !DIExpression()), !dbg !294
  %218 = add nuw i64 %213, 1, !dbg !350
  %219 = add i64 %216, %218, !dbg !351
  call void @llvm.dbg.value(metadata i64 %219, metadata !270, metadata !DIExpression()), !dbg !294
  %220 = shl i64 %213, 1, !dbg !352
  %221 = getelementptr double, ptr %117, i64 %220, !dbg !353
  %222 = getelementptr double, ptr %221, i64 -1, !dbg !353
  %223 = load double, ptr %222, align 8, !dbg !353, !tbaa !174
  %224 = fmul double %223, %3, !dbg !354
  %225 = load double, ptr %221, align 8, !dbg !355, !tbaa !174
  %226 = fdiv double %224, %225, !dbg !356
  %227 = fmul double %215, %226, !dbg !357
  call void @llvm.dbg.value(metadata double %227, metadata !272, metadata !DIExpression()), !dbg !294
  %228 = fmul double %217, %227, !dbg !358
  %229 = getelementptr inbounds double, ptr %4, i64 %219, !dbg !359
  store double %228, ptr %229, align 8, !dbg !360, !tbaa !174
  call void @llvm.dbg.value(metadata double %227, metadata !275, metadata !DIExpression()), !dbg !294
  %230 = add i64 %219, %218, !dbg !361
  call void @llvm.dbg.value(metadata i64 %230, metadata !269, metadata !DIExpression()), !dbg !294
  %231 = or disjoint i64 %220, 1, !dbg !362
  %232 = getelementptr inbounds double, ptr %117, i64 %231, !dbg !363
  %233 = load double, ptr %232, align 8, !dbg !363, !tbaa !174
  %234 = fmul double %233, %2, !dbg !364
  %235 = fmul double %227, %234, !dbg !365
  call void @llvm.dbg.value(metadata double %235, metadata !274, metadata !DIExpression()), !dbg !294
  %236 = fmul double %217, %235, !dbg !366
  %237 = getelementptr inbounds double, ptr %4, i64 %230, !dbg !367
  store double %236, ptr %237, align 8, !dbg !368, !tbaa !174
  %238 = add nuw i64 %213, 2, !dbg !369
  call void @llvm.dbg.value(metadata i64 %238, metadata !267, metadata !DIExpression()), !dbg !294
  %239 = getelementptr double, ptr %117, i64 %213, !dbg !371
  %240 = icmp ugt i64 %238, %1, !dbg !372
  br i1 %240, label %210, label %241, !dbg !374

241:                                              ; preds = %241, %212
  %242 = phi i64 [ %269, %241 ], [ %238, %212 ]
  %243 = phi double [ %244, %241 ], [ %227, %212 ]
  %244 = phi double [ %handler_result17, %241 ], [ %235, %212 ]
  %245 = phi i64 [ %246, %241 ], [ %230, %212 ]
  call void @llvm.dbg.value(metadata i64 %242, metadata !267, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %243, metadata !275, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %244, metadata !274, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 %245, metadata !269, metadata !DIExpression()), !dbg !294
  %246 = add i64 %245, %242, !dbg !375
  call void @llvm.dbg.value(metadata i64 %246, metadata !269, metadata !DIExpression()), !dbg !294
  %247 = shl i64 %242, 1, !dbg !377
  %248 = add i64 %247, -1, !dbg !378
  %249 = uitofp i64 %248 to double, !dbg !379
  %250 = getelementptr double, ptr %239, i64 %242, !dbg !380
  %251 = load double, ptr %250, align 8, !dbg !380, !tbaa !174
  %252 = fdiv double %249, %251, !dbg !381
  %253 = sub i64 %242, %213, !dbg !382
  %254 = getelementptr inbounds double, ptr %117, i64 %253, !dbg !383
  %255 = load double, ptr %254, align 8, !dbg !383, !tbaa !174
  %256 = fdiv double %252, %255, !dbg !384
  %257 = fmul double %256, %2, !dbg !385
  %258 = fmul double %244, %257, !dbg !386
  %259 = getelementptr double, ptr %254, i64 -1, !dbg !387
  %260 = load double, ptr %259, align 8, !dbg !387, !tbaa !174
  %261 = getelementptr double, ptr %250, i64 -1, !dbg !388
  %262 = load double, ptr %261, align 8, !dbg !388, !tbaa !174
  %263 = fmul double %260, %262, !dbg !389
  %264 = fdiv double %263, %251, !dbg !390
  %265 = fdiv double %264, %255, !dbg !391
  %266 = fmul double %243, %265, !dbg !392
  %handler_result17 = call double @fSubHandlerDouble(double %258, double %266), !dbg !393
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !271, metadata !DIExpression()), !dbg !294
  %267 = fmul double %217, %handler_result17, !dbg !393
  %268 = getelementptr inbounds double, ptr %4, i64 %246, !dbg !394
  store double %267, ptr %268, align 8, !dbg !395, !tbaa !174
  call void @llvm.dbg.value(metadata double %244, metadata !275, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !274, metadata !DIExpression()), !dbg !294
  %269 = add i64 %242, 1, !dbg !396
  call void @llvm.dbg.value(metadata i64 %269, metadata !267, metadata !DIExpression()), !dbg !294
  %270 = icmp ugt i64 %269, %1, !dbg !372
  br i1 %270, label %210, label %241, !dbg !374, !llvm.loop !397

271:                                              ; preds = %210, %160
  %272 = phi i64 [ 0, %160 ], [ %219, %210 ], !dbg !294
  %273 = phi double [ 0x5D48966111CD756, %160 ], [ %227, %210 ], !dbg !294
  %274 = phi double [ 1.000000e+280, %160 ], [ %217, %210 ], !dbg !294
  %275 = phi i64 [ 1, %160 ], [ %185, %210 ], !dbg !399
  %276 = fmul double %116, %274, !dbg !400
  call void @llvm.dbg.value(metadata double %276, metadata !273, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata !DIArgList(i64 %272, i64 %275), metadata !270, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !294
  %277 = getelementptr double, ptr %117, i64 %118, !dbg !401
  %278 = getelementptr double, ptr %277, i64 -1, !dbg !401
  %279 = load double, ptr %278, align 8, !dbg !401, !tbaa !174
  %280 = fmul double %279, %3, !dbg !402
  %281 = load double, ptr %277, align 8, !dbg !403, !tbaa !174
  %282 = fdiv double %280, %281, !dbg !404
  %283 = fmul double %273, %282, !dbg !405
  call void @llvm.dbg.value(metadata double %283, metadata !272, metadata !DIExpression()), !dbg !294
  %284 = fmul double %276, %283, !dbg !406
  %285 = getelementptr double, ptr %4, i64 %272, !dbg !407
  %286 = getelementptr double, ptr %285, i64 %275, !dbg !407
  %287 = getelementptr double, ptr %286, i64 1, !dbg !407
  store double %284, ptr %287, align 8, !dbg !408, !tbaa !174
  br label %288, !dbg !409

288:                                              ; preds = %271, %158, %113, %108, %97
  %289 = phi i32 [ 0, %97 ], [ 1, %108 ], [ 1, %113 ], [ 0, %158 ], [ 0, %271 ], !dbg !134
  tail call void @llvm.dbg.value(metadata i32 %289, metadata !110, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !112, metadata !DIExpression()), !dbg !120
  switch i32 %0, label %291 [
    i32 3, label %344
    i32 0, label %344
    i32 1, label %292
    i32 2, label %290
  ], !dbg !410

290:                                              ; preds = %288
  tail call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCC, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !114, metadata !DIExpression()), !dbg !120
  br label %292, !dbg !412

291:                                              ; preds = %288
  br label %292, !dbg !416

292:                                              ; preds = %291, %290, %288
  %293 = phi double [ 0x3FE6A09E667F3BCC, %290 ], [ 0x3FD20DD750429B6D, %288 ], [ 0.000000e+00, %291 ], !dbg !120
  %294 = phi double [ 5.000000e-01, %290 ], [ 0x3FC9884533D43651, %288 ], [ 0.000000e+00, %291 ], !dbg !120
  tail call void @llvm.dbg.value(metadata double %294, metadata !114, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %293, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i64 1, metadata !118, metadata !DIExpression()), !dbg !417
  %295 = getelementptr inbounds double, ptr %4, i64 %9, !dbg !416
  tail call void @llvm.dbg.value(metadata ptr %295, metadata !119, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata i64 0, metadata !115, metadata !DIExpression()), !dbg !417
  %296 = tail call i64 @llvm.umax.i64(i64 %6, i64 1), !dbg !418
  br label %297, !dbg !418

297:                                              ; preds = %341, %292
  %298 = phi i64 [ 1, %292 ], [ %342, %341 ]
  %299 = phi i64 [ 0, %292 ], [ %303, %341 ]
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !118, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata i64 %299, metadata !115, metadata !DIExpression()), !dbg !417
  %300 = getelementptr inbounds double, ptr %295, i64 %298, !dbg !420
  %301 = load double, ptr %300, align 8, !dbg !420, !tbaa !174
  %302 = fmul double %293, %301, !dbg !423
  tail call void @llvm.dbg.value(metadata i64 %299, metadata !424, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i64 0, metadata !429, metadata !DIExpression()), !dbg !430
  %303 = add nuw i64 %299, 1, !dbg !432
  %304 = mul i64 %303, %299, !dbg !433
  %305 = lshr i64 %304, 1, !dbg !434
  %306 = getelementptr double, ptr %4, i64 %305, !dbg !435
  %307 = load double, ptr %306, align 8, !dbg !436, !tbaa !174
  %308 = fmul double %307, %302, !dbg !436
  store double %308, ptr %306, align 8, !dbg !436, !tbaa !174
  tail call void @llvm.dbg.value(metadata i64 1, metadata !117, metadata !DIExpression()), !dbg !417
  %309 = icmp eq i64 %299, 0, !dbg !437
  br i1 %309, label %341, label %310, !dbg !440

310:                                              ; preds = %297
  %311 = and i64 %299, 1, !dbg !440
  %312 = icmp eq i64 %299, 1, !dbg !440
  br i1 %312, label %332, label %313, !dbg !440

313:                                              ; preds = %310
  %314 = and i64 %299, -2, !dbg !440
  %315 = getelementptr double, ptr %306, i64 1, !dbg !440
  br label %316, !dbg !440

316:                                              ; preds = %316, %313
  %317 = phi i64 [ 1, %313 ], [ %329, %316 ]
  %318 = phi i64 [ 0, %313 ], [ %330, %316 ]
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !117, metadata !DIExpression()), !dbg !417
  %319 = load double, ptr %300, align 8, !dbg !441, !tbaa !174
  %320 = fmul double %294, %319, !dbg !443
  tail call void @llvm.dbg.value(metadata i64 %299, metadata !424, metadata !DIExpression()), !dbg !444
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !429, metadata !DIExpression()), !dbg !444
  %321 = getelementptr double, ptr %306, i64 %317, !dbg !446
  %322 = load double, ptr %321, align 8, !dbg !447, !tbaa !174
  %323 = fmul double %322, %320, !dbg !447
  store double %323, ptr %321, align 8, !dbg !447, !tbaa !174
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !117, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !417
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !117, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !417
  %324 = load double, ptr %300, align 8, !dbg !441, !tbaa !174
  %325 = fmul double %294, %324, !dbg !443
  tail call void @llvm.dbg.value(metadata i64 %299, metadata !424, metadata !DIExpression()), !dbg !444
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !429, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !444
  %326 = getelementptr double, ptr %315, i64 %317, !dbg !446
  %327 = load double, ptr %326, align 8, !dbg !447, !tbaa !174
  %328 = fmul double %327, %325, !dbg !447
  store double %328, ptr %326, align 8, !dbg !447, !tbaa !174
  %329 = add nuw i64 %317, 2, !dbg !448
  tail call void @llvm.dbg.value(metadata i64 %329, metadata !117, metadata !DIExpression()), !dbg !417
  %330 = add i64 %318, 2, !dbg !440
  %331 = icmp eq i64 %330, %314, !dbg !440
  br i1 %331, label %332, label %316, !dbg !440, !llvm.loop !449

332:                                              ; preds = %316, %310
  %333 = phi i64 [ 1, %310 ], [ %329, %316 ]
  %334 = icmp eq i64 %311, 0, !dbg !440
  br i1 %334, label %341, label %335, !dbg !440

335:                                              ; preds = %332
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !117, metadata !DIExpression()), !dbg !417
  %336 = load double, ptr %300, align 8, !dbg !441, !tbaa !174
  %337 = fmul double %294, %336, !dbg !443
  tail call void @llvm.dbg.value(metadata i64 %299, metadata !424, metadata !DIExpression()), !dbg !444
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !429, metadata !DIExpression()), !dbg !444
  %338 = getelementptr double, ptr %306, i64 %333, !dbg !446
  %339 = load double, ptr %338, align 8, !dbg !447, !tbaa !174
  %340 = fmul double %339, %337, !dbg !447
  store double %340, ptr %338, align 8, !dbg !447, !tbaa !174
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !117, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !417
  br label %341, !dbg !451

341:                                              ; preds = %335, %332, %297
  %342 = add i64 %298, 2, !dbg !451
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !118, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata i64 %303, metadata !115, metadata !DIExpression()), !dbg !417
  %343 = icmp eq i64 %303, %296, !dbg !452
  br i1 %343, label %344, label %297, !dbg !418, !llvm.loop !453

344:                                              ; preds = %341, %288, %288, %21, %20, %15
  %345 = phi i32 [ %289, %288 ], [ %289, %288 ], [ 0, %21 ], [ 1, %20 ], [ 1, %15 ], [ %289, %341 ]
  ret i32 %345, !dbg !455
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @gsl_sf_legendre_nlm(i64 noundef %0) local_unnamed_addr #1 !dbg !122 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !121, metadata !DIExpression()), !dbg !456
  %2 = add i64 %0, 1, !dbg !457
  %3 = add i64 %0, 2, !dbg !458
  %4 = mul i64 %2, %3, !dbg !459
  %5 = lshr i64 %4, 1, !dbg !460
  ret i64 %5, !dbg !461
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !462 double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @gsl_sf_legendre_array_index(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 !dbg !425 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !424, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !429, metadata !DIExpression()), !dbg !466
  %3 = add i64 %0, 1, !dbg !467
  %4 = mul i64 %3, %0, !dbg !468
  %5 = lshr i64 %4, 1, !dbg !469
  %6 = add i64 %5, %1, !dbg !470
  ret i64 %6, !dbg !471
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv_array(i32 noundef %0, i64 noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !dbg !472 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !476, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !477, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata double %2, metadata !478, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !479, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !480, metadata !DIExpression()), !dbg !482
  %6 = tail call i32 @gsl_sf_legendre_deriv_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4), !dbg !483, !range !99
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !481, metadata !DIExpression()), !dbg !482
  ret i32 %6, !dbg !484
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 !dbg !485 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !489, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !490, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %2, metadata !491, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %3, metadata !492, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !493, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !494, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !508
  %7 = add i64 %1, 1, !dbg !510
  %8 = add i64 %1, 2, !dbg !511
  %9 = mul i64 %7, %8, !dbg !512
  %10 = lshr i64 %9, 1, !dbg !513
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !496, metadata !DIExpression()), !dbg !507
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !514
  %handler_result1 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !515
  %11 = fmul double %handler_result, %handler_result1, !dbg !515
  %12 = tail call double @sqrt(double noundef %11) #5, !dbg !516
  tail call void @llvm.dbg.value(metadata double %12, metadata !498, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double poison, metadata !499, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !500, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !501, metadata !DIExpression()), !dbg !507
  %13 = icmp eq i32 %0, 3, !dbg !517
  %14 = fcmp ogt double %2, 1.000000e+00, !dbg !519
  %15 = fcmp olt double %2, -1.000000e+00
  %16 = or i1 %14, %15, !dbg !519
  br i1 %13, label %17, label %143, !dbg !520

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %1, metadata !521, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata double %2, metadata !526, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata double %3, metadata !527, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata ptr %4, metadata !528, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata ptr %5, metadata !529, metadata !DIExpression()), !dbg !546
  br i1 %16, label %18, label %19, !dbg !549

18:                                               ; preds = %17
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 1) #5, !dbg !550
  br label %332, !dbg !550

19:                                               ; preds = %17
  %20 = tail call double @llvm.fabs.f64(double %2), !dbg !553
  %21 = fcmp oeq double %20, 1.000000e+00, !dbg !554
  br i1 %21, label %22, label %23, !dbg !555

22:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 435, i32 noundef 1) #5, !dbg !556
  br label %332, !dbg !556

23:                                               ; preds = %19
  %24 = fcmp une double %3, 1.000000e+00, !dbg !559
  %25 = fcmp une double %3, -1.000000e+00
  %26 = and i1 %24, %25, !dbg !560
  br i1 %26, label %27, label %28, !dbg !560

27:                                               ; preds = %23
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 1) #5, !dbg !561
  br label %332, !dbg !561

28:                                               ; preds = %23
  %29 = tail call double @sqrt(double noundef %11) #5, !dbg !564
  call void @llvm.dbg.value(metadata double %29, metadata !530, metadata !DIExpression()), !dbg !565
  %30 = fdiv double 1.000000e+00, %29, !dbg !566
  call void @llvm.dbg.value(metadata double %30, metadata !535, metadata !DIExpression()), !dbg !565
  %31 = fmul double %30, %2, !dbg !567
  call void @llvm.dbg.value(metadata double %31, metadata !536, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !544, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %2, metadata !543, metadata !DIExpression()), !dbg !565
  store double 1.000000e+00, ptr %4, align 8, !dbg !568, !tbaa !174
  store double 0.000000e+00, ptr %5, align 8, !dbg !569, !tbaa !174
  %32 = icmp eq i64 %1, 0, !dbg !570
  br i1 %32, label %332, label %33, !dbg !572

33:                                               ; preds = %28
  %34 = getelementptr inbounds double, ptr %4, i64 1, !dbg !573
  store double %2, ptr %34, align 8, !dbg !574, !tbaa !174
  %35 = fneg double %29, !dbg !575
  %36 = getelementptr inbounds double, ptr %5, i64 1, !dbg !576
  store double %35, ptr %36, align 8, !dbg !577, !tbaa !174
  call void @llvm.dbg.value(metadata i64 1, metadata !539, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 2, metadata !537, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !544, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %2, metadata !543, metadata !DIExpression()), !dbg !565
  %37 = icmp eq i64 %1, 1, !dbg !578
  br i1 %37, label %43, label %38, !dbg !581

38:                                               ; preds = %33
  %39 = tail call i64 @llvm.umax.i64(i64 %7, i64 3), !dbg !581
  br label %45, !dbg !581

40:                                               ; preds = %45
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !545, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !542, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 0, metadata !540, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 1, metadata !538, metadata !DIExpression()), !dbg !565
  %41 = fmul double %29, %3
  %42 = fneg double %30
  br label %71, !dbg !582

43:                                               ; preds = %33
  %44 = fmul double %29, %3, !dbg !584
  br label %130, !dbg !582

45:                                               ; preds = %45, %38
  %46 = phi double [ %47, %45 ], [ 1.000000e+00, %38 ]
  %47 = phi double [ %60, %45 ], [ %2, %38 ]
  %48 = phi i64 [ %50, %45 ], [ 1, %38 ]
  %49 = phi i64 [ %67, %45 ], [ 2, %38 ]
  call void @llvm.dbg.value(metadata double %46, metadata !544, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %47, metadata !543, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 %48, metadata !539, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 %49, metadata !537, metadata !DIExpression()), !dbg !565
  %50 = add i64 %49, %48, !dbg !585
  call void @llvm.dbg.value(metadata i64 %50, metadata !539, metadata !DIExpression()), !dbg !565
  %51 = shl i64 %49, 1, !dbg !587
  %52 = add i64 %51, -1, !dbg !588
  %53 = uitofp i64 %52 to double, !dbg !589
  %54 = fmul double %53, %2, !dbg !590
  %55 = fmul double %47, %54, !dbg !591
  %56 = add i64 %49, -1, !dbg !592
  %57 = uitofp i64 %56 to double, !dbg !593
  %58 = fmul double %46, %57, !dbg !594
  %handler_result2 = call double @fSubHandlerDouble(double %55, double %58), !dbg !595
  %59 = uitofp i64 %49 to double, !dbg !595
  %60 = fdiv double %handler_result2, %59, !dbg !596
  call void @llvm.dbg.value(metadata double %60, metadata !541, metadata !DIExpression()), !dbg !565
  %61 = getelementptr inbounds double, ptr %4, i64 %50, !dbg !597
  store double %60, ptr %61, align 8, !dbg !598, !tbaa !174
  %62 = fneg double %59, !dbg !599
  %63 = fmul double %60, %2, !dbg !600
  %handler_result3 = call double @fSubHandlerDouble(double %47, double %63), !dbg !601
  %64 = fmul double %handler_result3, %62, !dbg !601
  %65 = fmul double %30, %64, !dbg !602
  %66 = getelementptr inbounds double, ptr %5, i64 %50, !dbg !603
  store double %65, ptr %66, align 8, !dbg !604, !tbaa !174
  call void @llvm.dbg.value(metadata double %47, metadata !544, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %60, metadata !543, metadata !DIExpression()), !dbg !565
  %67 = add nuw i64 %49, 1, !dbg !605
  call void @llvm.dbg.value(metadata i64 %67, metadata !537, metadata !DIExpression()), !dbg !565
  %68 = icmp eq i64 %67, %39, !dbg !578
  br i1 %68, label %40, label %45, !dbg !581, !llvm.loop !606

69:                                               ; preds = %100, %71
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !545, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %79, metadata !542, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 %77, metadata !540, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 %76, metadata !538, metadata !DIExpression()), !dbg !565
  %70 = icmp eq i64 %76, %1, !dbg !608
  br i1 %70, label %128, label %71, !dbg !582, !llvm.loop !610

71:                                               ; preds = %69, %40
  %72 = phi double [ -1.000000e+00, %40 ], [ %handler_result4, %69 ]
  %73 = phi double [ 1.000000e+00, %40 ], [ %79, %69 ]
  %74 = phi i64 [ 0, %40 ], [ %77, %69 ]
  %75 = phi i64 [ 1, %40 ], [ %76, %69 ]
  call void @llvm.dbg.value(metadata double %72, metadata !545, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %73, metadata !542, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 %74, metadata !540, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 %75, metadata !538, metadata !DIExpression()), !dbg !565
  %76 = add nuw i64 %75, 1, !dbg !612
  %77 = add i64 %76, %74, !dbg !614
  call void @llvm.dbg.value(metadata i64 %77, metadata !540, metadata !DIExpression()), !dbg !565
  %handler_result4 = call double @fAddHandlerDouble(double %72, double 2.000000e+00), !dbg !615
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !545, metadata !DIExpression()), !dbg !565
  %78 = fmul double %41, %handler_result4, !dbg !615
  %79 = fmul double %73, %78, !dbg !616
  call void @llvm.dbg.value(metadata double %79, metadata !542, metadata !DIExpression()), !dbg !565
  %80 = getelementptr inbounds double, ptr %4, i64 %77, !dbg !617
  store double %79, ptr %80, align 8, !dbg !618, !tbaa !174
  %81 = uitofp i64 %75 to double, !dbg !619
  %82 = fmul double %31, %81, !dbg !620
  %83 = fmul double %79, %82, !dbg !621
  %84 = getelementptr inbounds double, ptr %5, i64 %77, !dbg !622
  store double %83, ptr %84, align 8, !dbg !623, !tbaa !174
  call void @llvm.dbg.value(metadata double %79, metadata !544, metadata !DIExpression()), !dbg !565
  %85 = add i64 %77, %76, !dbg !624
  call void @llvm.dbg.value(metadata i64 %85, metadata !539, metadata !DIExpression()), !dbg !565
  %86 = fmul double %79, %2, !dbg !625
  %87 = shl i64 %75, 1, !dbg !626
  %88 = or disjoint i64 %87, 1, !dbg !627
  %89 = uitofp i64 %88 to double, !dbg !628
  %90 = fmul double %86, %89, !dbg !629
  call void @llvm.dbg.value(metadata double %90, metadata !543, metadata !DIExpression()), !dbg !565
  %91 = getelementptr inbounds double, ptr %4, i64 %85, !dbg !630
  store double %90, ptr %91, align 8, !dbg !631, !tbaa !174
  %92 = fmul double %79, %89, !dbg !632
  %93 = uitofp i64 %76 to double, !dbg !633
  %94 = fmul double %93, %2, !dbg !634
  %95 = fmul double %94, %90, !dbg !635
  %handler_result5 = call double @fSubHandlerDouble(double %92, double %95), !dbg !636
  %96 = fmul double %handler_result5, %42, !dbg !636
  %97 = getelementptr inbounds double, ptr %5, i64 %85, !dbg !637
  store double %96, ptr %97, align 8, !dbg !638, !tbaa !174
  %98 = add i64 %75, 2, !dbg !639
  call void @llvm.dbg.value(metadata i64 %98, metadata !537, metadata !DIExpression()), !dbg !565
  %99 = icmp ugt i64 %98, %1, !dbg !641
  br i1 %99, label %69, label %100, !dbg !643

100:                                              ; preds = %100, %71
  %101 = phi double [ %102, %100 ], [ %79, %71 ]
  %102 = phi double [ %117, %100 ], [ %90, %71 ]
  %103 = phi i64 [ %105, %100 ], [ %85, %71 ]
  %104 = phi i64 [ %126, %100 ], [ %98, %71 ]
  call void @llvm.dbg.value(metadata double %101, metadata !544, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %102, metadata !543, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 %103, metadata !539, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 %104, metadata !537, metadata !DIExpression()), !dbg !565
  %105 = add i64 %104, %103, !dbg !644
  call void @llvm.dbg.value(metadata i64 %105, metadata !539, metadata !DIExpression()), !dbg !565
  %106 = shl i64 %104, 1, !dbg !646
  %107 = add i64 %106, -1, !dbg !647
  %108 = uitofp i64 %107 to double, !dbg !648
  %109 = fmul double %108, %2, !dbg !649
  %110 = fmul double %102, %109, !dbg !650
  %111 = add i64 %104, %75, !dbg !651
  %112 = add i64 %111, -1, !dbg !652
  %113 = uitofp i64 %112 to double, !dbg !653
  %114 = fmul double %101, %113, !dbg !654
  %handler_result6 = call double @fSubHandlerDouble(double %110, double %114), !dbg !655
  %115 = sub i64 %104, %75, !dbg !655
  %116 = uitofp i64 %115 to double, !dbg !656
  %117 = fdiv double %handler_result6, %116, !dbg !657
  call void @llvm.dbg.value(metadata double %117, metadata !541, metadata !DIExpression()), !dbg !565
  %118 = getelementptr inbounds double, ptr %4, i64 %105, !dbg !658
  store double %117, ptr %118, align 8, !dbg !659, !tbaa !174
  %119 = uitofp i64 %111 to double, !dbg !660
  %120 = fmul double %102, %119, !dbg !661
  %121 = uitofp i64 %104 to double, !dbg !662
  %122 = fmul double %121, %2, !dbg !663
  %123 = fmul double %122, %117, !dbg !664
  %handler_result7 = call double @fSubHandlerDouble(double %120, double %123), !dbg !665
  %124 = fmul double %handler_result7, %42, !dbg !665
  %125 = getelementptr inbounds double, ptr %5, i64 %105, !dbg !666
  store double %124, ptr %125, align 8, !dbg !667, !tbaa !174
  call void @llvm.dbg.value(metadata double %102, metadata !544, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %117, metadata !543, metadata !DIExpression()), !dbg !565
  %126 = add i64 %104, 1, !dbg !668
  call void @llvm.dbg.value(metadata i64 %126, metadata !537, metadata !DIExpression()), !dbg !565
  %127 = icmp ugt i64 %126, %1, !dbg !641
  br i1 %127, label %69, label %100, !dbg !643, !llvm.loop !669

128:                                              ; preds = %69
  %129 = add i64 %77, %7, !dbg !671
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result4, double 2.000000e+00), !dbg !671
  br label %130, !dbg !671

130:                                              ; preds = %128, %43
  %131 = phi double [ %44, %43 ], [ %41, %128 ], !dbg !584
  %132 = phi double [ 1.000000e+00, %43 ], [ %79, %128 ], !dbg !565
  %133 = phi double [ 1.000000e+00, %43 ], [ %handler_result8, %128 ], !dbg !565
  %134 = phi i64 [ 2, %43 ], [ %129, %128 ], !dbg !672
  call void @llvm.dbg.value(metadata i64 %134, metadata !540, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %133, metadata !545, metadata !DIExpression()), !dbg !565
  %135 = fmul double %131, %133, !dbg !673
  %136 = fmul double %132, %135, !dbg !674
  call void @llvm.dbg.value(metadata double %136, metadata !542, metadata !DIExpression()), !dbg !565
  %137 = getelementptr inbounds double, ptr %4, i64 %134, !dbg !675
  store double %136, ptr %137, align 8, !dbg !676, !tbaa !174
  %138 = uitofp i64 %1 to double, !dbg !677
  %139 = fmul double %138, %2, !dbg !678
  %140 = fmul double %139, %136, !dbg !679
  %141 = fmul double %30, %140, !dbg !680
  %142 = getelementptr inbounds double, ptr %5, i64 %134, !dbg !681
  store double %141, ptr %142, align 8, !dbg !682, !tbaa !174
  br label %332, !dbg !683

143:                                              ; preds = %6
  call void @llvm.dbg.value(metadata i64 %1, metadata !684, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata double %2, metadata !687, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata double %3, metadata !688, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata ptr %4, metadata !689, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata ptr %5, metadata !690, metadata !DIExpression()), !dbg !714
  br i1 %16, label %144, label %145, !dbg !717

144:                                              ; preds = %143
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 222, i32 noundef 1) #5, !dbg !718
  br label %332, !dbg !718

145:                                              ; preds = %143
  %146 = tail call double @llvm.fabs.f64(double %2), !dbg !721
  %147 = fcmp oeq double %146, 1.000000e+00, !dbg !722
  br i1 %147, label %148, label %149, !dbg !723

148:                                              ; preds = %145
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 227, i32 noundef 1) #5, !dbg !724
  br label %332, !dbg !724

149:                                              ; preds = %145
  %150 = fcmp une double %3, 1.000000e+00, !dbg !727
  %151 = fcmp une double %3, -1.000000e+00
  %152 = and i1 %150, %151, !dbg !728
  br i1 %152, label %153, label %154, !dbg !728

153:                                              ; preds = %149
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 232, i32 noundef 1) #5, !dbg !729
  br label %332, !dbg !729

154:                                              ; preds = %149
  call void @llvm.dbg.value(metadata double 0x5CD0B15A491EB84, metadata !691, metadata !DIExpression()), !dbg !732
  %155 = tail call double @sqrt(double noundef %11) #5, !dbg !733
  call void @llvm.dbg.value(metadata double %155, metadata !696, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double %198, metadata !697, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double %199, metadata !698, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i64 %10, metadata !708, metadata !DIExpression()), !dbg !732
  %156 = getelementptr inbounds double, ptr %4, i64 %10, !dbg !736
  call void @llvm.dbg.value(metadata ptr %156, metadata !709, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i64 %1, metadata !301, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata ptr %156, metadata !306, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i64 0, metadata !307, metadata !DIExpression()), !dbg !737
  %157 = shl i64 %1, 1
  %158 = add i64 %157, 2, !dbg !739
  %159 = tail call i64 @llvm.umax.i64(i64 %158, i64 1), !dbg !739
  %160 = and i64 %159, 3, !dbg !739
  %161 = icmp ult i64 %158, 4, !dbg !739
  br i1 %161, label %185, label %162, !dbg !739

162:                                              ; preds = %154
  %163 = and i64 %159, -4, !dbg !739
  br label %164, !dbg !739

164:                                              ; preds = %164, %162
  %165 = phi i64 [ 0, %162 ], [ %182, %164 ]
  %166 = phi i64 [ 0, %162 ], [ %183, %164 ]
  call void @llvm.dbg.value(metadata i64 %165, metadata !307, metadata !DIExpression()), !dbg !737
  %167 = uitofp i64 %165 to double, !dbg !740
  %168 = tail call double @llvm.sqrt.f64(double %167), !dbg !741
  %169 = getelementptr inbounds double, ptr %156, i64 %165, !dbg !742
  store double %168, ptr %169, align 8, !dbg !743, !tbaa !174
  %170 = or disjoint i64 %165, 1, !dbg !744
  call void @llvm.dbg.value(metadata i64 %170, metadata !307, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i64 %170, metadata !307, metadata !DIExpression()), !dbg !737
  %171 = uitofp i64 %170 to double, !dbg !740
  %172 = tail call double @llvm.sqrt.f64(double %171), !dbg !741
  %173 = getelementptr inbounds double, ptr %156, i64 %170, !dbg !742
  store double %172, ptr %173, align 8, !dbg !743, !tbaa !174
  %174 = or disjoint i64 %165, 2, !dbg !744
  call void @llvm.dbg.value(metadata i64 %174, metadata !307, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i64 %174, metadata !307, metadata !DIExpression()), !dbg !737
  %175 = uitofp i64 %174 to double, !dbg !740
  %176 = tail call double @llvm.sqrt.f64(double %175), !dbg !741
  %177 = getelementptr inbounds double, ptr %156, i64 %174, !dbg !742
  store double %176, ptr %177, align 8, !dbg !743, !tbaa !174
  %178 = or disjoint i64 %165, 3, !dbg !744
  call void @llvm.dbg.value(metadata i64 %178, metadata !307, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i64 %178, metadata !307, metadata !DIExpression()), !dbg !737
  %179 = uitofp i64 %178 to double, !dbg !740
  %180 = tail call double @llvm.sqrt.f64(double %179), !dbg !741
  %181 = getelementptr inbounds double, ptr %156, i64 %178, !dbg !742
  store double %180, ptr %181, align 8, !dbg !743, !tbaa !174
  %182 = add nuw i64 %165, 4, !dbg !744
  call void @llvm.dbg.value(metadata i64 %182, metadata !307, metadata !DIExpression()), !dbg !737
  %183 = add i64 %166, 4, !dbg !739
  %184 = icmp eq i64 %183, %163, !dbg !739
  br i1 %184, label %185, label %164, !dbg !739, !llvm.loop !745

185:                                              ; preds = %164, %154
  %186 = phi i64 [ 0, %154 ], [ %182, %164 ]
  %187 = icmp eq i64 %160, 0, !dbg !739
  br i1 %187, label %197, label %188, !dbg !739

188:                                              ; preds = %188, %185
  %189 = phi i64 [ %194, %188 ], [ %186, %185 ]
  %190 = phi i64 [ %195, %188 ], [ 0, %185 ]
  call void @llvm.dbg.value(metadata i64 %189, metadata !307, metadata !DIExpression()), !dbg !737
  %191 = uitofp i64 %189 to double, !dbg !740
  %192 = tail call double @llvm.sqrt.f64(double %191), !dbg !741
  %193 = getelementptr inbounds double, ptr %156, i64 %189, !dbg !742
  store double %192, ptr %193, align 8, !dbg !743, !tbaa !174
  %194 = add nuw i64 %189, 1, !dbg !744
  call void @llvm.dbg.value(metadata i64 %194, metadata !307, metadata !DIExpression()), !dbg !737
  %195 = add i64 %190, 1, !dbg !739
  %196 = icmp eq i64 %195, %160, !dbg !739
  br i1 %196, label %197, label %188, !dbg !739, !llvm.loop !747

197:                                              ; preds = %188, %185
  %198 = fdiv double 1.000000e+00, %155, !dbg !748
  %199 = fmul double %198, %2, !dbg !749
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !707, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double %2, metadata !706, metadata !DIExpression()), !dbg !732
  store double 1.000000e+00, ptr %4, align 8, !dbg !750, !tbaa !174
  store double 0.000000e+00, ptr %5, align 8, !dbg !751, !tbaa !174
  %200 = icmp eq i64 %1, 0, !dbg !752
  br i1 %200, label %332, label %201, !dbg !754

201:                                              ; preds = %197
  %202 = getelementptr inbounds double, ptr %4, i64 1, !dbg !755
  store double %2, ptr %202, align 8, !dbg !756, !tbaa !174
  %203 = fneg double %155, !dbg !757
  %204 = getelementptr inbounds double, ptr %5, i64 1, !dbg !758
  store double %203, ptr %204, align 8, !dbg !759, !tbaa !174
  call void @llvm.dbg.value(metadata i64 1, metadata !701, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i64 2, metadata !699, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !707, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double %2, metadata !706, metadata !DIExpression()), !dbg !732
  %205 = icmp eq i64 %1, 1, !dbg !760
  br i1 %205, label %314, label %206, !dbg !761

206:                                              ; preds = %201
  %207 = tail call i64 @llvm.umax.i64(i64 %7, i64 3), !dbg !761
  br label %210, !dbg !761

208:                                              ; preds = %210
  call void @llvm.dbg.value(metadata i64 1, metadata !700, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double 1.000000e+280, metadata !705, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double 0x5D48966111CD756, metadata !704, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i64 0, metadata !702, metadata !DIExpression()), !dbg !732
  %209 = tail call i64 @llvm.umax.i64(i64 %1, i64 2), !dbg !762
  br label %230, !dbg !762

210:                                              ; preds = %210, %206
  %211 = phi i64 [ %226, %210 ], [ 2, %206 ]
  %212 = phi double [ %213, %210 ], [ 1.000000e+00, %206 ]
  %213 = phi double [ %handler_result11, %210 ], [ %2, %206 ]
  %214 = phi i64 [ %217, %210 ], [ 1, %206 ]
  call void @llvm.dbg.value(metadata i64 %211, metadata !699, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double %212, metadata !707, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double %213, metadata !706, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i64 %214, metadata !701, metadata !DIExpression()), !dbg !732
  %215 = uitofp i64 %211 to double, !dbg !764
  %216 = fdiv double 1.000000e+00, %215, !dbg !765
  call void @llvm.dbg.value(metadata double %216, metadata !710, metadata !DIExpression()), !dbg !766
  %217 = add i64 %214, %211, !dbg !767
  call void @llvm.dbg.value(metadata i64 %217, metadata !701, metadata !DIExpression()), !dbg !732
  %handler_result9 = call double @fSubHandlerDouble(double 2.000000e+00, double %216), !dbg !768
  %218 = fmul double %handler_result9, %2, !dbg !768
  %219 = fmul double %213, %218, !dbg !769
  %handler_result10 = call double @fSubHandlerDouble(double 1.000000e+00, double %216), !dbg !770
  %220 = fmul double %212, %handler_result10, !dbg !770
  %handler_result11 = call double @fSubHandlerDouble(double %219, double %220), !dbg !771
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !703, metadata !DIExpression()), !dbg !732
  %221 = getelementptr inbounds double, ptr %4, i64 %217, !dbg !771
  store double %handler_result11, ptr %221, align 8, !dbg !772, !tbaa !174
  %222 = fmul double %198, %215, !dbg !773
  %223 = fmul double %handler_result11, %2, !dbg !774
  %handler_result12 = call double @fSubHandlerDouble(double %223, double %213), !dbg !775
  %224 = fmul double %222, %handler_result12, !dbg !775
  %225 = getelementptr inbounds double, ptr %5, i64 %217, !dbg !776
  store double %224, ptr %225, align 8, !dbg !777, !tbaa !174
  call void @llvm.dbg.value(metadata double %213, metadata !707, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !706, metadata !DIExpression()), !dbg !732
  %226 = add nuw i64 %211, 1, !dbg !778
  call void @llvm.dbg.value(metadata i64 %226, metadata !699, metadata !DIExpression()), !dbg !732
  %227 = icmp eq i64 %226, %207, !dbg !760
  br i1 %227, label %208, label %210, !dbg !761, !llvm.loop !779

228:                                              ; preds = %270, %230
  call void @llvm.dbg.value(metadata i64 %236, metadata !700, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double %235, metadata !705, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double %245, metadata !704, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i64 %237, metadata !702, metadata !DIExpression()), !dbg !732
  %229 = icmp eq i64 %236, %209, !dbg !781
  br i1 %229, label %311, label %230, !dbg !762, !llvm.loop !783

230:                                              ; preds = %228, %208
  %231 = phi i64 [ %236, %228 ], [ 1, %208 ]
  %232 = phi double [ %235, %228 ], [ 1.000000e+280, %208 ]
  %233 = phi double [ %245, %228 ], [ 0x5D48966111CD756, %208 ]
  %234 = phi i64 [ %237, %228 ], [ 0, %208 ]
  call void @llvm.dbg.value(metadata i64 %231, metadata !700, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double %232, metadata !705, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double %233, metadata !704, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i64 %234, metadata !702, metadata !DIExpression()), !dbg !732
  %235 = fmul double %155, %232, !dbg !785
  call void @llvm.dbg.value(metadata double %235, metadata !705, metadata !DIExpression()), !dbg !732
  %236 = add nuw i64 %231, 1, !dbg !787
  %237 = add i64 %234, %236, !dbg !788
  call void @llvm.dbg.value(metadata i64 %237, metadata !702, metadata !DIExpression()), !dbg !732
  %238 = shl i64 %231, 1, !dbg !789
  %239 = getelementptr double, ptr %156, i64 %238, !dbg !790
  %240 = getelementptr double, ptr %239, i64 -1, !dbg !790
  %241 = load double, ptr %240, align 8, !dbg !790, !tbaa !174
  %242 = fmul double %241, %3, !dbg !791
  %243 = load double, ptr %239, align 8, !dbg !792, !tbaa !174
  %244 = fdiv double %242, %243, !dbg !793
  %245 = fmul double %233, %244, !dbg !794
  call void @llvm.dbg.value(metadata double %245, metadata !704, metadata !DIExpression()), !dbg !732
  %246 = fmul double %235, %245, !dbg !795
  %247 = getelementptr inbounds double, ptr %4, i64 %237, !dbg !796
  store double %246, ptr %247, align 8, !dbg !797, !tbaa !174
  %248 = uitofp i64 %231 to double, !dbg !798
  %249 = fmul double %199, %248, !dbg !799
  %250 = fmul double %249, %246, !dbg !800
  %251 = getelementptr inbounds double, ptr %5, i64 %237, !dbg !801
  store double %250, ptr %251, align 8, !dbg !802, !tbaa !174
  call void @llvm.dbg.value(metadata double %245, metadata !707, metadata !DIExpression()), !dbg !732
  %252 = add i64 %237, %236, !dbg !803
  call void @llvm.dbg.value(metadata i64 %252, metadata !701, metadata !DIExpression()), !dbg !732
  %253 = or disjoint i64 %238, 1, !dbg !804
  %254 = getelementptr inbounds double, ptr %156, i64 %253, !dbg !805
  %255 = load double, ptr %254, align 8, !dbg !805, !tbaa !174
  %256 = fmul double %255, %2, !dbg !806
  %257 = fmul double %245, %256, !dbg !807
  call void @llvm.dbg.value(metadata double %257, metadata !706, metadata !DIExpression()), !dbg !732
  %258 = fmul double %235, %257, !dbg !808
  %259 = getelementptr inbounds double, ptr %4, i64 %252, !dbg !809
  store double %258, ptr %259, align 8, !dbg !810, !tbaa !174
  %handler_result13 = call double @fAddHandlerDouble(double %248, double 1.000000e+00), !dbg !811
  %260 = fmul double %handler_result13, %2, !dbg !811
  %261 = fmul double %260, %258, !dbg !812
  %262 = load double, ptr %254, align 8, !dbg !813, !tbaa !174
  %263 = load double, ptr %247, align 8, !dbg !814, !tbaa !174
  %264 = fmul double %262, %263, !dbg !815
  %handler_result14 = call double @fSubHandlerDouble(double %261, double %264), !dbg !816
  %265 = fmul double %198, %handler_result14, !dbg !816
  %266 = getelementptr inbounds double, ptr %5, i64 %252, !dbg !817
  store double %265, ptr %266, align 8, !dbg !818, !tbaa !174
  %267 = add nuw i64 %231, 2, !dbg !819
  call void @llvm.dbg.value(metadata i64 %267, metadata !699, metadata !DIExpression()), !dbg !732
  %268 = getelementptr double, ptr %156, i64 %231, !dbg !821
  %269 = icmp ugt i64 %267, %1, !dbg !822
  br i1 %269, label %228, label %270, !dbg !824

270:                                              ; preds = %270, %230
  %271 = phi i64 [ %309, %270 ], [ %267, %230 ]
  %272 = phi double [ %273, %270 ], [ %245, %230 ]
  %273 = phi double [ %handler_result15, %270 ], [ %257, %230 ]
  %274 = phi i64 [ %275, %270 ], [ %252, %230 ]
  call void @llvm.dbg.value(metadata i64 %271, metadata !699, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double %272, metadata !707, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double %273, metadata !706, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i64 %274, metadata !701, metadata !DIExpression()), !dbg !732
  %275 = add i64 %274, %271, !dbg !825
  call void @llvm.dbg.value(metadata i64 %275, metadata !701, metadata !DIExpression()), !dbg !732
  %276 = shl i64 %271, 1, !dbg !827
  %277 = add i64 %276, -1, !dbg !828
  %278 = uitofp i64 %277 to double, !dbg !829
  %279 = getelementptr double, ptr %268, i64 %271, !dbg !830
  %280 = load double, ptr %279, align 8, !dbg !830, !tbaa !174
  %281 = fdiv double %278, %280, !dbg !831
  %282 = sub i64 %271, %231, !dbg !832
  %283 = getelementptr inbounds double, ptr %156, i64 %282, !dbg !833
  %284 = load double, ptr %283, align 8, !dbg !833, !tbaa !174
  %285 = fdiv double %281, %284, !dbg !834
  %286 = fmul double %285, %2, !dbg !835
  %287 = fmul double %273, %286, !dbg !836
  %288 = getelementptr double, ptr %283, i64 -1, !dbg !837
  %289 = load double, ptr %288, align 8, !dbg !837, !tbaa !174
  %290 = getelementptr double, ptr %279, i64 -1, !dbg !838
  %291 = load double, ptr %290, align 8, !dbg !838, !tbaa !174
  %292 = fmul double %289, %291, !dbg !839
  %293 = fdiv double %292, %280, !dbg !840
  %294 = fdiv double %293, %284, !dbg !841
  %295 = fmul double %272, %294, !dbg !842
  %handler_result15 = call double @fSubHandlerDouble(double %287, double %295), !dbg !843
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !703, metadata !DIExpression()), !dbg !732
  %296 = fmul double %235, %handler_result15, !dbg !843
  %297 = getelementptr inbounds double, ptr %4, i64 %275, !dbg !844
  store double %296, ptr %297, align 8, !dbg !845, !tbaa !174
  %298 = uitofp i64 %271 to double, !dbg !846
  %299 = fmul double %298, %2, !dbg !847
  %300 = fmul double %299, %296, !dbg !848
  %301 = load double, ptr %279, align 8, !dbg !849, !tbaa !174
  %302 = load double, ptr %283, align 8, !dbg !850, !tbaa !174
  %303 = fmul double %301, %302, !dbg !851
  %304 = getelementptr inbounds double, ptr %4, i64 %274, !dbg !852
  %305 = load double, ptr %304, align 8, !dbg !852, !tbaa !174
  %306 = fmul double %303, %305, !dbg !853
  %handler_result16 = call double @fSubHandlerDouble(double %300, double %306), !dbg !854
  %307 = fmul double %198, %handler_result16, !dbg !854
  %308 = getelementptr inbounds double, ptr %5, i64 %275, !dbg !855
  store double %307, ptr %308, align 8, !dbg !856, !tbaa !174
  call void @llvm.dbg.value(metadata double %273, metadata !707, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !706, metadata !DIExpression()), !dbg !732
  %309 = add i64 %271, 1, !dbg !857
  call void @llvm.dbg.value(metadata i64 %309, metadata !699, metadata !DIExpression()), !dbg !732
  %310 = icmp ugt i64 %309, %1, !dbg !822
  br i1 %310, label %228, label %270, !dbg !824, !llvm.loop !858

311:                                              ; preds = %228
  %312 = add i64 %209, 1, !dbg !860
  %313 = add i64 %312, %237, !dbg !861
  br label %314, !dbg !861

314:                                              ; preds = %311, %201
  %315 = phi double [ %245, %311 ], [ 0x5D48966111CD756, %201 ], !dbg !732
  %316 = phi double [ %235, %311 ], [ 1.000000e+280, %201 ], !dbg !732
  %317 = phi i64 [ %313, %311 ], [ 2, %201 ], !dbg !862
  %318 = fmul double %155, %316, !dbg !861
  call void @llvm.dbg.value(metadata double %318, metadata !705, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i64 %317, metadata !702, metadata !DIExpression()), !dbg !732
  %319 = getelementptr double, ptr %156, i64 %157, !dbg !863
  %320 = getelementptr double, ptr %319, i64 -1, !dbg !863
  %321 = load double, ptr %320, align 8, !dbg !863, !tbaa !174
  %322 = fmul double %321, %3, !dbg !864
  %323 = load double, ptr %319, align 8, !dbg !865, !tbaa !174
  %324 = fdiv double %322, %323, !dbg !866
  %325 = fmul double %315, %324, !dbg !867
  call void @llvm.dbg.value(metadata double %325, metadata !704, metadata !DIExpression()), !dbg !732
  %326 = fmul double %318, %325, !dbg !868
  %327 = getelementptr inbounds double, ptr %4, i64 %317, !dbg !869
  store double %326, ptr %327, align 8, !dbg !870, !tbaa !174
  %328 = uitofp i64 %1 to double, !dbg !871
  %329 = fmul double %199, %328, !dbg !872
  %330 = fmul double %329, %326, !dbg !873
  %331 = getelementptr inbounds double, ptr %5, i64 %317, !dbg !874
  store double %330, ptr %331, align 8, !dbg !875, !tbaa !174
  br label %332, !dbg !876

332:                                              ; preds = %314, %197, %153, %148, %144, %130, %28, %27, %22, %18
  %333 = phi i32 [ 1, %18 ], [ 1, %22 ], [ 1, %27 ], [ 0, %28 ], [ 0, %130 ], [ 1, %144 ], [ 1, %148 ], [ 1, %153 ], [ 0, %197 ], [ 0, %314 ], !dbg !519
  tail call void @llvm.dbg.value(metadata i32 %333, metadata !495, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i64 0, metadata !497, metadata !DIExpression()), !dbg !507
  %334 = icmp ult i64 %9, 2, !dbg !877
  br i1 %334, label %375, label %335, !dbg !880

335:                                              ; preds = %332
  %336 = fdiv double -1.000000e+00, %12
  %337 = tail call i64 @llvm.umax.i64(i64 %10, i64 1), !dbg !880
  %338 = and i64 %337, 3, !dbg !880
  %339 = icmp ult i64 %9, 8, !dbg !880
  br i1 %339, label %363, label %340, !dbg !880

340:                                              ; preds = %335
  %341 = and i64 %337, 9223372036854775804, !dbg !880
  br label %342, !dbg !880

342:                                              ; preds = %342, %340
  %343 = phi i64 [ 0, %340 ], [ %360, %342 ]
  %344 = phi i64 [ 0, %340 ], [ %361, %342 ]
  tail call void @llvm.dbg.value(metadata i64 %343, metadata !497, metadata !DIExpression()), !dbg !507
  %345 = getelementptr inbounds double, ptr %5, i64 %343, !dbg !881
  %346 = load double, ptr %345, align 8, !dbg !883, !tbaa !174
  %347 = fmul double %336, %346, !dbg !883
  store double %347, ptr %345, align 8, !dbg !883, !tbaa !174
  %348 = or disjoint i64 %343, 1, !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %348, metadata !497, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i64 %348, metadata !497, metadata !DIExpression()), !dbg !507
  %349 = getelementptr inbounds double, ptr %5, i64 %348, !dbg !881
  %350 = load double, ptr %349, align 8, !dbg !883, !tbaa !174
  %351 = fmul double %336, %350, !dbg !883
  store double %351, ptr %349, align 8, !dbg !883, !tbaa !174
  %352 = or disjoint i64 %343, 2, !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !497, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !497, metadata !DIExpression()), !dbg !507
  %353 = getelementptr inbounds double, ptr %5, i64 %352, !dbg !881
  %354 = load double, ptr %353, align 8, !dbg !883, !tbaa !174
  %355 = fmul double %336, %354, !dbg !883
  store double %355, ptr %353, align 8, !dbg !883, !tbaa !174
  %356 = or disjoint i64 %343, 3, !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !497, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !497, metadata !DIExpression()), !dbg !507
  %357 = getelementptr inbounds double, ptr %5, i64 %356, !dbg !881
  %358 = load double, ptr %357, align 8, !dbg !883, !tbaa !174
  %359 = fmul double %336, %358, !dbg !883
  store double %359, ptr %357, align 8, !dbg !883, !tbaa !174
  %360 = add nuw nsw i64 %343, 4, !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %360, metadata !497, metadata !DIExpression()), !dbg !507
  %361 = add i64 %344, 4, !dbg !880
  %362 = icmp eq i64 %361, %341, !dbg !880
  br i1 %362, label %363, label %342, !dbg !880, !llvm.loop !885

363:                                              ; preds = %342, %335
  %364 = phi i64 [ 0, %335 ], [ %360, %342 ]
  %365 = icmp eq i64 %338, 0, !dbg !880
  br i1 %365, label %375, label %366, !dbg !880

366:                                              ; preds = %366, %363
  %367 = phi i64 [ %372, %366 ], [ %364, %363 ]
  %368 = phi i64 [ %373, %366 ], [ 0, %363 ]
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !497, metadata !DIExpression()), !dbg !507
  %369 = getelementptr inbounds double, ptr %5, i64 %367, !dbg !881
  %370 = load double, ptr %369, align 8, !dbg !883, !tbaa !174
  %371 = fmul double %336, %370, !dbg !883
  store double %371, ptr %369, align 8, !dbg !883, !tbaa !174
  %372 = add nuw nsw i64 %367, 1, !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %372, metadata !497, metadata !DIExpression()), !dbg !507
  %373 = add i64 %368, 1, !dbg !880
  %374 = icmp eq i64 %373, %338, !dbg !880
  br i1 %374, label %375, label %366, !dbg !880, !llvm.loop !887

375:                                              ; preds = %366, %363, %332
  switch i32 %0, label %377 [
    i32 3, label %421
    i32 0, label %421
    i32 1, label %378
    i32 2, label %376
  ], !dbg !888

376:                                              ; preds = %375
  tail call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCC, metadata !500, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !501, metadata !DIExpression()), !dbg !507
  br label %378, !dbg !890

377:                                              ; preds = %375
  br label %378, !dbg !894

378:                                              ; preds = %377, %376, %375
  %379 = phi double [ 0x3FE6A09E667F3BCC, %376 ], [ 0x3FD20DD750429B6D, %375 ], [ 0.000000e+00, %377 ], !dbg !507
  %380 = phi double [ 5.000000e-01, %376 ], [ 0x3FC9884533D43651, %375 ], [ 0.000000e+00, %377 ], !dbg !507
  tail call void @llvm.dbg.value(metadata double %380, metadata !501, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %379, metadata !500, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i64 1, metadata !505, metadata !DIExpression()), !dbg !895
  %381 = getelementptr inbounds double, ptr %4, i64 %10, !dbg !894
  tail call void @llvm.dbg.value(metadata ptr %381, metadata !506, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata i64 0, metadata !502, metadata !DIExpression()), !dbg !895
  %382 = tail call i64 @llvm.umax.i64(i64 %7, i64 1), !dbg !896
  br label %383, !dbg !896

383:                                              ; preds = %417, %378
  %384 = phi i64 [ 1, %378 ], [ %419, %417 ]
  %385 = phi i64 [ 1, %378 ], [ %418, %417 ]
  %386 = phi i64 [ 0, %378 ], [ %390, %417 ]
  tail call void @llvm.dbg.value(metadata i64 %385, metadata !505, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !502, metadata !DIExpression()), !dbg !895
  %387 = getelementptr inbounds double, ptr %381, i64 %385, !dbg !898
  %388 = load double, ptr %387, align 8, !dbg !898, !tbaa !174
  %389 = fmul double %379, %388, !dbg !901
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !424, metadata !DIExpression()), !dbg !902
  tail call void @llvm.dbg.value(metadata i64 0, metadata !429, metadata !DIExpression()), !dbg !902
  %390 = add nuw i64 %386, 1, !dbg !904
  %391 = mul i64 %390, %386, !dbg !905
  %392 = lshr i64 %391, 1, !dbg !906
  %393 = getelementptr inbounds double, ptr %4, i64 %392, !dbg !907
  %394 = load double, ptr %393, align 8, !dbg !908, !tbaa !174
  %395 = fmul double %394, %389, !dbg !908
  store double %395, ptr %393, align 8, !dbg !908, !tbaa !174
  %396 = load double, ptr %387, align 8, !dbg !909, !tbaa !174
  %397 = fmul double %379, %396, !dbg !910
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !424, metadata !DIExpression()), !dbg !911
  tail call void @llvm.dbg.value(metadata i64 0, metadata !429, metadata !DIExpression()), !dbg !911
  %398 = getelementptr inbounds double, ptr %5, i64 %392, !dbg !913
  %399 = load double, ptr %398, align 8, !dbg !914, !tbaa !174
  %400 = fmul double %399, %397, !dbg !914
  store double %400, ptr %398, align 8, !dbg !914, !tbaa !174
  tail call void @llvm.dbg.value(metadata i64 1, metadata !504, metadata !DIExpression()), !dbg !895
  %401 = icmp eq i64 %386, 0, !dbg !915
  br i1 %401, label %417, label %402, !dbg !918

402:                                              ; preds = %402, %383
  %403 = phi i64 [ %415, %402 ], [ 1, %383 ]
  tail call void @llvm.dbg.value(metadata i64 %403, metadata !504, metadata !DIExpression()), !dbg !895
  %404 = load double, ptr %387, align 8, !dbg !919, !tbaa !174
  %405 = fmul double %380, %404, !dbg !921
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !424, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata i64 %403, metadata !429, metadata !DIExpression()), !dbg !922
  %406 = add i64 %403, %392, !dbg !924
  %407 = getelementptr inbounds double, ptr %4, i64 %406, !dbg !925
  %408 = load double, ptr %407, align 8, !dbg !926, !tbaa !174
  %409 = fmul double %408, %405, !dbg !926
  store double %409, ptr %407, align 8, !dbg !926, !tbaa !174
  %410 = load double, ptr %387, align 8, !dbg !927, !tbaa !174
  %411 = fmul double %380, %410, !dbg !928
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !424, metadata !DIExpression()), !dbg !929
  tail call void @llvm.dbg.value(metadata i64 %403, metadata !429, metadata !DIExpression()), !dbg !929
  %412 = getelementptr inbounds double, ptr %5, i64 %406, !dbg !931
  %413 = load double, ptr %412, align 8, !dbg !932, !tbaa !174
  %414 = fmul double %413, %411, !dbg !932
  store double %414, ptr %412, align 8, !dbg !932, !tbaa !174
  %415 = add nuw i64 %403, 1, !dbg !933
  tail call void @llvm.dbg.value(metadata i64 %415, metadata !504, metadata !DIExpression()), !dbg !895
  %416 = icmp eq i64 %415, %384, !dbg !915
  br i1 %416, label %417, label %402, !dbg !918, !llvm.loop !934

417:                                              ; preds = %402, %383
  %418 = add i64 %385, 2, !dbg !936
  tail call void @llvm.dbg.value(metadata i64 %418, metadata !505, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata i64 %390, metadata !502, metadata !DIExpression()), !dbg !895
  %419 = add i64 %384, 1, !dbg !896
  %420 = icmp eq i64 %390, %382, !dbg !937
  br i1 %420, label %421, label %383, !dbg !896, !llvm.loop !938

421:                                              ; preds = %417, %375, %375
  ret i32 %333, !dbg !940
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv_alt_array(i32 noundef %0, i64 noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !dbg !941 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !943, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !944, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %2, metadata !945, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !946, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !947, metadata !DIExpression()), !dbg !949
  %6 = tail call i32 @gsl_sf_legendre_deriv_alt_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4), !dbg !950, !range !99
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !948, metadata !DIExpression()), !dbg !949
  ret i32 %6, !dbg !951
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv_alt_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 !dbg !952 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !954, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !955, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata double %2, metadata !956, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata double %3, metadata !957, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !958, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !959, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !970
  %7 = add i64 %1, 1, !dbg !972
  %8 = add i64 %1, 2, !dbg !973
  %9 = mul i64 %7, %8, !dbg !974
  %10 = lshr i64 %9, 1, !dbg !975
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !961, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !962, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !963, metadata !DIExpression()), !dbg !969
  %11 = icmp eq i32 %0, 3, !dbg !976
  %12 = fcmp ogt double %2, 1.000000e+00, !dbg !978
  %13 = fcmp olt double %2, -1.000000e+00
  %14 = or i1 %12, %13, !dbg !978
  br i1 %11, label %15, label %142, !dbg !979

15:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %1, metadata !980, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata double %2, metadata !983, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata double %3, metadata !984, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr %4, metadata !985, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr %5, metadata !986, metadata !DIExpression()), !dbg !1003
  br i1 %14, label %16, label %17, !dbg !1006

16:                                               ; preds = %15
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 1) #5, !dbg !1007
  br label %379, !dbg !1007

17:                                               ; preds = %15
  %18 = tail call double @llvm.fabs.f64(double %2), !dbg !1010
  %19 = fcmp oeq double %18, 1.000000e+00, !dbg !1011
  br i1 %19, label %20, label %21, !dbg !1012

20:                                               ; preds = %17
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 435, i32 noundef 1) #5, !dbg !1013
  br label %379, !dbg !1013

21:                                               ; preds = %17
  %22 = fcmp une double %3, 1.000000e+00, !dbg !1016
  %23 = fcmp une double %3, -1.000000e+00
  %24 = and i1 %22, %23, !dbg !1017
  br i1 %24, label %25, label %26, !dbg !1017

25:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 1) #5, !dbg !1018
  br label %379, !dbg !1018

26:                                               ; preds = %21
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !1021
  %handler_result1 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !1022
  %27 = fmul double %handler_result, %handler_result1, !dbg !1022
  %28 = tail call double @sqrt(double noundef %27) #5, !dbg !1023
  call void @llvm.dbg.value(metadata double %28, metadata !987, metadata !DIExpression()), !dbg !1024
  %29 = fdiv double 1.000000e+00, %28, !dbg !1025
  call void @llvm.dbg.value(metadata double %29, metadata !992, metadata !DIExpression()), !dbg !1024
  %30 = fmul double %29, %2, !dbg !1026
  call void @llvm.dbg.value(metadata double %30, metadata !993, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata double %2, metadata !1000, metadata !DIExpression()), !dbg !1024
  store double 1.000000e+00, ptr %4, align 8, !dbg !1027, !tbaa !174
  store double 0.000000e+00, ptr %5, align 8, !dbg !1028, !tbaa !174
  %31 = icmp eq i64 %1, 0, !dbg !1029
  br i1 %31, label %379, label %32, !dbg !1031

32:                                               ; preds = %26
  %33 = getelementptr inbounds double, ptr %4, i64 1, !dbg !1032
  store double %2, ptr %33, align 8, !dbg !1033, !tbaa !174
  %34 = fneg double %28, !dbg !1034
  %35 = getelementptr inbounds double, ptr %5, i64 1, !dbg !1035
  store double %34, ptr %35, align 8, !dbg !1036, !tbaa !174
  call void @llvm.dbg.value(metadata i64 1, metadata !996, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 2, metadata !994, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata double %2, metadata !1000, metadata !DIExpression()), !dbg !1024
  %36 = icmp eq i64 %1, 1, !dbg !1037
  br i1 %36, label %42, label %37, !dbg !1040

37:                                               ; preds = %32
  %38 = tail call i64 @llvm.umax.i64(i64 %7, i64 3), !dbg !1040
  br label %44, !dbg !1040

39:                                               ; preds = %44
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !1002, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !999, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 0, metadata !997, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 1, metadata !995, metadata !DIExpression()), !dbg !1024
  %40 = fmul double %28, %3
  %41 = fneg double %29
  br label %70, !dbg !1041

42:                                               ; preds = %32
  %43 = fmul double %28, %3, !dbg !1043
  br label %129, !dbg !1041

44:                                               ; preds = %44, %37
  %45 = phi double [ %46, %44 ], [ 1.000000e+00, %37 ]
  %46 = phi double [ %59, %44 ], [ %2, %37 ]
  %47 = phi i64 [ %49, %44 ], [ 1, %37 ]
  %48 = phi i64 [ %66, %44 ], [ 2, %37 ]
  call void @llvm.dbg.value(metadata double %45, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata double %46, metadata !1000, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %47, metadata !996, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %48, metadata !994, metadata !DIExpression()), !dbg !1024
  %49 = add i64 %48, %47, !dbg !1044
  call void @llvm.dbg.value(metadata i64 %49, metadata !996, metadata !DIExpression()), !dbg !1024
  %50 = shl i64 %48, 1, !dbg !1046
  %51 = add i64 %50, -1, !dbg !1047
  %52 = uitofp i64 %51 to double, !dbg !1048
  %53 = fmul double %52, %2, !dbg !1049
  %54 = fmul double %46, %53, !dbg !1050
  %55 = add i64 %48, -1, !dbg !1051
  %56 = uitofp i64 %55 to double, !dbg !1052
  %57 = fmul double %45, %56, !dbg !1053
  %handler_result2 = call double @fSubHandlerDouble(double %54, double %57), !dbg !1054
  %58 = uitofp i64 %48 to double, !dbg !1054
  %59 = fdiv double %handler_result2, %58, !dbg !1055
  call void @llvm.dbg.value(metadata double %59, metadata !998, metadata !DIExpression()), !dbg !1024
  %60 = getelementptr inbounds double, ptr %4, i64 %49, !dbg !1056
  store double %59, ptr %60, align 8, !dbg !1057, !tbaa !174
  %61 = fneg double %58, !dbg !1058
  %62 = fmul double %59, %2, !dbg !1059
  %handler_result3 = call double @fSubHandlerDouble(double %46, double %62), !dbg !1060
  %63 = fmul double %handler_result3, %61, !dbg !1060
  %64 = fmul double %29, %63, !dbg !1061
  %65 = getelementptr inbounds double, ptr %5, i64 %49, !dbg !1062
  store double %64, ptr %65, align 8, !dbg !1063, !tbaa !174
  call void @llvm.dbg.value(metadata double %46, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata double %59, metadata !1000, metadata !DIExpression()), !dbg !1024
  %66 = add nuw i64 %48, 1, !dbg !1064
  call void @llvm.dbg.value(metadata i64 %66, metadata !994, metadata !DIExpression()), !dbg !1024
  %67 = icmp eq i64 %66, %38, !dbg !1037
  br i1 %67, label %39, label %44, !dbg !1040, !llvm.loop !1065

68:                                               ; preds = %99, %70
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !1002, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata double %78, metadata !999, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %76, metadata !997, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %75, metadata !995, metadata !DIExpression()), !dbg !1024
  %69 = icmp eq i64 %75, %1, !dbg !1067
  br i1 %69, label %127, label %70, !dbg !1041, !llvm.loop !1069

70:                                               ; preds = %68, %39
  %71 = phi double [ -1.000000e+00, %39 ], [ %handler_result4, %68 ]
  %72 = phi double [ 1.000000e+00, %39 ], [ %78, %68 ]
  %73 = phi i64 [ 0, %39 ], [ %76, %68 ]
  %74 = phi i64 [ 1, %39 ], [ %75, %68 ]
  call void @llvm.dbg.value(metadata double %71, metadata !1002, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata double %72, metadata !999, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %73, metadata !997, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %74, metadata !995, metadata !DIExpression()), !dbg !1024
  %75 = add nuw i64 %74, 1, !dbg !1071
  %76 = add i64 %75, %73, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %76, metadata !997, metadata !DIExpression()), !dbg !1024
  %handler_result4 = call double @fAddHandlerDouble(double %71, double 2.000000e+00), !dbg !1074
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !1002, metadata !DIExpression()), !dbg !1024
  %77 = fmul double %40, %handler_result4, !dbg !1074
  %78 = fmul double %72, %77, !dbg !1075
  call void @llvm.dbg.value(metadata double %78, metadata !999, metadata !DIExpression()), !dbg !1024
  %79 = getelementptr inbounds double, ptr %4, i64 %76, !dbg !1076
  store double %78, ptr %79, align 8, !dbg !1077, !tbaa !174
  %80 = uitofp i64 %74 to double, !dbg !1078
  %81 = fmul double %30, %80, !dbg !1079
  %82 = fmul double %78, %81, !dbg !1080
  %83 = getelementptr inbounds double, ptr %5, i64 %76, !dbg !1081
  store double %82, ptr %83, align 8, !dbg !1082, !tbaa !174
  call void @llvm.dbg.value(metadata double %78, metadata !1001, metadata !DIExpression()), !dbg !1024
  %84 = add i64 %76, %75, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %84, metadata !996, metadata !DIExpression()), !dbg !1024
  %85 = fmul double %78, %2, !dbg !1084
  %86 = shl i64 %74, 1, !dbg !1085
  %87 = or disjoint i64 %86, 1, !dbg !1086
  %88 = uitofp i64 %87 to double, !dbg !1087
  %89 = fmul double %85, %88, !dbg !1088
  call void @llvm.dbg.value(metadata double %89, metadata !1000, metadata !DIExpression()), !dbg !1024
  %90 = getelementptr inbounds double, ptr %4, i64 %84, !dbg !1089
  store double %89, ptr %90, align 8, !dbg !1090, !tbaa !174
  %91 = fmul double %78, %88, !dbg !1091
  %92 = uitofp i64 %75 to double, !dbg !1092
  %93 = fmul double %92, %2, !dbg !1093
  %94 = fmul double %93, %89, !dbg !1094
  %handler_result5 = call double @fSubHandlerDouble(double %91, double %94), !dbg !1095
  %95 = fmul double %handler_result5, %41, !dbg !1095
  %96 = getelementptr inbounds double, ptr %5, i64 %84, !dbg !1096
  store double %95, ptr %96, align 8, !dbg !1097, !tbaa !174
  %97 = add i64 %74, 2, !dbg !1098
  call void @llvm.dbg.value(metadata i64 %97, metadata !994, metadata !DIExpression()), !dbg !1024
  %98 = icmp ugt i64 %97, %1, !dbg !1100
  br i1 %98, label %68, label %99, !dbg !1102

99:                                               ; preds = %99, %70
  %100 = phi double [ %101, %99 ], [ %78, %70 ]
  %101 = phi double [ %116, %99 ], [ %89, %70 ]
  %102 = phi i64 [ %104, %99 ], [ %84, %70 ]
  %103 = phi i64 [ %125, %99 ], [ %97, %70 ]
  call void @llvm.dbg.value(metadata double %100, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata double %101, metadata !1000, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %102, metadata !996, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %103, metadata !994, metadata !DIExpression()), !dbg !1024
  %104 = add i64 %103, %102, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %104, metadata !996, metadata !DIExpression()), !dbg !1024
  %105 = shl i64 %103, 1, !dbg !1105
  %106 = add i64 %105, -1, !dbg !1106
  %107 = uitofp i64 %106 to double, !dbg !1107
  %108 = fmul double %107, %2, !dbg !1108
  %109 = fmul double %101, %108, !dbg !1109
  %110 = add i64 %103, %74, !dbg !1110
  %111 = add i64 %110, -1, !dbg !1111
  %112 = uitofp i64 %111 to double, !dbg !1112
  %113 = fmul double %100, %112, !dbg !1113
  %handler_result6 = call double @fSubHandlerDouble(double %109, double %113), !dbg !1114
  %114 = sub i64 %103, %74, !dbg !1114
  %115 = uitofp i64 %114 to double, !dbg !1115
  %116 = fdiv double %handler_result6, %115, !dbg !1116
  call void @llvm.dbg.value(metadata double %116, metadata !998, metadata !DIExpression()), !dbg !1024
  %117 = getelementptr inbounds double, ptr %4, i64 %104, !dbg !1117
  store double %116, ptr %117, align 8, !dbg !1118, !tbaa !174
  %118 = uitofp i64 %110 to double, !dbg !1119
  %119 = fmul double %101, %118, !dbg !1120
  %120 = uitofp i64 %103 to double, !dbg !1121
  %121 = fmul double %120, %2, !dbg !1122
  %122 = fmul double %121, %116, !dbg !1123
  %handler_result7 = call double @fSubHandlerDouble(double %119, double %122), !dbg !1124
  %123 = fmul double %handler_result7, %41, !dbg !1124
  %124 = getelementptr inbounds double, ptr %5, i64 %104, !dbg !1125
  store double %123, ptr %124, align 8, !dbg !1126, !tbaa !174
  call void @llvm.dbg.value(metadata double %101, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata double %116, metadata !1000, metadata !DIExpression()), !dbg !1024
  %125 = add i64 %103, 1, !dbg !1127
  call void @llvm.dbg.value(metadata i64 %125, metadata !994, metadata !DIExpression()), !dbg !1024
  %126 = icmp ugt i64 %125, %1, !dbg !1100
  br i1 %126, label %68, label %99, !dbg !1102, !llvm.loop !1128

127:                                              ; preds = %68
  %128 = add i64 %76, %7, !dbg !1130
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result4, double 2.000000e+00), !dbg !1130
  br label %129, !dbg !1130

129:                                              ; preds = %127, %42
  %130 = phi double [ %43, %42 ], [ %40, %127 ], !dbg !1043
  %131 = phi double [ 1.000000e+00, %42 ], [ %78, %127 ], !dbg !1024
  %132 = phi double [ 1.000000e+00, %42 ], [ %handler_result8, %127 ], !dbg !1024
  %133 = phi i64 [ 2, %42 ], [ %128, %127 ], !dbg !1131
  call void @llvm.dbg.value(metadata i64 %133, metadata !997, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata double %132, metadata !1002, metadata !DIExpression()), !dbg !1024
  %134 = fmul double %130, %132, !dbg !1132
  %135 = fmul double %131, %134, !dbg !1133
  call void @llvm.dbg.value(metadata double %135, metadata !999, metadata !DIExpression()), !dbg !1024
  %136 = getelementptr inbounds double, ptr %4, i64 %133, !dbg !1134
  store double %135, ptr %136, align 8, !dbg !1135, !tbaa !174
  %137 = uitofp i64 %1 to double, !dbg !1136
  %138 = fmul double %137, %2, !dbg !1137
  %139 = fmul double %138, %135, !dbg !1138
  %140 = fmul double %29, %139, !dbg !1139
  %141 = getelementptr inbounds double, ptr %5, i64 %133, !dbg !1140
  store double %140, ptr %141, align 8, !dbg !1141, !tbaa !174
  br label %332, !dbg !1142

142:                                              ; preds = %6
  call void @llvm.dbg.value(metadata i64 %1, metadata !1143, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata double %2, metadata !1146, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata double %3, metadata !1147, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata ptr %4, metadata !1148, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata ptr %5, metadata !1149, metadata !DIExpression()), !dbg !1173
  br i1 %14, label %143, label %144, !dbg !1176

143:                                              ; preds = %142
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 222, i32 noundef 1) #5, !dbg !1177
  br label %332, !dbg !1177

144:                                              ; preds = %142
  %145 = tail call double @llvm.fabs.f64(double %2), !dbg !1180
  %146 = fcmp oeq double %145, 1.000000e+00, !dbg !1181
  br i1 %146, label %147, label %148, !dbg !1182

147:                                              ; preds = %144
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 227, i32 noundef 1) #5, !dbg !1183
  br label %332, !dbg !1183

148:                                              ; preds = %144
  %149 = fcmp une double %3, 1.000000e+00, !dbg !1186
  %150 = fcmp une double %3, -1.000000e+00
  %151 = and i1 %149, %150, !dbg !1187
  br i1 %151, label %152, label %153, !dbg !1187

152:                                              ; preds = %148
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 232, i32 noundef 1) #5, !dbg !1188
  br label %332, !dbg !1188

153:                                              ; preds = %148
  call void @llvm.dbg.value(metadata double 0x5CD0B15A491EB84, metadata !1150, metadata !DIExpression()), !dbg !1191
  %handler_result9 = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !1192
  %handler_result10 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !1193
  %154 = fmul double %handler_result9, %handler_result10, !dbg !1193
  %155 = tail call double @sqrt(double noundef %154) #5, !dbg !1194
  call void @llvm.dbg.value(metadata double %155, metadata !1155, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %198, metadata !1156, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %199, metadata !1157, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i64 %10, metadata !1167, metadata !DIExpression()), !dbg !1191
  %156 = getelementptr inbounds double, ptr %4, i64 %10, !dbg !1197
  call void @llvm.dbg.value(metadata ptr %156, metadata !1168, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %1, metadata !301, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata ptr %156, metadata !306, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 0, metadata !307, metadata !DIExpression()), !dbg !1198
  %157 = shl i64 %1, 1
  %158 = add i64 %157, 2, !dbg !1200
  %159 = tail call i64 @llvm.umax.i64(i64 %158, i64 1), !dbg !1200
  %160 = and i64 %159, 3, !dbg !1200
  %161 = icmp ult i64 %158, 4, !dbg !1200
  br i1 %161, label %185, label %162, !dbg !1200

162:                                              ; preds = %153
  %163 = and i64 %159, -4, !dbg !1200
  br label %164, !dbg !1200

164:                                              ; preds = %164, %162
  %165 = phi i64 [ 0, %162 ], [ %182, %164 ]
  %166 = phi i64 [ 0, %162 ], [ %183, %164 ]
  call void @llvm.dbg.value(metadata i64 %165, metadata !307, metadata !DIExpression()), !dbg !1198
  %167 = uitofp i64 %165 to double, !dbg !1201
  %168 = tail call double @llvm.sqrt.f64(double %167), !dbg !1202
  %169 = getelementptr inbounds double, ptr %156, i64 %165, !dbg !1203
  store double %168, ptr %169, align 8, !dbg !1204, !tbaa !174
  %170 = or disjoint i64 %165, 1, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %170, metadata !307, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 %170, metadata !307, metadata !DIExpression()), !dbg !1198
  %171 = uitofp i64 %170 to double, !dbg !1201
  %172 = tail call double @llvm.sqrt.f64(double %171), !dbg !1202
  %173 = getelementptr inbounds double, ptr %156, i64 %170, !dbg !1203
  store double %172, ptr %173, align 8, !dbg !1204, !tbaa !174
  %174 = or disjoint i64 %165, 2, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %174, metadata !307, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 %174, metadata !307, metadata !DIExpression()), !dbg !1198
  %175 = uitofp i64 %174 to double, !dbg !1201
  %176 = tail call double @llvm.sqrt.f64(double %175), !dbg !1202
  %177 = getelementptr inbounds double, ptr %156, i64 %174, !dbg !1203
  store double %176, ptr %177, align 8, !dbg !1204, !tbaa !174
  %178 = or disjoint i64 %165, 3, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %178, metadata !307, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 %178, metadata !307, metadata !DIExpression()), !dbg !1198
  %179 = uitofp i64 %178 to double, !dbg !1201
  %180 = tail call double @llvm.sqrt.f64(double %179), !dbg !1202
  %181 = getelementptr inbounds double, ptr %156, i64 %178, !dbg !1203
  store double %180, ptr %181, align 8, !dbg !1204, !tbaa !174
  %182 = add nuw i64 %165, 4, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %182, metadata !307, metadata !DIExpression()), !dbg !1198
  %183 = add i64 %166, 4, !dbg !1200
  %184 = icmp eq i64 %183, %163, !dbg !1200
  br i1 %184, label %185, label %164, !dbg !1200, !llvm.loop !1206

185:                                              ; preds = %164, %153
  %186 = phi i64 [ 0, %153 ], [ %182, %164 ]
  %187 = icmp eq i64 %160, 0, !dbg !1200
  br i1 %187, label %197, label %188, !dbg !1200

188:                                              ; preds = %188, %185
  %189 = phi i64 [ %194, %188 ], [ %186, %185 ]
  %190 = phi i64 [ %195, %188 ], [ 0, %185 ]
  call void @llvm.dbg.value(metadata i64 %189, metadata !307, metadata !DIExpression()), !dbg !1198
  %191 = uitofp i64 %189 to double, !dbg !1201
  %192 = tail call double @llvm.sqrt.f64(double %191), !dbg !1202
  %193 = getelementptr inbounds double, ptr %156, i64 %189, !dbg !1203
  store double %192, ptr %193, align 8, !dbg !1204, !tbaa !174
  %194 = add nuw i64 %189, 1, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %194, metadata !307, metadata !DIExpression()), !dbg !1198
  %195 = add i64 %190, 1, !dbg !1200
  %196 = icmp eq i64 %195, %160, !dbg !1200
  br i1 %196, label %197, label %188, !dbg !1200, !llvm.loop !1208

197:                                              ; preds = %188, %185
  %198 = fdiv double 1.000000e+00, %155, !dbg !1209
  %199 = fmul double %198, %2, !dbg !1210
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1166, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %2, metadata !1165, metadata !DIExpression()), !dbg !1191
  store double 1.000000e+00, ptr %4, align 8, !dbg !1211, !tbaa !174
  store double 0.000000e+00, ptr %5, align 8, !dbg !1212, !tbaa !174
  %200 = icmp eq i64 %1, 0, !dbg !1213
  br i1 %200, label %332, label %201, !dbg !1215

201:                                              ; preds = %197
  %202 = getelementptr inbounds double, ptr %4, i64 1, !dbg !1216
  store double %2, ptr %202, align 8, !dbg !1217, !tbaa !174
  %203 = fneg double %155, !dbg !1218
  %204 = getelementptr inbounds double, ptr %5, i64 1, !dbg !1219
  store double %203, ptr %204, align 8, !dbg !1220, !tbaa !174
  call void @llvm.dbg.value(metadata i64 1, metadata !1160, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 2, metadata !1158, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1166, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %2, metadata !1165, metadata !DIExpression()), !dbg !1191
  %205 = icmp eq i64 %1, 1, !dbg !1221
  br i1 %205, label %314, label %206, !dbg !1222

206:                                              ; preds = %201
  %207 = tail call i64 @llvm.umax.i64(i64 %7, i64 3), !dbg !1222
  br label %210, !dbg !1222

208:                                              ; preds = %210
  call void @llvm.dbg.value(metadata i64 1, metadata !1159, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double 1.000000e+280, metadata !1164, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double 0x5D48966111CD756, metadata !1163, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 0, metadata !1161, metadata !DIExpression()), !dbg !1191
  %209 = tail call i64 @llvm.umax.i64(i64 %1, i64 2), !dbg !1223
  br label %230, !dbg !1223

210:                                              ; preds = %210, %206
  %211 = phi i64 [ %226, %210 ], [ 2, %206 ]
  %212 = phi double [ %213, %210 ], [ 1.000000e+00, %206 ]
  %213 = phi double [ %handler_result13, %210 ], [ %2, %206 ]
  %214 = phi i64 [ %217, %210 ], [ 1, %206 ]
  call void @llvm.dbg.value(metadata i64 %211, metadata !1158, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %212, metadata !1166, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %213, metadata !1165, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %214, metadata !1160, metadata !DIExpression()), !dbg !1191
  %215 = uitofp i64 %211 to double, !dbg !1225
  %216 = fdiv double 1.000000e+00, %215, !dbg !1226
  call void @llvm.dbg.value(metadata double %216, metadata !1169, metadata !DIExpression()), !dbg !1227
  %217 = add i64 %214, %211, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %217, metadata !1160, metadata !DIExpression()), !dbg !1191
  %handler_result11 = call double @fSubHandlerDouble(double 2.000000e+00, double %216), !dbg !1229
  %218 = fmul double %handler_result11, %2, !dbg !1229
  %219 = fmul double %213, %218, !dbg !1230
  %handler_result12 = call double @fSubHandlerDouble(double 1.000000e+00, double %216), !dbg !1231
  %220 = fmul double %212, %handler_result12, !dbg !1231
  %handler_result13 = call double @fSubHandlerDouble(double %219, double %220), !dbg !1232
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !1162, metadata !DIExpression()), !dbg !1191
  %221 = getelementptr inbounds double, ptr %4, i64 %217, !dbg !1232
  store double %handler_result13, ptr %221, align 8, !dbg !1233, !tbaa !174
  %222 = fmul double %198, %215, !dbg !1234
  %223 = fmul double %handler_result13, %2, !dbg !1235
  %handler_result14 = call double @fSubHandlerDouble(double %223, double %213), !dbg !1236
  %224 = fmul double %222, %handler_result14, !dbg !1236
  %225 = getelementptr inbounds double, ptr %5, i64 %217, !dbg !1237
  store double %224, ptr %225, align 8, !dbg !1238, !tbaa !174
  call void @llvm.dbg.value(metadata double %213, metadata !1166, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !1165, metadata !DIExpression()), !dbg !1191
  %226 = add nuw i64 %211, 1, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %226, metadata !1158, metadata !DIExpression()), !dbg !1191
  %227 = icmp eq i64 %226, %207, !dbg !1221
  br i1 %227, label %208, label %210, !dbg !1222, !llvm.loop !1240

228:                                              ; preds = %270, %230
  call void @llvm.dbg.value(metadata i64 %236, metadata !1159, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %235, metadata !1164, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %245, metadata !1163, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %237, metadata !1161, metadata !DIExpression()), !dbg !1191
  %229 = icmp eq i64 %236, %209, !dbg !1242
  br i1 %229, label %311, label %230, !dbg !1223, !llvm.loop !1244

230:                                              ; preds = %228, %208
  %231 = phi i64 [ %236, %228 ], [ 1, %208 ]
  %232 = phi double [ %235, %228 ], [ 1.000000e+280, %208 ]
  %233 = phi double [ %245, %228 ], [ 0x5D48966111CD756, %208 ]
  %234 = phi i64 [ %237, %228 ], [ 0, %208 ]
  call void @llvm.dbg.value(metadata i64 %231, metadata !1159, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %232, metadata !1164, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %233, metadata !1163, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %234, metadata !1161, metadata !DIExpression()), !dbg !1191
  %235 = fmul double %155, %232, !dbg !1246
  call void @llvm.dbg.value(metadata double %235, metadata !1164, metadata !DIExpression()), !dbg !1191
  %236 = add nuw i64 %231, 1, !dbg !1248
  %237 = add i64 %234, %236, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %237, metadata !1161, metadata !DIExpression()), !dbg !1191
  %238 = shl i64 %231, 1, !dbg !1250
  %239 = getelementptr double, ptr %156, i64 %238, !dbg !1251
  %240 = getelementptr double, ptr %239, i64 -1, !dbg !1251
  %241 = load double, ptr %240, align 8, !dbg !1251, !tbaa !174
  %242 = fmul double %241, %3, !dbg !1252
  %243 = load double, ptr %239, align 8, !dbg !1253, !tbaa !174
  %244 = fdiv double %242, %243, !dbg !1254
  %245 = fmul double %233, %244, !dbg !1255
  call void @llvm.dbg.value(metadata double %245, metadata !1163, metadata !DIExpression()), !dbg !1191
  %246 = fmul double %235, %245, !dbg !1256
  %247 = getelementptr inbounds double, ptr %4, i64 %237, !dbg !1257
  store double %246, ptr %247, align 8, !dbg !1258, !tbaa !174
  %248 = uitofp i64 %231 to double, !dbg !1259
  %249 = fmul double %199, %248, !dbg !1260
  %250 = fmul double %249, %246, !dbg !1261
  %251 = getelementptr inbounds double, ptr %5, i64 %237, !dbg !1262
  store double %250, ptr %251, align 8, !dbg !1263, !tbaa !174
  call void @llvm.dbg.value(metadata double %245, metadata !1166, metadata !DIExpression()), !dbg !1191
  %252 = add i64 %237, %236, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %252, metadata !1160, metadata !DIExpression()), !dbg !1191
  %253 = or disjoint i64 %238, 1, !dbg !1265
  %254 = getelementptr inbounds double, ptr %156, i64 %253, !dbg !1266
  %255 = load double, ptr %254, align 8, !dbg !1266, !tbaa !174
  %256 = fmul double %255, %2, !dbg !1267
  %257 = fmul double %245, %256, !dbg !1268
  call void @llvm.dbg.value(metadata double %257, metadata !1165, metadata !DIExpression()), !dbg !1191
  %258 = fmul double %235, %257, !dbg !1269
  %259 = getelementptr inbounds double, ptr %4, i64 %252, !dbg !1270
  store double %258, ptr %259, align 8, !dbg !1271, !tbaa !174
  %handler_result15 = call double @fAddHandlerDouble(double %248, double 1.000000e+00), !dbg !1272
  %260 = fmul double %handler_result15, %2, !dbg !1272
  %261 = fmul double %260, %258, !dbg !1273
  %262 = load double, ptr %254, align 8, !dbg !1274, !tbaa !174
  %263 = load double, ptr %247, align 8, !dbg !1275, !tbaa !174
  %264 = fmul double %262, %263, !dbg !1276
  %handler_result16 = call double @fSubHandlerDouble(double %261, double %264), !dbg !1277
  %265 = fmul double %198, %handler_result16, !dbg !1277
  %266 = getelementptr inbounds double, ptr %5, i64 %252, !dbg !1278
  store double %265, ptr %266, align 8, !dbg !1279, !tbaa !174
  %267 = add nuw i64 %231, 2, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %267, metadata !1158, metadata !DIExpression()), !dbg !1191
  %268 = getelementptr double, ptr %156, i64 %231, !dbg !1282
  %269 = icmp ugt i64 %267, %1, !dbg !1283
  br i1 %269, label %228, label %270, !dbg !1285

270:                                              ; preds = %270, %230
  %271 = phi i64 [ %309, %270 ], [ %267, %230 ]
  %272 = phi double [ %273, %270 ], [ %245, %230 ]
  %273 = phi double [ %handler_result17, %270 ], [ %257, %230 ]
  %274 = phi i64 [ %275, %270 ], [ %252, %230 ]
  call void @llvm.dbg.value(metadata i64 %271, metadata !1158, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %272, metadata !1166, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %273, metadata !1165, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %274, metadata !1160, metadata !DIExpression()), !dbg !1191
  %275 = add i64 %274, %271, !dbg !1286
  call void @llvm.dbg.value(metadata i64 %275, metadata !1160, metadata !DIExpression()), !dbg !1191
  %276 = shl i64 %271, 1, !dbg !1288
  %277 = add i64 %276, -1, !dbg !1289
  %278 = uitofp i64 %277 to double, !dbg !1290
  %279 = getelementptr double, ptr %268, i64 %271, !dbg !1291
  %280 = load double, ptr %279, align 8, !dbg !1291, !tbaa !174
  %281 = fdiv double %278, %280, !dbg !1292
  %282 = sub i64 %271, %231, !dbg !1293
  %283 = getelementptr inbounds double, ptr %156, i64 %282, !dbg !1294
  %284 = load double, ptr %283, align 8, !dbg !1294, !tbaa !174
  %285 = fdiv double %281, %284, !dbg !1295
  %286 = fmul double %285, %2, !dbg !1296
  %287 = fmul double %273, %286, !dbg !1297
  %288 = getelementptr double, ptr %283, i64 -1, !dbg !1298
  %289 = load double, ptr %288, align 8, !dbg !1298, !tbaa !174
  %290 = getelementptr double, ptr %279, i64 -1, !dbg !1299
  %291 = load double, ptr %290, align 8, !dbg !1299, !tbaa !174
  %292 = fmul double %289, %291, !dbg !1300
  %293 = fdiv double %292, %280, !dbg !1301
  %294 = fdiv double %293, %284, !dbg !1302
  %295 = fmul double %272, %294, !dbg !1303
  %handler_result17 = call double @fSubHandlerDouble(double %287, double %295), !dbg !1304
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !1162, metadata !DIExpression()), !dbg !1191
  %296 = fmul double %235, %handler_result17, !dbg !1304
  %297 = getelementptr inbounds double, ptr %4, i64 %275, !dbg !1305
  store double %296, ptr %297, align 8, !dbg !1306, !tbaa !174
  %298 = uitofp i64 %271 to double, !dbg !1307
  %299 = fmul double %298, %2, !dbg !1308
  %300 = fmul double %299, %296, !dbg !1309
  %301 = load double, ptr %279, align 8, !dbg !1310, !tbaa !174
  %302 = load double, ptr %283, align 8, !dbg !1311, !tbaa !174
  %303 = fmul double %301, %302, !dbg !1312
  %304 = getelementptr inbounds double, ptr %4, i64 %274, !dbg !1313
  %305 = load double, ptr %304, align 8, !dbg !1313, !tbaa !174
  %306 = fmul double %303, %305, !dbg !1314
  %handler_result18 = call double @fSubHandlerDouble(double %300, double %306), !dbg !1315
  %307 = fmul double %198, %handler_result18, !dbg !1315
  %308 = getelementptr inbounds double, ptr %5, i64 %275, !dbg !1316
  store double %307, ptr %308, align 8, !dbg !1317, !tbaa !174
  call void @llvm.dbg.value(metadata double %273, metadata !1166, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !1165, metadata !DIExpression()), !dbg !1191
  %309 = add i64 %271, 1, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %309, metadata !1158, metadata !DIExpression()), !dbg !1191
  %310 = icmp ugt i64 %309, %1, !dbg !1283
  br i1 %310, label %228, label %270, !dbg !1285, !llvm.loop !1319

311:                                              ; preds = %228
  %312 = add i64 %209, 1, !dbg !1321
  %313 = add i64 %312, %237, !dbg !1322
  br label %314, !dbg !1322

314:                                              ; preds = %311, %201
  %315 = phi double [ %245, %311 ], [ 0x5D48966111CD756, %201 ], !dbg !1191
  %316 = phi double [ %235, %311 ], [ 1.000000e+280, %201 ], !dbg !1191
  %317 = phi i64 [ %313, %311 ], [ 2, %201 ], !dbg !1323
  %318 = fmul double %155, %316, !dbg !1322
  call void @llvm.dbg.value(metadata double %318, metadata !1164, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %317, metadata !1161, metadata !DIExpression()), !dbg !1191
  %319 = getelementptr double, ptr %156, i64 %157, !dbg !1324
  %320 = getelementptr double, ptr %319, i64 -1, !dbg !1324
  %321 = load double, ptr %320, align 8, !dbg !1324, !tbaa !174
  %322 = fmul double %321, %3, !dbg !1325
  %323 = load double, ptr %319, align 8, !dbg !1326, !tbaa !174
  %324 = fdiv double %322, %323, !dbg !1327
  %325 = fmul double %315, %324, !dbg !1328
  call void @llvm.dbg.value(metadata double %325, metadata !1163, metadata !DIExpression()), !dbg !1191
  %326 = fmul double %318, %325, !dbg !1329
  %327 = getelementptr inbounds double, ptr %4, i64 %317, !dbg !1330
  store double %326, ptr %327, align 8, !dbg !1331, !tbaa !174
  %328 = uitofp i64 %1 to double, !dbg !1332
  %329 = fmul double %199, %328, !dbg !1333
  %330 = fmul double %329, %326, !dbg !1334
  %331 = getelementptr inbounds double, ptr %5, i64 %317, !dbg !1335
  store double %330, ptr %331, align 8, !dbg !1336, !tbaa !174
  br label %332, !dbg !1337

332:                                              ; preds = %314, %197, %152, %147, %143, %129
  %333 = phi i32 [ 0, %129 ], [ 1, %143 ], [ 1, %147 ], [ 1, %152 ], [ 0, %197 ], [ 0, %314 ], !dbg !978
  tail call void @llvm.dbg.value(metadata i32 %333, metadata !960, metadata !DIExpression()), !dbg !969
  switch i32 %0, label %335 [
    i32 3, label %379
    i32 0, label %379
    i32 1, label %336
    i32 2, label %334
  ], !dbg !1338

334:                                              ; preds = %332
  tail call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCC, metadata !962, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !963, metadata !DIExpression()), !dbg !969
  br label %336, !dbg !1340

335:                                              ; preds = %332
  br label %336, !dbg !1344

336:                                              ; preds = %335, %334, %332
  %337 = phi double [ 0x3FE6A09E667F3BCC, %334 ], [ 0x3FD20DD750429B6D, %332 ], [ 0.000000e+00, %335 ], !dbg !969
  %338 = phi double [ 5.000000e-01, %334 ], [ 0x3FC9884533D43651, %332 ], [ 0.000000e+00, %335 ], !dbg !969
  tail call void @llvm.dbg.value(metadata double %338, metadata !963, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata double %337, metadata !962, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata i64 1, metadata !967, metadata !DIExpression()), !dbg !1345
  %339 = getelementptr inbounds double, ptr %4, i64 %10, !dbg !1344
  tail call void @llvm.dbg.value(metadata ptr %339, metadata !968, metadata !DIExpression()), !dbg !1345
  tail call void @llvm.dbg.value(metadata i64 0, metadata !964, metadata !DIExpression()), !dbg !1345
  %340 = tail call i64 @llvm.umax.i64(i64 %7, i64 1), !dbg !1346
  br label %341, !dbg !1346

341:                                              ; preds = %375, %336
  %342 = phi i64 [ 1, %336 ], [ %377, %375 ]
  %343 = phi i64 [ 1, %336 ], [ %376, %375 ]
  %344 = phi i64 [ 0, %336 ], [ %348, %375 ]
  tail call void @llvm.dbg.value(metadata i64 %343, metadata !967, metadata !DIExpression()), !dbg !1345
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !964, metadata !DIExpression()), !dbg !1345
  %345 = getelementptr inbounds double, ptr %339, i64 %343, !dbg !1348
  %346 = load double, ptr %345, align 8, !dbg !1348, !tbaa !174
  %347 = fmul double %337, %346, !dbg !1351
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !424, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata i64 0, metadata !429, metadata !DIExpression()), !dbg !1352
  %348 = add nuw i64 %344, 1, !dbg !1354
  %349 = mul i64 %348, %344, !dbg !1355
  %350 = lshr i64 %349, 1, !dbg !1356
  %351 = getelementptr inbounds double, ptr %4, i64 %350, !dbg !1357
  %352 = load double, ptr %351, align 8, !dbg !1358, !tbaa !174
  %353 = fmul double %352, %347, !dbg !1358
  store double %353, ptr %351, align 8, !dbg !1358, !tbaa !174
  %354 = load double, ptr %345, align 8, !dbg !1359, !tbaa !174
  %355 = fmul double %337, %354, !dbg !1360
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !424, metadata !DIExpression()), !dbg !1361
  tail call void @llvm.dbg.value(metadata i64 0, metadata !429, metadata !DIExpression()), !dbg !1361
  %356 = getelementptr inbounds double, ptr %5, i64 %350, !dbg !1363
  %357 = load double, ptr %356, align 8, !dbg !1364, !tbaa !174
  %358 = fmul double %357, %355, !dbg !1364
  store double %358, ptr %356, align 8, !dbg !1364, !tbaa !174
  tail call void @llvm.dbg.value(metadata i64 1, metadata !966, metadata !DIExpression()), !dbg !1345
  %359 = icmp eq i64 %344, 0, !dbg !1365
  br i1 %359, label %375, label %360, !dbg !1368

360:                                              ; preds = %360, %341
  %361 = phi i64 [ %373, %360 ], [ 1, %341 ]
  tail call void @llvm.dbg.value(metadata i64 %361, metadata !966, metadata !DIExpression()), !dbg !1345
  %362 = load double, ptr %345, align 8, !dbg !1369, !tbaa !174
  %363 = fmul double %338, %362, !dbg !1371
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !424, metadata !DIExpression()), !dbg !1372
  tail call void @llvm.dbg.value(metadata i64 %361, metadata !429, metadata !DIExpression()), !dbg !1372
  %364 = add i64 %361, %350, !dbg !1374
  %365 = getelementptr inbounds double, ptr %4, i64 %364, !dbg !1375
  %366 = load double, ptr %365, align 8, !dbg !1376, !tbaa !174
  %367 = fmul double %366, %363, !dbg !1376
  store double %367, ptr %365, align 8, !dbg !1376, !tbaa !174
  %368 = load double, ptr %345, align 8, !dbg !1377, !tbaa !174
  %369 = fmul double %338, %368, !dbg !1378
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !424, metadata !DIExpression()), !dbg !1379
  tail call void @llvm.dbg.value(metadata i64 %361, metadata !429, metadata !DIExpression()), !dbg !1379
  %370 = getelementptr inbounds double, ptr %5, i64 %364, !dbg !1381
  %371 = load double, ptr %370, align 8, !dbg !1382, !tbaa !174
  %372 = fmul double %371, %369, !dbg !1382
  store double %372, ptr %370, align 8, !dbg !1382, !tbaa !174
  %373 = add nuw i64 %361, 1, !dbg !1383
  tail call void @llvm.dbg.value(metadata i64 %373, metadata !966, metadata !DIExpression()), !dbg !1345
  %374 = icmp eq i64 %373, %342, !dbg !1365
  br i1 %374, label %375, label %360, !dbg !1368, !llvm.loop !1384

375:                                              ; preds = %360, %341
  %376 = add i64 %343, 2, !dbg !1386
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !967, metadata !DIExpression()), !dbg !1345
  tail call void @llvm.dbg.value(metadata i64 %348, metadata !964, metadata !DIExpression()), !dbg !1345
  %377 = add i64 %342, 1, !dbg !1346
  %378 = icmp eq i64 %348, %340, !dbg !1387
  br i1 %378, label %379, label %341, !dbg !1346, !llvm.loop !1388

379:                                              ; preds = %375, %332, %332, %26, %25, %20, %16
  %380 = phi i32 [ %333, %332 ], [ %333, %332 ], [ 0, %26 ], [ 1, %25 ], [ 1, %20 ], [ 1, %16 ], [ %333, %375 ]
  ret i32 %380, !dbg !1390
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv2_array(i32 noundef %0, i64 noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 !dbg !1391 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1395, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1396, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata double %2, metadata !1397, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1398, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1399, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1400, metadata !DIExpression()), !dbg !1402
  %7 = tail call i32 @gsl_sf_legendre_deriv2_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %5), !dbg !1403, !range !99
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1401, metadata !DIExpression()), !dbg !1402
  ret i32 %7, !dbg !1404
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv2_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 !dbg !1405 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1409, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1410, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata double %2, metadata !1411, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata double %3, metadata !1412, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1413, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1414, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1415, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !1435
  %8 = add i64 %1, 1, !dbg !1437
  %9 = add i64 %1, 2, !dbg !1438
  %10 = mul i64 %8, %9, !dbg !1439
  %11 = lshr i64 %10, 1, !dbg !1440
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1417, metadata !DIExpression()), !dbg !1434
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !1441
  %handler_result1 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !1442
  %12 = fmul double %handler_result, %handler_result1, !dbg !1442
  %13 = tail call double @sqrt(double noundef %12) #5, !dbg !1443
  tail call void @llvm.dbg.value(metadata double %13, metadata !1419, metadata !DIExpression()), !dbg !1434
  %14 = fdiv double 1.000000e+00, %13, !dbg !1444
  tail call void @llvm.dbg.value(metadata double %14, metadata !1420, metadata !DIExpression()), !dbg !1434
  %15 = fmul double %14, %14, !dbg !1445
  tail call void @llvm.dbg.value(metadata double %15, metadata !1421, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1422, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1423, metadata !DIExpression()), !dbg !1434
  %16 = icmp eq i32 %0, 3, !dbg !1446
  %17 = fcmp ogt double %2, 1.000000e+00, !dbg !1448
  %18 = fcmp olt double %2, -1.000000e+00
  %19 = or i1 %17, %18, !dbg !1448
  br i1 %16, label %20, label %178, !dbg !1449

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i64 %1, metadata !1450, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata double %2, metadata !1455, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata double %3, metadata !1456, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %4, metadata !1457, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %5, metadata !1458, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %6, metadata !1459, metadata !DIExpression()), !dbg !1477
  br i1 %19, label %21, label %22, !dbg !1480

21:                                               ; preds = %20
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 1) #5, !dbg !1481
  br label %400, !dbg !1481

22:                                               ; preds = %20
  %23 = tail call double @llvm.fabs.f64(double %2), !dbg !1484
  %24 = fcmp oeq double %23, 1.000000e+00, !dbg !1485
  br i1 %24, label %25, label %26, !dbg !1486

25:                                               ; preds = %22
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 435, i32 noundef 1) #5, !dbg !1487
  br label %400, !dbg !1487

26:                                               ; preds = %22
  %27 = fcmp une double %3, 1.000000e+00, !dbg !1490
  %28 = fcmp une double %3, -1.000000e+00
  %29 = and i1 %27, %28, !dbg !1491
  br i1 %29, label %30, label %31, !dbg !1491

30:                                               ; preds = %26
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 1) #5, !dbg !1492
  br label %400, !dbg !1492

31:                                               ; preds = %26
  %32 = tail call double @sqrt(double noundef %12) #5, !dbg !1495
  call void @llvm.dbg.value(metadata double %32, metadata !1460, metadata !DIExpression()), !dbg !1496
  %33 = fdiv double 1.000000e+00, %32, !dbg !1497
  call void @llvm.dbg.value(metadata double %33, metadata !1465, metadata !DIExpression()), !dbg !1496
  %34 = fdiv double %33, %32, !dbg !1498
  call void @llvm.dbg.value(metadata double %34, metadata !1466, metadata !DIExpression()), !dbg !1496
  %35 = fmul double %33, %2, !dbg !1499
  call void @llvm.dbg.value(metadata double %35, metadata !1467, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1475, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata double %2, metadata !1474, metadata !DIExpression()), !dbg !1496
  store double 1.000000e+00, ptr %4, align 8, !dbg !1500, !tbaa !174
  store double 0.000000e+00, ptr %5, align 8, !dbg !1501, !tbaa !174
  store double 0.000000e+00, ptr %6, align 8, !dbg !1502, !tbaa !174
  %36 = icmp eq i64 %1, 0, !dbg !1503
  br i1 %36, label %400, label %37, !dbg !1505

37:                                               ; preds = %31
  %38 = getelementptr inbounds double, ptr %4, i64 1, !dbg !1506
  store double %2, ptr %38, align 8, !dbg !1507, !tbaa !174
  %39 = fneg double %32, !dbg !1508
  %40 = getelementptr inbounds double, ptr %5, i64 1, !dbg !1509
  store double %39, ptr %40, align 8, !dbg !1510, !tbaa !174
  %41 = fneg double %2, !dbg !1511
  %42 = getelementptr inbounds double, ptr %6, i64 1, !dbg !1512
  store double %41, ptr %42, align 8, !dbg !1513, !tbaa !174
  call void @llvm.dbg.value(metadata i64 1, metadata !1470, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 2, metadata !1468, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1475, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata double %2, metadata !1474, metadata !DIExpression()), !dbg !1496
  %43 = icmp eq i64 %1, 1, !dbg !1514
  br i1 %43, label %49, label %44, !dbg !1517

44:                                               ; preds = %37
  %45 = tail call i64 @llvm.umax.i64(i64 %8, i64 3), !dbg !1517
  br label %51, !dbg !1517

46:                                               ; preds = %51
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !1476, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1473, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 0, metadata !1471, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 1, metadata !1469, metadata !DIExpression()), !dbg !1496
  %47 = fmul double %32, %3
  %48 = fneg double %33
  br label %81, !dbg !1518

49:                                               ; preds = %37
  %50 = fmul double %32, %3, !dbg !1520
  br label %159, !dbg !1518

51:                                               ; preds = %51, %44
  %52 = phi double [ %53, %51 ], [ 1.000000e+00, %44 ]
  %53 = phi double [ %66, %51 ], [ %2, %44 ]
  %54 = phi i64 [ %56, %51 ], [ 1, %44 ]
  %55 = phi i64 [ %77, %51 ], [ 2, %44 ]
  call void @llvm.dbg.value(metadata double %52, metadata !1475, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata double %53, metadata !1474, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 %54, metadata !1470, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 %55, metadata !1468, metadata !DIExpression()), !dbg !1496
  %56 = add i64 %55, %54, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %56, metadata !1470, metadata !DIExpression()), !dbg !1496
  %57 = shl i64 %55, 1, !dbg !1523
  %58 = add i64 %57, -1, !dbg !1524
  %59 = uitofp i64 %58 to double, !dbg !1525
  %60 = fmul double %59, %2, !dbg !1526
  %61 = fmul double %53, %60, !dbg !1527
  %62 = add i64 %55, -1, !dbg !1528
  %63 = uitofp i64 %62 to double, !dbg !1529
  %64 = fmul double %52, %63, !dbg !1530
  %handler_result2 = call double @fSubHandlerDouble(double %61, double %64), !dbg !1531
  %65 = uitofp i64 %55 to double, !dbg !1531
  %66 = fdiv double %handler_result2, %65, !dbg !1532
  call void @llvm.dbg.value(metadata double %66, metadata !1472, metadata !DIExpression()), !dbg !1496
  %67 = getelementptr inbounds double, ptr %4, i64 %56, !dbg !1533
  store double %66, ptr %67, align 8, !dbg !1534, !tbaa !174
  %68 = fneg double %65, !dbg !1535
  %69 = fmul double %66, %2, !dbg !1536
  %handler_result3 = call double @fSubHandlerDouble(double %53, double %69), !dbg !1537
  %70 = fmul double %handler_result3, %68, !dbg !1537
  %71 = fmul double %33, %70, !dbg !1538
  %72 = getelementptr inbounds double, ptr %5, i64 %56, !dbg !1539
  store double %71, ptr %72, align 8, !dbg !1540, !tbaa !174
  %handler_result4 = call double @fAddHandlerDouble(double %65, double 1.000000e+00), !dbg !1541
  %73 = fmul double %handler_result4, %68, !dbg !1541
  %74 = fmul double %73, %66, !dbg !1542
  %75 = fmul double %35, %71, !dbg !1543
  %handler_result5 = call double @fSubHandlerDouble(double %74, double %75), !dbg !1544
  %76 = getelementptr inbounds double, ptr %6, i64 %56, !dbg !1544
  store double %handler_result5, ptr %76, align 8, !dbg !1545, !tbaa !174
  call void @llvm.dbg.value(metadata double %53, metadata !1475, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata double %66, metadata !1474, metadata !DIExpression()), !dbg !1496
  %77 = add nuw i64 %55, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %77, metadata !1468, metadata !DIExpression()), !dbg !1496
  %78 = icmp eq i64 %77, %45, !dbg !1514
  br i1 %78, label %46, label %51, !dbg !1517, !llvm.loop !1547

79:                                               ; preds = %124, %81
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !1476, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata double %89, metadata !1473, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 %87, metadata !1471, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 %86, metadata !1469, metadata !DIExpression()), !dbg !1496
  %80 = icmp eq i64 %86, %1, !dbg !1549
  br i1 %80, label %157, label %81, !dbg !1518, !llvm.loop !1551

81:                                               ; preds = %79, %46
  %82 = phi double [ -1.000000e+00, %46 ], [ %handler_result6, %79 ]
  %83 = phi double [ 1.000000e+00, %46 ], [ %89, %79 ]
  %84 = phi i64 [ 0, %46 ], [ %87, %79 ]
  %85 = phi i64 [ 1, %46 ], [ %86, %79 ]
  call void @llvm.dbg.value(metadata double %82, metadata !1476, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata double %83, metadata !1473, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 %84, metadata !1471, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 %85, metadata !1469, metadata !DIExpression()), !dbg !1496
  %86 = add nuw i64 %85, 1, !dbg !1553
  %87 = add i64 %86, %84, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %87, metadata !1471, metadata !DIExpression()), !dbg !1496
  %handler_result6 = call double @fAddHandlerDouble(double %82, double 2.000000e+00), !dbg !1556
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !1476, metadata !DIExpression()), !dbg !1496
  %88 = fmul double %47, %handler_result6, !dbg !1556
  %89 = fmul double %83, %88, !dbg !1557
  call void @llvm.dbg.value(metadata double %89, metadata !1473, metadata !DIExpression()), !dbg !1496
  %90 = getelementptr inbounds double, ptr %4, i64 %87, !dbg !1558
  store double %89, ptr %90, align 8, !dbg !1559, !tbaa !174
  %91 = uitofp i64 %85 to double, !dbg !1560
  %92 = fmul double %35, %91, !dbg !1561
  %93 = fmul double %89, %92, !dbg !1562
  %94 = getelementptr inbounds double, ptr %5, i64 %87, !dbg !1563
  store double %93, ptr %94, align 8, !dbg !1564, !tbaa !174
  %95 = fmul double %34, %91, !dbg !1565
  %handler_result7 = call double @fAddHandlerDouble(double %91, double 1.000000e+00), !dbg !1566
  %handler_result8 = call double @fSubHandlerDouble(double %95, double %handler_result7), !dbg !1567
  %96 = fmul double %handler_result8, %91, !dbg !1567
  %97 = load double, ptr %90, align 8, !dbg !1568, !tbaa !174
  %98 = fmul double %97, %96, !dbg !1569
  %99 = fmul double %35, %93, !dbg !1570
  %handler_result9 = call double @fSubHandlerDouble(double %98, double %99), !dbg !1571
  %100 = getelementptr inbounds double, ptr %6, i64 %87, !dbg !1571
  store double %handler_result9, ptr %100, align 8, !dbg !1572, !tbaa !174
  call void @llvm.dbg.value(metadata double %89, metadata !1475, metadata !DIExpression()), !dbg !1496
  %101 = add i64 %87, %86, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %101, metadata !1470, metadata !DIExpression()), !dbg !1496
  %102 = fmul double %89, %2, !dbg !1574
  %103 = shl i64 %85, 1, !dbg !1575
  %104 = or disjoint i64 %103, 1, !dbg !1576
  %105 = uitofp i64 %104 to double, !dbg !1577
  %106 = fmul double %102, %105, !dbg !1578
  call void @llvm.dbg.value(metadata double %106, metadata !1474, metadata !DIExpression()), !dbg !1496
  %107 = getelementptr inbounds double, ptr %4, i64 %101, !dbg !1579
  store double %106, ptr %107, align 8, !dbg !1580, !tbaa !174
  %108 = fmul double %89, %105, !dbg !1581
  %109 = uitofp i64 %86 to double, !dbg !1582
  %110 = fmul double %109, %2, !dbg !1583
  %111 = fmul double %110, %106, !dbg !1584
  %handler_result10 = call double @fSubHandlerDouble(double %108, double %111), !dbg !1585
  %112 = fmul double %handler_result10, %48, !dbg !1585
  %113 = getelementptr inbounds double, ptr %5, i64 %101, !dbg !1586
  store double %112, ptr %113, align 8, !dbg !1587, !tbaa !174
  %114 = mul i64 %85, %85, !dbg !1588
  %115 = uitofp i64 %114 to double, !dbg !1589
  %116 = fmul double %34, %115, !dbg !1590
  %handler_result11 = call double @fAddHandlerDouble(double %91, double 2.000000e+00), !dbg !1591
  %117 = fmul double %handler_result7, %handler_result11, !dbg !1591
  %handler_result12 = call double @fSubHandlerDouble(double %116, double %117), !dbg !1592
  %118 = load double, ptr %107, align 8, !dbg !1592, !tbaa !174
  %119 = fmul double %handler_result12, %118, !dbg !1593
  %120 = fmul double %35, %112, !dbg !1594
  %handler_result13 = call double @fSubHandlerDouble(double %119, double %120), !dbg !1595
  %121 = getelementptr inbounds double, ptr %6, i64 %101, !dbg !1595
  store double %handler_result13, ptr %121, align 8, !dbg !1596, !tbaa !174
  %122 = add i64 %85, 2, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %122, metadata !1468, metadata !DIExpression()), !dbg !1496
  %123 = icmp ugt i64 %122, %1, !dbg !1599
  br i1 %123, label %79, label %124, !dbg !1601

124:                                              ; preds = %124, %81
  %125 = phi double [ %126, %124 ], [ %89, %81 ]
  %126 = phi double [ %141, %124 ], [ %106, %81 ]
  %127 = phi i64 [ %129, %124 ], [ %101, %81 ]
  %128 = phi i64 [ %155, %124 ], [ %122, %81 ]
  call void @llvm.dbg.value(metadata double %125, metadata !1475, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata double %126, metadata !1474, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 %127, metadata !1470, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 %128, metadata !1468, metadata !DIExpression()), !dbg !1496
  %129 = add i64 %128, %127, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %129, metadata !1470, metadata !DIExpression()), !dbg !1496
  %130 = shl i64 %128, 1, !dbg !1604
  %131 = add i64 %130, -1, !dbg !1605
  %132 = uitofp i64 %131 to double, !dbg !1606
  %133 = fmul double %132, %2, !dbg !1607
  %134 = fmul double %126, %133, !dbg !1608
  %135 = add i64 %128, %85, !dbg !1609
  %136 = add i64 %135, -1, !dbg !1610
  %137 = uitofp i64 %136 to double, !dbg !1611
  %138 = fmul double %125, %137, !dbg !1612
  %handler_result14 = call double @fSubHandlerDouble(double %134, double %138), !dbg !1613
  %139 = sub i64 %128, %85, !dbg !1613
  %140 = uitofp i64 %139 to double, !dbg !1614
  %141 = fdiv double %handler_result14, %140, !dbg !1615
  call void @llvm.dbg.value(metadata double %141, metadata !1472, metadata !DIExpression()), !dbg !1496
  %142 = getelementptr inbounds double, ptr %4, i64 %129, !dbg !1616
  store double %141, ptr %142, align 8, !dbg !1617, !tbaa !174
  %143 = uitofp i64 %135 to double, !dbg !1618
  %144 = fmul double %126, %143, !dbg !1619
  %145 = uitofp i64 %128 to double, !dbg !1620
  %146 = fmul double %145, %2, !dbg !1621
  %147 = fmul double %146, %141, !dbg !1622
  %handler_result15 = call double @fSubHandlerDouble(double %144, double %147), !dbg !1623
  %148 = fmul double %handler_result15, %48, !dbg !1623
  %149 = getelementptr inbounds double, ptr %5, i64 %129, !dbg !1624
  store double %148, ptr %149, align 8, !dbg !1625, !tbaa !174
  %handler_result16 = call double @fAddHandlerDouble(double %145, double 1.000000e+00), !dbg !1626
  %150 = fmul double %handler_result16, %145, !dbg !1626
  %handler_result17 = call double @fSubHandlerDouble(double %116, double %150), !dbg !1627
  %151 = load double, ptr %142, align 8, !dbg !1627, !tbaa !174
  %152 = fmul double %151, %handler_result17, !dbg !1628
  %153 = fmul double %35, %148, !dbg !1629
  %handler_result18 = call double @fSubHandlerDouble(double %152, double %153), !dbg !1630
  %154 = getelementptr inbounds double, ptr %6, i64 %129, !dbg !1630
  store double %handler_result18, ptr %154, align 8, !dbg !1631, !tbaa !174
  call void @llvm.dbg.value(metadata double %126, metadata !1475, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata double %141, metadata !1474, metadata !DIExpression()), !dbg !1496
  %155 = add i64 %128, 1, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %155, metadata !1468, metadata !DIExpression()), !dbg !1496
  %156 = icmp ugt i64 %155, %1, !dbg !1599
  br i1 %156, label %79, label %124, !dbg !1601, !llvm.loop !1633

157:                                              ; preds = %79
  %158 = add i64 %87, %8, !dbg !1635
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result6, double 2.000000e+00), !dbg !1635
  br label %159, !dbg !1635

159:                                              ; preds = %157, %49
  %160 = phi double [ %50, %49 ], [ %47, %157 ], !dbg !1520
  %161 = phi double [ 1.000000e+00, %49 ], [ %89, %157 ], !dbg !1496
  %162 = phi double [ 1.000000e+00, %49 ], [ %handler_result19, %157 ], !dbg !1496
  %163 = phi i64 [ 2, %49 ], [ %158, %157 ], !dbg !1636
  call void @llvm.dbg.value(metadata i64 %163, metadata !1471, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata double %162, metadata !1476, metadata !DIExpression()), !dbg !1496
  %164 = fmul double %160, %162, !dbg !1637
  %165 = fmul double %161, %164, !dbg !1638
  call void @llvm.dbg.value(metadata double %165, metadata !1473, metadata !DIExpression()), !dbg !1496
  %166 = getelementptr inbounds double, ptr %4, i64 %163, !dbg !1639
  store double %165, ptr %166, align 8, !dbg !1640, !tbaa !174
  %167 = uitofp i64 %1 to double, !dbg !1641
  %168 = fmul double %167, %2, !dbg !1642
  %169 = fmul double %168, %165, !dbg !1643
  %170 = fmul double %33, %169, !dbg !1644
  %171 = getelementptr inbounds double, ptr %5, i64 %163, !dbg !1645
  store double %170, ptr %171, align 8, !dbg !1646, !tbaa !174
  %172 = fmul double %34, %167, !dbg !1647
  %handler_result20 = call double @fAddHandlerDouble(double %167, double 1.000000e+00), !dbg !1648
  %handler_result21 = call double @fSubHandlerDouble(double %172, double %handler_result20), !dbg !1649
  %173 = fmul double %handler_result21, %167, !dbg !1649
  %174 = load double, ptr %166, align 8, !dbg !1650, !tbaa !174
  %175 = fmul double %173, %174, !dbg !1651
  %176 = fmul double %35, %170, !dbg !1652
  %handler_result22 = call double @fSubHandlerDouble(double %175, double %176), !dbg !1653
  %177 = getelementptr inbounds double, ptr %6, i64 %163, !dbg !1653
  store double %handler_result22, ptr %177, align 8, !dbg !1654, !tbaa !174
  br label %400, !dbg !1655

178:                                              ; preds = %7
  call void @llvm.dbg.value(metadata i64 %1, metadata !1656, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata double %2, metadata !1659, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata double %3, metadata !1660, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata ptr %4, metadata !1661, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata ptr %5, metadata !1662, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata ptr %6, metadata !1663, metadata !DIExpression()), !dbg !1688
  br i1 %19, label %179, label %180, !dbg !1691

179:                                              ; preds = %178
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 222, i32 noundef 1) #5, !dbg !1692
  br label %400, !dbg !1692

180:                                              ; preds = %178
  %181 = tail call double @llvm.fabs.f64(double %2), !dbg !1695
  %182 = fcmp oeq double %181, 1.000000e+00, !dbg !1696
  br i1 %182, label %183, label %184, !dbg !1697

183:                                              ; preds = %180
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 227, i32 noundef 1) #5, !dbg !1698
  br label %400, !dbg !1698

184:                                              ; preds = %180
  %185 = fcmp une double %3, 1.000000e+00, !dbg !1701
  %186 = fcmp une double %3, -1.000000e+00
  %187 = and i1 %185, %186, !dbg !1702
  br i1 %187, label %188, label %189, !dbg !1702

188:                                              ; preds = %184
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 232, i32 noundef 1) #5, !dbg !1703
  br label %400, !dbg !1703

189:                                              ; preds = %184
  call void @llvm.dbg.value(metadata double 0x5CD0B15A491EB84, metadata !1664, metadata !DIExpression()), !dbg !1706
  %190 = tail call double @sqrt(double noundef %12) #5, !dbg !1707
  call void @llvm.dbg.value(metadata double %190, metadata !1669, metadata !DIExpression()), !dbg !1706
  %191 = fdiv double 1.000000e+00, %190, !dbg !1708
  call void @llvm.dbg.value(metadata double %191, metadata !1670, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double %234, metadata !1671, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double %235, metadata !1672, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %11, metadata !1682, metadata !DIExpression()), !dbg !1706
  %192 = getelementptr inbounds double, ptr %4, i64 %11, !dbg !1711
  call void @llvm.dbg.value(metadata ptr %192, metadata !1683, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %1, metadata !301, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata ptr %192, metadata !306, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i64 0, metadata !307, metadata !DIExpression()), !dbg !1712
  %193 = shl i64 %1, 1
  %194 = add i64 %193, 2, !dbg !1714
  %195 = tail call i64 @llvm.umax.i64(i64 %194, i64 1), !dbg !1714
  %196 = and i64 %195, 3, !dbg !1714
  %197 = icmp ult i64 %194, 4, !dbg !1714
  br i1 %197, label %221, label %198, !dbg !1714

198:                                              ; preds = %189
  %199 = and i64 %195, -4, !dbg !1714
  br label %200, !dbg !1714

200:                                              ; preds = %200, %198
  %201 = phi i64 [ 0, %198 ], [ %218, %200 ]
  %202 = phi i64 [ 0, %198 ], [ %219, %200 ]
  call void @llvm.dbg.value(metadata i64 %201, metadata !307, metadata !DIExpression()), !dbg !1712
  %203 = uitofp i64 %201 to double, !dbg !1715
  %204 = tail call double @llvm.sqrt.f64(double %203), !dbg !1716
  %205 = getelementptr inbounds double, ptr %192, i64 %201, !dbg !1717
  store double %204, ptr %205, align 8, !dbg !1718, !tbaa !174
  %206 = or disjoint i64 %201, 1, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %206, metadata !307, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i64 %206, metadata !307, metadata !DIExpression()), !dbg !1712
  %207 = uitofp i64 %206 to double, !dbg !1715
  %208 = tail call double @llvm.sqrt.f64(double %207), !dbg !1716
  %209 = getelementptr inbounds double, ptr %192, i64 %206, !dbg !1717
  store double %208, ptr %209, align 8, !dbg !1718, !tbaa !174
  %210 = or disjoint i64 %201, 2, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %210, metadata !307, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i64 %210, metadata !307, metadata !DIExpression()), !dbg !1712
  %211 = uitofp i64 %210 to double, !dbg !1715
  %212 = tail call double @llvm.sqrt.f64(double %211), !dbg !1716
  %213 = getelementptr inbounds double, ptr %192, i64 %210, !dbg !1717
  store double %212, ptr %213, align 8, !dbg !1718, !tbaa !174
  %214 = or disjoint i64 %201, 3, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %214, metadata !307, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i64 %214, metadata !307, metadata !DIExpression()), !dbg !1712
  %215 = uitofp i64 %214 to double, !dbg !1715
  %216 = tail call double @llvm.sqrt.f64(double %215), !dbg !1716
  %217 = getelementptr inbounds double, ptr %192, i64 %214, !dbg !1717
  store double %216, ptr %217, align 8, !dbg !1718, !tbaa !174
  %218 = add nuw i64 %201, 4, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %218, metadata !307, metadata !DIExpression()), !dbg !1712
  %219 = add i64 %202, 4, !dbg !1714
  %220 = icmp eq i64 %219, %199, !dbg !1714
  br i1 %220, label %221, label %200, !dbg !1714, !llvm.loop !1720

221:                                              ; preds = %200, %189
  %222 = phi i64 [ 0, %189 ], [ %218, %200 ]
  %223 = icmp eq i64 %196, 0, !dbg !1714
  br i1 %223, label %233, label %224, !dbg !1714

224:                                              ; preds = %224, %221
  %225 = phi i64 [ %230, %224 ], [ %222, %221 ]
  %226 = phi i64 [ %231, %224 ], [ 0, %221 ]
  call void @llvm.dbg.value(metadata i64 %225, metadata !307, metadata !DIExpression()), !dbg !1712
  %227 = uitofp i64 %225 to double, !dbg !1715
  %228 = tail call double @llvm.sqrt.f64(double %227), !dbg !1716
  %229 = getelementptr inbounds double, ptr %192, i64 %225, !dbg !1717
  store double %228, ptr %229, align 8, !dbg !1718, !tbaa !174
  %230 = add nuw i64 %225, 1, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %230, metadata !307, metadata !DIExpression()), !dbg !1712
  %231 = add i64 %226, 1, !dbg !1714
  %232 = icmp eq i64 %231, %196, !dbg !1714
  br i1 %232, label %233, label %224, !dbg !1714, !llvm.loop !1722

233:                                              ; preds = %224, %221
  %234 = fdiv double %191, %190, !dbg !1723
  %235 = fmul double %191, %2, !dbg !1724
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1681, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double %2, metadata !1680, metadata !DIExpression()), !dbg !1706
  store double 1.000000e+00, ptr %4, align 8, !dbg !1725, !tbaa !174
  store double 0.000000e+00, ptr %5, align 8, !dbg !1726, !tbaa !174
  store double 0.000000e+00, ptr %6, align 8, !dbg !1727, !tbaa !174
  %236 = icmp eq i64 %1, 0, !dbg !1728
  br i1 %236, label %400, label %237, !dbg !1730

237:                                              ; preds = %233
  %238 = getelementptr inbounds double, ptr %4, i64 1, !dbg !1731
  store double %2, ptr %238, align 8, !dbg !1732, !tbaa !174
  %239 = fneg double %190, !dbg !1733
  %240 = getelementptr inbounds double, ptr %5, i64 1, !dbg !1734
  store double %239, ptr %240, align 8, !dbg !1735, !tbaa !174
  %241 = fneg double %2, !dbg !1736
  %242 = getelementptr inbounds double, ptr %6, i64 1, !dbg !1737
  store double %241, ptr %242, align 8, !dbg !1738, !tbaa !174
  call void @llvm.dbg.value(metadata i64 1, metadata !1675, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 2, metadata !1673, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1681, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double %2, metadata !1680, metadata !DIExpression()), !dbg !1706
  %243 = icmp eq i64 %1, 1, !dbg !1739
  br i1 %243, label %376, label %244, !dbg !1740

244:                                              ; preds = %237
  %245 = tail call i64 @llvm.umax.i64(i64 %8, i64 3), !dbg !1740
  br label %248, !dbg !1740

246:                                              ; preds = %248
  call void @llvm.dbg.value(metadata i64 1, metadata !1674, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double 1.000000e+280, metadata !1679, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double 0x5D48966111CD756, metadata !1678, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 0, metadata !1676, metadata !DIExpression()), !dbg !1706
  %247 = tail call i64 @llvm.umax.i64(i64 %1, i64 2), !dbg !1741
  br label %273, !dbg !1741

248:                                              ; preds = %248, %244
  %249 = phi i64 [ %269, %248 ], [ 2, %244 ]
  %250 = phi double [ %251, %248 ], [ 1.000000e+00, %244 ]
  %251 = phi double [ %handler_result25, %248 ], [ %2, %244 ]
  %252 = phi i64 [ %255, %248 ], [ 1, %244 ]
  call void @llvm.dbg.value(metadata i64 %249, metadata !1673, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double %250, metadata !1681, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double %251, metadata !1680, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %252, metadata !1675, metadata !DIExpression()), !dbg !1706
  %253 = uitofp i64 %249 to double, !dbg !1743
  %254 = fdiv double 1.000000e+00, %253, !dbg !1744
  call void @llvm.dbg.value(metadata double %254, metadata !1684, metadata !DIExpression()), !dbg !1745
  %255 = add i64 %252, %249, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %255, metadata !1675, metadata !DIExpression()), !dbg !1706
  %handler_result23 = call double @fSubHandlerDouble(double 2.000000e+00, double %254), !dbg !1747
  %256 = fmul double %handler_result23, %2, !dbg !1747
  %257 = fmul double %251, %256, !dbg !1748
  %handler_result24 = call double @fSubHandlerDouble(double 1.000000e+00, double %254), !dbg !1749
  %258 = fmul double %250, %handler_result24, !dbg !1749
  %handler_result25 = call double @fSubHandlerDouble(double %257, double %258), !dbg !1750
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !1677, metadata !DIExpression()), !dbg !1706
  %259 = getelementptr inbounds double, ptr %4, i64 %255, !dbg !1750
  store double %handler_result25, ptr %259, align 8, !dbg !1751, !tbaa !174
  %260 = fmul double %191, %253, !dbg !1752
  %261 = fmul double %handler_result25, %2, !dbg !1753
  %handler_result26 = call double @fSubHandlerDouble(double %261, double %251), !dbg !1754
  %262 = fmul double %260, %handler_result26, !dbg !1754
  %263 = getelementptr inbounds double, ptr %5, i64 %255, !dbg !1755
  store double %262, ptr %263, align 8, !dbg !1756, !tbaa !174
  %264 = fneg double %253, !dbg !1757
  %handler_result27 = call double @fAddHandlerDouble(double %253, double 1.000000e+00), !dbg !1758
  %265 = fmul double %handler_result27, %264, !dbg !1758
  %266 = fmul double %265, %handler_result25, !dbg !1759
  %267 = fmul double %235, %262, !dbg !1760
  %handler_result28 = call double @fSubHandlerDouble(double %266, double %267), !dbg !1761
  %268 = getelementptr inbounds double, ptr %6, i64 %255, !dbg !1761
  store double %handler_result28, ptr %268, align 8, !dbg !1762, !tbaa !174
  call void @llvm.dbg.value(metadata double %251, metadata !1681, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !1680, metadata !DIExpression()), !dbg !1706
  %269 = add nuw i64 %249, 1, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %269, metadata !1673, metadata !DIExpression()), !dbg !1706
  %270 = icmp eq i64 %269, %245, !dbg !1739
  br i1 %270, label %246, label %248, !dbg !1740, !llvm.loop !1764

271:                                              ; preds = %327, %273
  call void @llvm.dbg.value(metadata i64 %279, metadata !1674, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double %278, metadata !1679, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double %288, metadata !1678, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %280, metadata !1676, metadata !DIExpression()), !dbg !1706
  %272 = icmp eq i64 %279, %247, !dbg !1766
  br i1 %272, label %373, label %273, !dbg !1741, !llvm.loop !1768

273:                                              ; preds = %271, %246
  %274 = phi i64 [ %279, %271 ], [ 1, %246 ]
  %275 = phi double [ %278, %271 ], [ 1.000000e+280, %246 ]
  %276 = phi double [ %288, %271 ], [ 0x5D48966111CD756, %246 ]
  %277 = phi i64 [ %280, %271 ], [ 0, %246 ]
  call void @llvm.dbg.value(metadata i64 %274, metadata !1674, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double %275, metadata !1679, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double %276, metadata !1678, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %277, metadata !1676, metadata !DIExpression()), !dbg !1706
  %278 = fmul double %190, %275, !dbg !1770
  call void @llvm.dbg.value(metadata double %278, metadata !1679, metadata !DIExpression()), !dbg !1706
  %279 = add nuw i64 %274, 1, !dbg !1772
  %280 = add i64 %277, %279, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %280, metadata !1676, metadata !DIExpression()), !dbg !1706
  %281 = shl i64 %274, 1, !dbg !1774
  %282 = getelementptr double, ptr %192, i64 %281, !dbg !1775
  %283 = getelementptr double, ptr %282, i64 -1, !dbg !1775
  %284 = load double, ptr %283, align 8, !dbg !1775, !tbaa !174
  %285 = fmul double %284, %3, !dbg !1776
  %286 = load double, ptr %282, align 8, !dbg !1777, !tbaa !174
  %287 = fdiv double %285, %286, !dbg !1778
  %288 = fmul double %276, %287, !dbg !1779
  call void @llvm.dbg.value(metadata double %288, metadata !1678, metadata !DIExpression()), !dbg !1706
  %289 = fmul double %278, %288, !dbg !1780
  %290 = getelementptr inbounds double, ptr %4, i64 %280, !dbg !1781
  store double %289, ptr %290, align 8, !dbg !1782, !tbaa !174
  %291 = uitofp i64 %274 to double, !dbg !1783
  %292 = fmul double %235, %291, !dbg !1784
  %293 = fmul double %292, %289, !dbg !1785
  %294 = getelementptr inbounds double, ptr %5, i64 %280, !dbg !1786
  store double %293, ptr %294, align 8, !dbg !1787, !tbaa !174
  %295 = fmul double %234, %291, !dbg !1788
  %handler_result29 = call double @fAddHandlerDouble(double %291, double 1.000000e+00), !dbg !1789
  %handler_result30 = call double @fSubHandlerDouble(double %295, double %handler_result29), !dbg !1790
  %296 = fmul double %handler_result30, %291, !dbg !1790
  %297 = load double, ptr %290, align 8, !dbg !1791, !tbaa !174
  %298 = fmul double %296, %297, !dbg !1792
  %299 = fmul double %235, %293, !dbg !1793
  %handler_result31 = call double @fSubHandlerDouble(double %298, double %299), !dbg !1794
  %300 = getelementptr inbounds double, ptr %6, i64 %280, !dbg !1794
  store double %handler_result31, ptr %300, align 8, !dbg !1795, !tbaa !174
  call void @llvm.dbg.value(metadata double %288, metadata !1681, metadata !DIExpression()), !dbg !1706
  %301 = add i64 %280, %279, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %301, metadata !1675, metadata !DIExpression()), !dbg !1706
  %302 = or disjoint i64 %281, 1, !dbg !1797
  %303 = getelementptr inbounds double, ptr %192, i64 %302, !dbg !1798
  %304 = load double, ptr %303, align 8, !dbg !1798, !tbaa !174
  %305 = fmul double %304, %2, !dbg !1799
  %306 = fmul double %288, %305, !dbg !1800
  call void @llvm.dbg.value(metadata double %306, metadata !1680, metadata !DIExpression()), !dbg !1706
  %307 = fmul double %278, %306, !dbg !1801
  %308 = getelementptr inbounds double, ptr %4, i64 %301, !dbg !1802
  store double %307, ptr %308, align 8, !dbg !1803, !tbaa !174
  %309 = fmul double %handler_result29, %2, !dbg !1804
  %310 = fmul double %309, %307, !dbg !1805
  %311 = load double, ptr %303, align 8, !dbg !1806, !tbaa !174
  %312 = load double, ptr %290, align 8, !dbg !1807, !tbaa !174
  %313 = fmul double %311, %312, !dbg !1808
  %handler_result32 = call double @fSubHandlerDouble(double %310, double %313), !dbg !1809
  %314 = fmul double %191, %handler_result32, !dbg !1809
  %315 = getelementptr inbounds double, ptr %5, i64 %301, !dbg !1810
  store double %314, ptr %315, align 8, !dbg !1811, !tbaa !174
  %316 = mul i64 %274, %274, !dbg !1812
  %317 = uitofp i64 %316 to double, !dbg !1813
  %318 = fmul double %234, %317, !dbg !1814
  %handler_result33 = call double @fAddHandlerDouble(double %291, double 2.000000e+00), !dbg !1815
  %319 = fmul double %handler_result29, %handler_result33, !dbg !1815
  %handler_result34 = call double @fSubHandlerDouble(double %318, double %319), !dbg !1816
  %320 = load double, ptr %308, align 8, !dbg !1816, !tbaa !174
  %321 = fmul double %handler_result34, %320, !dbg !1817
  %322 = fmul double %235, %314, !dbg !1818
  %handler_result35 = call double @fSubHandlerDouble(double %321, double %322), !dbg !1819
  %323 = getelementptr inbounds double, ptr %6, i64 %301, !dbg !1819
  store double %handler_result35, ptr %323, align 8, !dbg !1820, !tbaa !174
  %324 = add nuw i64 %274, 2, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %324, metadata !1673, metadata !DIExpression()), !dbg !1706
  %325 = getelementptr double, ptr %192, i64 %274, !dbg !1823
  %326 = icmp ugt i64 %324, %1, !dbg !1824
  br i1 %326, label %271, label %327, !dbg !1826

327:                                              ; preds = %327, %273
  %328 = phi i64 [ %371, %327 ], [ %324, %273 ]
  %329 = phi double [ %330, %327 ], [ %288, %273 ]
  %330 = phi double [ %handler_result36, %327 ], [ %306, %273 ]
  %331 = phi i64 [ %332, %327 ], [ %301, %273 ]
  call void @llvm.dbg.value(metadata i64 %328, metadata !1673, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double %329, metadata !1681, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double %330, metadata !1680, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %331, metadata !1675, metadata !DIExpression()), !dbg !1706
  %332 = add i64 %331, %328, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %332, metadata !1675, metadata !DIExpression()), !dbg !1706
  %333 = shl i64 %328, 1, !dbg !1829
  %334 = add i64 %333, -1, !dbg !1830
  %335 = uitofp i64 %334 to double, !dbg !1831
  %336 = getelementptr double, ptr %325, i64 %328, !dbg !1832
  %337 = load double, ptr %336, align 8, !dbg !1832, !tbaa !174
  %338 = fdiv double %335, %337, !dbg !1833
  %339 = sub i64 %328, %274, !dbg !1834
  %340 = getelementptr inbounds double, ptr %192, i64 %339, !dbg !1835
  %341 = load double, ptr %340, align 8, !dbg !1835, !tbaa !174
  %342 = fdiv double %338, %341, !dbg !1836
  %343 = fmul double %342, %2, !dbg !1837
  %344 = fmul double %330, %343, !dbg !1838
  %345 = getelementptr double, ptr %340, i64 -1, !dbg !1839
  %346 = load double, ptr %345, align 8, !dbg !1839, !tbaa !174
  %347 = getelementptr double, ptr %336, i64 -1, !dbg !1840
  %348 = load double, ptr %347, align 8, !dbg !1840, !tbaa !174
  %349 = fmul double %346, %348, !dbg !1841
  %350 = fdiv double %349, %337, !dbg !1842
  %351 = fdiv double %350, %341, !dbg !1843
  %352 = fmul double %329, %351, !dbg !1844
  %handler_result36 = call double @fSubHandlerDouble(double %344, double %352), !dbg !1845
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !1677, metadata !DIExpression()), !dbg !1706
  %353 = fmul double %278, %handler_result36, !dbg !1845
  %354 = getelementptr inbounds double, ptr %4, i64 %332, !dbg !1846
  store double %353, ptr %354, align 8, !dbg !1847, !tbaa !174
  %355 = uitofp i64 %328 to double, !dbg !1848
  %356 = fmul double %355, %2, !dbg !1849
  %357 = fmul double %356, %353, !dbg !1850
  %358 = load double, ptr %336, align 8, !dbg !1851, !tbaa !174
  %359 = load double, ptr %340, align 8, !dbg !1852, !tbaa !174
  %360 = fmul double %358, %359, !dbg !1853
  %361 = getelementptr inbounds double, ptr %4, i64 %331, !dbg !1854
  %362 = load double, ptr %361, align 8, !dbg !1854, !tbaa !174
  %363 = fmul double %360, %362, !dbg !1855
  %handler_result37 = call double @fSubHandlerDouble(double %357, double %363), !dbg !1856
  %364 = fmul double %191, %handler_result37, !dbg !1856
  %365 = getelementptr inbounds double, ptr %5, i64 %332, !dbg !1857
  store double %364, ptr %365, align 8, !dbg !1858, !tbaa !174
  %handler_result38 = call double @fAddHandlerDouble(double %355, double 1.000000e+00), !dbg !1859
  %366 = fmul double %handler_result38, %355, !dbg !1859
  %handler_result39 = call double @fSubHandlerDouble(double %318, double %366), !dbg !1860
  %367 = load double, ptr %354, align 8, !dbg !1860, !tbaa !174
  %368 = fmul double %handler_result39, %367, !dbg !1861
  %369 = fmul double %235, %364, !dbg !1862
  %handler_result40 = call double @fSubHandlerDouble(double %368, double %369), !dbg !1863
  %370 = getelementptr inbounds double, ptr %6, i64 %332, !dbg !1863
  store double %handler_result40, ptr %370, align 8, !dbg !1864, !tbaa !174
  call void @llvm.dbg.value(metadata double %330, metadata !1681, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !1680, metadata !DIExpression()), !dbg !1706
  %371 = add i64 %328, 1, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %371, metadata !1673, metadata !DIExpression()), !dbg !1706
  %372 = icmp ugt i64 %371, %1, !dbg !1824
  br i1 %372, label %271, label %327, !dbg !1826, !llvm.loop !1866

373:                                              ; preds = %271
  %374 = add i64 %247, 1, !dbg !1868
  %375 = add i64 %374, %280, !dbg !1869
  br label %376, !dbg !1869

376:                                              ; preds = %373, %237
  %377 = phi double [ %288, %373 ], [ 0x5D48966111CD756, %237 ], !dbg !1706
  %378 = phi double [ %278, %373 ], [ 1.000000e+280, %237 ], !dbg !1706
  %379 = phi i64 [ %375, %373 ], [ 2, %237 ], !dbg !1870
  %380 = fmul double %190, %378, !dbg !1869
  call void @llvm.dbg.value(metadata double %380, metadata !1679, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %379, metadata !1676, metadata !DIExpression()), !dbg !1706
  %381 = getelementptr double, ptr %192, i64 %193, !dbg !1871
  %382 = getelementptr double, ptr %381, i64 -1, !dbg !1871
  %383 = load double, ptr %382, align 8, !dbg !1871, !tbaa !174
  %384 = fmul double %383, %3, !dbg !1872
  %385 = load double, ptr %381, align 8, !dbg !1873, !tbaa !174
  %386 = fdiv double %384, %385, !dbg !1874
  %387 = fmul double %377, %386, !dbg !1875
  call void @llvm.dbg.value(metadata double %387, metadata !1678, metadata !DIExpression()), !dbg !1706
  %388 = fmul double %380, %387, !dbg !1876
  %389 = getelementptr inbounds double, ptr %4, i64 %379, !dbg !1877
  store double %388, ptr %389, align 8, !dbg !1878, !tbaa !174
  %390 = uitofp i64 %1 to double, !dbg !1879
  %391 = fmul double %235, %390, !dbg !1880
  %392 = fmul double %391, %388, !dbg !1881
  %393 = getelementptr inbounds double, ptr %5, i64 %379, !dbg !1882
  store double %392, ptr %393, align 8, !dbg !1883, !tbaa !174
  %394 = fmul double %234, %390, !dbg !1884
  %handler_result41 = call double @fAddHandlerDouble(double %390, double 1.000000e+00), !dbg !1885
  %handler_result42 = call double @fSubHandlerDouble(double %394, double %handler_result41), !dbg !1886
  %395 = fmul double %handler_result42, %390, !dbg !1886
  %396 = load double, ptr %389, align 8, !dbg !1887, !tbaa !174
  %397 = fmul double %395, %396, !dbg !1888
  %398 = fmul double %235, %392, !dbg !1889
  %handler_result43 = call double @fSubHandlerDouble(double %397, double %398), !dbg !1890
  %399 = getelementptr inbounds double, ptr %6, i64 %379, !dbg !1890
  store double %handler_result43, ptr %399, align 8, !dbg !1891, !tbaa !174
  br label %400, !dbg !1892

400:                                              ; preds = %376, %233, %188, %183, %179, %159, %31, %30, %25, %21
  %401 = phi i32 [ 1, %21 ], [ 1, %25 ], [ 1, %30 ], [ 0, %31 ], [ 0, %159 ], [ 1, %179 ], [ 1, %183 ], [ 1, %188 ], [ 0, %233 ], [ 0, %376 ], !dbg !1448
  tail call void @llvm.dbg.value(metadata i32 %401, metadata !1416, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1418, metadata !DIExpression()), !dbg !1434
  %402 = icmp ult i64 %10, 2, !dbg !1893
  br i1 %402, label %446, label %403, !dbg !1894

403:                                              ; preds = %400
  %404 = fmul double %14, %2
  %405 = fneg double %14
  %406 = tail call i64 @llvm.umax.i64(i64 %11, i64 1), !dbg !1894
  %407 = and i64 %406, 1, !dbg !1894
  %408 = icmp ult i64 %10, 4, !dbg !1894
  br i1 %408, label %434, label %409, !dbg !1894

409:                                              ; preds = %403
  %410 = and i64 %406, 9223372036854775806, !dbg !1894
  br label %411, !dbg !1894

411:                                              ; preds = %411, %409
  %412 = phi i64 [ 0, %409 ], [ %431, %411 ]
  %413 = phi i64 [ 0, %409 ], [ %432, %411 ]
  tail call void @llvm.dbg.value(metadata i64 %412, metadata !1418, metadata !DIExpression()), !dbg !1434
  %414 = getelementptr inbounds double, ptr %5, i64 %412, !dbg !1895
  %415 = load double, ptr %414, align 8, !dbg !1895, !tbaa !174
  tail call void @llvm.dbg.value(metadata double %415, metadata !1424, metadata !DIExpression()), !dbg !1896
  %416 = getelementptr inbounds double, ptr %6, i64 %412, !dbg !1897
  %417 = load double, ptr %416, align 8, !dbg !1897, !tbaa !174
  tail call void @llvm.dbg.value(metadata double %417, metadata !1428, metadata !DIExpression()), !dbg !1896
  %418 = fmul double %404, %415, !dbg !1898
  %handler_result44 = call double @fSubHandlerDouble(double %417, double %418), !dbg !1899
  %419 = fmul double %15, %handler_result44, !dbg !1899
  store double %419, ptr %416, align 8, !dbg !1900, !tbaa !174
  %420 = load double, ptr %414, align 8, !dbg !1901, !tbaa !174
  %421 = fmul double %420, %405, !dbg !1901
  store double %421, ptr %414, align 8, !dbg !1901, !tbaa !174
  %422 = or disjoint i64 %412, 1, !dbg !1902
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1418, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1418, metadata !DIExpression()), !dbg !1434
  %423 = getelementptr inbounds double, ptr %5, i64 %422, !dbg !1895
  %424 = load double, ptr %423, align 8, !dbg !1895, !tbaa !174
  tail call void @llvm.dbg.value(metadata double %424, metadata !1424, metadata !DIExpression()), !dbg !1896
  %425 = getelementptr inbounds double, ptr %6, i64 %422, !dbg !1897
  %426 = load double, ptr %425, align 8, !dbg !1897, !tbaa !174
  tail call void @llvm.dbg.value(metadata double %426, metadata !1428, metadata !DIExpression()), !dbg !1896
  %427 = fmul double %404, %424, !dbg !1898
  %handler_result45 = call double @fSubHandlerDouble(double %426, double %427), !dbg !1899
  %428 = fmul double %15, %handler_result45, !dbg !1899
  store double %428, ptr %425, align 8, !dbg !1900, !tbaa !174
  %429 = load double, ptr %423, align 8, !dbg !1901, !tbaa !174
  %430 = fmul double %429, %405, !dbg !1901
  store double %430, ptr %423, align 8, !dbg !1901, !tbaa !174
  %431 = add nuw nsw i64 %412, 2, !dbg !1902
  tail call void @llvm.dbg.value(metadata i64 %431, metadata !1418, metadata !DIExpression()), !dbg !1434
  %432 = add i64 %413, 2, !dbg !1894
  %433 = icmp eq i64 %432, %410, !dbg !1894
  br i1 %433, label %434, label %411, !dbg !1894, !llvm.loop !1903

434:                                              ; preds = %411, %403
  %435 = phi i64 [ 0, %403 ], [ %431, %411 ]
  %436 = icmp eq i64 %407, 0, !dbg !1894
  br i1 %436, label %446, label %437, !dbg !1894

437:                                              ; preds = %434
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1418, metadata !DIExpression()), !dbg !1434
  %438 = getelementptr inbounds double, ptr %5, i64 %435, !dbg !1895
  %439 = load double, ptr %438, align 8, !dbg !1895, !tbaa !174
  tail call void @llvm.dbg.value(metadata double %439, metadata !1424, metadata !DIExpression()), !dbg !1896
  %440 = getelementptr inbounds double, ptr %6, i64 %435, !dbg !1897
  %441 = load double, ptr %440, align 8, !dbg !1897, !tbaa !174
  tail call void @llvm.dbg.value(metadata double %441, metadata !1428, metadata !DIExpression()), !dbg !1896
  %442 = fmul double %404, %439, !dbg !1898
  %handler_result46 = call double @fSubHandlerDouble(double %441, double %442), !dbg !1899
  %443 = fmul double %15, %handler_result46, !dbg !1899
  store double %443, ptr %440, align 8, !dbg !1900, !tbaa !174
  %444 = load double, ptr %438, align 8, !dbg !1901, !tbaa !174
  %445 = fmul double %444, %405, !dbg !1901
  store double %445, ptr %438, align 8, !dbg !1901, !tbaa !174
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1418, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1434
  br label %446, !dbg !1905

446:                                              ; preds = %437, %434, %400
  switch i32 %0, label %448 [
    i32 3, label %502
    i32 0, label %502
    i32 1, label %449
    i32 2, label %447
  ], !dbg !1905

447:                                              ; preds = %446
  tail call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCC, metadata !1422, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !1423, metadata !DIExpression()), !dbg !1434
  br label %449, !dbg !1907

448:                                              ; preds = %446
  br label %449, !dbg !1911

449:                                              ; preds = %448, %447, %446
  %450 = phi double [ 0x3FE6A09E667F3BCC, %447 ], [ 0x3FD20DD750429B6D, %446 ], [ 0.000000e+00, %448 ], !dbg !1434
  %451 = phi double [ 5.000000e-01, %447 ], [ 0x3FC9884533D43651, %446 ], [ 0.000000e+00, %448 ], !dbg !1434
  tail call void @llvm.dbg.value(metadata double %451, metadata !1423, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata double %450, metadata !1422, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1432, metadata !DIExpression()), !dbg !1912
  %452 = getelementptr inbounds double, ptr %4, i64 %11, !dbg !1911
  tail call void @llvm.dbg.value(metadata ptr %452, metadata !1433, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1429, metadata !DIExpression()), !dbg !1912
  %453 = tail call i64 @llvm.umax.i64(i64 %8, i64 1), !dbg !1913
  br label %454, !dbg !1913

454:                                              ; preds = %498, %449
  %455 = phi i64 [ 1, %449 ], [ %500, %498 ]
  %456 = phi i64 [ 1, %449 ], [ %499, %498 ]
  %457 = phi i64 [ 0, %449 ], [ %461, %498 ]
  tail call void @llvm.dbg.value(metadata i64 %456, metadata !1432, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata i64 %457, metadata !1429, metadata !DIExpression()), !dbg !1912
  %458 = getelementptr inbounds double, ptr %452, i64 %456, !dbg !1915
  %459 = load double, ptr %458, align 8, !dbg !1915, !tbaa !174
  %460 = fmul double %450, %459, !dbg !1918
  tail call void @llvm.dbg.value(metadata i64 %457, metadata !424, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i64 0, metadata !429, metadata !DIExpression()), !dbg !1919
  %461 = add nuw i64 %457, 1, !dbg !1921
  %462 = mul i64 %461, %457, !dbg !1922
  %463 = lshr i64 %462, 1, !dbg !1923
  %464 = getelementptr inbounds double, ptr %4, i64 %463, !dbg !1924
  %465 = load double, ptr %464, align 8, !dbg !1925, !tbaa !174
  %466 = fmul double %465, %460, !dbg !1925
  store double %466, ptr %464, align 8, !dbg !1925, !tbaa !174
  %467 = load double, ptr %458, align 8, !dbg !1926, !tbaa !174
  %468 = fmul double %450, %467, !dbg !1927
  tail call void @llvm.dbg.value(metadata i64 %457, metadata !424, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 0, metadata !429, metadata !DIExpression()), !dbg !1928
  %469 = getelementptr inbounds double, ptr %5, i64 %463, !dbg !1930
  %470 = load double, ptr %469, align 8, !dbg !1931, !tbaa !174
  %471 = fmul double %470, %468, !dbg !1931
  store double %471, ptr %469, align 8, !dbg !1931, !tbaa !174
  %472 = load double, ptr %458, align 8, !dbg !1932, !tbaa !174
  %473 = fmul double %450, %472, !dbg !1933
  tail call void @llvm.dbg.value(metadata i64 %457, metadata !424, metadata !DIExpression()), !dbg !1934
  tail call void @llvm.dbg.value(metadata i64 0, metadata !429, metadata !DIExpression()), !dbg !1934
  %474 = getelementptr inbounds double, ptr %6, i64 %463, !dbg !1936
  %475 = load double, ptr %474, align 8, !dbg !1937, !tbaa !174
  %476 = fmul double %475, %473, !dbg !1937
  store double %476, ptr %474, align 8, !dbg !1937, !tbaa !174
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1431, metadata !DIExpression()), !dbg !1912
  %477 = icmp eq i64 %457, 0, !dbg !1938
  br i1 %477, label %498, label %478, !dbg !1941

478:                                              ; preds = %478, %454
  %479 = phi i64 [ %496, %478 ], [ 1, %454 ]
  tail call void @llvm.dbg.value(metadata i64 %479, metadata !1431, metadata !DIExpression()), !dbg !1912
  %480 = load double, ptr %458, align 8, !dbg !1942, !tbaa !174
  %481 = fmul double %451, %480, !dbg !1944
  tail call void @llvm.dbg.value(metadata i64 %457, metadata !424, metadata !DIExpression()), !dbg !1945
  tail call void @llvm.dbg.value(metadata i64 %479, metadata !429, metadata !DIExpression()), !dbg !1945
  %482 = add i64 %479, %463, !dbg !1947
  %483 = getelementptr inbounds double, ptr %4, i64 %482, !dbg !1948
  %484 = load double, ptr %483, align 8, !dbg !1949, !tbaa !174
  %485 = fmul double %484, %481, !dbg !1949
  store double %485, ptr %483, align 8, !dbg !1949, !tbaa !174
  %486 = load double, ptr %458, align 8, !dbg !1950, !tbaa !174
  %487 = fmul double %451, %486, !dbg !1951
  tail call void @llvm.dbg.value(metadata i64 %457, metadata !424, metadata !DIExpression()), !dbg !1952
  tail call void @llvm.dbg.value(metadata i64 %479, metadata !429, metadata !DIExpression()), !dbg !1952
  %488 = getelementptr inbounds double, ptr %5, i64 %482, !dbg !1954
  %489 = load double, ptr %488, align 8, !dbg !1955, !tbaa !174
  %490 = fmul double %489, %487, !dbg !1955
  store double %490, ptr %488, align 8, !dbg !1955, !tbaa !174
  %491 = load double, ptr %458, align 8, !dbg !1956, !tbaa !174
  %492 = fmul double %451, %491, !dbg !1957
  tail call void @llvm.dbg.value(metadata i64 %457, metadata !424, metadata !DIExpression()), !dbg !1958
  tail call void @llvm.dbg.value(metadata i64 %479, metadata !429, metadata !DIExpression()), !dbg !1958
  %493 = getelementptr inbounds double, ptr %6, i64 %482, !dbg !1960
  %494 = load double, ptr %493, align 8, !dbg !1961, !tbaa !174
  %495 = fmul double %494, %492, !dbg !1961
  store double %495, ptr %493, align 8, !dbg !1961, !tbaa !174
  %496 = add nuw i64 %479, 1, !dbg !1962
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1431, metadata !DIExpression()), !dbg !1912
  %497 = icmp eq i64 %496, %455, !dbg !1938
  br i1 %497, label %498, label %478, !dbg !1941, !llvm.loop !1963

498:                                              ; preds = %478, %454
  %499 = add i64 %456, 2, !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %499, metadata !1432, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata i64 %461, metadata !1429, metadata !DIExpression()), !dbg !1912
  %500 = add i64 %455, 1, !dbg !1913
  %501 = icmp eq i64 %461, %453, !dbg !1966
  br i1 %501, label %502, label %454, !dbg !1913, !llvm.loop !1967

502:                                              ; preds = %498, %446, %446
  ret i32 %401, !dbg !1969
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv2_alt_array(i32 noundef %0, i64 noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 !dbg !1970 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1972, metadata !DIExpression()), !dbg !1979
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1973, metadata !DIExpression()), !dbg !1979
  tail call void @llvm.dbg.value(metadata double %2, metadata !1974, metadata !DIExpression()), !dbg !1979
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1975, metadata !DIExpression()), !dbg !1979
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1976, metadata !DIExpression()), !dbg !1979
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1977, metadata !DIExpression()), !dbg !1979
  %7 = tail call i32 @gsl_sf_legendre_deriv2_alt_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %5), !dbg !1980, !range !99
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1978, metadata !DIExpression()), !dbg !1979
  ret i32 %7, !dbg !1981
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv2_alt_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 !dbg !1982 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1984, metadata !DIExpression()), !dbg !2000
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1985, metadata !DIExpression()), !dbg !2000
  tail call void @llvm.dbg.value(metadata double %2, metadata !1986, metadata !DIExpression()), !dbg !2000
  tail call void @llvm.dbg.value(metadata double %3, metadata !1987, metadata !DIExpression()), !dbg !2000
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1988, metadata !DIExpression()), !dbg !2000
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1989, metadata !DIExpression()), !dbg !2000
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1990, metadata !DIExpression()), !dbg !2000
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !2001
  %8 = add i64 %1, 1, !dbg !2003
  %9 = add i64 %1, 2, !dbg !2004
  %10 = mul i64 %8, %9, !dbg !2005
  %11 = lshr i64 %10, 1, !dbg !2006
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1992, metadata !DIExpression()), !dbg !2000
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1993, metadata !DIExpression()), !dbg !2000
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1994, metadata !DIExpression()), !dbg !2000
  %12 = icmp eq i32 %0, 3, !dbg !2007
  %13 = fcmp ogt double %2, 1.000000e+00, !dbg !2009
  %14 = fcmp olt double %2, -1.000000e+00
  %15 = or i1 %13, %14, !dbg !2009
  br i1 %12, label %16, label %175, !dbg !2010

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i64 %1, metadata !2011, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata double %2, metadata !2014, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata double %3, metadata !2015, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr %4, metadata !2016, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr %5, metadata !2017, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr %6, metadata !2018, metadata !DIExpression()), !dbg !2036
  br i1 %15, label %17, label %18, !dbg !2039

17:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 1) #5, !dbg !2040
  br label %455, !dbg !2040

18:                                               ; preds = %16
  %19 = tail call double @llvm.fabs.f64(double %2), !dbg !2043
  %20 = fcmp oeq double %19, 1.000000e+00, !dbg !2044
  br i1 %20, label %21, label %22, !dbg !2045

21:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 435, i32 noundef 1) #5, !dbg !2046
  br label %455, !dbg !2046

22:                                               ; preds = %18
  %23 = fcmp une double %3, 1.000000e+00, !dbg !2049
  %24 = fcmp une double %3, -1.000000e+00
  %25 = and i1 %23, %24, !dbg !2050
  br i1 %25, label %26, label %27, !dbg !2050

26:                                               ; preds = %22
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 1) #5, !dbg !2051
  br label %455, !dbg !2051

27:                                               ; preds = %22
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !2054
  %handler_result1 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !2055
  %28 = fmul double %handler_result, %handler_result1, !dbg !2055
  %29 = tail call double @sqrt(double noundef %28) #5, !dbg !2056
  call void @llvm.dbg.value(metadata double %29, metadata !2019, metadata !DIExpression()), !dbg !2057
  %30 = fdiv double 1.000000e+00, %29, !dbg !2058
  call void @llvm.dbg.value(metadata double %30, metadata !2024, metadata !DIExpression()), !dbg !2057
  %31 = fdiv double %30, %29, !dbg !2059
  call void @llvm.dbg.value(metadata double %31, metadata !2025, metadata !DIExpression()), !dbg !2057
  %32 = fmul double %30, %2, !dbg !2060
  call void @llvm.dbg.value(metadata double %32, metadata !2026, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2034, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata double %2, metadata !2033, metadata !DIExpression()), !dbg !2057
  store double 1.000000e+00, ptr %4, align 8, !dbg !2061, !tbaa !174
  store double 0.000000e+00, ptr %5, align 8, !dbg !2062, !tbaa !174
  store double 0.000000e+00, ptr %6, align 8, !dbg !2063, !tbaa !174
  %33 = icmp eq i64 %1, 0, !dbg !2064
  br i1 %33, label %455, label %34, !dbg !2066

34:                                               ; preds = %27
  %35 = getelementptr inbounds double, ptr %4, i64 1, !dbg !2067
  store double %2, ptr %35, align 8, !dbg !2068, !tbaa !174
  %36 = fneg double %29, !dbg !2069
  %37 = getelementptr inbounds double, ptr %5, i64 1, !dbg !2070
  store double %36, ptr %37, align 8, !dbg !2071, !tbaa !174
  %38 = fneg double %2, !dbg !2072
  %39 = getelementptr inbounds double, ptr %6, i64 1, !dbg !2073
  store double %38, ptr %39, align 8, !dbg !2074, !tbaa !174
  call void @llvm.dbg.value(metadata i64 1, metadata !2029, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 2, metadata !2027, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2034, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata double %2, metadata !2033, metadata !DIExpression()), !dbg !2057
  %40 = icmp eq i64 %1, 1, !dbg !2075
  br i1 %40, label %46, label %41, !dbg !2078

41:                                               ; preds = %34
  %42 = tail call i64 @llvm.umax.i64(i64 %8, i64 3), !dbg !2078
  br label %48, !dbg !2078

43:                                               ; preds = %48
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !2035, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2032, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 0, metadata !2030, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 1, metadata !2028, metadata !DIExpression()), !dbg !2057
  %44 = fmul double %29, %3
  %45 = fneg double %30
  br label %78, !dbg !2079

46:                                               ; preds = %34
  %47 = fmul double %29, %3, !dbg !2081
  br label %156, !dbg !2079

48:                                               ; preds = %48, %41
  %49 = phi double [ %50, %48 ], [ 1.000000e+00, %41 ]
  %50 = phi double [ %63, %48 ], [ %2, %41 ]
  %51 = phi i64 [ %53, %48 ], [ 1, %41 ]
  %52 = phi i64 [ %74, %48 ], [ 2, %41 ]
  call void @llvm.dbg.value(metadata double %49, metadata !2034, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata double %50, metadata !2033, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %51, metadata !2029, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %52, metadata !2027, metadata !DIExpression()), !dbg !2057
  %53 = add i64 %52, %51, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %53, metadata !2029, metadata !DIExpression()), !dbg !2057
  %54 = shl i64 %52, 1, !dbg !2084
  %55 = add i64 %54, -1, !dbg !2085
  %56 = uitofp i64 %55 to double, !dbg !2086
  %57 = fmul double %56, %2, !dbg !2087
  %58 = fmul double %50, %57, !dbg !2088
  %59 = add i64 %52, -1, !dbg !2089
  %60 = uitofp i64 %59 to double, !dbg !2090
  %61 = fmul double %49, %60, !dbg !2091
  %handler_result2 = call double @fSubHandlerDouble(double %58, double %61), !dbg !2092
  %62 = uitofp i64 %52 to double, !dbg !2092
  %63 = fdiv double %handler_result2, %62, !dbg !2093
  call void @llvm.dbg.value(metadata double %63, metadata !2031, metadata !DIExpression()), !dbg !2057
  %64 = getelementptr inbounds double, ptr %4, i64 %53, !dbg !2094
  store double %63, ptr %64, align 8, !dbg !2095, !tbaa !174
  %65 = fneg double %62, !dbg !2096
  %66 = fmul double %63, %2, !dbg !2097
  %handler_result3 = call double @fSubHandlerDouble(double %50, double %66), !dbg !2098
  %67 = fmul double %handler_result3, %65, !dbg !2098
  %68 = fmul double %30, %67, !dbg !2099
  %69 = getelementptr inbounds double, ptr %5, i64 %53, !dbg !2100
  store double %68, ptr %69, align 8, !dbg !2101, !tbaa !174
  %handler_result4 = call double @fAddHandlerDouble(double %62, double 1.000000e+00), !dbg !2102
  %70 = fmul double %handler_result4, %65, !dbg !2102
  %71 = fmul double %70, %63, !dbg !2103
  %72 = fmul double %32, %68, !dbg !2104
  %handler_result5 = call double @fSubHandlerDouble(double %71, double %72), !dbg !2105
  %73 = getelementptr inbounds double, ptr %6, i64 %53, !dbg !2105
  store double %handler_result5, ptr %73, align 8, !dbg !2106, !tbaa !174
  call void @llvm.dbg.value(metadata double %50, metadata !2034, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata double %63, metadata !2033, metadata !DIExpression()), !dbg !2057
  %74 = add nuw i64 %52, 1, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %74, metadata !2027, metadata !DIExpression()), !dbg !2057
  %75 = icmp eq i64 %74, %42, !dbg !2075
  br i1 %75, label %43, label %48, !dbg !2078, !llvm.loop !2108

76:                                               ; preds = %121, %78
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !2035, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata double %86, metadata !2032, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %84, metadata !2030, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %83, metadata !2028, metadata !DIExpression()), !dbg !2057
  %77 = icmp eq i64 %83, %1, !dbg !2110
  br i1 %77, label %154, label %78, !dbg !2079, !llvm.loop !2112

78:                                               ; preds = %76, %43
  %79 = phi double [ -1.000000e+00, %43 ], [ %handler_result6, %76 ]
  %80 = phi double [ 1.000000e+00, %43 ], [ %86, %76 ]
  %81 = phi i64 [ 0, %43 ], [ %84, %76 ]
  %82 = phi i64 [ 1, %43 ], [ %83, %76 ]
  call void @llvm.dbg.value(metadata double %79, metadata !2035, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata double %80, metadata !2032, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %81, metadata !2030, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %82, metadata !2028, metadata !DIExpression()), !dbg !2057
  %83 = add nuw i64 %82, 1, !dbg !2114
  %84 = add i64 %83, %81, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %84, metadata !2030, metadata !DIExpression()), !dbg !2057
  %handler_result6 = call double @fAddHandlerDouble(double %79, double 2.000000e+00), !dbg !2117
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !2035, metadata !DIExpression()), !dbg !2057
  %85 = fmul double %44, %handler_result6, !dbg !2117
  %86 = fmul double %80, %85, !dbg !2118
  call void @llvm.dbg.value(metadata double %86, metadata !2032, metadata !DIExpression()), !dbg !2057
  %87 = getelementptr inbounds double, ptr %4, i64 %84, !dbg !2119
  store double %86, ptr %87, align 8, !dbg !2120, !tbaa !174
  %88 = uitofp i64 %82 to double, !dbg !2121
  %89 = fmul double %32, %88, !dbg !2122
  %90 = fmul double %86, %89, !dbg !2123
  %91 = getelementptr inbounds double, ptr %5, i64 %84, !dbg !2124
  store double %90, ptr %91, align 8, !dbg !2125, !tbaa !174
  %92 = fmul double %31, %88, !dbg !2126
  %handler_result7 = call double @fAddHandlerDouble(double %88, double 1.000000e+00), !dbg !2127
  %handler_result8 = call double @fSubHandlerDouble(double %92, double %handler_result7), !dbg !2128
  %93 = fmul double %handler_result8, %88, !dbg !2128
  %94 = load double, ptr %87, align 8, !dbg !2129, !tbaa !174
  %95 = fmul double %94, %93, !dbg !2130
  %96 = fmul double %32, %90, !dbg !2131
  %handler_result9 = call double @fSubHandlerDouble(double %95, double %96), !dbg !2132
  %97 = getelementptr inbounds double, ptr %6, i64 %84, !dbg !2132
  store double %handler_result9, ptr %97, align 8, !dbg !2133, !tbaa !174
  call void @llvm.dbg.value(metadata double %86, metadata !2034, metadata !DIExpression()), !dbg !2057
  %98 = add i64 %84, %83, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %98, metadata !2029, metadata !DIExpression()), !dbg !2057
  %99 = fmul double %86, %2, !dbg !2135
  %100 = shl i64 %82, 1, !dbg !2136
  %101 = or disjoint i64 %100, 1, !dbg !2137
  %102 = uitofp i64 %101 to double, !dbg !2138
  %103 = fmul double %99, %102, !dbg !2139
  call void @llvm.dbg.value(metadata double %103, metadata !2033, metadata !DIExpression()), !dbg !2057
  %104 = getelementptr inbounds double, ptr %4, i64 %98, !dbg !2140
  store double %103, ptr %104, align 8, !dbg !2141, !tbaa !174
  %105 = fmul double %86, %102, !dbg !2142
  %106 = uitofp i64 %83 to double, !dbg !2143
  %107 = fmul double %106, %2, !dbg !2144
  %108 = fmul double %107, %103, !dbg !2145
  %handler_result10 = call double @fSubHandlerDouble(double %105, double %108), !dbg !2146
  %109 = fmul double %handler_result10, %45, !dbg !2146
  %110 = getelementptr inbounds double, ptr %5, i64 %98, !dbg !2147
  store double %109, ptr %110, align 8, !dbg !2148, !tbaa !174
  %111 = mul i64 %82, %82, !dbg !2149
  %112 = uitofp i64 %111 to double, !dbg !2150
  %113 = fmul double %31, %112, !dbg !2151
  %handler_result11 = call double @fAddHandlerDouble(double %88, double 2.000000e+00), !dbg !2152
  %114 = fmul double %handler_result7, %handler_result11, !dbg !2152
  %handler_result12 = call double @fSubHandlerDouble(double %113, double %114), !dbg !2153
  %115 = load double, ptr %104, align 8, !dbg !2153, !tbaa !174
  %116 = fmul double %handler_result12, %115, !dbg !2154
  %117 = fmul double %32, %109, !dbg !2155
  %handler_result13 = call double @fSubHandlerDouble(double %116, double %117), !dbg !2156
  %118 = getelementptr inbounds double, ptr %6, i64 %98, !dbg !2156
  store double %handler_result13, ptr %118, align 8, !dbg !2157, !tbaa !174
  %119 = add i64 %82, 2, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %119, metadata !2027, metadata !DIExpression()), !dbg !2057
  %120 = icmp ugt i64 %119, %1, !dbg !2160
  br i1 %120, label %76, label %121, !dbg !2162

121:                                              ; preds = %121, %78
  %122 = phi double [ %123, %121 ], [ %86, %78 ]
  %123 = phi double [ %138, %121 ], [ %103, %78 ]
  %124 = phi i64 [ %126, %121 ], [ %98, %78 ]
  %125 = phi i64 [ %152, %121 ], [ %119, %78 ]
  call void @llvm.dbg.value(metadata double %122, metadata !2034, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata double %123, metadata !2033, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %124, metadata !2029, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %125, metadata !2027, metadata !DIExpression()), !dbg !2057
  %126 = add i64 %125, %124, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %126, metadata !2029, metadata !DIExpression()), !dbg !2057
  %127 = shl i64 %125, 1, !dbg !2165
  %128 = add i64 %127, -1, !dbg !2166
  %129 = uitofp i64 %128 to double, !dbg !2167
  %130 = fmul double %129, %2, !dbg !2168
  %131 = fmul double %123, %130, !dbg !2169
  %132 = add i64 %125, %82, !dbg !2170
  %133 = add i64 %132, -1, !dbg !2171
  %134 = uitofp i64 %133 to double, !dbg !2172
  %135 = fmul double %122, %134, !dbg !2173
  %handler_result14 = call double @fSubHandlerDouble(double %131, double %135), !dbg !2174
  %136 = sub i64 %125, %82, !dbg !2174
  %137 = uitofp i64 %136 to double, !dbg !2175
  %138 = fdiv double %handler_result14, %137, !dbg !2176
  call void @llvm.dbg.value(metadata double %138, metadata !2031, metadata !DIExpression()), !dbg !2057
  %139 = getelementptr inbounds double, ptr %4, i64 %126, !dbg !2177
  store double %138, ptr %139, align 8, !dbg !2178, !tbaa !174
  %140 = uitofp i64 %132 to double, !dbg !2179
  %141 = fmul double %123, %140, !dbg !2180
  %142 = uitofp i64 %125 to double, !dbg !2181
  %143 = fmul double %142, %2, !dbg !2182
  %144 = fmul double %143, %138, !dbg !2183
  %handler_result15 = call double @fSubHandlerDouble(double %141, double %144), !dbg !2184
  %145 = fmul double %handler_result15, %45, !dbg !2184
  %146 = getelementptr inbounds double, ptr %5, i64 %126, !dbg !2185
  store double %145, ptr %146, align 8, !dbg !2186, !tbaa !174
  %handler_result16 = call double @fAddHandlerDouble(double %142, double 1.000000e+00), !dbg !2187
  %147 = fmul double %handler_result16, %142, !dbg !2187
  %handler_result17 = call double @fSubHandlerDouble(double %113, double %147), !dbg !2188
  %148 = load double, ptr %139, align 8, !dbg !2188, !tbaa !174
  %149 = fmul double %148, %handler_result17, !dbg !2189
  %150 = fmul double %32, %145, !dbg !2190
  %handler_result18 = call double @fSubHandlerDouble(double %149, double %150), !dbg !2191
  %151 = getelementptr inbounds double, ptr %6, i64 %126, !dbg !2191
  store double %handler_result18, ptr %151, align 8, !dbg !2192, !tbaa !174
  call void @llvm.dbg.value(metadata double %123, metadata !2034, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata double %138, metadata !2033, metadata !DIExpression()), !dbg !2057
  %152 = add i64 %125, 1, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %152, metadata !2027, metadata !DIExpression()), !dbg !2057
  %153 = icmp ugt i64 %152, %1, !dbg !2160
  br i1 %153, label %76, label %121, !dbg !2162, !llvm.loop !2194

154:                                              ; preds = %76
  %155 = add i64 %84, %8, !dbg !2196
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result6, double 2.000000e+00), !dbg !2196
  br label %156, !dbg !2196

156:                                              ; preds = %154, %46
  %157 = phi double [ %47, %46 ], [ %44, %154 ], !dbg !2081
  %158 = phi double [ 1.000000e+00, %46 ], [ %86, %154 ], !dbg !2057
  %159 = phi double [ 1.000000e+00, %46 ], [ %handler_result19, %154 ], !dbg !2057
  %160 = phi i64 [ 2, %46 ], [ %155, %154 ], !dbg !2197
  call void @llvm.dbg.value(metadata i64 %160, metadata !2030, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata double %159, metadata !2035, metadata !DIExpression()), !dbg !2057
  %161 = fmul double %157, %159, !dbg !2198
  %162 = fmul double %158, %161, !dbg !2199
  call void @llvm.dbg.value(metadata double %162, metadata !2032, metadata !DIExpression()), !dbg !2057
  %163 = getelementptr inbounds double, ptr %4, i64 %160, !dbg !2200
  store double %162, ptr %163, align 8, !dbg !2201, !tbaa !174
  %164 = uitofp i64 %1 to double, !dbg !2202
  %165 = fmul double %164, %2, !dbg !2203
  %166 = fmul double %165, %162, !dbg !2204
  %167 = fmul double %30, %166, !dbg !2205
  %168 = getelementptr inbounds double, ptr %5, i64 %160, !dbg !2206
  store double %167, ptr %168, align 8, !dbg !2207, !tbaa !174
  %169 = fmul double %31, %164, !dbg !2208
  %handler_result20 = call double @fAddHandlerDouble(double %164, double 1.000000e+00), !dbg !2209
  %handler_result21 = call double @fSubHandlerDouble(double %169, double %handler_result20), !dbg !2210
  %170 = fmul double %handler_result21, %164, !dbg !2210
  %171 = load double, ptr %163, align 8, !dbg !2211, !tbaa !174
  %172 = fmul double %170, %171, !dbg !2212
  %173 = fmul double %32, %167, !dbg !2213
  %handler_result22 = call double @fSubHandlerDouble(double %172, double %173), !dbg !2214
  %174 = getelementptr inbounds double, ptr %6, i64 %160, !dbg !2214
  store double %handler_result22, ptr %174, align 8, !dbg !2215, !tbaa !174
  br label %398, !dbg !2216

175:                                              ; preds = %7
  call void @llvm.dbg.value(metadata i64 %1, metadata !2217, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata double %2, metadata !2220, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata double %3, metadata !2221, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata ptr %4, metadata !2222, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata ptr %5, metadata !2223, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata ptr %6, metadata !2224, metadata !DIExpression()), !dbg !2249
  br i1 %15, label %176, label %177, !dbg !2252

176:                                              ; preds = %175
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 222, i32 noundef 1) #5, !dbg !2253
  br label %398, !dbg !2253

177:                                              ; preds = %175
  %178 = tail call double @llvm.fabs.f64(double %2), !dbg !2256
  %179 = fcmp oeq double %178, 1.000000e+00, !dbg !2257
  br i1 %179, label %180, label %181, !dbg !2258

180:                                              ; preds = %177
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 227, i32 noundef 1) #5, !dbg !2259
  br label %398, !dbg !2259

181:                                              ; preds = %177
  %182 = fcmp une double %3, 1.000000e+00, !dbg !2262
  %183 = fcmp une double %3, -1.000000e+00
  %184 = and i1 %182, %183, !dbg !2263
  br i1 %184, label %185, label %186, !dbg !2263

185:                                              ; preds = %181
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 232, i32 noundef 1) #5, !dbg !2264
  br label %398, !dbg !2264

186:                                              ; preds = %181
  call void @llvm.dbg.value(metadata double 0x5CD0B15A491EB84, metadata !2225, metadata !DIExpression()), !dbg !2267
  %handler_result23 = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !2268
  %handler_result24 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !2269
  %187 = fmul double %handler_result23, %handler_result24, !dbg !2269
  %188 = tail call double @sqrt(double noundef %187) #5, !dbg !2270
  call void @llvm.dbg.value(metadata double %188, metadata !2230, metadata !DIExpression()), !dbg !2267
  %189 = fdiv double 1.000000e+00, %188, !dbg !2271
  call void @llvm.dbg.value(metadata double %189, metadata !2231, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double %232, metadata !2232, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double %233, metadata !2233, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %11, metadata !2243, metadata !DIExpression()), !dbg !2267
  %190 = getelementptr inbounds double, ptr %4, i64 %11, !dbg !2274
  call void @llvm.dbg.value(metadata ptr %190, metadata !2244, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %1, metadata !301, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata ptr %190, metadata !306, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i64 0, metadata !307, metadata !DIExpression()), !dbg !2275
  %191 = shl i64 %1, 1
  %192 = add i64 %191, 2, !dbg !2277
  %193 = tail call i64 @llvm.umax.i64(i64 %192, i64 1), !dbg !2277
  %194 = and i64 %193, 3, !dbg !2277
  %195 = icmp ult i64 %192, 4, !dbg !2277
  br i1 %195, label %219, label %196, !dbg !2277

196:                                              ; preds = %186
  %197 = and i64 %193, -4, !dbg !2277
  br label %198, !dbg !2277

198:                                              ; preds = %198, %196
  %199 = phi i64 [ 0, %196 ], [ %216, %198 ]
  %200 = phi i64 [ 0, %196 ], [ %217, %198 ]
  call void @llvm.dbg.value(metadata i64 %199, metadata !307, metadata !DIExpression()), !dbg !2275
  %201 = uitofp i64 %199 to double, !dbg !2278
  %202 = tail call double @llvm.sqrt.f64(double %201), !dbg !2279
  %203 = getelementptr inbounds double, ptr %190, i64 %199, !dbg !2280
  store double %202, ptr %203, align 8, !dbg !2281, !tbaa !174
  %204 = or disjoint i64 %199, 1, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %204, metadata !307, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i64 %204, metadata !307, metadata !DIExpression()), !dbg !2275
  %205 = uitofp i64 %204 to double, !dbg !2278
  %206 = tail call double @llvm.sqrt.f64(double %205), !dbg !2279
  %207 = getelementptr inbounds double, ptr %190, i64 %204, !dbg !2280
  store double %206, ptr %207, align 8, !dbg !2281, !tbaa !174
  %208 = or disjoint i64 %199, 2, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %208, metadata !307, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i64 %208, metadata !307, metadata !DIExpression()), !dbg !2275
  %209 = uitofp i64 %208 to double, !dbg !2278
  %210 = tail call double @llvm.sqrt.f64(double %209), !dbg !2279
  %211 = getelementptr inbounds double, ptr %190, i64 %208, !dbg !2280
  store double %210, ptr %211, align 8, !dbg !2281, !tbaa !174
  %212 = or disjoint i64 %199, 3, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %212, metadata !307, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i64 %212, metadata !307, metadata !DIExpression()), !dbg !2275
  %213 = uitofp i64 %212 to double, !dbg !2278
  %214 = tail call double @llvm.sqrt.f64(double %213), !dbg !2279
  %215 = getelementptr inbounds double, ptr %190, i64 %212, !dbg !2280
  store double %214, ptr %215, align 8, !dbg !2281, !tbaa !174
  %216 = add nuw i64 %199, 4, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %216, metadata !307, metadata !DIExpression()), !dbg !2275
  %217 = add i64 %200, 4, !dbg !2277
  %218 = icmp eq i64 %217, %197, !dbg !2277
  br i1 %218, label %219, label %198, !dbg !2277, !llvm.loop !2283

219:                                              ; preds = %198, %186
  %220 = phi i64 [ 0, %186 ], [ %216, %198 ]
  %221 = icmp eq i64 %194, 0, !dbg !2277
  br i1 %221, label %231, label %222, !dbg !2277

222:                                              ; preds = %222, %219
  %223 = phi i64 [ %228, %222 ], [ %220, %219 ]
  %224 = phi i64 [ %229, %222 ], [ 0, %219 ]
  call void @llvm.dbg.value(metadata i64 %223, metadata !307, metadata !DIExpression()), !dbg !2275
  %225 = uitofp i64 %223 to double, !dbg !2278
  %226 = tail call double @llvm.sqrt.f64(double %225), !dbg !2279
  %227 = getelementptr inbounds double, ptr %190, i64 %223, !dbg !2280
  store double %226, ptr %227, align 8, !dbg !2281, !tbaa !174
  %228 = add nuw i64 %223, 1, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %228, metadata !307, metadata !DIExpression()), !dbg !2275
  %229 = add i64 %224, 1, !dbg !2277
  %230 = icmp eq i64 %229, %194, !dbg !2277
  br i1 %230, label %231, label %222, !dbg !2277, !llvm.loop !2285

231:                                              ; preds = %222, %219
  %232 = fdiv double %189, %188, !dbg !2286
  %233 = fmul double %189, %2, !dbg !2287
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2242, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double %2, metadata !2241, metadata !DIExpression()), !dbg !2267
  store double 1.000000e+00, ptr %4, align 8, !dbg !2288, !tbaa !174
  store double 0.000000e+00, ptr %5, align 8, !dbg !2289, !tbaa !174
  store double 0.000000e+00, ptr %6, align 8, !dbg !2290, !tbaa !174
  %234 = icmp eq i64 %1, 0, !dbg !2291
  br i1 %234, label %398, label %235, !dbg !2293

235:                                              ; preds = %231
  %236 = getelementptr inbounds double, ptr %4, i64 1, !dbg !2294
  store double %2, ptr %236, align 8, !dbg !2295, !tbaa !174
  %237 = fneg double %188, !dbg !2296
  %238 = getelementptr inbounds double, ptr %5, i64 1, !dbg !2297
  store double %237, ptr %238, align 8, !dbg !2298, !tbaa !174
  %239 = fneg double %2, !dbg !2299
  %240 = getelementptr inbounds double, ptr %6, i64 1, !dbg !2300
  store double %239, ptr %240, align 8, !dbg !2301, !tbaa !174
  call void @llvm.dbg.value(metadata i64 1, metadata !2236, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 2, metadata !2234, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2242, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double %2, metadata !2241, metadata !DIExpression()), !dbg !2267
  %241 = icmp eq i64 %1, 1, !dbg !2302
  br i1 %241, label %374, label %242, !dbg !2303

242:                                              ; preds = %235
  %243 = tail call i64 @llvm.umax.i64(i64 %8, i64 3), !dbg !2303
  br label %246, !dbg !2303

244:                                              ; preds = %246
  call void @llvm.dbg.value(metadata i64 1, metadata !2235, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double 1.000000e+280, metadata !2240, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double 0x5D48966111CD756, metadata !2239, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 0, metadata !2237, metadata !DIExpression()), !dbg !2267
  %245 = tail call i64 @llvm.umax.i64(i64 %1, i64 2), !dbg !2304
  br label %271, !dbg !2304

246:                                              ; preds = %246, %242
  %247 = phi i64 [ %267, %246 ], [ 2, %242 ]
  %248 = phi double [ %249, %246 ], [ 1.000000e+00, %242 ]
  %249 = phi double [ %handler_result27, %246 ], [ %2, %242 ]
  %250 = phi i64 [ %253, %246 ], [ 1, %242 ]
  call void @llvm.dbg.value(metadata i64 %247, metadata !2234, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double %248, metadata !2242, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double %249, metadata !2241, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %250, metadata !2236, metadata !DIExpression()), !dbg !2267
  %251 = uitofp i64 %247 to double, !dbg !2306
  %252 = fdiv double 1.000000e+00, %251, !dbg !2307
  call void @llvm.dbg.value(metadata double %252, metadata !2245, metadata !DIExpression()), !dbg !2308
  %253 = add i64 %250, %247, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %253, metadata !2236, metadata !DIExpression()), !dbg !2267
  %handler_result25 = call double @fSubHandlerDouble(double 2.000000e+00, double %252), !dbg !2310
  %254 = fmul double %handler_result25, %2, !dbg !2310
  %255 = fmul double %249, %254, !dbg !2311
  %handler_result26 = call double @fSubHandlerDouble(double 1.000000e+00, double %252), !dbg !2312
  %256 = fmul double %248, %handler_result26, !dbg !2312
  %handler_result27 = call double @fSubHandlerDouble(double %255, double %256), !dbg !2313
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !2238, metadata !DIExpression()), !dbg !2267
  %257 = getelementptr inbounds double, ptr %4, i64 %253, !dbg !2313
  store double %handler_result27, ptr %257, align 8, !dbg !2314, !tbaa !174
  %258 = fmul double %189, %251, !dbg !2315
  %259 = fmul double %handler_result27, %2, !dbg !2316
  %handler_result28 = call double @fSubHandlerDouble(double %259, double %249), !dbg !2317
  %260 = fmul double %258, %handler_result28, !dbg !2317
  %261 = getelementptr inbounds double, ptr %5, i64 %253, !dbg !2318
  store double %260, ptr %261, align 8, !dbg !2319, !tbaa !174
  %262 = fneg double %251, !dbg !2320
  %handler_result29 = call double @fAddHandlerDouble(double %251, double 1.000000e+00), !dbg !2321
  %263 = fmul double %handler_result29, %262, !dbg !2321
  %264 = fmul double %263, %handler_result27, !dbg !2322
  %265 = fmul double %233, %260, !dbg !2323
  %handler_result30 = call double @fSubHandlerDouble(double %264, double %265), !dbg !2324
  %266 = getelementptr inbounds double, ptr %6, i64 %253, !dbg !2324
  store double %handler_result30, ptr %266, align 8, !dbg !2325, !tbaa !174
  call void @llvm.dbg.value(metadata double %249, metadata !2242, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !2241, metadata !DIExpression()), !dbg !2267
  %267 = add nuw i64 %247, 1, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %267, metadata !2234, metadata !DIExpression()), !dbg !2267
  %268 = icmp eq i64 %267, %243, !dbg !2302
  br i1 %268, label %244, label %246, !dbg !2303, !llvm.loop !2327

269:                                              ; preds = %325, %271
  call void @llvm.dbg.value(metadata i64 %277, metadata !2235, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double %276, metadata !2240, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double %286, metadata !2239, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %278, metadata !2237, metadata !DIExpression()), !dbg !2267
  %270 = icmp eq i64 %277, %245, !dbg !2329
  br i1 %270, label %371, label %271, !dbg !2304, !llvm.loop !2331

271:                                              ; preds = %269, %244
  %272 = phi i64 [ %277, %269 ], [ 1, %244 ]
  %273 = phi double [ %276, %269 ], [ 1.000000e+280, %244 ]
  %274 = phi double [ %286, %269 ], [ 0x5D48966111CD756, %244 ]
  %275 = phi i64 [ %278, %269 ], [ 0, %244 ]
  call void @llvm.dbg.value(metadata i64 %272, metadata !2235, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double %273, metadata !2240, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double %274, metadata !2239, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %275, metadata !2237, metadata !DIExpression()), !dbg !2267
  %276 = fmul double %188, %273, !dbg !2333
  call void @llvm.dbg.value(metadata double %276, metadata !2240, metadata !DIExpression()), !dbg !2267
  %277 = add nuw i64 %272, 1, !dbg !2335
  %278 = add i64 %275, %277, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %278, metadata !2237, metadata !DIExpression()), !dbg !2267
  %279 = shl i64 %272, 1, !dbg !2337
  %280 = getelementptr double, ptr %190, i64 %279, !dbg !2338
  %281 = getelementptr double, ptr %280, i64 -1, !dbg !2338
  %282 = load double, ptr %281, align 8, !dbg !2338, !tbaa !174
  %283 = fmul double %282, %3, !dbg !2339
  %284 = load double, ptr %280, align 8, !dbg !2340, !tbaa !174
  %285 = fdiv double %283, %284, !dbg !2341
  %286 = fmul double %274, %285, !dbg !2342
  call void @llvm.dbg.value(metadata double %286, metadata !2239, metadata !DIExpression()), !dbg !2267
  %287 = fmul double %276, %286, !dbg !2343
  %288 = getelementptr inbounds double, ptr %4, i64 %278, !dbg !2344
  store double %287, ptr %288, align 8, !dbg !2345, !tbaa !174
  %289 = uitofp i64 %272 to double, !dbg !2346
  %290 = fmul double %233, %289, !dbg !2347
  %291 = fmul double %290, %287, !dbg !2348
  %292 = getelementptr inbounds double, ptr %5, i64 %278, !dbg !2349
  store double %291, ptr %292, align 8, !dbg !2350, !tbaa !174
  %293 = fmul double %232, %289, !dbg !2351
  %handler_result31 = call double @fAddHandlerDouble(double %289, double 1.000000e+00), !dbg !2352
  %handler_result32 = call double @fSubHandlerDouble(double %293, double %handler_result31), !dbg !2353
  %294 = fmul double %handler_result32, %289, !dbg !2353
  %295 = load double, ptr %288, align 8, !dbg !2354, !tbaa !174
  %296 = fmul double %294, %295, !dbg !2355
  %297 = fmul double %233, %291, !dbg !2356
  %handler_result33 = call double @fSubHandlerDouble(double %296, double %297), !dbg !2357
  %298 = getelementptr inbounds double, ptr %6, i64 %278, !dbg !2357
  store double %handler_result33, ptr %298, align 8, !dbg !2358, !tbaa !174
  call void @llvm.dbg.value(metadata double %286, metadata !2242, metadata !DIExpression()), !dbg !2267
  %299 = add i64 %278, %277, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %299, metadata !2236, metadata !DIExpression()), !dbg !2267
  %300 = or disjoint i64 %279, 1, !dbg !2360
  %301 = getelementptr inbounds double, ptr %190, i64 %300, !dbg !2361
  %302 = load double, ptr %301, align 8, !dbg !2361, !tbaa !174
  %303 = fmul double %302, %2, !dbg !2362
  %304 = fmul double %286, %303, !dbg !2363
  call void @llvm.dbg.value(metadata double %304, metadata !2241, metadata !DIExpression()), !dbg !2267
  %305 = fmul double %276, %304, !dbg !2364
  %306 = getelementptr inbounds double, ptr %4, i64 %299, !dbg !2365
  store double %305, ptr %306, align 8, !dbg !2366, !tbaa !174
  %307 = fmul double %handler_result31, %2, !dbg !2367
  %308 = fmul double %307, %305, !dbg !2368
  %309 = load double, ptr %301, align 8, !dbg !2369, !tbaa !174
  %310 = load double, ptr %288, align 8, !dbg !2370, !tbaa !174
  %311 = fmul double %309, %310, !dbg !2371
  %handler_result34 = call double @fSubHandlerDouble(double %308, double %311), !dbg !2372
  %312 = fmul double %189, %handler_result34, !dbg !2372
  %313 = getelementptr inbounds double, ptr %5, i64 %299, !dbg !2373
  store double %312, ptr %313, align 8, !dbg !2374, !tbaa !174
  %314 = mul i64 %272, %272, !dbg !2375
  %315 = uitofp i64 %314 to double, !dbg !2376
  %316 = fmul double %232, %315, !dbg !2377
  %handler_result35 = call double @fAddHandlerDouble(double %289, double 2.000000e+00), !dbg !2378
  %317 = fmul double %handler_result31, %handler_result35, !dbg !2378
  %handler_result36 = call double @fSubHandlerDouble(double %316, double %317), !dbg !2379
  %318 = load double, ptr %306, align 8, !dbg !2379, !tbaa !174
  %319 = fmul double %handler_result36, %318, !dbg !2380
  %320 = fmul double %233, %312, !dbg !2381
  %handler_result37 = call double @fSubHandlerDouble(double %319, double %320), !dbg !2382
  %321 = getelementptr inbounds double, ptr %6, i64 %299, !dbg !2382
  store double %handler_result37, ptr %321, align 8, !dbg !2383, !tbaa !174
  %322 = add nuw i64 %272, 2, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %322, metadata !2234, metadata !DIExpression()), !dbg !2267
  %323 = getelementptr double, ptr %190, i64 %272, !dbg !2386
  %324 = icmp ugt i64 %322, %1, !dbg !2387
  br i1 %324, label %269, label %325, !dbg !2389

325:                                              ; preds = %325, %271
  %326 = phi i64 [ %369, %325 ], [ %322, %271 ]
  %327 = phi double [ %328, %325 ], [ %286, %271 ]
  %328 = phi double [ %handler_result38, %325 ], [ %304, %271 ]
  %329 = phi i64 [ %330, %325 ], [ %299, %271 ]
  call void @llvm.dbg.value(metadata i64 %326, metadata !2234, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double %327, metadata !2242, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double %328, metadata !2241, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %329, metadata !2236, metadata !DIExpression()), !dbg !2267
  %330 = add i64 %329, %326, !dbg !2390
  call void @llvm.dbg.value(metadata i64 %330, metadata !2236, metadata !DIExpression()), !dbg !2267
  %331 = shl i64 %326, 1, !dbg !2392
  %332 = add i64 %331, -1, !dbg !2393
  %333 = uitofp i64 %332 to double, !dbg !2394
  %334 = getelementptr double, ptr %323, i64 %326, !dbg !2395
  %335 = load double, ptr %334, align 8, !dbg !2395, !tbaa !174
  %336 = fdiv double %333, %335, !dbg !2396
  %337 = sub i64 %326, %272, !dbg !2397
  %338 = getelementptr inbounds double, ptr %190, i64 %337, !dbg !2398
  %339 = load double, ptr %338, align 8, !dbg !2398, !tbaa !174
  %340 = fdiv double %336, %339, !dbg !2399
  %341 = fmul double %340, %2, !dbg !2400
  %342 = fmul double %328, %341, !dbg !2401
  %343 = getelementptr double, ptr %338, i64 -1, !dbg !2402
  %344 = load double, ptr %343, align 8, !dbg !2402, !tbaa !174
  %345 = getelementptr double, ptr %334, i64 -1, !dbg !2403
  %346 = load double, ptr %345, align 8, !dbg !2403, !tbaa !174
  %347 = fmul double %344, %346, !dbg !2404
  %348 = fdiv double %347, %335, !dbg !2405
  %349 = fdiv double %348, %339, !dbg !2406
  %350 = fmul double %327, %349, !dbg !2407
  %handler_result38 = call double @fSubHandlerDouble(double %342, double %350), !dbg !2408
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !2238, metadata !DIExpression()), !dbg !2267
  %351 = fmul double %276, %handler_result38, !dbg !2408
  %352 = getelementptr inbounds double, ptr %4, i64 %330, !dbg !2409
  store double %351, ptr %352, align 8, !dbg !2410, !tbaa !174
  %353 = uitofp i64 %326 to double, !dbg !2411
  %354 = fmul double %353, %2, !dbg !2412
  %355 = fmul double %354, %351, !dbg !2413
  %356 = load double, ptr %334, align 8, !dbg !2414, !tbaa !174
  %357 = load double, ptr %338, align 8, !dbg !2415, !tbaa !174
  %358 = fmul double %356, %357, !dbg !2416
  %359 = getelementptr inbounds double, ptr %4, i64 %329, !dbg !2417
  %360 = load double, ptr %359, align 8, !dbg !2417, !tbaa !174
  %361 = fmul double %358, %360, !dbg !2418
  %handler_result39 = call double @fSubHandlerDouble(double %355, double %361), !dbg !2419
  %362 = fmul double %189, %handler_result39, !dbg !2419
  %363 = getelementptr inbounds double, ptr %5, i64 %330, !dbg !2420
  store double %362, ptr %363, align 8, !dbg !2421, !tbaa !174
  %handler_result40 = call double @fAddHandlerDouble(double %353, double 1.000000e+00), !dbg !2422
  %364 = fmul double %handler_result40, %353, !dbg !2422
  %handler_result41 = call double @fSubHandlerDouble(double %316, double %364), !dbg !2423
  %365 = load double, ptr %352, align 8, !dbg !2423, !tbaa !174
  %366 = fmul double %handler_result41, %365, !dbg !2424
  %367 = fmul double %233, %362, !dbg !2425
  %handler_result42 = call double @fSubHandlerDouble(double %366, double %367), !dbg !2426
  %368 = getelementptr inbounds double, ptr %6, i64 %330, !dbg !2426
  store double %handler_result42, ptr %368, align 8, !dbg !2427, !tbaa !174
  call void @llvm.dbg.value(metadata double %328, metadata !2242, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !2241, metadata !DIExpression()), !dbg !2267
  %369 = add i64 %326, 1, !dbg !2428
  call void @llvm.dbg.value(metadata i64 %369, metadata !2234, metadata !DIExpression()), !dbg !2267
  %370 = icmp ugt i64 %369, %1, !dbg !2387
  br i1 %370, label %269, label %325, !dbg !2389, !llvm.loop !2429

371:                                              ; preds = %269
  %372 = add i64 %245, 1, !dbg !2431
  %373 = add i64 %372, %278, !dbg !2432
  br label %374, !dbg !2432

374:                                              ; preds = %371, %235
  %375 = phi double [ %286, %371 ], [ 0x5D48966111CD756, %235 ], !dbg !2267
  %376 = phi double [ %276, %371 ], [ 1.000000e+280, %235 ], !dbg !2267
  %377 = phi i64 [ %373, %371 ], [ 2, %235 ], !dbg !2433
  %378 = fmul double %188, %376, !dbg !2432
  call void @llvm.dbg.value(metadata double %378, metadata !2240, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %377, metadata !2237, metadata !DIExpression()), !dbg !2267
  %379 = getelementptr double, ptr %190, i64 %191, !dbg !2434
  %380 = getelementptr double, ptr %379, i64 -1, !dbg !2434
  %381 = load double, ptr %380, align 8, !dbg !2434, !tbaa !174
  %382 = fmul double %381, %3, !dbg !2435
  %383 = load double, ptr %379, align 8, !dbg !2436, !tbaa !174
  %384 = fdiv double %382, %383, !dbg !2437
  %385 = fmul double %375, %384, !dbg !2438
  call void @llvm.dbg.value(metadata double %385, metadata !2239, metadata !DIExpression()), !dbg !2267
  %386 = fmul double %378, %385, !dbg !2439
  %387 = getelementptr inbounds double, ptr %4, i64 %377, !dbg !2440
  store double %386, ptr %387, align 8, !dbg !2441, !tbaa !174
  %388 = uitofp i64 %1 to double, !dbg !2442
  %389 = fmul double %233, %388, !dbg !2443
  %390 = fmul double %389, %386, !dbg !2444
  %391 = getelementptr inbounds double, ptr %5, i64 %377, !dbg !2445
  store double %390, ptr %391, align 8, !dbg !2446, !tbaa !174
  %392 = fmul double %232, %388, !dbg !2447
  %handler_result43 = call double @fAddHandlerDouble(double %388, double 1.000000e+00), !dbg !2448
  %handler_result44 = call double @fSubHandlerDouble(double %392, double %handler_result43), !dbg !2449
  %393 = fmul double %handler_result44, %388, !dbg !2449
  %394 = load double, ptr %387, align 8, !dbg !2450, !tbaa !174
  %395 = fmul double %393, %394, !dbg !2451
  %396 = fmul double %233, %390, !dbg !2452
  %handler_result45 = call double @fSubHandlerDouble(double %395, double %396), !dbg !2453
  %397 = getelementptr inbounds double, ptr %6, i64 %377, !dbg !2453
  store double %handler_result45, ptr %397, align 8, !dbg !2454, !tbaa !174
  br label %398, !dbg !2455

398:                                              ; preds = %374, %231, %185, %180, %176, %156
  %399 = phi i32 [ 0, %156 ], [ 1, %176 ], [ 1, %180 ], [ 1, %185 ], [ 0, %231 ], [ 0, %374 ], !dbg !2009
  tail call void @llvm.dbg.value(metadata i32 %399, metadata !1991, metadata !DIExpression()), !dbg !2000
  switch i32 %0, label %401 [
    i32 3, label %455
    i32 0, label %455
    i32 1, label %402
    i32 2, label %400
  ], !dbg !2456

400:                                              ; preds = %398
  tail call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCC, metadata !1993, metadata !DIExpression()), !dbg !2000
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !1994, metadata !DIExpression()), !dbg !2000
  br label %402, !dbg !2458

401:                                              ; preds = %398
  br label %402, !dbg !2462

402:                                              ; preds = %401, %400, %398
  %403 = phi double [ 0x3FE6A09E667F3BCC, %400 ], [ 0x3FD20DD750429B6D, %398 ], [ 0.000000e+00, %401 ], !dbg !2000
  %404 = phi double [ 5.000000e-01, %400 ], [ 0x3FC9884533D43651, %398 ], [ 0.000000e+00, %401 ], !dbg !2000
  tail call void @llvm.dbg.value(metadata double %404, metadata !1994, metadata !DIExpression()), !dbg !2000
  tail call void @llvm.dbg.value(metadata double %403, metadata !1993, metadata !DIExpression()), !dbg !2000
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1998, metadata !DIExpression()), !dbg !2463
  %405 = getelementptr inbounds double, ptr %4, i64 %11, !dbg !2462
  tail call void @llvm.dbg.value(metadata ptr %405, metadata !1999, metadata !DIExpression()), !dbg !2463
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1995, metadata !DIExpression()), !dbg !2463
  %406 = tail call i64 @llvm.umax.i64(i64 %8, i64 1), !dbg !2464
  br label %407, !dbg !2464

407:                                              ; preds = %451, %402
  %408 = phi i64 [ 1, %402 ], [ %453, %451 ]
  %409 = phi i64 [ 1, %402 ], [ %452, %451 ]
  %410 = phi i64 [ 0, %402 ], [ %414, %451 ]
  tail call void @llvm.dbg.value(metadata i64 %409, metadata !1998, metadata !DIExpression()), !dbg !2463
  tail call void @llvm.dbg.value(metadata i64 %410, metadata !1995, metadata !DIExpression()), !dbg !2463
  %411 = getelementptr inbounds double, ptr %405, i64 %409, !dbg !2466
  %412 = load double, ptr %411, align 8, !dbg !2466, !tbaa !174
  %413 = fmul double %403, %412, !dbg !2469
  tail call void @llvm.dbg.value(metadata i64 %410, metadata !424, metadata !DIExpression()), !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 0, metadata !429, metadata !DIExpression()), !dbg !2470
  %414 = add nuw i64 %410, 1, !dbg !2472
  %415 = mul i64 %414, %410, !dbg !2473
  %416 = lshr i64 %415, 1, !dbg !2474
  %417 = getelementptr inbounds double, ptr %4, i64 %416, !dbg !2475
  %418 = load double, ptr %417, align 8, !dbg !2476, !tbaa !174
  %419 = fmul double %418, %413, !dbg !2476
  store double %419, ptr %417, align 8, !dbg !2476, !tbaa !174
  %420 = load double, ptr %411, align 8, !dbg !2477, !tbaa !174
  %421 = fmul double %403, %420, !dbg !2478
  tail call void @llvm.dbg.value(metadata i64 %410, metadata !424, metadata !DIExpression()), !dbg !2479
  tail call void @llvm.dbg.value(metadata i64 0, metadata !429, metadata !DIExpression()), !dbg !2479
  %422 = getelementptr inbounds double, ptr %5, i64 %416, !dbg !2481
  %423 = load double, ptr %422, align 8, !dbg !2482, !tbaa !174
  %424 = fmul double %423, %421, !dbg !2482
  store double %424, ptr %422, align 8, !dbg !2482, !tbaa !174
  %425 = load double, ptr %411, align 8, !dbg !2483, !tbaa !174
  %426 = fmul double %403, %425, !dbg !2484
  tail call void @llvm.dbg.value(metadata i64 %410, metadata !424, metadata !DIExpression()), !dbg !2485
  tail call void @llvm.dbg.value(metadata i64 0, metadata !429, metadata !DIExpression()), !dbg !2485
  %427 = getelementptr inbounds double, ptr %6, i64 %416, !dbg !2487
  %428 = load double, ptr %427, align 8, !dbg !2488, !tbaa !174
  %429 = fmul double %428, %426, !dbg !2488
  store double %429, ptr %427, align 8, !dbg !2488, !tbaa !174
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1997, metadata !DIExpression()), !dbg !2463
  %430 = icmp eq i64 %410, 0, !dbg !2489
  br i1 %430, label %451, label %431, !dbg !2492

431:                                              ; preds = %431, %407
  %432 = phi i64 [ %449, %431 ], [ 1, %407 ]
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1997, metadata !DIExpression()), !dbg !2463
  %433 = load double, ptr %411, align 8, !dbg !2493, !tbaa !174
  %434 = fmul double %404, %433, !dbg !2495
  tail call void @llvm.dbg.value(metadata i64 %410, metadata !424, metadata !DIExpression()), !dbg !2496
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !429, metadata !DIExpression()), !dbg !2496
  %435 = add i64 %432, %416, !dbg !2498
  %436 = getelementptr inbounds double, ptr %4, i64 %435, !dbg !2499
  %437 = load double, ptr %436, align 8, !dbg !2500, !tbaa !174
  %438 = fmul double %437, %434, !dbg !2500
  store double %438, ptr %436, align 8, !dbg !2500, !tbaa !174
  %439 = load double, ptr %411, align 8, !dbg !2501, !tbaa !174
  %440 = fmul double %404, %439, !dbg !2502
  tail call void @llvm.dbg.value(metadata i64 %410, metadata !424, metadata !DIExpression()), !dbg !2503
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !429, metadata !DIExpression()), !dbg !2503
  %441 = getelementptr inbounds double, ptr %5, i64 %435, !dbg !2505
  %442 = load double, ptr %441, align 8, !dbg !2506, !tbaa !174
  %443 = fmul double %442, %440, !dbg !2506
  store double %443, ptr %441, align 8, !dbg !2506, !tbaa !174
  %444 = load double, ptr %411, align 8, !dbg !2507, !tbaa !174
  %445 = fmul double %404, %444, !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 %410, metadata !424, metadata !DIExpression()), !dbg !2509
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !429, metadata !DIExpression()), !dbg !2509
  %446 = getelementptr inbounds double, ptr %6, i64 %435, !dbg !2511
  %447 = load double, ptr %446, align 8, !dbg !2512, !tbaa !174
  %448 = fmul double %447, %445, !dbg !2512
  store double %448, ptr %446, align 8, !dbg !2512, !tbaa !174
  %449 = add nuw i64 %432, 1, !dbg !2513
  tail call void @llvm.dbg.value(metadata i64 %449, metadata !1997, metadata !DIExpression()), !dbg !2463
  %450 = icmp eq i64 %449, %408, !dbg !2489
  br i1 %450, label %451, label %431, !dbg !2492, !llvm.loop !2514

451:                                              ; preds = %431, %407
  %452 = add i64 %409, 2, !dbg !2516
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1998, metadata !DIExpression()), !dbg !2463
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1995, metadata !DIExpression()), !dbg !2463
  %453 = add i64 %408, 1, !dbg !2464
  %454 = icmp eq i64 %414, %406, !dbg !2517
  br i1 %454, label %455, label %407, !dbg !2464, !llvm.loop !2518

455:                                              ; preds = %451, %398, %398, %27, %26, %21, %17
  %456 = phi i32 [ %399, %398 ], [ %399, %398 ], [ 0, %27 ], [ 1, %26 ], [ 1, %21 ], [ 1, %17 ], [ %399, %451 ]
  ret i32 %456, !dbg !2520
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @gsl_sf_legendre_array_n(i64 noundef %0) local_unnamed_addr #1 !dbg !2521 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2523, metadata !DIExpression()), !dbg !2526
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !121, metadata !DIExpression()), !dbg !2527
  %2 = add i64 %0, 1, !dbg !2529
  %3 = add i64 %0, 2, !dbg !2530
  %4 = mul i64 %2, %3, !dbg !2531
  %5 = lshr i64 %4, 1, !dbg !2532
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2524, metadata !DIExpression()), !dbg !2526
  %6 = shl i64 %0, 1, !dbg !2533
  %7 = add i64 %6, 2, !dbg !2534
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2525, metadata !DIExpression()), !dbg !2526
  %8 = add i64 %7, %5, !dbg !2535
  ret i64 %8, !dbg !2536
}

declare !dbg !2537 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./legendre_source.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "27bee2610f02633bcf1aba6eef105df9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 20)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 232, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 26)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 50)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !20, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !69, globals: !71, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "legendre_P.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7baa93af6faeddf9f1b1bfd24dd1b08a")
!21 = !{!22, !30}
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 314, baseType: !24, size: 32, elements: !25)
!23 = !DIFile(filename: "../gsl/gsl_sf_legendre.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "d813561ffda8cd1a9abe9196cf770c77")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "GSL_SF_LEGENDRE_SCHMIDT", value: 0)
!27 = !DIEnumerator(name: "GSL_SF_LEGENDRE_SPHARM", value: 1)
!28 = !DIEnumerator(name: "GSL_SF_LEGENDRE_FULL", value: 2)
!29 = !DIEnumerator(name: "GSL_SF_LEGENDRE_NONE", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 39, baseType: !32, size: 32, elements: !33)
!31 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!34 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!35 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!36 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!37 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!38 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!39 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!40 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!41 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!42 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!43 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!44 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!45 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!46 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!47 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!48 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!49 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!50 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!51 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!52 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!53 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!54 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!55 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!56 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!57 = !DIEnumerator(name: "GSL_ESING", value: 21)
!58 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!59 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!60 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!61 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!62 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!63 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!64 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!65 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!66 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!67 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!68 = !DIEnumerator(name: "GSL_EOF", value: 32)
!69 = !{!70}
!70 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!71 = !{!0, !7, !9, !14}
!72 = !{i32 7, !"Dwarf Version", i32 5}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"wchar_size", i32 4}
!75 = !{i32 8, !"PIC Level", i32 2}
!76 = !{i32 7, !"PIE Level", i32 2}
!77 = !{i32 7, !"uwtable", i32 2}
!78 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!79 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!80 = distinct !DISubprogram(name: "gsl_sf_legendre_array", scope: !2, file: !2, line: 74, type: !81, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !91)
!81 = !DISubroutineType(types: !82)
!82 = !{!32, !83, !85, !89, !90}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_legendre_t", file: !23, line: 320, baseType: !22)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !87, line: 18, baseType: !88)
!87 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!88 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!91 = !{!92, !93, !94, !95, !96}
!92 = !DILocalVariable(name: "norm", arg: 1, scope: !80, file: !2, line: 75, type: !83)
!93 = !DILocalVariable(name: "lmax", arg: 2, scope: !80, file: !2, line: 75, type: !85)
!94 = !DILocalVariable(name: "x", arg: 3, scope: !80, file: !2, line: 75, type: !89)
!95 = !DILocalVariable(name: "result_array", arg: 4, scope: !80, file: !2, line: 76, type: !90)
!96 = !DILocalVariable(name: "s", scope: !80, file: !2, line: 78, type: !32)
!97 = !DILocation(line: 0, scope: !80)
!98 = !DILocation(line: 78, column: 11, scope: !80)
!99 = !{i32 0, i32 2}
!100 = !DILocation(line: 79, column: 3, scope: !80)
!101 = distinct !DISubprogram(name: "gsl_sf_legendre_array_e", scope: !2, file: !2, line: 95, type: !102, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{!32, !83, !85, !89, !89, !90}
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !117, !118, !119}
!105 = !DILocalVariable(name: "norm", arg: 1, scope: !101, file: !2, line: 96, type: !83)
!106 = !DILocalVariable(name: "lmax", arg: 2, scope: !101, file: !2, line: 96, type: !85)
!107 = !DILocalVariable(name: "x", arg: 3, scope: !101, file: !2, line: 96, type: !89)
!108 = !DILocalVariable(name: "csphase", arg: 4, scope: !101, file: !2, line: 97, type: !89)
!109 = !DILocalVariable(name: "result_array", arg: 5, scope: !101, file: !2, line: 97, type: !90)
!110 = !DILocalVariable(name: "s", scope: !101, file: !2, line: 99, type: !32)
!111 = !DILocalVariable(name: "nlm", scope: !101, file: !2, line: 100, type: !85)
!112 = !DILocalVariable(name: "i", scope: !101, file: !2, line: 102, type: !86)
!113 = !DILocalVariable(name: "fac1", scope: !101, file: !2, line: 111, type: !70)
!114 = !DILocalVariable(name: "fac2", scope: !101, file: !2, line: 111, type: !70)
!115 = !DILocalVariable(name: "l", scope: !116, file: !2, line: 162, type: !86)
!116 = distinct !DILexicalBlock(scope: !101, file: !2, line: 161, column: 3)
!117 = !DILocalVariable(name: "m", scope: !116, file: !2, line: 162, type: !86)
!118 = !DILocalVariable(name: "twoellp1", scope: !116, file: !2, line: 163, type: !86)
!119 = !DILocalVariable(name: "sqrts", scope: !116, file: !2, line: 164, type: !90)
!120 = !DILocation(line: 0, scope: !101)
!121 = !DILocalVariable(name: "lmax", arg: 1, scope: !122, file: !20, line: 66, type: !85)
!122 = distinct !DISubprogram(name: "gsl_sf_legendre_nlm", scope: !20, file: !20, line: 66, type: !123, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{!86, !85}
!125 = !{!121}
!126 = !DILocation(line: 0, scope: !122, inlinedAt: !127)
!127 = distinct !DILocation(line: 100, column: 22, scope: !101)
!128 = !DILocation(line: 68, column: 17, scope: !122, inlinedAt: !127)
!129 = !DILocation(line: 68, column: 30, scope: !122, inlinedAt: !127)
!130 = !DILocation(line: 68, column: 22, scope: !122, inlinedAt: !127)
!131 = !DILocation(line: 68, column: 35, scope: !122, inlinedAt: !127)
!132 = !DILocation(line: 113, column: 12, scope: !133)
!133 = distinct !DILexicalBlock(scope: !101, file: !2, line: 113, column: 7)
!134 = !DILocation(line: 0, scope: !133)
!135 = !DILocation(line: 113, column: 7, scope: !101)
!136 = !DILocalVariable(name: "lmax", arg: 1, scope: !137, file: !2, line: 426, type: !85)
!137 = distinct !DISubprogram(name: "legendre_array_none_e", scope: !2, file: !2, line: 425, type: !138, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{!32, !85, !89, !89, !90}
!140 = !{!136, !141, !142, !143, !144, !148, !149, !150, !151, !152, !153, !154, !155, !156}
!141 = !DILocalVariable(name: "x", arg: 2, scope: !137, file: !2, line: 426, type: !89)
!142 = !DILocalVariable(name: "csphase", arg: 3, scope: !137, file: !2, line: 426, type: !89)
!143 = !DILocalVariable(name: "result_array", arg: 4, scope: !137, file: !2, line: 426, type: !90)
!144 = !DILocalVariable(name: "u", scope: !145, file: !2, line: 444, type: !89)
!145 = distinct !DILexicalBlock(scope: !146, file: !2, line: 443, column: 5)
!146 = distinct !DILexicalBlock(scope: !147, file: !2, line: 438, column: 12)
!147 = distinct !DILexicalBlock(scope: !137, file: !2, line: 428, column: 7)
!148 = !DILocalVariable(name: "l", scope: !145, file: !2, line: 454, type: !86)
!149 = !DILocalVariable(name: "m", scope: !145, file: !2, line: 454, type: !86)
!150 = !DILocalVariable(name: "k", scope: !145, file: !2, line: 455, type: !86)
!151 = !DILocalVariable(name: "idxmm", scope: !145, file: !2, line: 455, type: !86)
!152 = !DILocalVariable(name: "plm", scope: !145, file: !2, line: 456, type: !70)
!153 = !DILocalVariable(name: "pmm", scope: !145, file: !2, line: 456, type: !70)
!154 = !DILocalVariable(name: "pm1", scope: !145, file: !2, line: 457, type: !70)
!155 = !DILocalVariable(name: "pm2", scope: !145, file: !2, line: 458, type: !70)
!156 = !DILocalVariable(name: "twomm1", scope: !145, file: !2, line: 459, type: !70)
!157 = !DILocation(line: 0, scope: !137, inlinedAt: !158)
!158 = distinct !DILocation(line: 116, column: 11, scope: !159)
!159 = distinct !DILexicalBlock(scope: !133, file: !2, line: 114, column: 5)
!160 = !DILocation(line: 428, column: 15, scope: !147, inlinedAt: !158)
!161 = !DILocation(line: 430, column: 7, scope: !162, inlinedAt: !158)
!162 = distinct !DILexicalBlock(scope: !163, file: !2, line: 430, column: 7)
!163 = distinct !DILexicalBlock(scope: !147, file: !2, line: 429, column: 5)
!164 = !DILocation(line: 438, column: 20, scope: !146, inlinedAt: !158)
!165 = !DILocation(line: 438, column: 27, scope: !146, inlinedAt: !158)
!166 = !DILocation(line: 440, column: 7, scope: !167, inlinedAt: !158)
!167 = distinct !DILexicalBlock(scope: !168, file: !2, line: 440, column: 7)
!168 = distinct !DILexicalBlock(scope: !146, file: !2, line: 439, column: 5)
!169 = !DILocation(line: 444, column: 46, scope: !145, inlinedAt: !158)
!170 = !DILocation(line: 444, column: 39, scope: !145, inlinedAt: !158)
!171 = !DILocation(line: 444, column: 24, scope: !145, inlinedAt: !158)
!172 = !DILocation(line: 0, scope: !145, inlinedAt: !158)
!173 = !DILocation(line: 466, column: 23, scope: !145, inlinedAt: !158)
!174 = !{!175, !175, i64 0}
!175 = !{!"double", !176, i64 0}
!176 = !{!"omnipotent char", !177, i64 0}
!177 = !{!"Simple C/C++ TBAA"}
!178 = !DILocation(line: 474, column: 16, scope: !179, inlinedAt: !158)
!179 = distinct !DILexicalBlock(scope: !145, file: !2, line: 474, column: 11)
!180 = !DILocation(line: 474, column: 11, scope: !145, inlinedAt: !158)
!181 = !DILocation(line: 477, column: 7, scope: !145, inlinedAt: !158)
!182 = !DILocation(line: 477, column: 23, scope: !145, inlinedAt: !158)
!183 = !DILocation(line: 488, column: 21, scope: !184, inlinedAt: !158)
!184 = distinct !DILexicalBlock(scope: !185, file: !2, line: 488, column: 7)
!185 = distinct !DILexicalBlock(scope: !145, file: !2, line: 488, column: 7)
!186 = !DILocation(line: 488, column: 7, scope: !185, inlinedAt: !158)
!187 = !DILocation(line: 511, column: 7, scope: !188, inlinedAt: !158)
!188 = distinct !DILexicalBlock(scope: !145, file: !2, line: 511, column: 7)
!189 = !DILocation(line: 577, column: 22, scope: !145, inlinedAt: !158)
!190 = !DILocation(line: 490, column: 13, scope: !191, inlinedAt: !158)
!191 = distinct !DILexicalBlock(scope: !184, file: !2, line: 489, column: 9)
!192 = !DILocation(line: 491, column: 20, scope: !191, inlinedAt: !158)
!193 = !DILocation(line: 491, column: 23, scope: !191, inlinedAt: !158)
!194 = !DILocation(line: 491, column: 18, scope: !191, inlinedAt: !158)
!195 = !DILocation(line: 491, column: 28, scope: !191, inlinedAt: !158)
!196 = !DILocation(line: 491, column: 32, scope: !191, inlinedAt: !158)
!197 = !DILocation(line: 491, column: 43, scope: !191, inlinedAt: !158)
!198 = !DILocation(line: 491, column: 40, scope: !191, inlinedAt: !158)
!199 = !DILocation(line: 491, column: 48, scope: !191, inlinedAt: !158)
!200 = !DILocation(line: 491, column: 57, scope: !191, inlinedAt: !158)
!201 = !DILocation(line: 491, column: 55, scope: !191, inlinedAt: !158)
!202 = !DILocation(line: 492, column: 11, scope: !191, inlinedAt: !158)
!203 = !DILocation(line: 492, column: 27, scope: !191, inlinedAt: !158)
!204 = !DILocation(line: 488, column: 30, scope: !184, inlinedAt: !158)
!205 = distinct !{!205, !186, !206, !207}
!206 = !DILocation(line: 502, column: 9, scope: !185, inlinedAt: !158)
!207 = !{!"llvm.loop.mustprogress"}
!208 = !DILocation(line: 511, column: 21, scope: !209, inlinedAt: !158)
!209 = distinct !DILexicalBlock(scope: !188, file: !2, line: 511, column: 7)
!210 = distinct !{!210, !187, !211, !207}
!211 = !DILocation(line: 571, column: 9, scope: !188, inlinedAt: !158)
!212 = !DILocation(line: 520, column: 22, scope: !213, inlinedAt: !158)
!213 = distinct !DILexicalBlock(scope: !209, file: !2, line: 512, column: 9)
!214 = !DILocation(line: 520, column: 17, scope: !213, inlinedAt: !158)
!215 = !DILocation(line: 522, column: 30, scope: !213, inlinedAt: !158)
!216 = !DILocation(line: 522, column: 15, scope: !213, inlinedAt: !158)
!217 = !DILocation(line: 523, column: 11, scope: !213, inlinedAt: !158)
!218 = !DILocation(line: 523, column: 31, scope: !213, inlinedAt: !158)
!219 = !DILocation(line: 541, column: 25, scope: !213, inlinedAt: !158)
!220 = !DILocation(line: 542, column: 19, scope: !213, inlinedAt: !158)
!221 = !DILocation(line: 542, column: 29, scope: !213, inlinedAt: !158)
!222 = !DILocation(line: 542, column: 32, scope: !213, inlinedAt: !158)
!223 = !DILocation(line: 542, column: 27, scope: !213, inlinedAt: !158)
!224 = !DILocation(line: 542, column: 25, scope: !213, inlinedAt: !158)
!225 = !DILocation(line: 543, column: 11, scope: !213, inlinedAt: !158)
!226 = !DILocation(line: 543, column: 27, scope: !213, inlinedAt: !158)
!227 = !DILocation(line: 554, column: 22, scope: !228, inlinedAt: !158)
!228 = distinct !DILexicalBlock(scope: !213, file: !2, line: 554, column: 11)
!229 = !DILocation(line: 554, column: 29, scope: !230, inlinedAt: !158)
!230 = distinct !DILexicalBlock(scope: !228, file: !2, line: 554, column: 11)
!231 = !DILocation(line: 554, column: 11, scope: !228, inlinedAt: !158)
!232 = !DILocation(line: 556, column: 17, scope: !233, inlinedAt: !158)
!233 = distinct !DILexicalBlock(scope: !230, file: !2, line: 555, column: 13)
!234 = !DILocation(line: 557, column: 24, scope: !233, inlinedAt: !158)
!235 = !DILocation(line: 557, column: 27, scope: !233, inlinedAt: !158)
!236 = !DILocation(line: 557, column: 22, scope: !233, inlinedAt: !158)
!237 = !DILocation(line: 557, column: 32, scope: !233, inlinedAt: !158)
!238 = !DILocation(line: 557, column: 36, scope: !233, inlinedAt: !158)
!239 = !DILocation(line: 557, column: 51, scope: !233, inlinedAt: !158)
!240 = !DILocation(line: 557, column: 44, scope: !233, inlinedAt: !158)
!241 = !DILocation(line: 557, column: 56, scope: !233, inlinedAt: !158)
!242 = !DILocation(line: 558, column: 33, scope: !233, inlinedAt: !158)
!243 = !DILocation(line: 558, column: 21, scope: !233, inlinedAt: !158)
!244 = !DILocation(line: 557, column: 63, scope: !233, inlinedAt: !158)
!245 = !DILocation(line: 559, column: 15, scope: !233, inlinedAt: !158)
!246 = !DILocation(line: 559, column: 31, scope: !233, inlinedAt: !158)
!247 = !DILocation(line: 554, column: 38, scope: !230, inlinedAt: !158)
!248 = distinct !{!248, !231, !249, !207}
!249 = !DILocation(line: 570, column: 13, scope: !228, inlinedAt: !158)
!250 = !DILocation(line: 576, column: 14, scope: !145, inlinedAt: !158)
!251 = !DILocation(line: 577, column: 26, scope: !145, inlinedAt: !158)
!252 = !DILocation(line: 577, column: 11, scope: !145, inlinedAt: !158)
!253 = !DILocation(line: 578, column: 7, scope: !145, inlinedAt: !158)
!254 = !DILocation(line: 578, column: 27, scope: !145, inlinedAt: !158)
!255 = !DILocation(line: 588, column: 7, scope: !145, inlinedAt: !158)
!256 = !DILocalVariable(name: "lmax", arg: 1, scope: !257, file: !2, line: 218, type: !85)
!257 = distinct !DISubprogram(name: "legendre_array_schmidt_e", scope: !2, file: !2, line: 217, type: !138, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !258)
!258 = !{!256, !259, !260, !261, !262, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278}
!259 = !DILocalVariable(name: "x", arg: 2, scope: !257, file: !2, line: 218, type: !89)
!260 = !DILocalVariable(name: "csphase", arg: 3, scope: !257, file: !2, line: 218, type: !89)
!261 = !DILocalVariable(name: "result_array", arg: 4, scope: !257, file: !2, line: 218, type: !90)
!262 = !DILocalVariable(name: "eps", scope: !263, file: !2, line: 236, type: !89)
!263 = distinct !DILexicalBlock(scope: !264, file: !2, line: 235, column: 5)
!264 = distinct !DILexicalBlock(scope: !265, file: !2, line: 230, column: 12)
!265 = distinct !DILexicalBlock(scope: !257, file: !2, line: 220, column: 7)
!266 = !DILocalVariable(name: "u", scope: !263, file: !2, line: 237, type: !89)
!267 = !DILocalVariable(name: "l", scope: !263, file: !2, line: 247, type: !86)
!268 = !DILocalVariable(name: "m", scope: !263, file: !2, line: 247, type: !86)
!269 = !DILocalVariable(name: "k", scope: !263, file: !2, line: 248, type: !86)
!270 = !DILocalVariable(name: "idxmm", scope: !263, file: !2, line: 248, type: !86)
!271 = !DILocalVariable(name: "plm", scope: !263, file: !2, line: 249, type: !70)
!272 = !DILocalVariable(name: "pmm", scope: !263, file: !2, line: 250, type: !70)
!273 = !DILocalVariable(name: "rescalem", scope: !263, file: !2, line: 251, type: !70)
!274 = !DILocalVariable(name: "pm1", scope: !263, file: !2, line: 252, type: !70)
!275 = !DILocalVariable(name: "pm2", scope: !263, file: !2, line: 253, type: !70)
!276 = !DILocalVariable(name: "nlm", scope: !263, file: !2, line: 254, type: !86)
!277 = !DILocalVariable(name: "sqrts", scope: !263, file: !2, line: 255, type: !90)
!278 = !DILocalVariable(name: "linv", scope: !279, file: !2, line: 288, type: !70)
!279 = distinct !DILexicalBlock(scope: !280, file: !2, line: 287, column: 9)
!280 = distinct !DILexicalBlock(scope: !281, file: !2, line: 286, column: 7)
!281 = distinct !DILexicalBlock(scope: !263, file: !2, line: 286, column: 7)
!282 = !DILocation(line: 0, scope: !257, inlinedAt: !283)
!283 = distinct !DILocation(line: 121, column: 11, scope: !284)
!284 = distinct !DILexicalBlock(scope: !133, file: !2, line: 119, column: 5)
!285 = !DILocation(line: 220, column: 15, scope: !265, inlinedAt: !283)
!286 = !DILocation(line: 222, column: 7, scope: !287, inlinedAt: !283)
!287 = distinct !DILexicalBlock(scope: !288, file: !2, line: 222, column: 7)
!288 = distinct !DILexicalBlock(scope: !265, file: !2, line: 221, column: 5)
!289 = !DILocation(line: 230, column: 20, scope: !264, inlinedAt: !283)
!290 = !DILocation(line: 230, column: 27, scope: !264, inlinedAt: !283)
!291 = !DILocation(line: 232, column: 7, scope: !292, inlinedAt: !283)
!292 = distinct !DILexicalBlock(scope: !293, file: !2, line: 232, column: 7)
!293 = distinct !DILexicalBlock(scope: !264, file: !2, line: 231, column: 5)
!294 = !DILocation(line: 0, scope: !263, inlinedAt: !283)
!295 = !DILocation(line: 237, column: 46, scope: !263, inlinedAt: !283)
!296 = !DILocation(line: 237, column: 39, scope: !263, inlinedAt: !283)
!297 = !DILocation(line: 237, column: 24, scope: !263, inlinedAt: !283)
!298 = !DILocation(line: 0, scope: !122, inlinedAt: !299)
!299 = distinct !DILocation(line: 254, column: 20, scope: !263, inlinedAt: !283)
!300 = !DILocation(line: 255, column: 25, scope: !263, inlinedAt: !283)
!301 = !DILocalVariable(name: "lmax", arg: 1, scope: !302, file: !20, line: 109, type: !85)
!302 = distinct !DISubprogram(name: "legendre_sqrts", scope: !20, file: !20, line: 109, type: !303, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !305)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !85, !90}
!305 = !{!301, !306, !307}
!306 = !DILocalVariable(name: "array", arg: 2, scope: !302, file: !20, line: 109, type: !90)
!307 = !DILocalVariable(name: "l", scope: !302, file: !20, line: 111, type: !86)
!308 = !DILocation(line: 0, scope: !302, inlinedAt: !309)
!309 = distinct !DILocation(line: 258, column: 7, scope: !263, inlinedAt: !283)
!310 = !DILocation(line: 112, column: 3, scope: !311, inlinedAt: !309)
!311 = distinct !DILexicalBlock(scope: !302, file: !20, line: 112, column: 3)
!312 = !DILocation(line: 113, column: 21, scope: !313, inlinedAt: !309)
!313 = distinct !DILexicalBlock(scope: !311, file: !20, line: 112, column: 3)
!314 = !DILocation(line: 113, column: 16, scope: !313, inlinedAt: !309)
!315 = !DILocation(line: 113, column: 5, scope: !313, inlinedAt: !309)
!316 = !DILocation(line: 113, column: 14, scope: !313, inlinedAt: !309)
!317 = !DILocation(line: 112, column: 34, scope: !313, inlinedAt: !309)
!318 = distinct !{!318, !310, !319, !207}
!319 = !DILocation(line: 113, column: 31, scope: !311, inlinedAt: !309)
!320 = distinct !{!320, !321}
!321 = !{!"llvm.loop.unroll.disable"}
!322 = !DILocation(line: 264, column: 23, scope: !263, inlinedAt: !283)
!323 = !DILocation(line: 272, column: 16, scope: !324, inlinedAt: !283)
!324 = distinct !DILexicalBlock(scope: !263, file: !2, line: 272, column: 11)
!325 = !DILocation(line: 272, column: 11, scope: !263, inlinedAt: !283)
!326 = !DILocation(line: 275, column: 7, scope: !263, inlinedAt: !283)
!327 = !DILocation(line: 275, column: 23, scope: !263, inlinedAt: !283)
!328 = !DILocation(line: 286, column: 21, scope: !280, inlinedAt: !283)
!329 = !DILocation(line: 286, column: 7, scope: !281, inlinedAt: !283)
!330 = !DILocation(line: 288, column: 31, scope: !279, inlinedAt: !283)
!331 = !DILocation(line: 288, column: 29, scope: !279, inlinedAt: !283)
!332 = !DILocation(line: 0, scope: !279, inlinedAt: !283)
!333 = !DILocation(line: 292, column: 30, scope: !279, inlinedAt: !283)
!334 = !DILocation(line: 292, column: 34, scope: !279, inlinedAt: !283)
!335 = !DILocation(line: 292, column: 55, scope: !279, inlinedAt: !283)
!336 = !DILocation(line: 293, column: 11, scope: !279, inlinedAt: !283)
!337 = !DILocation(line: 293, column: 27, scope: !279, inlinedAt: !283)
!338 = !DILocation(line: 321, column: 7, scope: !339, inlinedAt: !283)
!339 = distinct !DILexicalBlock(scope: !263, file: !2, line: 321, column: 7)
!340 = !DILocation(line: 290, column: 13, scope: !279, inlinedAt: !283)
!341 = !DILocation(line: 286, column: 30, scope: !280, inlinedAt: !283)
!342 = distinct !{!342, !329, !343, !207}
!343 = !DILocation(line: 303, column: 9, scope: !281, inlinedAt: !283)
!344 = !DILocation(line: 321, column: 21, scope: !345, inlinedAt: !283)
!345 = distinct !DILexicalBlock(scope: !339, file: !2, line: 321, column: 7)
!346 = distinct !{!346, !338, !347, !207}
!347 = !DILocation(line: 387, column: 9, scope: !339, inlinedAt: !283)
!348 = !DILocation(line: 324, column: 20, scope: !349, inlinedAt: !283)
!349 = distinct !DILexicalBlock(scope: !345, file: !2, line: 322, column: 9)
!350 = !DILocation(line: 332, column: 22, scope: !349, inlinedAt: !283)
!351 = !DILocation(line: 332, column: 17, scope: !349, inlinedAt: !283)
!352 = !DILocation(line: 333, column: 36, scope: !349, inlinedAt: !283)
!353 = !DILocation(line: 333, column: 28, scope: !349, inlinedAt: !283)
!354 = !DILocation(line: 333, column: 26, scope: !349, inlinedAt: !283)
!355 = !DILocation(line: 333, column: 47, scope: !349, inlinedAt: !283)
!356 = !DILocation(line: 333, column: 45, scope: !349, inlinedAt: !283)
!357 = !DILocation(line: 333, column: 15, scope: !349, inlinedAt: !283)
!358 = !DILocation(line: 334, column: 37, scope: !349, inlinedAt: !283)
!359 = !DILocation(line: 334, column: 11, scope: !349, inlinedAt: !283)
!360 = !DILocation(line: 334, column: 31, scope: !349, inlinedAt: !283)
!361 = !DILocation(line: 351, column: 25, scope: !349, inlinedAt: !283)
!362 = !DILocation(line: 352, column: 33, scope: !349, inlinedAt: !283)
!363 = !DILocation(line: 352, column: 21, scope: !349, inlinedAt: !283)
!364 = !DILocation(line: 352, column: 19, scope: !349, inlinedAt: !283)
!365 = !DILocation(line: 352, column: 38, scope: !349, inlinedAt: !283)
!366 = !DILocation(line: 353, column: 33, scope: !349, inlinedAt: !283)
!367 = !DILocation(line: 353, column: 11, scope: !349, inlinedAt: !283)
!368 = !DILocation(line: 353, column: 27, scope: !349, inlinedAt: !283)
!369 = !DILocation(line: 366, column: 22, scope: !370, inlinedAt: !283)
!370 = distinct !DILexicalBlock(scope: !349, file: !2, line: 366, column: 11)
!371 = !DILocation(line: 366, column: 16, scope: !370, inlinedAt: !283)
!372 = !DILocation(line: 366, column: 29, scope: !373, inlinedAt: !283)
!373 = distinct !DILexicalBlock(scope: !370, file: !2, line: 366, column: 11)
!374 = !DILocation(line: 366, column: 11, scope: !370, inlinedAt: !283)
!375 = !DILocation(line: 368, column: 17, scope: !376, inlinedAt: !283)
!376 = distinct !DILexicalBlock(scope: !373, file: !2, line: 367, column: 13)
!377 = !DILocation(line: 370, column: 19, scope: !376, inlinedAt: !283)
!378 = !DILocation(line: 370, column: 22, scope: !376, inlinedAt: !283)
!379 = !DILocation(line: 370, column: 17, scope: !376, inlinedAt: !283)
!380 = !DILocation(line: 370, column: 29, scope: !376, inlinedAt: !283)
!381 = !DILocation(line: 370, column: 27, scope: !376, inlinedAt: !283)
!382 = !DILocation(line: 370, column: 52, scope: !376, inlinedAt: !283)
!383 = !DILocation(line: 370, column: 44, scope: !376, inlinedAt: !283)
!384 = !DILocation(line: 370, column: 42, scope: !376, inlinedAt: !283)
!385 = !DILocation(line: 370, column: 57, scope: !376, inlinedAt: !283)
!386 = !DILocation(line: 370, column: 61, scope: !376, inlinedAt: !283)
!387 = !DILocation(line: 371, column: 17, scope: !376, inlinedAt: !283)
!388 = !DILocation(line: 371, column: 36, scope: !376, inlinedAt: !283)
!389 = !DILocation(line: 371, column: 34, scope: !376, inlinedAt: !283)
!390 = !DILocation(line: 371, column: 53, scope: !376, inlinedAt: !283)
!391 = !DILocation(line: 372, column: 30, scope: !376, inlinedAt: !283)
!392 = !DILocation(line: 372, column: 45, scope: !376, inlinedAt: !283)
!393 = !DILocation(line: 373, column: 37, scope: !376, inlinedAt: !283)
!394 = !DILocation(line: 373, column: 15, scope: !376, inlinedAt: !283)
!395 = !DILocation(line: 373, column: 31, scope: !376, inlinedAt: !283)
!396 = !DILocation(line: 366, column: 38, scope: !373, inlinedAt: !283)
!397 = distinct !{!397, !374, !398, !207}
!398 = !DILocation(line: 386, column: 13, scope: !370, inlinedAt: !283)
!399 = !DILocation(line: 321, scope: !339, inlinedAt: !283)
!400 = !DILocation(line: 391, column: 16, scope: !263, inlinedAt: !283)
!401 = !DILocation(line: 393, column: 24, scope: !263, inlinedAt: !283)
!402 = !DILocation(line: 393, column: 22, scope: !263, inlinedAt: !283)
!403 = !DILocation(line: 393, column: 46, scope: !263, inlinedAt: !283)
!404 = !DILocation(line: 393, column: 44, scope: !263, inlinedAt: !283)
!405 = !DILocation(line: 393, column: 11, scope: !263, inlinedAt: !283)
!406 = !DILocation(line: 394, column: 33, scope: !263, inlinedAt: !283)
!407 = !DILocation(line: 394, column: 7, scope: !263, inlinedAt: !283)
!408 = !DILocation(line: 394, column: 27, scope: !263, inlinedAt: !283)
!409 = !DILocation(line: 404, column: 7, scope: !263, inlinedAt: !283)
!410 = !DILocation(line: 141, column: 39, scope: !411)
!411 = distinct !DILexicalBlock(scope: !101, file: !2, line: 141, column: 7)
!412 = !DILocation(line: 154, column: 5, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !2, line: 151, column: 5)
!414 = distinct !DILexicalBlock(scope: !415, file: !2, line: 150, column: 12)
!415 = distinct !DILexicalBlock(scope: !411, file: !2, line: 145, column: 12)
!416 = !DILocation(line: 164, column: 23, scope: !116)
!417 = !DILocation(line: 0, scope: !116)
!418 = !DILocation(line: 166, column: 5, scope: !419)
!419 = distinct !DILexicalBlock(scope: !116, file: !2, line: 166, column: 5)
!420 = !DILocation(line: 169, column: 11, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !2, line: 167, column: 7)
!422 = distinct !DILexicalBlock(scope: !419, file: !2, line: 166, column: 5)
!423 = !DILocation(line: 169, column: 27, scope: !421)
!424 = !DILocalVariable(name: "l", arg: 1, scope: !425, file: !20, line: 93, type: !85)
!425 = distinct !DISubprogram(name: "gsl_sf_legendre_array_index", scope: !20, file: !20, line: 93, type: !426, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{!86, !85, !85}
!428 = !{!424, !429}
!429 = !DILocalVariable(name: "m", arg: 2, scope: !425, file: !20, line: 93, type: !85)
!430 = !DILocation(line: 0, scope: !425, inlinedAt: !431)
!431 = distinct !DILocation(line: 168, column: 22, scope: !421)
!432 = !DILocation(line: 95, column: 18, scope: !425, inlinedAt: !431)
!433 = !DILocation(line: 95, column: 13, scope: !425, inlinedAt: !431)
!434 = !DILocation(line: 95, column: 23, scope: !425, inlinedAt: !431)
!435 = !DILocation(line: 168, column: 9, scope: !421)
!436 = !DILocation(line: 168, column: 57, scope: !421)
!437 = !DILocation(line: 179, column: 23, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !2, line: 179, column: 9)
!439 = distinct !DILexicalBlock(scope: !421, file: !2, line: 179, column: 9)
!440 = !DILocation(line: 179, column: 9, scope: !439)
!441 = !DILocation(line: 182, column: 15, scope: !442)
!442 = distinct !DILexicalBlock(scope: !438, file: !2, line: 180, column: 11)
!443 = !DILocation(line: 182, column: 31, scope: !442)
!444 = !DILocation(line: 0, scope: !425, inlinedAt: !445)
!445 = distinct !DILocation(line: 181, column: 26, scope: !442)
!446 = !DILocation(line: 181, column: 13, scope: !442)
!447 = !DILocation(line: 181, column: 61, scope: !442)
!448 = !DILocation(line: 179, column: 29, scope: !438)
!449 = distinct !{!449, !440, !450, !207}
!450 = !DILocation(line: 191, column: 11, scope: !439)
!451 = !DILocation(line: 193, column: 18, scope: !421)
!452 = !DILocation(line: 166, column: 19, scope: !422)
!453 = distinct !{!453, !418, !454, !207}
!454 = !DILocation(line: 194, column: 7, scope: !419)
!455 = !DILocation(line: 198, column: 1, scope: !101)
!456 = !DILocation(line: 0, scope: !122)
!457 = !DILocation(line: 68, column: 17, scope: !122)
!458 = !DILocation(line: 68, column: 30, scope: !122)
!459 = !DILocation(line: 68, column: 22, scope: !122)
!460 = !DILocation(line: 68, column: 35, scope: !122)
!461 = !DILocation(line: 68, column: 3, scope: !122)
!462 = !DISubprogram(name: "sqrt", scope: !463, file: !463, line: 143, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!463 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!464 = !DISubroutineType(types: !465)
!465 = !{!70, !70}
!466 = !DILocation(line: 0, scope: !425)
!467 = !DILocation(line: 95, column: 18, scope: !425)
!468 = !DILocation(line: 95, column: 13, scope: !425)
!469 = !DILocation(line: 95, column: 23, scope: !425)
!470 = !DILocation(line: 95, column: 27, scope: !425)
!471 = !DILocation(line: 95, column: 3, scope: !425)
!472 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv_array", scope: !2, file: !2, line: 74, type: !473, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!32, !83, !85, !89, !90, !90}
!475 = !{!476, !477, !478, !479, !480, !481}
!476 = !DILocalVariable(name: "norm", arg: 1, scope: !472, file: !2, line: 75, type: !83)
!477 = !DILocalVariable(name: "lmax", arg: 2, scope: !472, file: !2, line: 75, type: !85)
!478 = !DILocalVariable(name: "x", arg: 3, scope: !472, file: !2, line: 75, type: !89)
!479 = !DILocalVariable(name: "result_array", arg: 4, scope: !472, file: !2, line: 76, type: !90)
!480 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !472, file: !2, line: 76, type: !90)
!481 = !DILocalVariable(name: "s", scope: !472, file: !2, line: 78, type: !32)
!482 = !DILocation(line: 0, scope: !472)
!483 = !DILocation(line: 78, column: 11, scope: !472)
!484 = !DILocation(line: 79, column: 3, scope: !472)
!485 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv_array_e", scope: !2, file: !2, line: 95, type: !486, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!32, !83, !85, !89, !89, !90, !90}
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !504, !505, !506}
!489 = !DILocalVariable(name: "norm", arg: 1, scope: !485, file: !2, line: 96, type: !83)
!490 = !DILocalVariable(name: "lmax", arg: 2, scope: !485, file: !2, line: 96, type: !85)
!491 = !DILocalVariable(name: "x", arg: 3, scope: !485, file: !2, line: 96, type: !89)
!492 = !DILocalVariable(name: "csphase", arg: 4, scope: !485, file: !2, line: 97, type: !89)
!493 = !DILocalVariable(name: "result_array", arg: 5, scope: !485, file: !2, line: 97, type: !90)
!494 = !DILocalVariable(name: "result_deriv_array", arg: 6, scope: !485, file: !2, line: 97, type: !90)
!495 = !DILocalVariable(name: "s", scope: !485, file: !2, line: 99, type: !32)
!496 = !DILocalVariable(name: "nlm", scope: !485, file: !2, line: 100, type: !85)
!497 = !DILocalVariable(name: "i", scope: !485, file: !2, line: 102, type: !86)
!498 = !DILocalVariable(name: "u", scope: !485, file: !2, line: 104, type: !89)
!499 = !DILocalVariable(name: "uinv", scope: !485, file: !2, line: 105, type: !89)
!500 = !DILocalVariable(name: "fac1", scope: !485, file: !2, line: 111, type: !70)
!501 = !DILocalVariable(name: "fac2", scope: !485, file: !2, line: 111, type: !70)
!502 = !DILocalVariable(name: "l", scope: !503, file: !2, line: 162, type: !86)
!503 = distinct !DILexicalBlock(scope: !485, file: !2, line: 161, column: 3)
!504 = !DILocalVariable(name: "m", scope: !503, file: !2, line: 162, type: !86)
!505 = !DILocalVariable(name: "twoellp1", scope: !503, file: !2, line: 163, type: !86)
!506 = !DILocalVariable(name: "sqrts", scope: !503, file: !2, line: 164, type: !90)
!507 = !DILocation(line: 0, scope: !485)
!508 = !DILocation(line: 0, scope: !122, inlinedAt: !509)
!509 = distinct !DILocation(line: 100, column: 22, scope: !485)
!510 = !DILocation(line: 68, column: 17, scope: !122, inlinedAt: !509)
!511 = !DILocation(line: 68, column: 30, scope: !122, inlinedAt: !509)
!512 = !DILocation(line: 68, column: 22, scope: !122, inlinedAt: !509)
!513 = !DILocation(line: 68, column: 35, scope: !122, inlinedAt: !509)
!514 = !DILocation(line: 104, column: 42, scope: !485)
!515 = !DILocation(line: 104, column: 35, scope: !485)
!516 = !DILocation(line: 104, column: 20, scope: !485)
!517 = !DILocation(line: 113, column: 12, scope: !518)
!518 = distinct !DILexicalBlock(scope: !485, file: !2, line: 113, column: 7)
!519 = !DILocation(line: 0, scope: !518)
!520 = !DILocation(line: 113, column: 7, scope: !485)
!521 = !DILocalVariable(name: "lmax", arg: 1, scope: !522, file: !2, line: 426, type: !85)
!522 = distinct !DISubprogram(name: "legendre_deriv_array_none_e", scope: !2, file: !2, line: 425, type: !523, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !525)
!523 = !DISubroutineType(types: !524)
!524 = !{!32, !85, !89, !89, !90, !90}
!525 = !{!521, !526, !527, !528, !529, !530, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545}
!526 = !DILocalVariable(name: "x", arg: 2, scope: !522, file: !2, line: 426, type: !89)
!527 = !DILocalVariable(name: "csphase", arg: 3, scope: !522, file: !2, line: 426, type: !89)
!528 = !DILocalVariable(name: "result_array", arg: 4, scope: !522, file: !2, line: 426, type: !90)
!529 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !522, file: !2, line: 426, type: !90)
!530 = !DILocalVariable(name: "u", scope: !531, file: !2, line: 444, type: !89)
!531 = distinct !DILexicalBlock(scope: !532, file: !2, line: 443, column: 5)
!532 = distinct !DILexicalBlock(scope: !533, file: !2, line: 438, column: 12)
!533 = distinct !DILexicalBlock(scope: !534, file: !2, line: 433, column: 12)
!534 = distinct !DILexicalBlock(scope: !522, file: !2, line: 428, column: 7)
!535 = !DILocalVariable(name: "uinv", scope: !531, file: !2, line: 446, type: !89)
!536 = !DILocalVariable(name: "xbyu", scope: !531, file: !2, line: 452, type: !89)
!537 = !DILocalVariable(name: "l", scope: !531, file: !2, line: 454, type: !86)
!538 = !DILocalVariable(name: "m", scope: !531, file: !2, line: 454, type: !86)
!539 = !DILocalVariable(name: "k", scope: !531, file: !2, line: 455, type: !86)
!540 = !DILocalVariable(name: "idxmm", scope: !531, file: !2, line: 455, type: !86)
!541 = !DILocalVariable(name: "plm", scope: !531, file: !2, line: 456, type: !70)
!542 = !DILocalVariable(name: "pmm", scope: !531, file: !2, line: 456, type: !70)
!543 = !DILocalVariable(name: "pm1", scope: !531, file: !2, line: 457, type: !70)
!544 = !DILocalVariable(name: "pm2", scope: !531, file: !2, line: 458, type: !70)
!545 = !DILocalVariable(name: "twomm1", scope: !531, file: !2, line: 459, type: !70)
!546 = !DILocation(line: 0, scope: !522, inlinedAt: !547)
!547 = distinct !DILocation(line: 116, column: 11, scope: !548)
!548 = distinct !DILexicalBlock(scope: !518, file: !2, line: 114, column: 5)
!549 = !DILocation(line: 428, column: 15, scope: !534, inlinedAt: !547)
!550 = !DILocation(line: 430, column: 7, scope: !551, inlinedAt: !547)
!551 = distinct !DILexicalBlock(scope: !552, file: !2, line: 430, column: 7)
!552 = distinct !DILexicalBlock(scope: !534, file: !2, line: 429, column: 5)
!553 = !DILocation(line: 433, column: 12, scope: !533, inlinedAt: !547)
!554 = !DILocation(line: 433, column: 20, scope: !533, inlinedAt: !547)
!555 = !DILocation(line: 433, column: 12, scope: !534, inlinedAt: !547)
!556 = !DILocation(line: 435, column: 7, scope: !557, inlinedAt: !547)
!557 = distinct !DILexicalBlock(scope: !558, file: !2, line: 435, column: 7)
!558 = distinct !DILexicalBlock(scope: !533, file: !2, line: 434, column: 5)
!559 = !DILocation(line: 438, column: 20, scope: !532, inlinedAt: !547)
!560 = !DILocation(line: 438, column: 27, scope: !532, inlinedAt: !547)
!561 = !DILocation(line: 440, column: 7, scope: !562, inlinedAt: !547)
!562 = distinct !DILexicalBlock(scope: !563, file: !2, line: 440, column: 7)
!563 = distinct !DILexicalBlock(scope: !532, file: !2, line: 439, column: 5)
!564 = !DILocation(line: 444, column: 24, scope: !531, inlinedAt: !547)
!565 = !DILocation(line: 0, scope: !531, inlinedAt: !547)
!566 = !DILocation(line: 446, column: 31, scope: !531, inlinedAt: !547)
!567 = !DILocation(line: 452, column: 29, scope: !531, inlinedAt: !547)
!568 = !DILocation(line: 466, column: 23, scope: !531, inlinedAt: !547)
!569 = !DILocation(line: 468, column: 29, scope: !531, inlinedAt: !547)
!570 = !DILocation(line: 474, column: 16, scope: !571, inlinedAt: !547)
!571 = distinct !DILexicalBlock(scope: !531, file: !2, line: 474, column: 11)
!572 = !DILocation(line: 474, column: 11, scope: !531, inlinedAt: !547)
!573 = !DILocation(line: 477, column: 7, scope: !531, inlinedAt: !547)
!574 = !DILocation(line: 477, column: 23, scope: !531, inlinedAt: !547)
!575 = !DILocation(line: 479, column: 31, scope: !531, inlinedAt: !547)
!576 = !DILocation(line: 479, column: 7, scope: !531, inlinedAt: !547)
!577 = !DILocation(line: 479, column: 29, scope: !531, inlinedAt: !547)
!578 = !DILocation(line: 488, column: 21, scope: !579, inlinedAt: !547)
!579 = distinct !DILexicalBlock(scope: !580, file: !2, line: 488, column: 7)
!580 = distinct !DILexicalBlock(scope: !531, file: !2, line: 488, column: 7)
!581 = !DILocation(line: 488, column: 7, scope: !580, inlinedAt: !547)
!582 = !DILocation(line: 511, column: 7, scope: !583, inlinedAt: !547)
!583 = distinct !DILexicalBlock(scope: !531, file: !2, line: 511, column: 7)
!584 = !DILocation(line: 577, column: 22, scope: !531, inlinedAt: !547)
!585 = !DILocation(line: 490, column: 13, scope: !586, inlinedAt: !547)
!586 = distinct !DILexicalBlock(scope: !579, file: !2, line: 489, column: 9)
!587 = !DILocation(line: 491, column: 20, scope: !586, inlinedAt: !547)
!588 = !DILocation(line: 491, column: 23, scope: !586, inlinedAt: !547)
!589 = !DILocation(line: 491, column: 18, scope: !586, inlinedAt: !547)
!590 = !DILocation(line: 491, column: 28, scope: !586, inlinedAt: !547)
!591 = !DILocation(line: 491, column: 32, scope: !586, inlinedAt: !547)
!592 = !DILocation(line: 491, column: 43, scope: !586, inlinedAt: !547)
!593 = !DILocation(line: 491, column: 40, scope: !586, inlinedAt: !547)
!594 = !DILocation(line: 491, column: 48, scope: !586, inlinedAt: !547)
!595 = !DILocation(line: 491, column: 57, scope: !586, inlinedAt: !547)
!596 = !DILocation(line: 491, column: 55, scope: !586, inlinedAt: !547)
!597 = !DILocation(line: 492, column: 11, scope: !586, inlinedAt: !547)
!598 = !DILocation(line: 492, column: 27, scope: !586, inlinedAt: !547)
!599 = !DILocation(line: 494, column: 35, scope: !586, inlinedAt: !547)
!600 = !DILocation(line: 494, column: 57, scope: !586, inlinedAt: !547)
!601 = !DILocation(line: 494, column: 46, scope: !586, inlinedAt: !547)
!602 = !DILocation(line: 494, column: 64, scope: !586, inlinedAt: !547)
!603 = !DILocation(line: 494, column: 11, scope: !586, inlinedAt: !547)
!604 = !DILocation(line: 494, column: 33, scope: !586, inlinedAt: !547)
!605 = !DILocation(line: 488, column: 30, scope: !579, inlinedAt: !547)
!606 = distinct !{!606, !581, !607, !207}
!607 = !DILocation(line: 502, column: 9, scope: !580, inlinedAt: !547)
!608 = !DILocation(line: 511, column: 21, scope: !609, inlinedAt: !547)
!609 = distinct !DILexicalBlock(scope: !583, file: !2, line: 511, column: 7)
!610 = distinct !{!610, !582, !611, !207}
!611 = !DILocation(line: 571, column: 9, scope: !583, inlinedAt: !547)
!612 = !DILocation(line: 520, column: 22, scope: !613, inlinedAt: !547)
!613 = distinct !DILexicalBlock(scope: !609, file: !2, line: 512, column: 9)
!614 = !DILocation(line: 520, column: 17, scope: !613, inlinedAt: !547)
!615 = !DILocation(line: 522, column: 30, scope: !613, inlinedAt: !547)
!616 = !DILocation(line: 522, column: 15, scope: !613, inlinedAt: !547)
!617 = !DILocation(line: 523, column: 11, scope: !613, inlinedAt: !547)
!618 = !DILocation(line: 523, column: 31, scope: !613, inlinedAt: !547)
!619 = !DILocation(line: 525, column: 39, scope: !613, inlinedAt: !547)
!620 = !DILocation(line: 525, column: 41, scope: !613, inlinedAt: !547)
!621 = !DILocation(line: 525, column: 48, scope: !613, inlinedAt: !547)
!622 = !DILocation(line: 525, column: 11, scope: !613, inlinedAt: !547)
!623 = !DILocation(line: 525, column: 37, scope: !613, inlinedAt: !547)
!624 = !DILocation(line: 541, column: 25, scope: !613, inlinedAt: !547)
!625 = !DILocation(line: 542, column: 19, scope: !613, inlinedAt: !547)
!626 = !DILocation(line: 542, column: 29, scope: !613, inlinedAt: !547)
!627 = !DILocation(line: 542, column: 32, scope: !613, inlinedAt: !547)
!628 = !DILocation(line: 542, column: 27, scope: !613, inlinedAt: !547)
!629 = !DILocation(line: 542, column: 25, scope: !613, inlinedAt: !547)
!630 = !DILocation(line: 543, column: 11, scope: !613, inlinedAt: !547)
!631 = !DILocation(line: 543, column: 27, scope: !613, inlinedAt: !547)
!632 = !DILocation(line: 545, column: 54, scope: !613, inlinedAt: !547)
!633 = !DILocation(line: 545, column: 62, scope: !613, inlinedAt: !547)
!634 = !DILocation(line: 545, column: 70, scope: !613, inlinedAt: !547)
!635 = !DILocation(line: 545, column: 74, scope: !613, inlinedAt: !547)
!636 = !DILocation(line: 545, column: 41, scope: !613, inlinedAt: !547)
!637 = !DILocation(line: 545, column: 11, scope: !613, inlinedAt: !547)
!638 = !DILocation(line: 545, column: 33, scope: !613, inlinedAt: !547)
!639 = !DILocation(line: 554, column: 22, scope: !640, inlinedAt: !547)
!640 = distinct !DILexicalBlock(scope: !613, file: !2, line: 554, column: 11)
!641 = !DILocation(line: 554, column: 29, scope: !642, inlinedAt: !547)
!642 = distinct !DILexicalBlock(scope: !640, file: !2, line: 554, column: 11)
!643 = !DILocation(line: 554, column: 11, scope: !640, inlinedAt: !547)
!644 = !DILocation(line: 556, column: 17, scope: !645, inlinedAt: !547)
!645 = distinct !DILexicalBlock(scope: !642, file: !2, line: 555, column: 13)
!646 = !DILocation(line: 557, column: 24, scope: !645, inlinedAt: !547)
!647 = !DILocation(line: 557, column: 27, scope: !645, inlinedAt: !547)
!648 = !DILocation(line: 557, column: 22, scope: !645, inlinedAt: !547)
!649 = !DILocation(line: 557, column: 32, scope: !645, inlinedAt: !547)
!650 = !DILocation(line: 557, column: 36, scope: !645, inlinedAt: !547)
!651 = !DILocation(line: 557, column: 47, scope: !645, inlinedAt: !547)
!652 = !DILocation(line: 557, column: 51, scope: !645, inlinedAt: !547)
!653 = !DILocation(line: 557, column: 44, scope: !645, inlinedAt: !547)
!654 = !DILocation(line: 557, column: 56, scope: !645, inlinedAt: !547)
!655 = !DILocation(line: 558, column: 33, scope: !645, inlinedAt: !547)
!656 = !DILocation(line: 558, column: 21, scope: !645, inlinedAt: !547)
!657 = !DILocation(line: 557, column: 63, scope: !645, inlinedAt: !547)
!658 = !DILocation(line: 559, column: 15, scope: !645, inlinedAt: !547)
!659 = !DILocation(line: 559, column: 31, scope: !645, inlinedAt: !547)
!660 = !DILocation(line: 561, column: 48, scope: !645, inlinedAt: !547)
!661 = !DILocation(line: 561, column: 56, scope: !645, inlinedAt: !547)
!662 = !DILocation(line: 561, column: 64, scope: !645, inlinedAt: !547)
!663 = !DILocation(line: 561, column: 66, scope: !645, inlinedAt: !547)
!664 = !DILocation(line: 561, column: 70, scope: !645, inlinedAt: !547)
!665 = !DILocation(line: 561, column: 45, scope: !645, inlinedAt: !547)
!666 = !DILocation(line: 561, column: 15, scope: !645, inlinedAt: !547)
!667 = !DILocation(line: 561, column: 37, scope: !645, inlinedAt: !547)
!668 = !DILocation(line: 554, column: 38, scope: !642, inlinedAt: !547)
!669 = distinct !{!669, !643, !670, !207}
!670 = !DILocation(line: 570, column: 13, scope: !640, inlinedAt: !547)
!671 = !DILocation(line: 575, column: 18, scope: !531, inlinedAt: !547)
!672 = !DILocation(line: 575, column: 13, scope: !531, inlinedAt: !547)
!673 = !DILocation(line: 577, column: 26, scope: !531, inlinedAt: !547)
!674 = !DILocation(line: 577, column: 11, scope: !531, inlinedAt: !547)
!675 = !DILocation(line: 578, column: 7, scope: !531, inlinedAt: !547)
!676 = !DILocation(line: 578, column: 27, scope: !531, inlinedAt: !547)
!677 = !DILocation(line: 580, column: 35, scope: !531, inlinedAt: !547)
!678 = !DILocation(line: 580, column: 40, scope: !531, inlinedAt: !547)
!679 = !DILocation(line: 580, column: 44, scope: !531, inlinedAt: !547)
!680 = !DILocation(line: 580, column: 50, scope: !531, inlinedAt: !547)
!681 = !DILocation(line: 580, column: 7, scope: !531, inlinedAt: !547)
!682 = !DILocation(line: 580, column: 33, scope: !531, inlinedAt: !547)
!683 = !DILocation(line: 588, column: 7, scope: !531, inlinedAt: !547)
!684 = !DILocalVariable(name: "lmax", arg: 1, scope: !685, file: !2, line: 218, type: !85)
!685 = distinct !DISubprogram(name: "legendre_deriv_array_schmidt_e", scope: !2, file: !2, line: 217, type: !523, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !686)
!686 = !{!684, !687, !688, !689, !690, !691, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710}
!687 = !DILocalVariable(name: "x", arg: 2, scope: !685, file: !2, line: 218, type: !89)
!688 = !DILocalVariable(name: "csphase", arg: 3, scope: !685, file: !2, line: 218, type: !89)
!689 = !DILocalVariable(name: "result_array", arg: 4, scope: !685, file: !2, line: 218, type: !90)
!690 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !685, file: !2, line: 218, type: !90)
!691 = !DILocalVariable(name: "eps", scope: !692, file: !2, line: 236, type: !89)
!692 = distinct !DILexicalBlock(scope: !693, file: !2, line: 235, column: 5)
!693 = distinct !DILexicalBlock(scope: !694, file: !2, line: 230, column: 12)
!694 = distinct !DILexicalBlock(scope: !695, file: !2, line: 225, column: 12)
!695 = distinct !DILexicalBlock(scope: !685, file: !2, line: 220, column: 7)
!696 = !DILocalVariable(name: "u", scope: !692, file: !2, line: 237, type: !89)
!697 = !DILocalVariable(name: "uinv", scope: !692, file: !2, line: 239, type: !89)
!698 = !DILocalVariable(name: "xbyu", scope: !692, file: !2, line: 245, type: !89)
!699 = !DILocalVariable(name: "l", scope: !692, file: !2, line: 247, type: !86)
!700 = !DILocalVariable(name: "m", scope: !692, file: !2, line: 247, type: !86)
!701 = !DILocalVariable(name: "k", scope: !692, file: !2, line: 248, type: !86)
!702 = !DILocalVariable(name: "idxmm", scope: !692, file: !2, line: 248, type: !86)
!703 = !DILocalVariable(name: "plm", scope: !692, file: !2, line: 249, type: !70)
!704 = !DILocalVariable(name: "pmm", scope: !692, file: !2, line: 250, type: !70)
!705 = !DILocalVariable(name: "rescalem", scope: !692, file: !2, line: 251, type: !70)
!706 = !DILocalVariable(name: "pm1", scope: !692, file: !2, line: 252, type: !70)
!707 = !DILocalVariable(name: "pm2", scope: !692, file: !2, line: 253, type: !70)
!708 = !DILocalVariable(name: "nlm", scope: !692, file: !2, line: 254, type: !86)
!709 = !DILocalVariable(name: "sqrts", scope: !692, file: !2, line: 255, type: !90)
!710 = !DILocalVariable(name: "linv", scope: !711, file: !2, line: 288, type: !70)
!711 = distinct !DILexicalBlock(scope: !712, file: !2, line: 287, column: 9)
!712 = distinct !DILexicalBlock(scope: !713, file: !2, line: 286, column: 7)
!713 = distinct !DILexicalBlock(scope: !692, file: !2, line: 286, column: 7)
!714 = !DILocation(line: 0, scope: !685, inlinedAt: !715)
!715 = distinct !DILocation(line: 121, column: 11, scope: !716)
!716 = distinct !DILexicalBlock(scope: !518, file: !2, line: 119, column: 5)
!717 = !DILocation(line: 220, column: 15, scope: !695, inlinedAt: !715)
!718 = !DILocation(line: 222, column: 7, scope: !719, inlinedAt: !715)
!719 = distinct !DILexicalBlock(scope: !720, file: !2, line: 222, column: 7)
!720 = distinct !DILexicalBlock(scope: !695, file: !2, line: 221, column: 5)
!721 = !DILocation(line: 225, column: 12, scope: !694, inlinedAt: !715)
!722 = !DILocation(line: 225, column: 20, scope: !694, inlinedAt: !715)
!723 = !DILocation(line: 225, column: 12, scope: !695, inlinedAt: !715)
!724 = !DILocation(line: 227, column: 7, scope: !725, inlinedAt: !715)
!725 = distinct !DILexicalBlock(scope: !726, file: !2, line: 227, column: 7)
!726 = distinct !DILexicalBlock(scope: !694, file: !2, line: 226, column: 5)
!727 = !DILocation(line: 230, column: 20, scope: !693, inlinedAt: !715)
!728 = !DILocation(line: 230, column: 27, scope: !693, inlinedAt: !715)
!729 = !DILocation(line: 232, column: 7, scope: !730, inlinedAt: !715)
!730 = distinct !DILexicalBlock(scope: !731, file: !2, line: 232, column: 7)
!731 = distinct !DILexicalBlock(scope: !693, file: !2, line: 231, column: 5)
!732 = !DILocation(line: 0, scope: !692, inlinedAt: !715)
!733 = !DILocation(line: 237, column: 24, scope: !692, inlinedAt: !715)
!734 = !DILocation(line: 0, scope: !122, inlinedAt: !735)
!735 = distinct !DILocation(line: 254, column: 20, scope: !692, inlinedAt: !715)
!736 = !DILocation(line: 255, column: 25, scope: !692, inlinedAt: !715)
!737 = !DILocation(line: 0, scope: !302, inlinedAt: !738)
!738 = distinct !DILocation(line: 258, column: 7, scope: !692, inlinedAt: !715)
!739 = !DILocation(line: 112, column: 3, scope: !311, inlinedAt: !738)
!740 = !DILocation(line: 113, column: 21, scope: !313, inlinedAt: !738)
!741 = !DILocation(line: 113, column: 16, scope: !313, inlinedAt: !738)
!742 = !DILocation(line: 113, column: 5, scope: !313, inlinedAt: !738)
!743 = !DILocation(line: 113, column: 14, scope: !313, inlinedAt: !738)
!744 = !DILocation(line: 112, column: 34, scope: !313, inlinedAt: !738)
!745 = distinct !{!745, !739, !746, !207}
!746 = !DILocation(line: 113, column: 31, scope: !311, inlinedAt: !738)
!747 = distinct !{!747, !321}
!748 = !DILocation(line: 239, column: 31, scope: !692, inlinedAt: !715)
!749 = !DILocation(line: 245, column: 29, scope: !692, inlinedAt: !715)
!750 = !DILocation(line: 264, column: 23, scope: !692, inlinedAt: !715)
!751 = !DILocation(line: 266, column: 29, scope: !692, inlinedAt: !715)
!752 = !DILocation(line: 272, column: 16, scope: !753, inlinedAt: !715)
!753 = distinct !DILexicalBlock(scope: !692, file: !2, line: 272, column: 11)
!754 = !DILocation(line: 272, column: 11, scope: !692, inlinedAt: !715)
!755 = !DILocation(line: 275, column: 7, scope: !692, inlinedAt: !715)
!756 = !DILocation(line: 275, column: 23, scope: !692, inlinedAt: !715)
!757 = !DILocation(line: 277, column: 31, scope: !692, inlinedAt: !715)
!758 = !DILocation(line: 277, column: 7, scope: !692, inlinedAt: !715)
!759 = !DILocation(line: 277, column: 29, scope: !692, inlinedAt: !715)
!760 = !DILocation(line: 286, column: 21, scope: !712, inlinedAt: !715)
!761 = !DILocation(line: 286, column: 7, scope: !713, inlinedAt: !715)
!762 = !DILocation(line: 321, column: 7, scope: !763, inlinedAt: !715)
!763 = distinct !DILexicalBlock(scope: !692, file: !2, line: 321, column: 7)
!764 = !DILocation(line: 288, column: 31, scope: !711, inlinedAt: !715)
!765 = !DILocation(line: 288, column: 29, scope: !711, inlinedAt: !715)
!766 = !DILocation(line: 0, scope: !711, inlinedAt: !715)
!767 = !DILocation(line: 290, column: 13, scope: !711, inlinedAt: !715)
!768 = !DILocation(line: 292, column: 30, scope: !711, inlinedAt: !715)
!769 = !DILocation(line: 292, column: 34, scope: !711, inlinedAt: !715)
!770 = !DILocation(line: 292, column: 55, scope: !711, inlinedAt: !715)
!771 = !DILocation(line: 293, column: 11, scope: !711, inlinedAt: !715)
!772 = !DILocation(line: 293, column: 27, scope: !711, inlinedAt: !715)
!773 = !DILocation(line: 295, column: 40, scope: !711, inlinedAt: !715)
!774 = !DILocation(line: 295, column: 49, scope: !711, inlinedAt: !715)
!775 = !DILocation(line: 295, column: 44, scope: !711, inlinedAt: !715)
!776 = !DILocation(line: 295, column: 11, scope: !711, inlinedAt: !715)
!777 = !DILocation(line: 295, column: 33, scope: !711, inlinedAt: !715)
!778 = !DILocation(line: 286, column: 30, scope: !712, inlinedAt: !715)
!779 = distinct !{!779, !761, !780, !207}
!780 = !DILocation(line: 303, column: 9, scope: !713, inlinedAt: !715)
!781 = !DILocation(line: 321, column: 21, scope: !782, inlinedAt: !715)
!782 = distinct !DILexicalBlock(scope: !763, file: !2, line: 321, column: 7)
!783 = distinct !{!783, !762, !784, !207}
!784 = !DILocation(line: 387, column: 9, scope: !763, inlinedAt: !715)
!785 = !DILocation(line: 324, column: 20, scope: !786, inlinedAt: !715)
!786 = distinct !DILexicalBlock(scope: !782, file: !2, line: 322, column: 9)
!787 = !DILocation(line: 332, column: 22, scope: !786, inlinedAt: !715)
!788 = !DILocation(line: 332, column: 17, scope: !786, inlinedAt: !715)
!789 = !DILocation(line: 333, column: 36, scope: !786, inlinedAt: !715)
!790 = !DILocation(line: 333, column: 28, scope: !786, inlinedAt: !715)
!791 = !DILocation(line: 333, column: 26, scope: !786, inlinedAt: !715)
!792 = !DILocation(line: 333, column: 47, scope: !786, inlinedAt: !715)
!793 = !DILocation(line: 333, column: 45, scope: !786, inlinedAt: !715)
!794 = !DILocation(line: 333, column: 15, scope: !786, inlinedAt: !715)
!795 = !DILocation(line: 334, column: 37, scope: !786, inlinedAt: !715)
!796 = !DILocation(line: 334, column: 11, scope: !786, inlinedAt: !715)
!797 = !DILocation(line: 334, column: 31, scope: !786, inlinedAt: !715)
!798 = !DILocation(line: 336, column: 39, scope: !786, inlinedAt: !715)
!799 = !DILocation(line: 336, column: 41, scope: !786, inlinedAt: !715)
!800 = !DILocation(line: 336, column: 48, scope: !786, inlinedAt: !715)
!801 = !DILocation(line: 336, column: 11, scope: !786, inlinedAt: !715)
!802 = !DILocation(line: 336, column: 37, scope: !786, inlinedAt: !715)
!803 = !DILocation(line: 351, column: 25, scope: !786, inlinedAt: !715)
!804 = !DILocation(line: 352, column: 33, scope: !786, inlinedAt: !715)
!805 = !DILocation(line: 352, column: 21, scope: !786, inlinedAt: !715)
!806 = !DILocation(line: 352, column: 19, scope: !786, inlinedAt: !715)
!807 = !DILocation(line: 352, column: 38, scope: !786, inlinedAt: !715)
!808 = !DILocation(line: 353, column: 33, scope: !786, inlinedAt: !715)
!809 = !DILocation(line: 353, column: 11, scope: !786, inlinedAt: !715)
!810 = !DILocation(line: 353, column: 27, scope: !786, inlinedAt: !715)
!811 = !DILocation(line: 356, column: 31, scope: !786, inlinedAt: !715)
!812 = !DILocation(line: 356, column: 35, scope: !786, inlinedAt: !715)
!813 = !DILocation(line: 357, column: 21, scope: !786, inlinedAt: !715)
!814 = !DILocation(line: 357, column: 40, scope: !786, inlinedAt: !715)
!815 = !DILocation(line: 357, column: 38, scope: !786, inlinedAt: !715)
!816 = !DILocation(line: 356, column: 18, scope: !786, inlinedAt: !715)
!817 = !DILocation(line: 355, column: 11, scope: !786, inlinedAt: !715)
!818 = !DILocation(line: 355, column: 33, scope: !786, inlinedAt: !715)
!819 = !DILocation(line: 366, column: 22, scope: !820, inlinedAt: !715)
!820 = distinct !DILexicalBlock(scope: !786, file: !2, line: 366, column: 11)
!821 = !DILocation(line: 366, column: 16, scope: !820, inlinedAt: !715)
!822 = !DILocation(line: 366, column: 29, scope: !823, inlinedAt: !715)
!823 = distinct !DILexicalBlock(scope: !820, file: !2, line: 366, column: 11)
!824 = !DILocation(line: 366, column: 11, scope: !820, inlinedAt: !715)
!825 = !DILocation(line: 368, column: 17, scope: !826, inlinedAt: !715)
!826 = distinct !DILexicalBlock(scope: !823, file: !2, line: 367, column: 13)
!827 = !DILocation(line: 370, column: 19, scope: !826, inlinedAt: !715)
!828 = !DILocation(line: 370, column: 22, scope: !826, inlinedAt: !715)
!829 = !DILocation(line: 370, column: 17, scope: !826, inlinedAt: !715)
!830 = !DILocation(line: 370, column: 29, scope: !826, inlinedAt: !715)
!831 = !DILocation(line: 370, column: 27, scope: !826, inlinedAt: !715)
!832 = !DILocation(line: 370, column: 52, scope: !826, inlinedAt: !715)
!833 = !DILocation(line: 370, column: 44, scope: !826, inlinedAt: !715)
!834 = !DILocation(line: 370, column: 42, scope: !826, inlinedAt: !715)
!835 = !DILocation(line: 370, column: 57, scope: !826, inlinedAt: !715)
!836 = !DILocation(line: 370, column: 61, scope: !826, inlinedAt: !715)
!837 = !DILocation(line: 371, column: 17, scope: !826, inlinedAt: !715)
!838 = !DILocation(line: 371, column: 36, scope: !826, inlinedAt: !715)
!839 = !DILocation(line: 371, column: 34, scope: !826, inlinedAt: !715)
!840 = !DILocation(line: 371, column: 53, scope: !826, inlinedAt: !715)
!841 = !DILocation(line: 372, column: 30, scope: !826, inlinedAt: !715)
!842 = !DILocation(line: 372, column: 45, scope: !826, inlinedAt: !715)
!843 = !DILocation(line: 373, column: 37, scope: !826, inlinedAt: !715)
!844 = !DILocation(line: 373, column: 15, scope: !826, inlinedAt: !715)
!845 = !DILocation(line: 373, column: 31, scope: !826, inlinedAt: !715)
!846 = !DILocation(line: 376, column: 25, scope: !826, inlinedAt: !715)
!847 = !DILocation(line: 376, column: 27, scope: !826, inlinedAt: !715)
!848 = !DILocation(line: 376, column: 31, scope: !826, inlinedAt: !715)
!849 = !DILocation(line: 377, column: 25, scope: !826, inlinedAt: !715)
!850 = !DILocation(line: 377, column: 40, scope: !826, inlinedAt: !715)
!851 = !DILocation(line: 377, column: 38, scope: !826, inlinedAt: !715)
!852 = !DILocation(line: 377, column: 55, scope: !826, inlinedAt: !715)
!853 = !DILocation(line: 377, column: 53, scope: !826, inlinedAt: !715)
!854 = !DILocation(line: 376, column: 22, scope: !826, inlinedAt: !715)
!855 = !DILocation(line: 375, column: 15, scope: !826, inlinedAt: !715)
!856 = !DILocation(line: 375, column: 37, scope: !826, inlinedAt: !715)
!857 = !DILocation(line: 366, column: 38, scope: !823, inlinedAt: !715)
!858 = distinct !{!858, !824, !859, !207}
!859 = !DILocation(line: 386, column: 13, scope: !820, inlinedAt: !715)
!860 = !DILocation(line: 392, column: 18, scope: !692, inlinedAt: !715)
!861 = !DILocation(line: 391, column: 16, scope: !692, inlinedAt: !715)
!862 = !DILocation(line: 392, column: 13, scope: !692, inlinedAt: !715)
!863 = !DILocation(line: 393, column: 24, scope: !692, inlinedAt: !715)
!864 = !DILocation(line: 393, column: 22, scope: !692, inlinedAt: !715)
!865 = !DILocation(line: 393, column: 46, scope: !692, inlinedAt: !715)
!866 = !DILocation(line: 393, column: 44, scope: !692, inlinedAt: !715)
!867 = !DILocation(line: 393, column: 11, scope: !692, inlinedAt: !715)
!868 = !DILocation(line: 394, column: 33, scope: !692, inlinedAt: !715)
!869 = !DILocation(line: 394, column: 7, scope: !692, inlinedAt: !715)
!870 = !DILocation(line: 394, column: 27, scope: !692, inlinedAt: !715)
!871 = !DILocation(line: 396, column: 35, scope: !692, inlinedAt: !715)
!872 = !DILocation(line: 396, column: 40, scope: !692, inlinedAt: !715)
!873 = !DILocation(line: 396, column: 47, scope: !692, inlinedAt: !715)
!874 = !DILocation(line: 396, column: 7, scope: !692, inlinedAt: !715)
!875 = !DILocation(line: 396, column: 33, scope: !692, inlinedAt: !715)
!876 = !DILocation(line: 404, column: 7, scope: !692, inlinedAt: !715)
!877 = !DILocation(line: 126, column: 17, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !2, line: 126, column: 3)
!879 = distinct !DILexicalBlock(scope: !485, file: !2, line: 126, column: 3)
!880 = !DILocation(line: 126, column: 3, scope: !879)
!881 = !DILocation(line: 135, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !878, file: !2, line: 127, column: 5)
!883 = !DILocation(line: 135, column: 29, scope: !882)
!884 = !DILocation(line: 126, column: 24, scope: !878)
!885 = distinct !{!885, !880, !886, !207}
!886 = !DILocation(line: 137, column: 5, scope: !879)
!887 = distinct !{!887, !321}
!888 = !DILocation(line: 141, column: 39, scope: !889)
!889 = distinct !DILexicalBlock(scope: !485, file: !2, line: 141, column: 7)
!890 = !DILocation(line: 154, column: 5, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !2, line: 151, column: 5)
!892 = distinct !DILexicalBlock(scope: !893, file: !2, line: 150, column: 12)
!893 = distinct !DILexicalBlock(scope: !889, file: !2, line: 145, column: 12)
!894 = !DILocation(line: 164, column: 23, scope: !503)
!895 = !DILocation(line: 0, scope: !503)
!896 = !DILocation(line: 166, column: 5, scope: !897)
!897 = distinct !DILexicalBlock(scope: !503, file: !2, line: 166, column: 5)
!898 = !DILocation(line: 169, column: 11, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !2, line: 167, column: 7)
!900 = distinct !DILexicalBlock(scope: !897, file: !2, line: 166, column: 5)
!901 = !DILocation(line: 169, column: 27, scope: !899)
!902 = !DILocation(line: 0, scope: !425, inlinedAt: !903)
!903 = distinct !DILocation(line: 168, column: 22, scope: !899)
!904 = !DILocation(line: 95, column: 18, scope: !425, inlinedAt: !903)
!905 = !DILocation(line: 95, column: 13, scope: !425, inlinedAt: !903)
!906 = !DILocation(line: 95, column: 23, scope: !425, inlinedAt: !903)
!907 = !DILocation(line: 168, column: 9, scope: !899)
!908 = !DILocation(line: 168, column: 57, scope: !899)
!909 = !DILocation(line: 172, column: 11, scope: !899)
!910 = !DILocation(line: 172, column: 27, scope: !899)
!911 = !DILocation(line: 0, scope: !425, inlinedAt: !912)
!912 = distinct !DILocation(line: 171, column: 28, scope: !899)
!913 = !DILocation(line: 171, column: 9, scope: !899)
!914 = !DILocation(line: 171, column: 63, scope: !899)
!915 = !DILocation(line: 179, column: 23, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !2, line: 179, column: 9)
!917 = distinct !DILexicalBlock(scope: !899, file: !2, line: 179, column: 9)
!918 = !DILocation(line: 179, column: 9, scope: !917)
!919 = !DILocation(line: 182, column: 15, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !2, line: 180, column: 11)
!921 = !DILocation(line: 182, column: 31, scope: !920)
!922 = !DILocation(line: 0, scope: !425, inlinedAt: !923)
!923 = distinct !DILocation(line: 181, column: 26, scope: !920)
!924 = !DILocation(line: 95, column: 27, scope: !425, inlinedAt: !923)
!925 = !DILocation(line: 181, column: 13, scope: !920)
!926 = !DILocation(line: 181, column: 61, scope: !920)
!927 = !DILocation(line: 185, column: 15, scope: !920)
!928 = !DILocation(line: 185, column: 31, scope: !920)
!929 = !DILocation(line: 0, scope: !425, inlinedAt: !930)
!930 = distinct !DILocation(line: 184, column: 32, scope: !920)
!931 = !DILocation(line: 184, column: 13, scope: !920)
!932 = !DILocation(line: 184, column: 67, scope: !920)
!933 = !DILocation(line: 179, column: 29, scope: !916)
!934 = distinct !{!934, !918, !935, !207}
!935 = !DILocation(line: 191, column: 11, scope: !917)
!936 = !DILocation(line: 193, column: 18, scope: !899)
!937 = !DILocation(line: 166, column: 19, scope: !900)
!938 = distinct !{!938, !896, !939, !207}
!939 = !DILocation(line: 194, column: 7, scope: !897)
!940 = !DILocation(line: 198, column: 1, scope: !485)
!941 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv_alt_array", scope: !2, file: !2, line: 74, type: !473, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !942)
!942 = !{!943, !944, !945, !946, !947, !948}
!943 = !DILocalVariable(name: "norm", arg: 1, scope: !941, file: !2, line: 75, type: !83)
!944 = !DILocalVariable(name: "lmax", arg: 2, scope: !941, file: !2, line: 75, type: !85)
!945 = !DILocalVariable(name: "x", arg: 3, scope: !941, file: !2, line: 75, type: !89)
!946 = !DILocalVariable(name: "result_array", arg: 4, scope: !941, file: !2, line: 76, type: !90)
!947 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !941, file: !2, line: 76, type: !90)
!948 = !DILocalVariable(name: "s", scope: !941, file: !2, line: 78, type: !32)
!949 = !DILocation(line: 0, scope: !941)
!950 = !DILocation(line: 78, column: 11, scope: !941)
!951 = !DILocation(line: 79, column: 3, scope: !941)
!952 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv_alt_array_e", scope: !2, file: !2, line: 95, type: !486, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !966, !967, !968}
!954 = !DILocalVariable(name: "norm", arg: 1, scope: !952, file: !2, line: 96, type: !83)
!955 = !DILocalVariable(name: "lmax", arg: 2, scope: !952, file: !2, line: 96, type: !85)
!956 = !DILocalVariable(name: "x", arg: 3, scope: !952, file: !2, line: 96, type: !89)
!957 = !DILocalVariable(name: "csphase", arg: 4, scope: !952, file: !2, line: 97, type: !89)
!958 = !DILocalVariable(name: "result_array", arg: 5, scope: !952, file: !2, line: 97, type: !90)
!959 = !DILocalVariable(name: "result_deriv_array", arg: 6, scope: !952, file: !2, line: 97, type: !90)
!960 = !DILocalVariable(name: "s", scope: !952, file: !2, line: 99, type: !32)
!961 = !DILocalVariable(name: "nlm", scope: !952, file: !2, line: 100, type: !85)
!962 = !DILocalVariable(name: "fac1", scope: !952, file: !2, line: 111, type: !70)
!963 = !DILocalVariable(name: "fac2", scope: !952, file: !2, line: 111, type: !70)
!964 = !DILocalVariable(name: "l", scope: !965, file: !2, line: 162, type: !86)
!965 = distinct !DILexicalBlock(scope: !952, file: !2, line: 161, column: 3)
!966 = !DILocalVariable(name: "m", scope: !965, file: !2, line: 162, type: !86)
!967 = !DILocalVariable(name: "twoellp1", scope: !965, file: !2, line: 163, type: !86)
!968 = !DILocalVariable(name: "sqrts", scope: !965, file: !2, line: 164, type: !90)
!969 = !DILocation(line: 0, scope: !952)
!970 = !DILocation(line: 0, scope: !122, inlinedAt: !971)
!971 = distinct !DILocation(line: 100, column: 22, scope: !952)
!972 = !DILocation(line: 68, column: 17, scope: !122, inlinedAt: !971)
!973 = !DILocation(line: 68, column: 30, scope: !122, inlinedAt: !971)
!974 = !DILocation(line: 68, column: 22, scope: !122, inlinedAt: !971)
!975 = !DILocation(line: 68, column: 35, scope: !122, inlinedAt: !971)
!976 = !DILocation(line: 113, column: 12, scope: !977)
!977 = distinct !DILexicalBlock(scope: !952, file: !2, line: 113, column: 7)
!978 = !DILocation(line: 0, scope: !977)
!979 = !DILocation(line: 113, column: 7, scope: !952)
!980 = !DILocalVariable(name: "lmax", arg: 1, scope: !981, file: !2, line: 426, type: !85)
!981 = distinct !DISubprogram(name: "legendre_deriv_alt_array_none_e", scope: !2, file: !2, line: 425, type: !523, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !982)
!982 = !{!980, !983, !984, !985, !986, !987, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002}
!983 = !DILocalVariable(name: "x", arg: 2, scope: !981, file: !2, line: 426, type: !89)
!984 = !DILocalVariable(name: "csphase", arg: 3, scope: !981, file: !2, line: 426, type: !89)
!985 = !DILocalVariable(name: "result_array", arg: 4, scope: !981, file: !2, line: 426, type: !90)
!986 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !981, file: !2, line: 426, type: !90)
!987 = !DILocalVariable(name: "u", scope: !988, file: !2, line: 444, type: !89)
!988 = distinct !DILexicalBlock(scope: !989, file: !2, line: 443, column: 5)
!989 = distinct !DILexicalBlock(scope: !990, file: !2, line: 438, column: 12)
!990 = distinct !DILexicalBlock(scope: !991, file: !2, line: 433, column: 12)
!991 = distinct !DILexicalBlock(scope: !981, file: !2, line: 428, column: 7)
!992 = !DILocalVariable(name: "uinv", scope: !988, file: !2, line: 446, type: !89)
!993 = !DILocalVariable(name: "xbyu", scope: !988, file: !2, line: 452, type: !89)
!994 = !DILocalVariable(name: "l", scope: !988, file: !2, line: 454, type: !86)
!995 = !DILocalVariable(name: "m", scope: !988, file: !2, line: 454, type: !86)
!996 = !DILocalVariable(name: "k", scope: !988, file: !2, line: 455, type: !86)
!997 = !DILocalVariable(name: "idxmm", scope: !988, file: !2, line: 455, type: !86)
!998 = !DILocalVariable(name: "plm", scope: !988, file: !2, line: 456, type: !70)
!999 = !DILocalVariable(name: "pmm", scope: !988, file: !2, line: 456, type: !70)
!1000 = !DILocalVariable(name: "pm1", scope: !988, file: !2, line: 457, type: !70)
!1001 = !DILocalVariable(name: "pm2", scope: !988, file: !2, line: 458, type: !70)
!1002 = !DILocalVariable(name: "twomm1", scope: !988, file: !2, line: 459, type: !70)
!1003 = !DILocation(line: 0, scope: !981, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 116, column: 11, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !977, file: !2, line: 114, column: 5)
!1006 = !DILocation(line: 428, column: 15, scope: !991, inlinedAt: !1004)
!1007 = !DILocation(line: 430, column: 7, scope: !1008, inlinedAt: !1004)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 430, column: 7)
!1009 = distinct !DILexicalBlock(scope: !991, file: !2, line: 429, column: 5)
!1010 = !DILocation(line: 433, column: 12, scope: !990, inlinedAt: !1004)
!1011 = !DILocation(line: 433, column: 20, scope: !990, inlinedAt: !1004)
!1012 = !DILocation(line: 433, column: 12, scope: !991, inlinedAt: !1004)
!1013 = !DILocation(line: 435, column: 7, scope: !1014, inlinedAt: !1004)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 435, column: 7)
!1015 = distinct !DILexicalBlock(scope: !990, file: !2, line: 434, column: 5)
!1016 = !DILocation(line: 438, column: 20, scope: !989, inlinedAt: !1004)
!1017 = !DILocation(line: 438, column: 27, scope: !989, inlinedAt: !1004)
!1018 = !DILocation(line: 440, column: 7, scope: !1019, inlinedAt: !1004)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 440, column: 7)
!1020 = distinct !DILexicalBlock(scope: !989, file: !2, line: 439, column: 5)
!1021 = !DILocation(line: 444, column: 46, scope: !988, inlinedAt: !1004)
!1022 = !DILocation(line: 444, column: 39, scope: !988, inlinedAt: !1004)
!1023 = !DILocation(line: 444, column: 24, scope: !988, inlinedAt: !1004)
!1024 = !DILocation(line: 0, scope: !988, inlinedAt: !1004)
!1025 = !DILocation(line: 446, column: 31, scope: !988, inlinedAt: !1004)
!1026 = !DILocation(line: 452, column: 29, scope: !988, inlinedAt: !1004)
!1027 = !DILocation(line: 466, column: 23, scope: !988, inlinedAt: !1004)
!1028 = !DILocation(line: 468, column: 29, scope: !988, inlinedAt: !1004)
!1029 = !DILocation(line: 474, column: 16, scope: !1030, inlinedAt: !1004)
!1030 = distinct !DILexicalBlock(scope: !988, file: !2, line: 474, column: 11)
!1031 = !DILocation(line: 474, column: 11, scope: !988, inlinedAt: !1004)
!1032 = !DILocation(line: 477, column: 7, scope: !988, inlinedAt: !1004)
!1033 = !DILocation(line: 477, column: 23, scope: !988, inlinedAt: !1004)
!1034 = !DILocation(line: 479, column: 31, scope: !988, inlinedAt: !1004)
!1035 = !DILocation(line: 479, column: 7, scope: !988, inlinedAt: !1004)
!1036 = !DILocation(line: 479, column: 29, scope: !988, inlinedAt: !1004)
!1037 = !DILocation(line: 488, column: 21, scope: !1038, inlinedAt: !1004)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 488, column: 7)
!1039 = distinct !DILexicalBlock(scope: !988, file: !2, line: 488, column: 7)
!1040 = !DILocation(line: 488, column: 7, scope: !1039, inlinedAt: !1004)
!1041 = !DILocation(line: 511, column: 7, scope: !1042, inlinedAt: !1004)
!1042 = distinct !DILexicalBlock(scope: !988, file: !2, line: 511, column: 7)
!1043 = !DILocation(line: 577, column: 22, scope: !988, inlinedAt: !1004)
!1044 = !DILocation(line: 490, column: 13, scope: !1045, inlinedAt: !1004)
!1045 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 489, column: 9)
!1046 = !DILocation(line: 491, column: 20, scope: !1045, inlinedAt: !1004)
!1047 = !DILocation(line: 491, column: 23, scope: !1045, inlinedAt: !1004)
!1048 = !DILocation(line: 491, column: 18, scope: !1045, inlinedAt: !1004)
!1049 = !DILocation(line: 491, column: 28, scope: !1045, inlinedAt: !1004)
!1050 = !DILocation(line: 491, column: 32, scope: !1045, inlinedAt: !1004)
!1051 = !DILocation(line: 491, column: 43, scope: !1045, inlinedAt: !1004)
!1052 = !DILocation(line: 491, column: 40, scope: !1045, inlinedAt: !1004)
!1053 = !DILocation(line: 491, column: 48, scope: !1045, inlinedAt: !1004)
!1054 = !DILocation(line: 491, column: 57, scope: !1045, inlinedAt: !1004)
!1055 = !DILocation(line: 491, column: 55, scope: !1045, inlinedAt: !1004)
!1056 = !DILocation(line: 492, column: 11, scope: !1045, inlinedAt: !1004)
!1057 = !DILocation(line: 492, column: 27, scope: !1045, inlinedAt: !1004)
!1058 = !DILocation(line: 494, column: 35, scope: !1045, inlinedAt: !1004)
!1059 = !DILocation(line: 494, column: 57, scope: !1045, inlinedAt: !1004)
!1060 = !DILocation(line: 494, column: 46, scope: !1045, inlinedAt: !1004)
!1061 = !DILocation(line: 494, column: 64, scope: !1045, inlinedAt: !1004)
!1062 = !DILocation(line: 494, column: 11, scope: !1045, inlinedAt: !1004)
!1063 = !DILocation(line: 494, column: 33, scope: !1045, inlinedAt: !1004)
!1064 = !DILocation(line: 488, column: 30, scope: !1038, inlinedAt: !1004)
!1065 = distinct !{!1065, !1040, !1066, !207}
!1066 = !DILocation(line: 502, column: 9, scope: !1039, inlinedAt: !1004)
!1067 = !DILocation(line: 511, column: 21, scope: !1068, inlinedAt: !1004)
!1068 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 511, column: 7)
!1069 = distinct !{!1069, !1041, !1070, !207}
!1070 = !DILocation(line: 571, column: 9, scope: !1042, inlinedAt: !1004)
!1071 = !DILocation(line: 520, column: 22, scope: !1072, inlinedAt: !1004)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 512, column: 9)
!1073 = !DILocation(line: 520, column: 17, scope: !1072, inlinedAt: !1004)
!1074 = !DILocation(line: 522, column: 30, scope: !1072, inlinedAt: !1004)
!1075 = !DILocation(line: 522, column: 15, scope: !1072, inlinedAt: !1004)
!1076 = !DILocation(line: 523, column: 11, scope: !1072, inlinedAt: !1004)
!1077 = !DILocation(line: 523, column: 31, scope: !1072, inlinedAt: !1004)
!1078 = !DILocation(line: 525, column: 39, scope: !1072, inlinedAt: !1004)
!1079 = !DILocation(line: 525, column: 41, scope: !1072, inlinedAt: !1004)
!1080 = !DILocation(line: 525, column: 48, scope: !1072, inlinedAt: !1004)
!1081 = !DILocation(line: 525, column: 11, scope: !1072, inlinedAt: !1004)
!1082 = !DILocation(line: 525, column: 37, scope: !1072, inlinedAt: !1004)
!1083 = !DILocation(line: 541, column: 25, scope: !1072, inlinedAt: !1004)
!1084 = !DILocation(line: 542, column: 19, scope: !1072, inlinedAt: !1004)
!1085 = !DILocation(line: 542, column: 29, scope: !1072, inlinedAt: !1004)
!1086 = !DILocation(line: 542, column: 32, scope: !1072, inlinedAt: !1004)
!1087 = !DILocation(line: 542, column: 27, scope: !1072, inlinedAt: !1004)
!1088 = !DILocation(line: 542, column: 25, scope: !1072, inlinedAt: !1004)
!1089 = !DILocation(line: 543, column: 11, scope: !1072, inlinedAt: !1004)
!1090 = !DILocation(line: 543, column: 27, scope: !1072, inlinedAt: !1004)
!1091 = !DILocation(line: 545, column: 54, scope: !1072, inlinedAt: !1004)
!1092 = !DILocation(line: 545, column: 62, scope: !1072, inlinedAt: !1004)
!1093 = !DILocation(line: 545, column: 70, scope: !1072, inlinedAt: !1004)
!1094 = !DILocation(line: 545, column: 74, scope: !1072, inlinedAt: !1004)
!1095 = !DILocation(line: 545, column: 41, scope: !1072, inlinedAt: !1004)
!1096 = !DILocation(line: 545, column: 11, scope: !1072, inlinedAt: !1004)
!1097 = !DILocation(line: 545, column: 33, scope: !1072, inlinedAt: !1004)
!1098 = !DILocation(line: 554, column: 22, scope: !1099, inlinedAt: !1004)
!1099 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 554, column: 11)
!1100 = !DILocation(line: 554, column: 29, scope: !1101, inlinedAt: !1004)
!1101 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 554, column: 11)
!1102 = !DILocation(line: 554, column: 11, scope: !1099, inlinedAt: !1004)
!1103 = !DILocation(line: 556, column: 17, scope: !1104, inlinedAt: !1004)
!1104 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 555, column: 13)
!1105 = !DILocation(line: 557, column: 24, scope: !1104, inlinedAt: !1004)
!1106 = !DILocation(line: 557, column: 27, scope: !1104, inlinedAt: !1004)
!1107 = !DILocation(line: 557, column: 22, scope: !1104, inlinedAt: !1004)
!1108 = !DILocation(line: 557, column: 32, scope: !1104, inlinedAt: !1004)
!1109 = !DILocation(line: 557, column: 36, scope: !1104, inlinedAt: !1004)
!1110 = !DILocation(line: 557, column: 47, scope: !1104, inlinedAt: !1004)
!1111 = !DILocation(line: 557, column: 51, scope: !1104, inlinedAt: !1004)
!1112 = !DILocation(line: 557, column: 44, scope: !1104, inlinedAt: !1004)
!1113 = !DILocation(line: 557, column: 56, scope: !1104, inlinedAt: !1004)
!1114 = !DILocation(line: 558, column: 33, scope: !1104, inlinedAt: !1004)
!1115 = !DILocation(line: 558, column: 21, scope: !1104, inlinedAt: !1004)
!1116 = !DILocation(line: 557, column: 63, scope: !1104, inlinedAt: !1004)
!1117 = !DILocation(line: 559, column: 15, scope: !1104, inlinedAt: !1004)
!1118 = !DILocation(line: 559, column: 31, scope: !1104, inlinedAt: !1004)
!1119 = !DILocation(line: 561, column: 48, scope: !1104, inlinedAt: !1004)
!1120 = !DILocation(line: 561, column: 56, scope: !1104, inlinedAt: !1004)
!1121 = !DILocation(line: 561, column: 64, scope: !1104, inlinedAt: !1004)
!1122 = !DILocation(line: 561, column: 66, scope: !1104, inlinedAt: !1004)
!1123 = !DILocation(line: 561, column: 70, scope: !1104, inlinedAt: !1004)
!1124 = !DILocation(line: 561, column: 45, scope: !1104, inlinedAt: !1004)
!1125 = !DILocation(line: 561, column: 15, scope: !1104, inlinedAt: !1004)
!1126 = !DILocation(line: 561, column: 37, scope: !1104, inlinedAt: !1004)
!1127 = !DILocation(line: 554, column: 38, scope: !1101, inlinedAt: !1004)
!1128 = distinct !{!1128, !1102, !1129, !207}
!1129 = !DILocation(line: 570, column: 13, scope: !1099, inlinedAt: !1004)
!1130 = !DILocation(line: 575, column: 18, scope: !988, inlinedAt: !1004)
!1131 = !DILocation(line: 575, column: 13, scope: !988, inlinedAt: !1004)
!1132 = !DILocation(line: 577, column: 26, scope: !988, inlinedAt: !1004)
!1133 = !DILocation(line: 577, column: 11, scope: !988, inlinedAt: !1004)
!1134 = !DILocation(line: 578, column: 7, scope: !988, inlinedAt: !1004)
!1135 = !DILocation(line: 578, column: 27, scope: !988, inlinedAt: !1004)
!1136 = !DILocation(line: 580, column: 35, scope: !988, inlinedAt: !1004)
!1137 = !DILocation(line: 580, column: 40, scope: !988, inlinedAt: !1004)
!1138 = !DILocation(line: 580, column: 44, scope: !988, inlinedAt: !1004)
!1139 = !DILocation(line: 580, column: 50, scope: !988, inlinedAt: !1004)
!1140 = !DILocation(line: 580, column: 7, scope: !988, inlinedAt: !1004)
!1141 = !DILocation(line: 580, column: 33, scope: !988, inlinedAt: !1004)
!1142 = !DILocation(line: 588, column: 7, scope: !988, inlinedAt: !1004)
!1143 = !DILocalVariable(name: "lmax", arg: 1, scope: !1144, file: !2, line: 218, type: !85)
!1144 = distinct !DISubprogram(name: "legendre_deriv_alt_array_schmidt_e", scope: !2, file: !2, line: 217, type: !523, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1145)
!1145 = !{!1143, !1146, !1147, !1148, !1149, !1150, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169}
!1146 = !DILocalVariable(name: "x", arg: 2, scope: !1144, file: !2, line: 218, type: !89)
!1147 = !DILocalVariable(name: "csphase", arg: 3, scope: !1144, file: !2, line: 218, type: !89)
!1148 = !DILocalVariable(name: "result_array", arg: 4, scope: !1144, file: !2, line: 218, type: !90)
!1149 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !1144, file: !2, line: 218, type: !90)
!1150 = !DILocalVariable(name: "eps", scope: !1151, file: !2, line: 236, type: !89)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 235, column: 5)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 230, column: 12)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 225, column: 12)
!1154 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 220, column: 7)
!1155 = !DILocalVariable(name: "u", scope: !1151, file: !2, line: 237, type: !89)
!1156 = !DILocalVariable(name: "uinv", scope: !1151, file: !2, line: 239, type: !89)
!1157 = !DILocalVariable(name: "xbyu", scope: !1151, file: !2, line: 245, type: !89)
!1158 = !DILocalVariable(name: "l", scope: !1151, file: !2, line: 247, type: !86)
!1159 = !DILocalVariable(name: "m", scope: !1151, file: !2, line: 247, type: !86)
!1160 = !DILocalVariable(name: "k", scope: !1151, file: !2, line: 248, type: !86)
!1161 = !DILocalVariable(name: "idxmm", scope: !1151, file: !2, line: 248, type: !86)
!1162 = !DILocalVariable(name: "plm", scope: !1151, file: !2, line: 249, type: !70)
!1163 = !DILocalVariable(name: "pmm", scope: !1151, file: !2, line: 250, type: !70)
!1164 = !DILocalVariable(name: "rescalem", scope: !1151, file: !2, line: 251, type: !70)
!1165 = !DILocalVariable(name: "pm1", scope: !1151, file: !2, line: 252, type: !70)
!1166 = !DILocalVariable(name: "pm2", scope: !1151, file: !2, line: 253, type: !70)
!1167 = !DILocalVariable(name: "nlm", scope: !1151, file: !2, line: 254, type: !86)
!1168 = !DILocalVariable(name: "sqrts", scope: !1151, file: !2, line: 255, type: !90)
!1169 = !DILocalVariable(name: "linv", scope: !1170, file: !2, line: 288, type: !70)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 287, column: 9)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 286, column: 7)
!1172 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 286, column: 7)
!1173 = !DILocation(line: 0, scope: !1144, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 121, column: 11, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !977, file: !2, line: 119, column: 5)
!1176 = !DILocation(line: 220, column: 15, scope: !1154, inlinedAt: !1174)
!1177 = !DILocation(line: 222, column: 7, scope: !1178, inlinedAt: !1174)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 222, column: 7)
!1179 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 221, column: 5)
!1180 = !DILocation(line: 225, column: 12, scope: !1153, inlinedAt: !1174)
!1181 = !DILocation(line: 225, column: 20, scope: !1153, inlinedAt: !1174)
!1182 = !DILocation(line: 225, column: 12, scope: !1154, inlinedAt: !1174)
!1183 = !DILocation(line: 227, column: 7, scope: !1184, inlinedAt: !1174)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 227, column: 7)
!1185 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 226, column: 5)
!1186 = !DILocation(line: 230, column: 20, scope: !1152, inlinedAt: !1174)
!1187 = !DILocation(line: 230, column: 27, scope: !1152, inlinedAt: !1174)
!1188 = !DILocation(line: 232, column: 7, scope: !1189, inlinedAt: !1174)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 232, column: 7)
!1190 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 231, column: 5)
!1191 = !DILocation(line: 0, scope: !1151, inlinedAt: !1174)
!1192 = !DILocation(line: 237, column: 46, scope: !1151, inlinedAt: !1174)
!1193 = !DILocation(line: 237, column: 39, scope: !1151, inlinedAt: !1174)
!1194 = !DILocation(line: 237, column: 24, scope: !1151, inlinedAt: !1174)
!1195 = !DILocation(line: 0, scope: !122, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 254, column: 20, scope: !1151, inlinedAt: !1174)
!1197 = !DILocation(line: 255, column: 25, scope: !1151, inlinedAt: !1174)
!1198 = !DILocation(line: 0, scope: !302, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 258, column: 7, scope: !1151, inlinedAt: !1174)
!1200 = !DILocation(line: 112, column: 3, scope: !311, inlinedAt: !1199)
!1201 = !DILocation(line: 113, column: 21, scope: !313, inlinedAt: !1199)
!1202 = !DILocation(line: 113, column: 16, scope: !313, inlinedAt: !1199)
!1203 = !DILocation(line: 113, column: 5, scope: !313, inlinedAt: !1199)
!1204 = !DILocation(line: 113, column: 14, scope: !313, inlinedAt: !1199)
!1205 = !DILocation(line: 112, column: 34, scope: !313, inlinedAt: !1199)
!1206 = distinct !{!1206, !1200, !1207, !207}
!1207 = !DILocation(line: 113, column: 31, scope: !311, inlinedAt: !1199)
!1208 = distinct !{!1208, !321}
!1209 = !DILocation(line: 239, column: 31, scope: !1151, inlinedAt: !1174)
!1210 = !DILocation(line: 245, column: 29, scope: !1151, inlinedAt: !1174)
!1211 = !DILocation(line: 264, column: 23, scope: !1151, inlinedAt: !1174)
!1212 = !DILocation(line: 266, column: 29, scope: !1151, inlinedAt: !1174)
!1213 = !DILocation(line: 272, column: 16, scope: !1214, inlinedAt: !1174)
!1214 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 272, column: 11)
!1215 = !DILocation(line: 272, column: 11, scope: !1151, inlinedAt: !1174)
!1216 = !DILocation(line: 275, column: 7, scope: !1151, inlinedAt: !1174)
!1217 = !DILocation(line: 275, column: 23, scope: !1151, inlinedAt: !1174)
!1218 = !DILocation(line: 277, column: 31, scope: !1151, inlinedAt: !1174)
!1219 = !DILocation(line: 277, column: 7, scope: !1151, inlinedAt: !1174)
!1220 = !DILocation(line: 277, column: 29, scope: !1151, inlinedAt: !1174)
!1221 = !DILocation(line: 286, column: 21, scope: !1171, inlinedAt: !1174)
!1222 = !DILocation(line: 286, column: 7, scope: !1172, inlinedAt: !1174)
!1223 = !DILocation(line: 321, column: 7, scope: !1224, inlinedAt: !1174)
!1224 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 321, column: 7)
!1225 = !DILocation(line: 288, column: 31, scope: !1170, inlinedAt: !1174)
!1226 = !DILocation(line: 288, column: 29, scope: !1170, inlinedAt: !1174)
!1227 = !DILocation(line: 0, scope: !1170, inlinedAt: !1174)
!1228 = !DILocation(line: 290, column: 13, scope: !1170, inlinedAt: !1174)
!1229 = !DILocation(line: 292, column: 30, scope: !1170, inlinedAt: !1174)
!1230 = !DILocation(line: 292, column: 34, scope: !1170, inlinedAt: !1174)
!1231 = !DILocation(line: 292, column: 55, scope: !1170, inlinedAt: !1174)
!1232 = !DILocation(line: 293, column: 11, scope: !1170, inlinedAt: !1174)
!1233 = !DILocation(line: 293, column: 27, scope: !1170, inlinedAt: !1174)
!1234 = !DILocation(line: 295, column: 40, scope: !1170, inlinedAt: !1174)
!1235 = !DILocation(line: 295, column: 49, scope: !1170, inlinedAt: !1174)
!1236 = !DILocation(line: 295, column: 44, scope: !1170, inlinedAt: !1174)
!1237 = !DILocation(line: 295, column: 11, scope: !1170, inlinedAt: !1174)
!1238 = !DILocation(line: 295, column: 33, scope: !1170, inlinedAt: !1174)
!1239 = !DILocation(line: 286, column: 30, scope: !1171, inlinedAt: !1174)
!1240 = distinct !{!1240, !1222, !1241, !207}
!1241 = !DILocation(line: 303, column: 9, scope: !1172, inlinedAt: !1174)
!1242 = !DILocation(line: 321, column: 21, scope: !1243, inlinedAt: !1174)
!1243 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 321, column: 7)
!1244 = distinct !{!1244, !1223, !1245, !207}
!1245 = !DILocation(line: 387, column: 9, scope: !1224, inlinedAt: !1174)
!1246 = !DILocation(line: 324, column: 20, scope: !1247, inlinedAt: !1174)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 322, column: 9)
!1248 = !DILocation(line: 332, column: 22, scope: !1247, inlinedAt: !1174)
!1249 = !DILocation(line: 332, column: 17, scope: !1247, inlinedAt: !1174)
!1250 = !DILocation(line: 333, column: 36, scope: !1247, inlinedAt: !1174)
!1251 = !DILocation(line: 333, column: 28, scope: !1247, inlinedAt: !1174)
!1252 = !DILocation(line: 333, column: 26, scope: !1247, inlinedAt: !1174)
!1253 = !DILocation(line: 333, column: 47, scope: !1247, inlinedAt: !1174)
!1254 = !DILocation(line: 333, column: 45, scope: !1247, inlinedAt: !1174)
!1255 = !DILocation(line: 333, column: 15, scope: !1247, inlinedAt: !1174)
!1256 = !DILocation(line: 334, column: 37, scope: !1247, inlinedAt: !1174)
!1257 = !DILocation(line: 334, column: 11, scope: !1247, inlinedAt: !1174)
!1258 = !DILocation(line: 334, column: 31, scope: !1247, inlinedAt: !1174)
!1259 = !DILocation(line: 336, column: 39, scope: !1247, inlinedAt: !1174)
!1260 = !DILocation(line: 336, column: 41, scope: !1247, inlinedAt: !1174)
!1261 = !DILocation(line: 336, column: 48, scope: !1247, inlinedAt: !1174)
!1262 = !DILocation(line: 336, column: 11, scope: !1247, inlinedAt: !1174)
!1263 = !DILocation(line: 336, column: 37, scope: !1247, inlinedAt: !1174)
!1264 = !DILocation(line: 351, column: 25, scope: !1247, inlinedAt: !1174)
!1265 = !DILocation(line: 352, column: 33, scope: !1247, inlinedAt: !1174)
!1266 = !DILocation(line: 352, column: 21, scope: !1247, inlinedAt: !1174)
!1267 = !DILocation(line: 352, column: 19, scope: !1247, inlinedAt: !1174)
!1268 = !DILocation(line: 352, column: 38, scope: !1247, inlinedAt: !1174)
!1269 = !DILocation(line: 353, column: 33, scope: !1247, inlinedAt: !1174)
!1270 = !DILocation(line: 353, column: 11, scope: !1247, inlinedAt: !1174)
!1271 = !DILocation(line: 353, column: 27, scope: !1247, inlinedAt: !1174)
!1272 = !DILocation(line: 356, column: 31, scope: !1247, inlinedAt: !1174)
!1273 = !DILocation(line: 356, column: 35, scope: !1247, inlinedAt: !1174)
!1274 = !DILocation(line: 357, column: 21, scope: !1247, inlinedAt: !1174)
!1275 = !DILocation(line: 357, column: 40, scope: !1247, inlinedAt: !1174)
!1276 = !DILocation(line: 357, column: 38, scope: !1247, inlinedAt: !1174)
!1277 = !DILocation(line: 356, column: 18, scope: !1247, inlinedAt: !1174)
!1278 = !DILocation(line: 355, column: 11, scope: !1247, inlinedAt: !1174)
!1279 = !DILocation(line: 355, column: 33, scope: !1247, inlinedAt: !1174)
!1280 = !DILocation(line: 366, column: 22, scope: !1281, inlinedAt: !1174)
!1281 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 366, column: 11)
!1282 = !DILocation(line: 366, column: 16, scope: !1281, inlinedAt: !1174)
!1283 = !DILocation(line: 366, column: 29, scope: !1284, inlinedAt: !1174)
!1284 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 366, column: 11)
!1285 = !DILocation(line: 366, column: 11, scope: !1281, inlinedAt: !1174)
!1286 = !DILocation(line: 368, column: 17, scope: !1287, inlinedAt: !1174)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 367, column: 13)
!1288 = !DILocation(line: 370, column: 19, scope: !1287, inlinedAt: !1174)
!1289 = !DILocation(line: 370, column: 22, scope: !1287, inlinedAt: !1174)
!1290 = !DILocation(line: 370, column: 17, scope: !1287, inlinedAt: !1174)
!1291 = !DILocation(line: 370, column: 29, scope: !1287, inlinedAt: !1174)
!1292 = !DILocation(line: 370, column: 27, scope: !1287, inlinedAt: !1174)
!1293 = !DILocation(line: 370, column: 52, scope: !1287, inlinedAt: !1174)
!1294 = !DILocation(line: 370, column: 44, scope: !1287, inlinedAt: !1174)
!1295 = !DILocation(line: 370, column: 42, scope: !1287, inlinedAt: !1174)
!1296 = !DILocation(line: 370, column: 57, scope: !1287, inlinedAt: !1174)
!1297 = !DILocation(line: 370, column: 61, scope: !1287, inlinedAt: !1174)
!1298 = !DILocation(line: 371, column: 17, scope: !1287, inlinedAt: !1174)
!1299 = !DILocation(line: 371, column: 36, scope: !1287, inlinedAt: !1174)
!1300 = !DILocation(line: 371, column: 34, scope: !1287, inlinedAt: !1174)
!1301 = !DILocation(line: 371, column: 53, scope: !1287, inlinedAt: !1174)
!1302 = !DILocation(line: 372, column: 30, scope: !1287, inlinedAt: !1174)
!1303 = !DILocation(line: 372, column: 45, scope: !1287, inlinedAt: !1174)
!1304 = !DILocation(line: 373, column: 37, scope: !1287, inlinedAt: !1174)
!1305 = !DILocation(line: 373, column: 15, scope: !1287, inlinedAt: !1174)
!1306 = !DILocation(line: 373, column: 31, scope: !1287, inlinedAt: !1174)
!1307 = !DILocation(line: 376, column: 25, scope: !1287, inlinedAt: !1174)
!1308 = !DILocation(line: 376, column: 27, scope: !1287, inlinedAt: !1174)
!1309 = !DILocation(line: 376, column: 31, scope: !1287, inlinedAt: !1174)
!1310 = !DILocation(line: 377, column: 25, scope: !1287, inlinedAt: !1174)
!1311 = !DILocation(line: 377, column: 40, scope: !1287, inlinedAt: !1174)
!1312 = !DILocation(line: 377, column: 38, scope: !1287, inlinedAt: !1174)
!1313 = !DILocation(line: 377, column: 55, scope: !1287, inlinedAt: !1174)
!1314 = !DILocation(line: 377, column: 53, scope: !1287, inlinedAt: !1174)
!1315 = !DILocation(line: 376, column: 22, scope: !1287, inlinedAt: !1174)
!1316 = !DILocation(line: 375, column: 15, scope: !1287, inlinedAt: !1174)
!1317 = !DILocation(line: 375, column: 37, scope: !1287, inlinedAt: !1174)
!1318 = !DILocation(line: 366, column: 38, scope: !1284, inlinedAt: !1174)
!1319 = distinct !{!1319, !1285, !1320, !207}
!1320 = !DILocation(line: 386, column: 13, scope: !1281, inlinedAt: !1174)
!1321 = !DILocation(line: 392, column: 18, scope: !1151, inlinedAt: !1174)
!1322 = !DILocation(line: 391, column: 16, scope: !1151, inlinedAt: !1174)
!1323 = !DILocation(line: 392, column: 13, scope: !1151, inlinedAt: !1174)
!1324 = !DILocation(line: 393, column: 24, scope: !1151, inlinedAt: !1174)
!1325 = !DILocation(line: 393, column: 22, scope: !1151, inlinedAt: !1174)
!1326 = !DILocation(line: 393, column: 46, scope: !1151, inlinedAt: !1174)
!1327 = !DILocation(line: 393, column: 44, scope: !1151, inlinedAt: !1174)
!1328 = !DILocation(line: 393, column: 11, scope: !1151, inlinedAt: !1174)
!1329 = !DILocation(line: 394, column: 33, scope: !1151, inlinedAt: !1174)
!1330 = !DILocation(line: 394, column: 7, scope: !1151, inlinedAt: !1174)
!1331 = !DILocation(line: 394, column: 27, scope: !1151, inlinedAt: !1174)
!1332 = !DILocation(line: 396, column: 35, scope: !1151, inlinedAt: !1174)
!1333 = !DILocation(line: 396, column: 40, scope: !1151, inlinedAt: !1174)
!1334 = !DILocation(line: 396, column: 47, scope: !1151, inlinedAt: !1174)
!1335 = !DILocation(line: 396, column: 7, scope: !1151, inlinedAt: !1174)
!1336 = !DILocation(line: 396, column: 33, scope: !1151, inlinedAt: !1174)
!1337 = !DILocation(line: 404, column: 7, scope: !1151, inlinedAt: !1174)
!1338 = !DILocation(line: 141, column: 39, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !952, file: !2, line: 141, column: 7)
!1340 = !DILocation(line: 154, column: 5, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 151, column: 5)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 150, column: 12)
!1343 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 145, column: 12)
!1344 = !DILocation(line: 164, column: 23, scope: !965)
!1345 = !DILocation(line: 0, scope: !965)
!1346 = !DILocation(line: 166, column: 5, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !965, file: !2, line: 166, column: 5)
!1348 = !DILocation(line: 169, column: 11, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 167, column: 7)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 166, column: 5)
!1351 = !DILocation(line: 169, column: 27, scope: !1349)
!1352 = !DILocation(line: 0, scope: !425, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 168, column: 22, scope: !1349)
!1354 = !DILocation(line: 95, column: 18, scope: !425, inlinedAt: !1353)
!1355 = !DILocation(line: 95, column: 13, scope: !425, inlinedAt: !1353)
!1356 = !DILocation(line: 95, column: 23, scope: !425, inlinedAt: !1353)
!1357 = !DILocation(line: 168, column: 9, scope: !1349)
!1358 = !DILocation(line: 168, column: 57, scope: !1349)
!1359 = !DILocation(line: 172, column: 11, scope: !1349)
!1360 = !DILocation(line: 172, column: 27, scope: !1349)
!1361 = !DILocation(line: 0, scope: !425, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 171, column: 28, scope: !1349)
!1363 = !DILocation(line: 171, column: 9, scope: !1349)
!1364 = !DILocation(line: 171, column: 63, scope: !1349)
!1365 = !DILocation(line: 179, column: 23, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 179, column: 9)
!1367 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 179, column: 9)
!1368 = !DILocation(line: 179, column: 9, scope: !1367)
!1369 = !DILocation(line: 182, column: 15, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 180, column: 11)
!1371 = !DILocation(line: 182, column: 31, scope: !1370)
!1372 = !DILocation(line: 0, scope: !425, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 181, column: 26, scope: !1370)
!1374 = !DILocation(line: 95, column: 27, scope: !425, inlinedAt: !1373)
!1375 = !DILocation(line: 181, column: 13, scope: !1370)
!1376 = !DILocation(line: 181, column: 61, scope: !1370)
!1377 = !DILocation(line: 185, column: 15, scope: !1370)
!1378 = !DILocation(line: 185, column: 31, scope: !1370)
!1379 = !DILocation(line: 0, scope: !425, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 184, column: 32, scope: !1370)
!1381 = !DILocation(line: 184, column: 13, scope: !1370)
!1382 = !DILocation(line: 184, column: 67, scope: !1370)
!1383 = !DILocation(line: 179, column: 29, scope: !1366)
!1384 = distinct !{!1384, !1368, !1385, !207}
!1385 = !DILocation(line: 191, column: 11, scope: !1367)
!1386 = !DILocation(line: 193, column: 18, scope: !1349)
!1387 = !DILocation(line: 166, column: 19, scope: !1350)
!1388 = distinct !{!1388, !1346, !1389, !207}
!1389 = !DILocation(line: 194, column: 7, scope: !1347)
!1390 = !DILocation(line: 198, column: 1, scope: !952)
!1391 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv2_array", scope: !2, file: !2, line: 74, type: !1392, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1394)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!32, !83, !85, !89, !90, !90, !90}
!1394 = !{!1395, !1396, !1397, !1398, !1399, !1400, !1401}
!1395 = !DILocalVariable(name: "norm", arg: 1, scope: !1391, file: !2, line: 75, type: !83)
!1396 = !DILocalVariable(name: "lmax", arg: 2, scope: !1391, file: !2, line: 75, type: !85)
!1397 = !DILocalVariable(name: "x", arg: 3, scope: !1391, file: !2, line: 75, type: !89)
!1398 = !DILocalVariable(name: "result_array", arg: 4, scope: !1391, file: !2, line: 76, type: !90)
!1399 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !1391, file: !2, line: 76, type: !90)
!1400 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !1391, file: !2, line: 76, type: !90)
!1401 = !DILocalVariable(name: "s", scope: !1391, file: !2, line: 78, type: !32)
!1402 = !DILocation(line: 0, scope: !1391)
!1403 = !DILocation(line: 78, column: 11, scope: !1391)
!1404 = !DILocation(line: 79, column: 3, scope: !1391)
!1405 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv2_array_e", scope: !2, file: !2, line: 95, type: !1406, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!32, !83, !85, !89, !89, !90, !90, !90}
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1428, !1429, !1431, !1432, !1433}
!1409 = !DILocalVariable(name: "norm", arg: 1, scope: !1405, file: !2, line: 96, type: !83)
!1410 = !DILocalVariable(name: "lmax", arg: 2, scope: !1405, file: !2, line: 96, type: !85)
!1411 = !DILocalVariable(name: "x", arg: 3, scope: !1405, file: !2, line: 96, type: !89)
!1412 = !DILocalVariable(name: "csphase", arg: 4, scope: !1405, file: !2, line: 97, type: !89)
!1413 = !DILocalVariable(name: "result_array", arg: 5, scope: !1405, file: !2, line: 97, type: !90)
!1414 = !DILocalVariable(name: "result_deriv_array", arg: 6, scope: !1405, file: !2, line: 97, type: !90)
!1415 = !DILocalVariable(name: "result_deriv2_array", arg: 7, scope: !1405, file: !2, line: 97, type: !90)
!1416 = !DILocalVariable(name: "s", scope: !1405, file: !2, line: 99, type: !32)
!1417 = !DILocalVariable(name: "nlm", scope: !1405, file: !2, line: 100, type: !85)
!1418 = !DILocalVariable(name: "i", scope: !1405, file: !2, line: 102, type: !86)
!1419 = !DILocalVariable(name: "u", scope: !1405, file: !2, line: 104, type: !89)
!1420 = !DILocalVariable(name: "uinv", scope: !1405, file: !2, line: 105, type: !89)
!1421 = !DILocalVariable(name: "uinv2", scope: !1405, file: !2, line: 108, type: !89)
!1422 = !DILocalVariable(name: "fac1", scope: !1405, file: !2, line: 111, type: !70)
!1423 = !DILocalVariable(name: "fac2", scope: !1405, file: !2, line: 111, type: !70)
!1424 = !DILocalVariable(name: "dp", scope: !1425, file: !2, line: 129, type: !70)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 127, column: 5)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 126, column: 3)
!1427 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 126, column: 3)
!1428 = !DILocalVariable(name: "d2p", scope: !1425, file: !2, line: 130, type: !70)
!1429 = !DILocalVariable(name: "l", scope: !1430, file: !2, line: 162, type: !86)
!1430 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 161, column: 3)
!1431 = !DILocalVariable(name: "m", scope: !1430, file: !2, line: 162, type: !86)
!1432 = !DILocalVariable(name: "twoellp1", scope: !1430, file: !2, line: 163, type: !86)
!1433 = !DILocalVariable(name: "sqrts", scope: !1430, file: !2, line: 164, type: !90)
!1434 = !DILocation(line: 0, scope: !1405)
!1435 = !DILocation(line: 0, scope: !122, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 100, column: 22, scope: !1405)
!1437 = !DILocation(line: 68, column: 17, scope: !122, inlinedAt: !1436)
!1438 = !DILocation(line: 68, column: 30, scope: !122, inlinedAt: !1436)
!1439 = !DILocation(line: 68, column: 22, scope: !122, inlinedAt: !1436)
!1440 = !DILocation(line: 68, column: 35, scope: !122, inlinedAt: !1436)
!1441 = !DILocation(line: 104, column: 42, scope: !1405)
!1442 = !DILocation(line: 104, column: 35, scope: !1405)
!1443 = !DILocation(line: 104, column: 20, scope: !1405)
!1444 = !DILocation(line: 105, column: 27, scope: !1405)
!1445 = !DILocation(line: 108, column: 29, scope: !1405)
!1446 = !DILocation(line: 113, column: 12, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 113, column: 7)
!1448 = !DILocation(line: 0, scope: !1447)
!1449 = !DILocation(line: 113, column: 7, scope: !1405)
!1450 = !DILocalVariable(name: "lmax", arg: 1, scope: !1451, file: !2, line: 426, type: !85)
!1451 = distinct !DISubprogram(name: "legendre_deriv2_array_none_e", scope: !2, file: !2, line: 425, type: !1452, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1454)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!32, !85, !89, !89, !90, !90, !90}
!1454 = !{!1450, !1455, !1456, !1457, !1458, !1459, !1460, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476}
!1455 = !DILocalVariable(name: "x", arg: 2, scope: !1451, file: !2, line: 426, type: !89)
!1456 = !DILocalVariable(name: "csphase", arg: 3, scope: !1451, file: !2, line: 426, type: !89)
!1457 = !DILocalVariable(name: "result_array", arg: 4, scope: !1451, file: !2, line: 426, type: !90)
!1458 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !1451, file: !2, line: 426, type: !90)
!1459 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !1451, file: !2, line: 426, type: !90)
!1460 = !DILocalVariable(name: "u", scope: !1461, file: !2, line: 444, type: !89)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 443, column: 5)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !2, line: 438, column: 12)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 433, column: 12)
!1464 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 428, column: 7)
!1465 = !DILocalVariable(name: "uinv", scope: !1461, file: !2, line: 446, type: !89)
!1466 = !DILocalVariable(name: "uinv2", scope: !1461, file: !2, line: 449, type: !89)
!1467 = !DILocalVariable(name: "xbyu", scope: !1461, file: !2, line: 452, type: !89)
!1468 = !DILocalVariable(name: "l", scope: !1461, file: !2, line: 454, type: !86)
!1469 = !DILocalVariable(name: "m", scope: !1461, file: !2, line: 454, type: !86)
!1470 = !DILocalVariable(name: "k", scope: !1461, file: !2, line: 455, type: !86)
!1471 = !DILocalVariable(name: "idxmm", scope: !1461, file: !2, line: 455, type: !86)
!1472 = !DILocalVariable(name: "plm", scope: !1461, file: !2, line: 456, type: !70)
!1473 = !DILocalVariable(name: "pmm", scope: !1461, file: !2, line: 456, type: !70)
!1474 = !DILocalVariable(name: "pm1", scope: !1461, file: !2, line: 457, type: !70)
!1475 = !DILocalVariable(name: "pm2", scope: !1461, file: !2, line: 458, type: !70)
!1476 = !DILocalVariable(name: "twomm1", scope: !1461, file: !2, line: 459, type: !70)
!1477 = !DILocation(line: 0, scope: !1451, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 116, column: 11, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 114, column: 5)
!1480 = !DILocation(line: 428, column: 15, scope: !1464, inlinedAt: !1478)
!1481 = !DILocation(line: 430, column: 7, scope: !1482, inlinedAt: !1478)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 430, column: 7)
!1483 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 429, column: 5)
!1484 = !DILocation(line: 433, column: 12, scope: !1463, inlinedAt: !1478)
!1485 = !DILocation(line: 433, column: 20, scope: !1463, inlinedAt: !1478)
!1486 = !DILocation(line: 433, column: 12, scope: !1464, inlinedAt: !1478)
!1487 = !DILocation(line: 435, column: 7, scope: !1488, inlinedAt: !1478)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 435, column: 7)
!1489 = distinct !DILexicalBlock(scope: !1463, file: !2, line: 434, column: 5)
!1490 = !DILocation(line: 438, column: 20, scope: !1462, inlinedAt: !1478)
!1491 = !DILocation(line: 438, column: 27, scope: !1462, inlinedAt: !1478)
!1492 = !DILocation(line: 440, column: 7, scope: !1493, inlinedAt: !1478)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 440, column: 7)
!1494 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 439, column: 5)
!1495 = !DILocation(line: 444, column: 24, scope: !1461, inlinedAt: !1478)
!1496 = !DILocation(line: 0, scope: !1461, inlinedAt: !1478)
!1497 = !DILocation(line: 446, column: 31, scope: !1461, inlinedAt: !1478)
!1498 = !DILocation(line: 449, column: 36, scope: !1461, inlinedAt: !1478)
!1499 = !DILocation(line: 452, column: 29, scope: !1461, inlinedAt: !1478)
!1500 = !DILocation(line: 466, column: 23, scope: !1461, inlinedAt: !1478)
!1501 = !DILocation(line: 468, column: 29, scope: !1461, inlinedAt: !1478)
!1502 = !DILocation(line: 471, column: 30, scope: !1461, inlinedAt: !1478)
!1503 = !DILocation(line: 474, column: 16, scope: !1504, inlinedAt: !1478)
!1504 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 474, column: 11)
!1505 = !DILocation(line: 474, column: 11, scope: !1461, inlinedAt: !1478)
!1506 = !DILocation(line: 477, column: 7, scope: !1461, inlinedAt: !1478)
!1507 = !DILocation(line: 477, column: 23, scope: !1461, inlinedAt: !1478)
!1508 = !DILocation(line: 479, column: 31, scope: !1461, inlinedAt: !1478)
!1509 = !DILocation(line: 479, column: 7, scope: !1461, inlinedAt: !1478)
!1510 = !DILocation(line: 479, column: 29, scope: !1461, inlinedAt: !1478)
!1511 = !DILocation(line: 482, column: 32, scope: !1461, inlinedAt: !1478)
!1512 = !DILocation(line: 482, column: 7, scope: !1461, inlinedAt: !1478)
!1513 = !DILocation(line: 482, column: 30, scope: !1461, inlinedAt: !1478)
!1514 = !DILocation(line: 488, column: 21, scope: !1515, inlinedAt: !1478)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 488, column: 7)
!1516 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 488, column: 7)
!1517 = !DILocation(line: 488, column: 7, scope: !1516, inlinedAt: !1478)
!1518 = !DILocation(line: 511, column: 7, scope: !1519, inlinedAt: !1478)
!1519 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 511, column: 7)
!1520 = !DILocation(line: 577, column: 22, scope: !1461, inlinedAt: !1478)
!1521 = !DILocation(line: 490, column: 13, scope: !1522, inlinedAt: !1478)
!1522 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 489, column: 9)
!1523 = !DILocation(line: 491, column: 20, scope: !1522, inlinedAt: !1478)
!1524 = !DILocation(line: 491, column: 23, scope: !1522, inlinedAt: !1478)
!1525 = !DILocation(line: 491, column: 18, scope: !1522, inlinedAt: !1478)
!1526 = !DILocation(line: 491, column: 28, scope: !1522, inlinedAt: !1478)
!1527 = !DILocation(line: 491, column: 32, scope: !1522, inlinedAt: !1478)
!1528 = !DILocation(line: 491, column: 43, scope: !1522, inlinedAt: !1478)
!1529 = !DILocation(line: 491, column: 40, scope: !1522, inlinedAt: !1478)
!1530 = !DILocation(line: 491, column: 48, scope: !1522, inlinedAt: !1478)
!1531 = !DILocation(line: 491, column: 57, scope: !1522, inlinedAt: !1478)
!1532 = !DILocation(line: 491, column: 55, scope: !1522, inlinedAt: !1478)
!1533 = !DILocation(line: 492, column: 11, scope: !1522, inlinedAt: !1478)
!1534 = !DILocation(line: 492, column: 27, scope: !1522, inlinedAt: !1478)
!1535 = !DILocation(line: 494, column: 35, scope: !1522, inlinedAt: !1478)
!1536 = !DILocation(line: 494, column: 57, scope: !1522, inlinedAt: !1478)
!1537 = !DILocation(line: 494, column: 46, scope: !1522, inlinedAt: !1478)
!1538 = !DILocation(line: 494, column: 64, scope: !1522, inlinedAt: !1478)
!1539 = !DILocation(line: 494, column: 11, scope: !1522, inlinedAt: !1478)
!1540 = !DILocation(line: 494, column: 33, scope: !1522, inlinedAt: !1478)
!1541 = !DILocation(line: 497, column: 48, scope: !1522, inlinedAt: !1478)
!1542 = !DILocation(line: 497, column: 60, scope: !1522, inlinedAt: !1478)
!1543 = !DILocation(line: 498, column: 41, scope: !1522, inlinedAt: !1478)
!1544 = !DILocation(line: 497, column: 11, scope: !1522, inlinedAt: !1478)
!1545 = !DILocation(line: 497, column: 34, scope: !1522, inlinedAt: !1478)
!1546 = !DILocation(line: 488, column: 30, scope: !1515, inlinedAt: !1478)
!1547 = distinct !{!1547, !1517, !1548, !207}
!1548 = !DILocation(line: 502, column: 9, scope: !1516, inlinedAt: !1478)
!1549 = !DILocation(line: 511, column: 21, scope: !1550, inlinedAt: !1478)
!1550 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 511, column: 7)
!1551 = distinct !{!1551, !1518, !1552, !207}
!1552 = !DILocation(line: 571, column: 9, scope: !1519, inlinedAt: !1478)
!1553 = !DILocation(line: 520, column: 22, scope: !1554, inlinedAt: !1478)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 512, column: 9)
!1555 = !DILocation(line: 520, column: 17, scope: !1554, inlinedAt: !1478)
!1556 = !DILocation(line: 522, column: 30, scope: !1554, inlinedAt: !1478)
!1557 = !DILocation(line: 522, column: 15, scope: !1554, inlinedAt: !1478)
!1558 = !DILocation(line: 523, column: 11, scope: !1554, inlinedAt: !1478)
!1559 = !DILocation(line: 523, column: 31, scope: !1554, inlinedAt: !1478)
!1560 = !DILocation(line: 525, column: 39, scope: !1554, inlinedAt: !1478)
!1561 = !DILocation(line: 525, column: 41, scope: !1554, inlinedAt: !1478)
!1562 = !DILocation(line: 525, column: 48, scope: !1554, inlinedAt: !1478)
!1563 = !DILocation(line: 525, column: 11, scope: !1554, inlinedAt: !1478)
!1564 = !DILocation(line: 525, column: 37, scope: !1554, inlinedAt: !1478)
!1565 = !DILocation(line: 529, column: 24, scope: !1554, inlinedAt: !1478)
!1566 = !DILocation(line: 529, column: 28, scope: !1554, inlinedAt: !1478)
!1567 = !DILocation(line: 529, column: 15, scope: !1554, inlinedAt: !1478)
!1568 = !DILocation(line: 529, column: 43, scope: !1554, inlinedAt: !1478)
!1569 = !DILocation(line: 529, column: 41, scope: !1554, inlinedAt: !1478)
!1570 = !DILocation(line: 530, column: 18, scope: !1554, inlinedAt: !1478)
!1571 = !DILocation(line: 528, column: 11, scope: !1554, inlinedAt: !1478)
!1572 = !DILocation(line: 528, column: 38, scope: !1554, inlinedAt: !1478)
!1573 = !DILocation(line: 541, column: 25, scope: !1554, inlinedAt: !1478)
!1574 = !DILocation(line: 542, column: 19, scope: !1554, inlinedAt: !1478)
!1575 = !DILocation(line: 542, column: 29, scope: !1554, inlinedAt: !1478)
!1576 = !DILocation(line: 542, column: 32, scope: !1554, inlinedAt: !1478)
!1577 = !DILocation(line: 542, column: 27, scope: !1554, inlinedAt: !1478)
!1578 = !DILocation(line: 542, column: 25, scope: !1554, inlinedAt: !1478)
!1579 = !DILocation(line: 543, column: 11, scope: !1554, inlinedAt: !1478)
!1580 = !DILocation(line: 543, column: 27, scope: !1554, inlinedAt: !1478)
!1581 = !DILocation(line: 545, column: 54, scope: !1554, inlinedAt: !1478)
!1582 = !DILocation(line: 545, column: 62, scope: !1554, inlinedAt: !1478)
!1583 = !DILocation(line: 545, column: 70, scope: !1554, inlinedAt: !1478)
!1584 = !DILocation(line: 545, column: 74, scope: !1554, inlinedAt: !1478)
!1585 = !DILocation(line: 545, column: 41, scope: !1554, inlinedAt: !1478)
!1586 = !DILocation(line: 545, column: 11, scope: !1554, inlinedAt: !1478)
!1587 = !DILocation(line: 545, column: 33, scope: !1554, inlinedAt: !1478)
!1588 = !DILocation(line: 549, column: 16, scope: !1554, inlinedAt: !1478)
!1589 = !DILocation(line: 549, column: 14, scope: !1554, inlinedAt: !1478)
!1590 = !DILocation(line: 549, column: 20, scope: !1554, inlinedAt: !1478)
!1591 = !DILocation(line: 549, column: 40, scope: !1554, inlinedAt: !1478)
!1592 = !DILocation(line: 549, column: 55, scope: !1554, inlinedAt: !1478)
!1593 = !DILocation(line: 549, column: 53, scope: !1554, inlinedAt: !1478)
!1594 = !DILocation(line: 550, column: 18, scope: !1554, inlinedAt: !1478)
!1595 = !DILocation(line: 548, column: 11, scope: !1554, inlinedAt: !1478)
!1596 = !DILocation(line: 548, column: 34, scope: !1554, inlinedAt: !1478)
!1597 = !DILocation(line: 554, column: 22, scope: !1598, inlinedAt: !1478)
!1598 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 554, column: 11)
!1599 = !DILocation(line: 554, column: 29, scope: !1600, inlinedAt: !1478)
!1600 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 554, column: 11)
!1601 = !DILocation(line: 554, column: 11, scope: !1598, inlinedAt: !1478)
!1602 = !DILocation(line: 556, column: 17, scope: !1603, inlinedAt: !1478)
!1603 = distinct !DILexicalBlock(scope: !1600, file: !2, line: 555, column: 13)
!1604 = !DILocation(line: 557, column: 24, scope: !1603, inlinedAt: !1478)
!1605 = !DILocation(line: 557, column: 27, scope: !1603, inlinedAt: !1478)
!1606 = !DILocation(line: 557, column: 22, scope: !1603, inlinedAt: !1478)
!1607 = !DILocation(line: 557, column: 32, scope: !1603, inlinedAt: !1478)
!1608 = !DILocation(line: 557, column: 36, scope: !1603, inlinedAt: !1478)
!1609 = !DILocation(line: 557, column: 47, scope: !1603, inlinedAt: !1478)
!1610 = !DILocation(line: 557, column: 51, scope: !1603, inlinedAt: !1478)
!1611 = !DILocation(line: 557, column: 44, scope: !1603, inlinedAt: !1478)
!1612 = !DILocation(line: 557, column: 56, scope: !1603, inlinedAt: !1478)
!1613 = !DILocation(line: 558, column: 33, scope: !1603, inlinedAt: !1478)
!1614 = !DILocation(line: 558, column: 21, scope: !1603, inlinedAt: !1478)
!1615 = !DILocation(line: 557, column: 63, scope: !1603, inlinedAt: !1478)
!1616 = !DILocation(line: 559, column: 15, scope: !1603, inlinedAt: !1478)
!1617 = !DILocation(line: 559, column: 31, scope: !1603, inlinedAt: !1478)
!1618 = !DILocation(line: 561, column: 48, scope: !1603, inlinedAt: !1478)
!1619 = !DILocation(line: 561, column: 56, scope: !1603, inlinedAt: !1478)
!1620 = !DILocation(line: 561, column: 64, scope: !1603, inlinedAt: !1478)
!1621 = !DILocation(line: 561, column: 66, scope: !1603, inlinedAt: !1478)
!1622 = !DILocation(line: 561, column: 70, scope: !1603, inlinedAt: !1478)
!1623 = !DILocation(line: 561, column: 45, scope: !1603, inlinedAt: !1478)
!1624 = !DILocation(line: 561, column: 15, scope: !1603, inlinedAt: !1478)
!1625 = !DILocation(line: 561, column: 37, scope: !1603, inlinedAt: !1478)
!1626 = !DILocation(line: 565, column: 36, scope: !1603, inlinedAt: !1478)
!1627 = !DILocation(line: 565, column: 51, scope: !1603, inlinedAt: !1478)
!1628 = !DILocation(line: 565, column: 49, scope: !1603, inlinedAt: !1478)
!1629 = !DILocation(line: 566, column: 22, scope: !1603, inlinedAt: !1478)
!1630 = !DILocation(line: 564, column: 15, scope: !1603, inlinedAt: !1478)
!1631 = !DILocation(line: 564, column: 38, scope: !1603, inlinedAt: !1478)
!1632 = !DILocation(line: 554, column: 38, scope: !1600, inlinedAt: !1478)
!1633 = distinct !{!1633, !1601, !1634, !207}
!1634 = !DILocation(line: 570, column: 13, scope: !1598, inlinedAt: !1478)
!1635 = !DILocation(line: 575, column: 18, scope: !1461, inlinedAt: !1478)
!1636 = !DILocation(line: 575, column: 13, scope: !1461, inlinedAt: !1478)
!1637 = !DILocation(line: 577, column: 26, scope: !1461, inlinedAt: !1478)
!1638 = !DILocation(line: 577, column: 11, scope: !1461, inlinedAt: !1478)
!1639 = !DILocation(line: 578, column: 7, scope: !1461, inlinedAt: !1478)
!1640 = !DILocation(line: 578, column: 27, scope: !1461, inlinedAt: !1478)
!1641 = !DILocation(line: 580, column: 35, scope: !1461, inlinedAt: !1478)
!1642 = !DILocation(line: 580, column: 40, scope: !1461, inlinedAt: !1478)
!1643 = !DILocation(line: 580, column: 44, scope: !1461, inlinedAt: !1478)
!1644 = !DILocation(line: 580, column: 50, scope: !1461, inlinedAt: !1478)
!1645 = !DILocation(line: 580, column: 7, scope: !1461, inlinedAt: !1478)
!1646 = !DILocation(line: 580, column: 33, scope: !1461, inlinedAt: !1478)
!1647 = !DILocation(line: 584, column: 23, scope: !1461, inlinedAt: !1478)
!1648 = !DILocation(line: 584, column: 30, scope: !1461, inlinedAt: !1478)
!1649 = !DILocation(line: 584, column: 14, scope: !1461, inlinedAt: !1478)
!1650 = !DILocation(line: 584, column: 48, scope: !1461, inlinedAt: !1478)
!1651 = !DILocation(line: 584, column: 46, scope: !1461, inlinedAt: !1478)
!1652 = !DILocation(line: 585, column: 14, scope: !1461, inlinedAt: !1478)
!1653 = !DILocation(line: 583, column: 7, scope: !1461, inlinedAt: !1478)
!1654 = !DILocation(line: 583, column: 34, scope: !1461, inlinedAt: !1478)
!1655 = !DILocation(line: 588, column: 7, scope: !1461, inlinedAt: !1478)
!1656 = !DILocalVariable(name: "lmax", arg: 1, scope: !1657, file: !2, line: 218, type: !85)
!1657 = distinct !DISubprogram(name: "legendre_deriv2_array_schmidt_e", scope: !2, file: !2, line: 217, type: !1452, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1658)
!1658 = !{!1656, !1659, !1660, !1661, !1662, !1663, !1664, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684}
!1659 = !DILocalVariable(name: "x", arg: 2, scope: !1657, file: !2, line: 218, type: !89)
!1660 = !DILocalVariable(name: "csphase", arg: 3, scope: !1657, file: !2, line: 218, type: !89)
!1661 = !DILocalVariable(name: "result_array", arg: 4, scope: !1657, file: !2, line: 218, type: !90)
!1662 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !1657, file: !2, line: 218, type: !90)
!1663 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !1657, file: !2, line: 218, type: !90)
!1664 = !DILocalVariable(name: "eps", scope: !1665, file: !2, line: 236, type: !89)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 235, column: 5)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !2, line: 230, column: 12)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 225, column: 12)
!1668 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 220, column: 7)
!1669 = !DILocalVariable(name: "u", scope: !1665, file: !2, line: 237, type: !89)
!1670 = !DILocalVariable(name: "uinv", scope: !1665, file: !2, line: 239, type: !89)
!1671 = !DILocalVariable(name: "uinv2", scope: !1665, file: !2, line: 242, type: !89)
!1672 = !DILocalVariable(name: "xbyu", scope: !1665, file: !2, line: 245, type: !89)
!1673 = !DILocalVariable(name: "l", scope: !1665, file: !2, line: 247, type: !86)
!1674 = !DILocalVariable(name: "m", scope: !1665, file: !2, line: 247, type: !86)
!1675 = !DILocalVariable(name: "k", scope: !1665, file: !2, line: 248, type: !86)
!1676 = !DILocalVariable(name: "idxmm", scope: !1665, file: !2, line: 248, type: !86)
!1677 = !DILocalVariable(name: "plm", scope: !1665, file: !2, line: 249, type: !70)
!1678 = !DILocalVariable(name: "pmm", scope: !1665, file: !2, line: 250, type: !70)
!1679 = !DILocalVariable(name: "rescalem", scope: !1665, file: !2, line: 251, type: !70)
!1680 = !DILocalVariable(name: "pm1", scope: !1665, file: !2, line: 252, type: !70)
!1681 = !DILocalVariable(name: "pm2", scope: !1665, file: !2, line: 253, type: !70)
!1682 = !DILocalVariable(name: "nlm", scope: !1665, file: !2, line: 254, type: !86)
!1683 = !DILocalVariable(name: "sqrts", scope: !1665, file: !2, line: 255, type: !90)
!1684 = !DILocalVariable(name: "linv", scope: !1685, file: !2, line: 288, type: !70)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 287, column: 9)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 286, column: 7)
!1687 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 286, column: 7)
!1688 = !DILocation(line: 0, scope: !1657, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 121, column: 11, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 119, column: 5)
!1691 = !DILocation(line: 220, column: 15, scope: !1668, inlinedAt: !1689)
!1692 = !DILocation(line: 222, column: 7, scope: !1693, inlinedAt: !1689)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !2, line: 222, column: 7)
!1694 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 221, column: 5)
!1695 = !DILocation(line: 225, column: 12, scope: !1667, inlinedAt: !1689)
!1696 = !DILocation(line: 225, column: 20, scope: !1667, inlinedAt: !1689)
!1697 = !DILocation(line: 225, column: 12, scope: !1668, inlinedAt: !1689)
!1698 = !DILocation(line: 227, column: 7, scope: !1699, inlinedAt: !1689)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !2, line: 227, column: 7)
!1700 = distinct !DILexicalBlock(scope: !1667, file: !2, line: 226, column: 5)
!1701 = !DILocation(line: 230, column: 20, scope: !1666, inlinedAt: !1689)
!1702 = !DILocation(line: 230, column: 27, scope: !1666, inlinedAt: !1689)
!1703 = !DILocation(line: 232, column: 7, scope: !1704, inlinedAt: !1689)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 232, column: 7)
!1705 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 231, column: 5)
!1706 = !DILocation(line: 0, scope: !1665, inlinedAt: !1689)
!1707 = !DILocation(line: 237, column: 24, scope: !1665, inlinedAt: !1689)
!1708 = !DILocation(line: 239, column: 31, scope: !1665, inlinedAt: !1689)
!1709 = !DILocation(line: 0, scope: !122, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 254, column: 20, scope: !1665, inlinedAt: !1689)
!1711 = !DILocation(line: 255, column: 25, scope: !1665, inlinedAt: !1689)
!1712 = !DILocation(line: 0, scope: !302, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 258, column: 7, scope: !1665, inlinedAt: !1689)
!1714 = !DILocation(line: 112, column: 3, scope: !311, inlinedAt: !1713)
!1715 = !DILocation(line: 113, column: 21, scope: !313, inlinedAt: !1713)
!1716 = !DILocation(line: 113, column: 16, scope: !313, inlinedAt: !1713)
!1717 = !DILocation(line: 113, column: 5, scope: !313, inlinedAt: !1713)
!1718 = !DILocation(line: 113, column: 14, scope: !313, inlinedAt: !1713)
!1719 = !DILocation(line: 112, column: 34, scope: !313, inlinedAt: !1713)
!1720 = distinct !{!1720, !1714, !1721, !207}
!1721 = !DILocation(line: 113, column: 31, scope: !311, inlinedAt: !1713)
!1722 = distinct !{!1722, !321}
!1723 = !DILocation(line: 242, column: 36, scope: !1665, inlinedAt: !1689)
!1724 = !DILocation(line: 245, column: 29, scope: !1665, inlinedAt: !1689)
!1725 = !DILocation(line: 264, column: 23, scope: !1665, inlinedAt: !1689)
!1726 = !DILocation(line: 266, column: 29, scope: !1665, inlinedAt: !1689)
!1727 = !DILocation(line: 269, column: 30, scope: !1665, inlinedAt: !1689)
!1728 = !DILocation(line: 272, column: 16, scope: !1729, inlinedAt: !1689)
!1729 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 272, column: 11)
!1730 = !DILocation(line: 272, column: 11, scope: !1665, inlinedAt: !1689)
!1731 = !DILocation(line: 275, column: 7, scope: !1665, inlinedAt: !1689)
!1732 = !DILocation(line: 275, column: 23, scope: !1665, inlinedAt: !1689)
!1733 = !DILocation(line: 277, column: 31, scope: !1665, inlinedAt: !1689)
!1734 = !DILocation(line: 277, column: 7, scope: !1665, inlinedAt: !1689)
!1735 = !DILocation(line: 277, column: 29, scope: !1665, inlinedAt: !1689)
!1736 = !DILocation(line: 280, column: 32, scope: !1665, inlinedAt: !1689)
!1737 = !DILocation(line: 280, column: 7, scope: !1665, inlinedAt: !1689)
!1738 = !DILocation(line: 280, column: 30, scope: !1665, inlinedAt: !1689)
!1739 = !DILocation(line: 286, column: 21, scope: !1686, inlinedAt: !1689)
!1740 = !DILocation(line: 286, column: 7, scope: !1687, inlinedAt: !1689)
!1741 = !DILocation(line: 321, column: 7, scope: !1742, inlinedAt: !1689)
!1742 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 321, column: 7)
!1743 = !DILocation(line: 288, column: 31, scope: !1685, inlinedAt: !1689)
!1744 = !DILocation(line: 288, column: 29, scope: !1685, inlinedAt: !1689)
!1745 = !DILocation(line: 0, scope: !1685, inlinedAt: !1689)
!1746 = !DILocation(line: 290, column: 13, scope: !1685, inlinedAt: !1689)
!1747 = !DILocation(line: 292, column: 30, scope: !1685, inlinedAt: !1689)
!1748 = !DILocation(line: 292, column: 34, scope: !1685, inlinedAt: !1689)
!1749 = !DILocation(line: 292, column: 55, scope: !1685, inlinedAt: !1689)
!1750 = !DILocation(line: 293, column: 11, scope: !1685, inlinedAt: !1689)
!1751 = !DILocation(line: 293, column: 27, scope: !1685, inlinedAt: !1689)
!1752 = !DILocation(line: 295, column: 40, scope: !1685, inlinedAt: !1689)
!1753 = !DILocation(line: 295, column: 49, scope: !1685, inlinedAt: !1689)
!1754 = !DILocation(line: 295, column: 44, scope: !1685, inlinedAt: !1689)
!1755 = !DILocation(line: 295, column: 11, scope: !1685, inlinedAt: !1689)
!1756 = !DILocation(line: 295, column: 33, scope: !1685, inlinedAt: !1689)
!1757 = !DILocation(line: 298, column: 36, scope: !1685, inlinedAt: !1689)
!1758 = !DILocation(line: 298, column: 48, scope: !1685, inlinedAt: !1689)
!1759 = !DILocation(line: 298, column: 60, scope: !1685, inlinedAt: !1689)
!1760 = !DILocation(line: 299, column: 41, scope: !1685, inlinedAt: !1689)
!1761 = !DILocation(line: 298, column: 11, scope: !1685, inlinedAt: !1689)
!1762 = !DILocation(line: 298, column: 34, scope: !1685, inlinedAt: !1689)
!1763 = !DILocation(line: 286, column: 30, scope: !1686, inlinedAt: !1689)
!1764 = distinct !{!1764, !1740, !1765, !207}
!1765 = !DILocation(line: 303, column: 9, scope: !1687, inlinedAt: !1689)
!1766 = !DILocation(line: 321, column: 21, scope: !1767, inlinedAt: !1689)
!1767 = distinct !DILexicalBlock(scope: !1742, file: !2, line: 321, column: 7)
!1768 = distinct !{!1768, !1741, !1769, !207}
!1769 = !DILocation(line: 387, column: 9, scope: !1742, inlinedAt: !1689)
!1770 = !DILocation(line: 324, column: 20, scope: !1771, inlinedAt: !1689)
!1771 = distinct !DILexicalBlock(scope: !1767, file: !2, line: 322, column: 9)
!1772 = !DILocation(line: 332, column: 22, scope: !1771, inlinedAt: !1689)
!1773 = !DILocation(line: 332, column: 17, scope: !1771, inlinedAt: !1689)
!1774 = !DILocation(line: 333, column: 36, scope: !1771, inlinedAt: !1689)
!1775 = !DILocation(line: 333, column: 28, scope: !1771, inlinedAt: !1689)
!1776 = !DILocation(line: 333, column: 26, scope: !1771, inlinedAt: !1689)
!1777 = !DILocation(line: 333, column: 47, scope: !1771, inlinedAt: !1689)
!1778 = !DILocation(line: 333, column: 45, scope: !1771, inlinedAt: !1689)
!1779 = !DILocation(line: 333, column: 15, scope: !1771, inlinedAt: !1689)
!1780 = !DILocation(line: 334, column: 37, scope: !1771, inlinedAt: !1689)
!1781 = !DILocation(line: 334, column: 11, scope: !1771, inlinedAt: !1689)
!1782 = !DILocation(line: 334, column: 31, scope: !1771, inlinedAt: !1689)
!1783 = !DILocation(line: 336, column: 39, scope: !1771, inlinedAt: !1689)
!1784 = !DILocation(line: 336, column: 41, scope: !1771, inlinedAt: !1689)
!1785 = !DILocation(line: 336, column: 48, scope: !1771, inlinedAt: !1689)
!1786 = !DILocation(line: 336, column: 11, scope: !1771, inlinedAt: !1689)
!1787 = !DILocation(line: 336, column: 37, scope: !1771, inlinedAt: !1689)
!1788 = !DILocation(line: 340, column: 24, scope: !1771, inlinedAt: !1689)
!1789 = !DILocation(line: 340, column: 28, scope: !1771, inlinedAt: !1689)
!1790 = !DILocation(line: 340, column: 15, scope: !1771, inlinedAt: !1689)
!1791 = !DILocation(line: 340, column: 43, scope: !1771, inlinedAt: !1689)
!1792 = !DILocation(line: 340, column: 41, scope: !1771, inlinedAt: !1689)
!1793 = !DILocation(line: 341, column: 18, scope: !1771, inlinedAt: !1689)
!1794 = !DILocation(line: 339, column: 11, scope: !1771, inlinedAt: !1689)
!1795 = !DILocation(line: 339, column: 38, scope: !1771, inlinedAt: !1689)
!1796 = !DILocation(line: 351, column: 25, scope: !1771, inlinedAt: !1689)
!1797 = !DILocation(line: 352, column: 33, scope: !1771, inlinedAt: !1689)
!1798 = !DILocation(line: 352, column: 21, scope: !1771, inlinedAt: !1689)
!1799 = !DILocation(line: 352, column: 19, scope: !1771, inlinedAt: !1689)
!1800 = !DILocation(line: 352, column: 38, scope: !1771, inlinedAt: !1689)
!1801 = !DILocation(line: 353, column: 33, scope: !1771, inlinedAt: !1689)
!1802 = !DILocation(line: 353, column: 11, scope: !1771, inlinedAt: !1689)
!1803 = !DILocation(line: 353, column: 27, scope: !1771, inlinedAt: !1689)
!1804 = !DILocation(line: 356, column: 31, scope: !1771, inlinedAt: !1689)
!1805 = !DILocation(line: 356, column: 35, scope: !1771, inlinedAt: !1689)
!1806 = !DILocation(line: 357, column: 21, scope: !1771, inlinedAt: !1689)
!1807 = !DILocation(line: 357, column: 40, scope: !1771, inlinedAt: !1689)
!1808 = !DILocation(line: 357, column: 38, scope: !1771, inlinedAt: !1689)
!1809 = !DILocation(line: 356, column: 18, scope: !1771, inlinedAt: !1689)
!1810 = !DILocation(line: 355, column: 11, scope: !1771, inlinedAt: !1689)
!1811 = !DILocation(line: 355, column: 33, scope: !1771, inlinedAt: !1689)
!1812 = !DILocation(line: 361, column: 16, scope: !1771, inlinedAt: !1689)
!1813 = !DILocation(line: 361, column: 14, scope: !1771, inlinedAt: !1689)
!1814 = !DILocation(line: 361, column: 20, scope: !1771, inlinedAt: !1689)
!1815 = !DILocation(line: 361, column: 40, scope: !1771, inlinedAt: !1689)
!1816 = !DILocation(line: 361, column: 55, scope: !1771, inlinedAt: !1689)
!1817 = !DILocation(line: 361, column: 53, scope: !1771, inlinedAt: !1689)
!1818 = !DILocation(line: 362, column: 18, scope: !1771, inlinedAt: !1689)
!1819 = !DILocation(line: 360, column: 11, scope: !1771, inlinedAt: !1689)
!1820 = !DILocation(line: 360, column: 34, scope: !1771, inlinedAt: !1689)
!1821 = !DILocation(line: 366, column: 22, scope: !1822, inlinedAt: !1689)
!1822 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 366, column: 11)
!1823 = !DILocation(line: 366, column: 16, scope: !1822, inlinedAt: !1689)
!1824 = !DILocation(line: 366, column: 29, scope: !1825, inlinedAt: !1689)
!1825 = distinct !DILexicalBlock(scope: !1822, file: !2, line: 366, column: 11)
!1826 = !DILocation(line: 366, column: 11, scope: !1822, inlinedAt: !1689)
!1827 = !DILocation(line: 368, column: 17, scope: !1828, inlinedAt: !1689)
!1828 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 367, column: 13)
!1829 = !DILocation(line: 370, column: 19, scope: !1828, inlinedAt: !1689)
!1830 = !DILocation(line: 370, column: 22, scope: !1828, inlinedAt: !1689)
!1831 = !DILocation(line: 370, column: 17, scope: !1828, inlinedAt: !1689)
!1832 = !DILocation(line: 370, column: 29, scope: !1828, inlinedAt: !1689)
!1833 = !DILocation(line: 370, column: 27, scope: !1828, inlinedAt: !1689)
!1834 = !DILocation(line: 370, column: 52, scope: !1828, inlinedAt: !1689)
!1835 = !DILocation(line: 370, column: 44, scope: !1828, inlinedAt: !1689)
!1836 = !DILocation(line: 370, column: 42, scope: !1828, inlinedAt: !1689)
!1837 = !DILocation(line: 370, column: 57, scope: !1828, inlinedAt: !1689)
!1838 = !DILocation(line: 370, column: 61, scope: !1828, inlinedAt: !1689)
!1839 = !DILocation(line: 371, column: 17, scope: !1828, inlinedAt: !1689)
!1840 = !DILocation(line: 371, column: 36, scope: !1828, inlinedAt: !1689)
!1841 = !DILocation(line: 371, column: 34, scope: !1828, inlinedAt: !1689)
!1842 = !DILocation(line: 371, column: 53, scope: !1828, inlinedAt: !1689)
!1843 = !DILocation(line: 372, column: 30, scope: !1828, inlinedAt: !1689)
!1844 = !DILocation(line: 372, column: 45, scope: !1828, inlinedAt: !1689)
!1845 = !DILocation(line: 373, column: 37, scope: !1828, inlinedAt: !1689)
!1846 = !DILocation(line: 373, column: 15, scope: !1828, inlinedAt: !1689)
!1847 = !DILocation(line: 373, column: 31, scope: !1828, inlinedAt: !1689)
!1848 = !DILocation(line: 376, column: 25, scope: !1828, inlinedAt: !1689)
!1849 = !DILocation(line: 376, column: 27, scope: !1828, inlinedAt: !1689)
!1850 = !DILocation(line: 376, column: 31, scope: !1828, inlinedAt: !1689)
!1851 = !DILocation(line: 377, column: 25, scope: !1828, inlinedAt: !1689)
!1852 = !DILocation(line: 377, column: 40, scope: !1828, inlinedAt: !1689)
!1853 = !DILocation(line: 377, column: 38, scope: !1828, inlinedAt: !1689)
!1854 = !DILocation(line: 377, column: 55, scope: !1828, inlinedAt: !1689)
!1855 = !DILocation(line: 377, column: 53, scope: !1828, inlinedAt: !1689)
!1856 = !DILocation(line: 376, column: 22, scope: !1828, inlinedAt: !1689)
!1857 = !DILocation(line: 375, column: 15, scope: !1828, inlinedAt: !1689)
!1858 = !DILocation(line: 375, column: 37, scope: !1828, inlinedAt: !1689)
!1859 = !DILocation(line: 381, column: 36, scope: !1828, inlinedAt: !1689)
!1860 = !DILocation(line: 381, column: 51, scope: !1828, inlinedAt: !1689)
!1861 = !DILocation(line: 381, column: 49, scope: !1828, inlinedAt: !1689)
!1862 = !DILocation(line: 382, column: 22, scope: !1828, inlinedAt: !1689)
!1863 = !DILocation(line: 380, column: 15, scope: !1828, inlinedAt: !1689)
!1864 = !DILocation(line: 380, column: 38, scope: !1828, inlinedAt: !1689)
!1865 = !DILocation(line: 366, column: 38, scope: !1825, inlinedAt: !1689)
!1866 = distinct !{!1866, !1826, !1867, !207}
!1867 = !DILocation(line: 386, column: 13, scope: !1822, inlinedAt: !1689)
!1868 = !DILocation(line: 392, column: 18, scope: !1665, inlinedAt: !1689)
!1869 = !DILocation(line: 391, column: 16, scope: !1665, inlinedAt: !1689)
!1870 = !DILocation(line: 392, column: 13, scope: !1665, inlinedAt: !1689)
!1871 = !DILocation(line: 393, column: 24, scope: !1665, inlinedAt: !1689)
!1872 = !DILocation(line: 393, column: 22, scope: !1665, inlinedAt: !1689)
!1873 = !DILocation(line: 393, column: 46, scope: !1665, inlinedAt: !1689)
!1874 = !DILocation(line: 393, column: 44, scope: !1665, inlinedAt: !1689)
!1875 = !DILocation(line: 393, column: 11, scope: !1665, inlinedAt: !1689)
!1876 = !DILocation(line: 394, column: 33, scope: !1665, inlinedAt: !1689)
!1877 = !DILocation(line: 394, column: 7, scope: !1665, inlinedAt: !1689)
!1878 = !DILocation(line: 394, column: 27, scope: !1665, inlinedAt: !1689)
!1879 = !DILocation(line: 396, column: 35, scope: !1665, inlinedAt: !1689)
!1880 = !DILocation(line: 396, column: 40, scope: !1665, inlinedAt: !1689)
!1881 = !DILocation(line: 396, column: 47, scope: !1665, inlinedAt: !1689)
!1882 = !DILocation(line: 396, column: 7, scope: !1665, inlinedAt: !1689)
!1883 = !DILocation(line: 396, column: 33, scope: !1665, inlinedAt: !1689)
!1884 = !DILocation(line: 400, column: 23, scope: !1665, inlinedAt: !1689)
!1885 = !DILocation(line: 400, column: 30, scope: !1665, inlinedAt: !1689)
!1886 = !DILocation(line: 400, column: 14, scope: !1665, inlinedAt: !1689)
!1887 = !DILocation(line: 400, column: 48, scope: !1665, inlinedAt: !1689)
!1888 = !DILocation(line: 400, column: 46, scope: !1665, inlinedAt: !1689)
!1889 = !DILocation(line: 401, column: 14, scope: !1665, inlinedAt: !1689)
!1890 = !DILocation(line: 399, column: 7, scope: !1665, inlinedAt: !1689)
!1891 = !DILocation(line: 399, column: 34, scope: !1665, inlinedAt: !1689)
!1892 = !DILocation(line: 404, column: 7, scope: !1665, inlinedAt: !1689)
!1893 = !DILocation(line: 126, column: 17, scope: !1426)
!1894 = !DILocation(line: 126, column: 3, scope: !1427)
!1895 = !DILocation(line: 129, column: 19, scope: !1425)
!1896 = !DILocation(line: 0, scope: !1425)
!1897 = !DILocation(line: 130, column: 20, scope: !1425)
!1898 = !DILocation(line: 132, column: 48, scope: !1425)
!1899 = !DILocation(line: 132, column: 54, scope: !1425)
!1900 = !DILocation(line: 132, column: 30, scope: !1425)
!1901 = !DILocation(line: 135, column: 29, scope: !1425)
!1902 = !DILocation(line: 126, column: 24, scope: !1426)
!1903 = distinct !{!1903, !1894, !1904, !207}
!1904 = !DILocation(line: 137, column: 5, scope: !1427)
!1905 = !DILocation(line: 141, column: 39, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 141, column: 7)
!1907 = !DILocation(line: 154, column: 5, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !2, line: 151, column: 5)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 150, column: 12)
!1910 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 145, column: 12)
!1911 = !DILocation(line: 164, column: 23, scope: !1430)
!1912 = !DILocation(line: 0, scope: !1430)
!1913 = !DILocation(line: 166, column: 5, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 166, column: 5)
!1915 = !DILocation(line: 169, column: 11, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !2, line: 167, column: 7)
!1917 = distinct !DILexicalBlock(scope: !1914, file: !2, line: 166, column: 5)
!1918 = !DILocation(line: 169, column: 27, scope: !1916)
!1919 = !DILocation(line: 0, scope: !425, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 168, column: 22, scope: !1916)
!1921 = !DILocation(line: 95, column: 18, scope: !425, inlinedAt: !1920)
!1922 = !DILocation(line: 95, column: 13, scope: !425, inlinedAt: !1920)
!1923 = !DILocation(line: 95, column: 23, scope: !425, inlinedAt: !1920)
!1924 = !DILocation(line: 168, column: 9, scope: !1916)
!1925 = !DILocation(line: 168, column: 57, scope: !1916)
!1926 = !DILocation(line: 172, column: 11, scope: !1916)
!1927 = !DILocation(line: 172, column: 27, scope: !1916)
!1928 = !DILocation(line: 0, scope: !425, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 171, column: 28, scope: !1916)
!1930 = !DILocation(line: 171, column: 9, scope: !1916)
!1931 = !DILocation(line: 171, column: 63, scope: !1916)
!1932 = !DILocation(line: 176, column: 11, scope: !1916)
!1933 = !DILocation(line: 176, column: 27, scope: !1916)
!1934 = !DILocation(line: 0, scope: !425, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 175, column: 29, scope: !1916)
!1936 = !DILocation(line: 175, column: 9, scope: !1916)
!1937 = !DILocation(line: 175, column: 64, scope: !1916)
!1938 = !DILocation(line: 179, column: 23, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !2, line: 179, column: 9)
!1940 = distinct !DILexicalBlock(scope: !1916, file: !2, line: 179, column: 9)
!1941 = !DILocation(line: 179, column: 9, scope: !1940)
!1942 = !DILocation(line: 182, column: 15, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 180, column: 11)
!1944 = !DILocation(line: 182, column: 31, scope: !1943)
!1945 = !DILocation(line: 0, scope: !425, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 181, column: 26, scope: !1943)
!1947 = !DILocation(line: 95, column: 27, scope: !425, inlinedAt: !1946)
!1948 = !DILocation(line: 181, column: 13, scope: !1943)
!1949 = !DILocation(line: 181, column: 61, scope: !1943)
!1950 = !DILocation(line: 185, column: 15, scope: !1943)
!1951 = !DILocation(line: 185, column: 31, scope: !1943)
!1952 = !DILocation(line: 0, scope: !425, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 184, column: 32, scope: !1943)
!1954 = !DILocation(line: 184, column: 13, scope: !1943)
!1955 = !DILocation(line: 184, column: 67, scope: !1943)
!1956 = !DILocation(line: 189, column: 15, scope: !1943)
!1957 = !DILocation(line: 189, column: 31, scope: !1943)
!1958 = !DILocation(line: 0, scope: !425, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 188, column: 33, scope: !1943)
!1960 = !DILocation(line: 188, column: 13, scope: !1943)
!1961 = !DILocation(line: 188, column: 68, scope: !1943)
!1962 = !DILocation(line: 179, column: 29, scope: !1939)
!1963 = distinct !{!1963, !1941, !1964, !207}
!1964 = !DILocation(line: 191, column: 11, scope: !1940)
!1965 = !DILocation(line: 193, column: 18, scope: !1916)
!1966 = !DILocation(line: 166, column: 19, scope: !1917)
!1967 = distinct !{!1967, !1913, !1968, !207}
!1968 = !DILocation(line: 194, column: 7, scope: !1914)
!1969 = !DILocation(line: 198, column: 1, scope: !1405)
!1970 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv2_alt_array", scope: !2, file: !2, line: 74, type: !1392, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1971)
!1971 = !{!1972, !1973, !1974, !1975, !1976, !1977, !1978}
!1972 = !DILocalVariable(name: "norm", arg: 1, scope: !1970, file: !2, line: 75, type: !83)
!1973 = !DILocalVariable(name: "lmax", arg: 2, scope: !1970, file: !2, line: 75, type: !85)
!1974 = !DILocalVariable(name: "x", arg: 3, scope: !1970, file: !2, line: 75, type: !89)
!1975 = !DILocalVariable(name: "result_array", arg: 4, scope: !1970, file: !2, line: 76, type: !90)
!1976 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !1970, file: !2, line: 76, type: !90)
!1977 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !1970, file: !2, line: 76, type: !90)
!1978 = !DILocalVariable(name: "s", scope: !1970, file: !2, line: 78, type: !32)
!1979 = !DILocation(line: 0, scope: !1970)
!1980 = !DILocation(line: 78, column: 11, scope: !1970)
!1981 = !DILocation(line: 79, column: 3, scope: !1970)
!1982 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv2_alt_array_e", scope: !2, file: !2, line: 95, type: !1406, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1983)
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1997, !1998, !1999}
!1984 = !DILocalVariable(name: "norm", arg: 1, scope: !1982, file: !2, line: 96, type: !83)
!1985 = !DILocalVariable(name: "lmax", arg: 2, scope: !1982, file: !2, line: 96, type: !85)
!1986 = !DILocalVariable(name: "x", arg: 3, scope: !1982, file: !2, line: 96, type: !89)
!1987 = !DILocalVariable(name: "csphase", arg: 4, scope: !1982, file: !2, line: 97, type: !89)
!1988 = !DILocalVariable(name: "result_array", arg: 5, scope: !1982, file: !2, line: 97, type: !90)
!1989 = !DILocalVariable(name: "result_deriv_array", arg: 6, scope: !1982, file: !2, line: 97, type: !90)
!1990 = !DILocalVariable(name: "result_deriv2_array", arg: 7, scope: !1982, file: !2, line: 97, type: !90)
!1991 = !DILocalVariable(name: "s", scope: !1982, file: !2, line: 99, type: !32)
!1992 = !DILocalVariable(name: "nlm", scope: !1982, file: !2, line: 100, type: !85)
!1993 = !DILocalVariable(name: "fac1", scope: !1982, file: !2, line: 111, type: !70)
!1994 = !DILocalVariable(name: "fac2", scope: !1982, file: !2, line: 111, type: !70)
!1995 = !DILocalVariable(name: "l", scope: !1996, file: !2, line: 162, type: !86)
!1996 = distinct !DILexicalBlock(scope: !1982, file: !2, line: 161, column: 3)
!1997 = !DILocalVariable(name: "m", scope: !1996, file: !2, line: 162, type: !86)
!1998 = !DILocalVariable(name: "twoellp1", scope: !1996, file: !2, line: 163, type: !86)
!1999 = !DILocalVariable(name: "sqrts", scope: !1996, file: !2, line: 164, type: !90)
!2000 = !DILocation(line: 0, scope: !1982)
!2001 = !DILocation(line: 0, scope: !122, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 100, column: 22, scope: !1982)
!2003 = !DILocation(line: 68, column: 17, scope: !122, inlinedAt: !2002)
!2004 = !DILocation(line: 68, column: 30, scope: !122, inlinedAt: !2002)
!2005 = !DILocation(line: 68, column: 22, scope: !122, inlinedAt: !2002)
!2006 = !DILocation(line: 68, column: 35, scope: !122, inlinedAt: !2002)
!2007 = !DILocation(line: 113, column: 12, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1982, file: !2, line: 113, column: 7)
!2009 = !DILocation(line: 0, scope: !2008)
!2010 = !DILocation(line: 113, column: 7, scope: !1982)
!2011 = !DILocalVariable(name: "lmax", arg: 1, scope: !2012, file: !2, line: 426, type: !85)
!2012 = distinct !DISubprogram(name: "legendre_deriv2_alt_array_none_e", scope: !2, file: !2, line: 425, type: !1452, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2013)
!2013 = !{!2011, !2014, !2015, !2016, !2017, !2018, !2019, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035}
!2014 = !DILocalVariable(name: "x", arg: 2, scope: !2012, file: !2, line: 426, type: !89)
!2015 = !DILocalVariable(name: "csphase", arg: 3, scope: !2012, file: !2, line: 426, type: !89)
!2016 = !DILocalVariable(name: "result_array", arg: 4, scope: !2012, file: !2, line: 426, type: !90)
!2017 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !2012, file: !2, line: 426, type: !90)
!2018 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !2012, file: !2, line: 426, type: !90)
!2019 = !DILocalVariable(name: "u", scope: !2020, file: !2, line: 444, type: !89)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !2, line: 443, column: 5)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !2, line: 438, column: 12)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !2, line: 433, column: 12)
!2023 = distinct !DILexicalBlock(scope: !2012, file: !2, line: 428, column: 7)
!2024 = !DILocalVariable(name: "uinv", scope: !2020, file: !2, line: 446, type: !89)
!2025 = !DILocalVariable(name: "uinv2", scope: !2020, file: !2, line: 449, type: !89)
!2026 = !DILocalVariable(name: "xbyu", scope: !2020, file: !2, line: 452, type: !89)
!2027 = !DILocalVariable(name: "l", scope: !2020, file: !2, line: 454, type: !86)
!2028 = !DILocalVariable(name: "m", scope: !2020, file: !2, line: 454, type: !86)
!2029 = !DILocalVariable(name: "k", scope: !2020, file: !2, line: 455, type: !86)
!2030 = !DILocalVariable(name: "idxmm", scope: !2020, file: !2, line: 455, type: !86)
!2031 = !DILocalVariable(name: "plm", scope: !2020, file: !2, line: 456, type: !70)
!2032 = !DILocalVariable(name: "pmm", scope: !2020, file: !2, line: 456, type: !70)
!2033 = !DILocalVariable(name: "pm1", scope: !2020, file: !2, line: 457, type: !70)
!2034 = !DILocalVariable(name: "pm2", scope: !2020, file: !2, line: 458, type: !70)
!2035 = !DILocalVariable(name: "twomm1", scope: !2020, file: !2, line: 459, type: !70)
!2036 = !DILocation(line: 0, scope: !2012, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 116, column: 11, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 114, column: 5)
!2039 = !DILocation(line: 428, column: 15, scope: !2023, inlinedAt: !2037)
!2040 = !DILocation(line: 430, column: 7, scope: !2041, inlinedAt: !2037)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !2, line: 430, column: 7)
!2042 = distinct !DILexicalBlock(scope: !2023, file: !2, line: 429, column: 5)
!2043 = !DILocation(line: 433, column: 12, scope: !2022, inlinedAt: !2037)
!2044 = !DILocation(line: 433, column: 20, scope: !2022, inlinedAt: !2037)
!2045 = !DILocation(line: 433, column: 12, scope: !2023, inlinedAt: !2037)
!2046 = !DILocation(line: 435, column: 7, scope: !2047, inlinedAt: !2037)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 435, column: 7)
!2048 = distinct !DILexicalBlock(scope: !2022, file: !2, line: 434, column: 5)
!2049 = !DILocation(line: 438, column: 20, scope: !2021, inlinedAt: !2037)
!2050 = !DILocation(line: 438, column: 27, scope: !2021, inlinedAt: !2037)
!2051 = !DILocation(line: 440, column: 7, scope: !2052, inlinedAt: !2037)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !2, line: 440, column: 7)
!2053 = distinct !DILexicalBlock(scope: !2021, file: !2, line: 439, column: 5)
!2054 = !DILocation(line: 444, column: 46, scope: !2020, inlinedAt: !2037)
!2055 = !DILocation(line: 444, column: 39, scope: !2020, inlinedAt: !2037)
!2056 = !DILocation(line: 444, column: 24, scope: !2020, inlinedAt: !2037)
!2057 = !DILocation(line: 0, scope: !2020, inlinedAt: !2037)
!2058 = !DILocation(line: 446, column: 31, scope: !2020, inlinedAt: !2037)
!2059 = !DILocation(line: 449, column: 36, scope: !2020, inlinedAt: !2037)
!2060 = !DILocation(line: 452, column: 29, scope: !2020, inlinedAt: !2037)
!2061 = !DILocation(line: 466, column: 23, scope: !2020, inlinedAt: !2037)
!2062 = !DILocation(line: 468, column: 29, scope: !2020, inlinedAt: !2037)
!2063 = !DILocation(line: 471, column: 30, scope: !2020, inlinedAt: !2037)
!2064 = !DILocation(line: 474, column: 16, scope: !2065, inlinedAt: !2037)
!2065 = distinct !DILexicalBlock(scope: !2020, file: !2, line: 474, column: 11)
!2066 = !DILocation(line: 474, column: 11, scope: !2020, inlinedAt: !2037)
!2067 = !DILocation(line: 477, column: 7, scope: !2020, inlinedAt: !2037)
!2068 = !DILocation(line: 477, column: 23, scope: !2020, inlinedAt: !2037)
!2069 = !DILocation(line: 479, column: 31, scope: !2020, inlinedAt: !2037)
!2070 = !DILocation(line: 479, column: 7, scope: !2020, inlinedAt: !2037)
!2071 = !DILocation(line: 479, column: 29, scope: !2020, inlinedAt: !2037)
!2072 = !DILocation(line: 482, column: 32, scope: !2020, inlinedAt: !2037)
!2073 = !DILocation(line: 482, column: 7, scope: !2020, inlinedAt: !2037)
!2074 = !DILocation(line: 482, column: 30, scope: !2020, inlinedAt: !2037)
!2075 = !DILocation(line: 488, column: 21, scope: !2076, inlinedAt: !2037)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !2, line: 488, column: 7)
!2077 = distinct !DILexicalBlock(scope: !2020, file: !2, line: 488, column: 7)
!2078 = !DILocation(line: 488, column: 7, scope: !2077, inlinedAt: !2037)
!2079 = !DILocation(line: 511, column: 7, scope: !2080, inlinedAt: !2037)
!2080 = distinct !DILexicalBlock(scope: !2020, file: !2, line: 511, column: 7)
!2081 = !DILocation(line: 577, column: 22, scope: !2020, inlinedAt: !2037)
!2082 = !DILocation(line: 490, column: 13, scope: !2083, inlinedAt: !2037)
!2083 = distinct !DILexicalBlock(scope: !2076, file: !2, line: 489, column: 9)
!2084 = !DILocation(line: 491, column: 20, scope: !2083, inlinedAt: !2037)
!2085 = !DILocation(line: 491, column: 23, scope: !2083, inlinedAt: !2037)
!2086 = !DILocation(line: 491, column: 18, scope: !2083, inlinedAt: !2037)
!2087 = !DILocation(line: 491, column: 28, scope: !2083, inlinedAt: !2037)
!2088 = !DILocation(line: 491, column: 32, scope: !2083, inlinedAt: !2037)
!2089 = !DILocation(line: 491, column: 43, scope: !2083, inlinedAt: !2037)
!2090 = !DILocation(line: 491, column: 40, scope: !2083, inlinedAt: !2037)
!2091 = !DILocation(line: 491, column: 48, scope: !2083, inlinedAt: !2037)
!2092 = !DILocation(line: 491, column: 57, scope: !2083, inlinedAt: !2037)
!2093 = !DILocation(line: 491, column: 55, scope: !2083, inlinedAt: !2037)
!2094 = !DILocation(line: 492, column: 11, scope: !2083, inlinedAt: !2037)
!2095 = !DILocation(line: 492, column: 27, scope: !2083, inlinedAt: !2037)
!2096 = !DILocation(line: 494, column: 35, scope: !2083, inlinedAt: !2037)
!2097 = !DILocation(line: 494, column: 57, scope: !2083, inlinedAt: !2037)
!2098 = !DILocation(line: 494, column: 46, scope: !2083, inlinedAt: !2037)
!2099 = !DILocation(line: 494, column: 64, scope: !2083, inlinedAt: !2037)
!2100 = !DILocation(line: 494, column: 11, scope: !2083, inlinedAt: !2037)
!2101 = !DILocation(line: 494, column: 33, scope: !2083, inlinedAt: !2037)
!2102 = !DILocation(line: 497, column: 48, scope: !2083, inlinedAt: !2037)
!2103 = !DILocation(line: 497, column: 60, scope: !2083, inlinedAt: !2037)
!2104 = !DILocation(line: 498, column: 41, scope: !2083, inlinedAt: !2037)
!2105 = !DILocation(line: 497, column: 11, scope: !2083, inlinedAt: !2037)
!2106 = !DILocation(line: 497, column: 34, scope: !2083, inlinedAt: !2037)
!2107 = !DILocation(line: 488, column: 30, scope: !2076, inlinedAt: !2037)
!2108 = distinct !{!2108, !2078, !2109, !207}
!2109 = !DILocation(line: 502, column: 9, scope: !2077, inlinedAt: !2037)
!2110 = !DILocation(line: 511, column: 21, scope: !2111, inlinedAt: !2037)
!2111 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 511, column: 7)
!2112 = distinct !{!2112, !2079, !2113, !207}
!2113 = !DILocation(line: 571, column: 9, scope: !2080, inlinedAt: !2037)
!2114 = !DILocation(line: 520, column: 22, scope: !2115, inlinedAt: !2037)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !2, line: 512, column: 9)
!2116 = !DILocation(line: 520, column: 17, scope: !2115, inlinedAt: !2037)
!2117 = !DILocation(line: 522, column: 30, scope: !2115, inlinedAt: !2037)
!2118 = !DILocation(line: 522, column: 15, scope: !2115, inlinedAt: !2037)
!2119 = !DILocation(line: 523, column: 11, scope: !2115, inlinedAt: !2037)
!2120 = !DILocation(line: 523, column: 31, scope: !2115, inlinedAt: !2037)
!2121 = !DILocation(line: 525, column: 39, scope: !2115, inlinedAt: !2037)
!2122 = !DILocation(line: 525, column: 41, scope: !2115, inlinedAt: !2037)
!2123 = !DILocation(line: 525, column: 48, scope: !2115, inlinedAt: !2037)
!2124 = !DILocation(line: 525, column: 11, scope: !2115, inlinedAt: !2037)
!2125 = !DILocation(line: 525, column: 37, scope: !2115, inlinedAt: !2037)
!2126 = !DILocation(line: 529, column: 24, scope: !2115, inlinedAt: !2037)
!2127 = !DILocation(line: 529, column: 28, scope: !2115, inlinedAt: !2037)
!2128 = !DILocation(line: 529, column: 15, scope: !2115, inlinedAt: !2037)
!2129 = !DILocation(line: 529, column: 43, scope: !2115, inlinedAt: !2037)
!2130 = !DILocation(line: 529, column: 41, scope: !2115, inlinedAt: !2037)
!2131 = !DILocation(line: 530, column: 18, scope: !2115, inlinedAt: !2037)
!2132 = !DILocation(line: 528, column: 11, scope: !2115, inlinedAt: !2037)
!2133 = !DILocation(line: 528, column: 38, scope: !2115, inlinedAt: !2037)
!2134 = !DILocation(line: 541, column: 25, scope: !2115, inlinedAt: !2037)
!2135 = !DILocation(line: 542, column: 19, scope: !2115, inlinedAt: !2037)
!2136 = !DILocation(line: 542, column: 29, scope: !2115, inlinedAt: !2037)
!2137 = !DILocation(line: 542, column: 32, scope: !2115, inlinedAt: !2037)
!2138 = !DILocation(line: 542, column: 27, scope: !2115, inlinedAt: !2037)
!2139 = !DILocation(line: 542, column: 25, scope: !2115, inlinedAt: !2037)
!2140 = !DILocation(line: 543, column: 11, scope: !2115, inlinedAt: !2037)
!2141 = !DILocation(line: 543, column: 27, scope: !2115, inlinedAt: !2037)
!2142 = !DILocation(line: 545, column: 54, scope: !2115, inlinedAt: !2037)
!2143 = !DILocation(line: 545, column: 62, scope: !2115, inlinedAt: !2037)
!2144 = !DILocation(line: 545, column: 70, scope: !2115, inlinedAt: !2037)
!2145 = !DILocation(line: 545, column: 74, scope: !2115, inlinedAt: !2037)
!2146 = !DILocation(line: 545, column: 41, scope: !2115, inlinedAt: !2037)
!2147 = !DILocation(line: 545, column: 11, scope: !2115, inlinedAt: !2037)
!2148 = !DILocation(line: 545, column: 33, scope: !2115, inlinedAt: !2037)
!2149 = !DILocation(line: 549, column: 16, scope: !2115, inlinedAt: !2037)
!2150 = !DILocation(line: 549, column: 14, scope: !2115, inlinedAt: !2037)
!2151 = !DILocation(line: 549, column: 20, scope: !2115, inlinedAt: !2037)
!2152 = !DILocation(line: 549, column: 40, scope: !2115, inlinedAt: !2037)
!2153 = !DILocation(line: 549, column: 55, scope: !2115, inlinedAt: !2037)
!2154 = !DILocation(line: 549, column: 53, scope: !2115, inlinedAt: !2037)
!2155 = !DILocation(line: 550, column: 18, scope: !2115, inlinedAt: !2037)
!2156 = !DILocation(line: 548, column: 11, scope: !2115, inlinedAt: !2037)
!2157 = !DILocation(line: 548, column: 34, scope: !2115, inlinedAt: !2037)
!2158 = !DILocation(line: 554, column: 22, scope: !2159, inlinedAt: !2037)
!2159 = distinct !DILexicalBlock(scope: !2115, file: !2, line: 554, column: 11)
!2160 = !DILocation(line: 554, column: 29, scope: !2161, inlinedAt: !2037)
!2161 = distinct !DILexicalBlock(scope: !2159, file: !2, line: 554, column: 11)
!2162 = !DILocation(line: 554, column: 11, scope: !2159, inlinedAt: !2037)
!2163 = !DILocation(line: 556, column: 17, scope: !2164, inlinedAt: !2037)
!2164 = distinct !DILexicalBlock(scope: !2161, file: !2, line: 555, column: 13)
!2165 = !DILocation(line: 557, column: 24, scope: !2164, inlinedAt: !2037)
!2166 = !DILocation(line: 557, column: 27, scope: !2164, inlinedAt: !2037)
!2167 = !DILocation(line: 557, column: 22, scope: !2164, inlinedAt: !2037)
!2168 = !DILocation(line: 557, column: 32, scope: !2164, inlinedAt: !2037)
!2169 = !DILocation(line: 557, column: 36, scope: !2164, inlinedAt: !2037)
!2170 = !DILocation(line: 557, column: 47, scope: !2164, inlinedAt: !2037)
!2171 = !DILocation(line: 557, column: 51, scope: !2164, inlinedAt: !2037)
!2172 = !DILocation(line: 557, column: 44, scope: !2164, inlinedAt: !2037)
!2173 = !DILocation(line: 557, column: 56, scope: !2164, inlinedAt: !2037)
!2174 = !DILocation(line: 558, column: 33, scope: !2164, inlinedAt: !2037)
!2175 = !DILocation(line: 558, column: 21, scope: !2164, inlinedAt: !2037)
!2176 = !DILocation(line: 557, column: 63, scope: !2164, inlinedAt: !2037)
!2177 = !DILocation(line: 559, column: 15, scope: !2164, inlinedAt: !2037)
!2178 = !DILocation(line: 559, column: 31, scope: !2164, inlinedAt: !2037)
!2179 = !DILocation(line: 561, column: 48, scope: !2164, inlinedAt: !2037)
!2180 = !DILocation(line: 561, column: 56, scope: !2164, inlinedAt: !2037)
!2181 = !DILocation(line: 561, column: 64, scope: !2164, inlinedAt: !2037)
!2182 = !DILocation(line: 561, column: 66, scope: !2164, inlinedAt: !2037)
!2183 = !DILocation(line: 561, column: 70, scope: !2164, inlinedAt: !2037)
!2184 = !DILocation(line: 561, column: 45, scope: !2164, inlinedAt: !2037)
!2185 = !DILocation(line: 561, column: 15, scope: !2164, inlinedAt: !2037)
!2186 = !DILocation(line: 561, column: 37, scope: !2164, inlinedAt: !2037)
!2187 = !DILocation(line: 565, column: 36, scope: !2164, inlinedAt: !2037)
!2188 = !DILocation(line: 565, column: 51, scope: !2164, inlinedAt: !2037)
!2189 = !DILocation(line: 565, column: 49, scope: !2164, inlinedAt: !2037)
!2190 = !DILocation(line: 566, column: 22, scope: !2164, inlinedAt: !2037)
!2191 = !DILocation(line: 564, column: 15, scope: !2164, inlinedAt: !2037)
!2192 = !DILocation(line: 564, column: 38, scope: !2164, inlinedAt: !2037)
!2193 = !DILocation(line: 554, column: 38, scope: !2161, inlinedAt: !2037)
!2194 = distinct !{!2194, !2162, !2195, !207}
!2195 = !DILocation(line: 570, column: 13, scope: !2159, inlinedAt: !2037)
!2196 = !DILocation(line: 575, column: 18, scope: !2020, inlinedAt: !2037)
!2197 = !DILocation(line: 575, column: 13, scope: !2020, inlinedAt: !2037)
!2198 = !DILocation(line: 577, column: 26, scope: !2020, inlinedAt: !2037)
!2199 = !DILocation(line: 577, column: 11, scope: !2020, inlinedAt: !2037)
!2200 = !DILocation(line: 578, column: 7, scope: !2020, inlinedAt: !2037)
!2201 = !DILocation(line: 578, column: 27, scope: !2020, inlinedAt: !2037)
!2202 = !DILocation(line: 580, column: 35, scope: !2020, inlinedAt: !2037)
!2203 = !DILocation(line: 580, column: 40, scope: !2020, inlinedAt: !2037)
!2204 = !DILocation(line: 580, column: 44, scope: !2020, inlinedAt: !2037)
!2205 = !DILocation(line: 580, column: 50, scope: !2020, inlinedAt: !2037)
!2206 = !DILocation(line: 580, column: 7, scope: !2020, inlinedAt: !2037)
!2207 = !DILocation(line: 580, column: 33, scope: !2020, inlinedAt: !2037)
!2208 = !DILocation(line: 584, column: 23, scope: !2020, inlinedAt: !2037)
!2209 = !DILocation(line: 584, column: 30, scope: !2020, inlinedAt: !2037)
!2210 = !DILocation(line: 584, column: 14, scope: !2020, inlinedAt: !2037)
!2211 = !DILocation(line: 584, column: 48, scope: !2020, inlinedAt: !2037)
!2212 = !DILocation(line: 584, column: 46, scope: !2020, inlinedAt: !2037)
!2213 = !DILocation(line: 585, column: 14, scope: !2020, inlinedAt: !2037)
!2214 = !DILocation(line: 583, column: 7, scope: !2020, inlinedAt: !2037)
!2215 = !DILocation(line: 583, column: 34, scope: !2020, inlinedAt: !2037)
!2216 = !DILocation(line: 588, column: 7, scope: !2020, inlinedAt: !2037)
!2217 = !DILocalVariable(name: "lmax", arg: 1, scope: !2218, file: !2, line: 218, type: !85)
!2218 = distinct !DISubprogram(name: "legendre_deriv2_alt_array_schmidt_e", scope: !2, file: !2, line: 217, type: !1452, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2219)
!2219 = !{!2217, !2220, !2221, !2222, !2223, !2224, !2225, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245}
!2220 = !DILocalVariable(name: "x", arg: 2, scope: !2218, file: !2, line: 218, type: !89)
!2221 = !DILocalVariable(name: "csphase", arg: 3, scope: !2218, file: !2, line: 218, type: !89)
!2222 = !DILocalVariable(name: "result_array", arg: 4, scope: !2218, file: !2, line: 218, type: !90)
!2223 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !2218, file: !2, line: 218, type: !90)
!2224 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !2218, file: !2, line: 218, type: !90)
!2225 = !DILocalVariable(name: "eps", scope: !2226, file: !2, line: 236, type: !89)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !2, line: 235, column: 5)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 230, column: 12)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !2, line: 225, column: 12)
!2229 = distinct !DILexicalBlock(scope: !2218, file: !2, line: 220, column: 7)
!2230 = !DILocalVariable(name: "u", scope: !2226, file: !2, line: 237, type: !89)
!2231 = !DILocalVariable(name: "uinv", scope: !2226, file: !2, line: 239, type: !89)
!2232 = !DILocalVariable(name: "uinv2", scope: !2226, file: !2, line: 242, type: !89)
!2233 = !DILocalVariable(name: "xbyu", scope: !2226, file: !2, line: 245, type: !89)
!2234 = !DILocalVariable(name: "l", scope: !2226, file: !2, line: 247, type: !86)
!2235 = !DILocalVariable(name: "m", scope: !2226, file: !2, line: 247, type: !86)
!2236 = !DILocalVariable(name: "k", scope: !2226, file: !2, line: 248, type: !86)
!2237 = !DILocalVariable(name: "idxmm", scope: !2226, file: !2, line: 248, type: !86)
!2238 = !DILocalVariable(name: "plm", scope: !2226, file: !2, line: 249, type: !70)
!2239 = !DILocalVariable(name: "pmm", scope: !2226, file: !2, line: 250, type: !70)
!2240 = !DILocalVariable(name: "rescalem", scope: !2226, file: !2, line: 251, type: !70)
!2241 = !DILocalVariable(name: "pm1", scope: !2226, file: !2, line: 252, type: !70)
!2242 = !DILocalVariable(name: "pm2", scope: !2226, file: !2, line: 253, type: !70)
!2243 = !DILocalVariable(name: "nlm", scope: !2226, file: !2, line: 254, type: !86)
!2244 = !DILocalVariable(name: "sqrts", scope: !2226, file: !2, line: 255, type: !90)
!2245 = !DILocalVariable(name: "linv", scope: !2246, file: !2, line: 288, type: !70)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !2, line: 287, column: 9)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !2, line: 286, column: 7)
!2248 = distinct !DILexicalBlock(scope: !2226, file: !2, line: 286, column: 7)
!2249 = !DILocation(line: 0, scope: !2218, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 121, column: 11, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 119, column: 5)
!2252 = !DILocation(line: 220, column: 15, scope: !2229, inlinedAt: !2250)
!2253 = !DILocation(line: 222, column: 7, scope: !2254, inlinedAt: !2250)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !2, line: 222, column: 7)
!2255 = distinct !DILexicalBlock(scope: !2229, file: !2, line: 221, column: 5)
!2256 = !DILocation(line: 225, column: 12, scope: !2228, inlinedAt: !2250)
!2257 = !DILocation(line: 225, column: 20, scope: !2228, inlinedAt: !2250)
!2258 = !DILocation(line: 225, column: 12, scope: !2229, inlinedAt: !2250)
!2259 = !DILocation(line: 227, column: 7, scope: !2260, inlinedAt: !2250)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 227, column: 7)
!2261 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 226, column: 5)
!2262 = !DILocation(line: 230, column: 20, scope: !2227, inlinedAt: !2250)
!2263 = !DILocation(line: 230, column: 27, scope: !2227, inlinedAt: !2250)
!2264 = !DILocation(line: 232, column: 7, scope: !2265, inlinedAt: !2250)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !2, line: 232, column: 7)
!2266 = distinct !DILexicalBlock(scope: !2227, file: !2, line: 231, column: 5)
!2267 = !DILocation(line: 0, scope: !2226, inlinedAt: !2250)
!2268 = !DILocation(line: 237, column: 46, scope: !2226, inlinedAt: !2250)
!2269 = !DILocation(line: 237, column: 39, scope: !2226, inlinedAt: !2250)
!2270 = !DILocation(line: 237, column: 24, scope: !2226, inlinedAt: !2250)
!2271 = !DILocation(line: 239, column: 31, scope: !2226, inlinedAt: !2250)
!2272 = !DILocation(line: 0, scope: !122, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 254, column: 20, scope: !2226, inlinedAt: !2250)
!2274 = !DILocation(line: 255, column: 25, scope: !2226, inlinedAt: !2250)
!2275 = !DILocation(line: 0, scope: !302, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 258, column: 7, scope: !2226, inlinedAt: !2250)
!2277 = !DILocation(line: 112, column: 3, scope: !311, inlinedAt: !2276)
!2278 = !DILocation(line: 113, column: 21, scope: !313, inlinedAt: !2276)
!2279 = !DILocation(line: 113, column: 16, scope: !313, inlinedAt: !2276)
!2280 = !DILocation(line: 113, column: 5, scope: !313, inlinedAt: !2276)
!2281 = !DILocation(line: 113, column: 14, scope: !313, inlinedAt: !2276)
!2282 = !DILocation(line: 112, column: 34, scope: !313, inlinedAt: !2276)
!2283 = distinct !{!2283, !2277, !2284, !207}
!2284 = !DILocation(line: 113, column: 31, scope: !311, inlinedAt: !2276)
!2285 = distinct !{!2285, !321}
!2286 = !DILocation(line: 242, column: 36, scope: !2226, inlinedAt: !2250)
!2287 = !DILocation(line: 245, column: 29, scope: !2226, inlinedAt: !2250)
!2288 = !DILocation(line: 264, column: 23, scope: !2226, inlinedAt: !2250)
!2289 = !DILocation(line: 266, column: 29, scope: !2226, inlinedAt: !2250)
!2290 = !DILocation(line: 269, column: 30, scope: !2226, inlinedAt: !2250)
!2291 = !DILocation(line: 272, column: 16, scope: !2292, inlinedAt: !2250)
!2292 = distinct !DILexicalBlock(scope: !2226, file: !2, line: 272, column: 11)
!2293 = !DILocation(line: 272, column: 11, scope: !2226, inlinedAt: !2250)
!2294 = !DILocation(line: 275, column: 7, scope: !2226, inlinedAt: !2250)
!2295 = !DILocation(line: 275, column: 23, scope: !2226, inlinedAt: !2250)
!2296 = !DILocation(line: 277, column: 31, scope: !2226, inlinedAt: !2250)
!2297 = !DILocation(line: 277, column: 7, scope: !2226, inlinedAt: !2250)
!2298 = !DILocation(line: 277, column: 29, scope: !2226, inlinedAt: !2250)
!2299 = !DILocation(line: 280, column: 32, scope: !2226, inlinedAt: !2250)
!2300 = !DILocation(line: 280, column: 7, scope: !2226, inlinedAt: !2250)
!2301 = !DILocation(line: 280, column: 30, scope: !2226, inlinedAt: !2250)
!2302 = !DILocation(line: 286, column: 21, scope: !2247, inlinedAt: !2250)
!2303 = !DILocation(line: 286, column: 7, scope: !2248, inlinedAt: !2250)
!2304 = !DILocation(line: 321, column: 7, scope: !2305, inlinedAt: !2250)
!2305 = distinct !DILexicalBlock(scope: !2226, file: !2, line: 321, column: 7)
!2306 = !DILocation(line: 288, column: 31, scope: !2246, inlinedAt: !2250)
!2307 = !DILocation(line: 288, column: 29, scope: !2246, inlinedAt: !2250)
!2308 = !DILocation(line: 0, scope: !2246, inlinedAt: !2250)
!2309 = !DILocation(line: 290, column: 13, scope: !2246, inlinedAt: !2250)
!2310 = !DILocation(line: 292, column: 30, scope: !2246, inlinedAt: !2250)
!2311 = !DILocation(line: 292, column: 34, scope: !2246, inlinedAt: !2250)
!2312 = !DILocation(line: 292, column: 55, scope: !2246, inlinedAt: !2250)
!2313 = !DILocation(line: 293, column: 11, scope: !2246, inlinedAt: !2250)
!2314 = !DILocation(line: 293, column: 27, scope: !2246, inlinedAt: !2250)
!2315 = !DILocation(line: 295, column: 40, scope: !2246, inlinedAt: !2250)
!2316 = !DILocation(line: 295, column: 49, scope: !2246, inlinedAt: !2250)
!2317 = !DILocation(line: 295, column: 44, scope: !2246, inlinedAt: !2250)
!2318 = !DILocation(line: 295, column: 11, scope: !2246, inlinedAt: !2250)
!2319 = !DILocation(line: 295, column: 33, scope: !2246, inlinedAt: !2250)
!2320 = !DILocation(line: 298, column: 36, scope: !2246, inlinedAt: !2250)
!2321 = !DILocation(line: 298, column: 48, scope: !2246, inlinedAt: !2250)
!2322 = !DILocation(line: 298, column: 60, scope: !2246, inlinedAt: !2250)
!2323 = !DILocation(line: 299, column: 41, scope: !2246, inlinedAt: !2250)
!2324 = !DILocation(line: 298, column: 11, scope: !2246, inlinedAt: !2250)
!2325 = !DILocation(line: 298, column: 34, scope: !2246, inlinedAt: !2250)
!2326 = !DILocation(line: 286, column: 30, scope: !2247, inlinedAt: !2250)
!2327 = distinct !{!2327, !2303, !2328, !207}
!2328 = !DILocation(line: 303, column: 9, scope: !2248, inlinedAt: !2250)
!2329 = !DILocation(line: 321, column: 21, scope: !2330, inlinedAt: !2250)
!2330 = distinct !DILexicalBlock(scope: !2305, file: !2, line: 321, column: 7)
!2331 = distinct !{!2331, !2304, !2332, !207}
!2332 = !DILocation(line: 387, column: 9, scope: !2305, inlinedAt: !2250)
!2333 = !DILocation(line: 324, column: 20, scope: !2334, inlinedAt: !2250)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 322, column: 9)
!2335 = !DILocation(line: 332, column: 22, scope: !2334, inlinedAt: !2250)
!2336 = !DILocation(line: 332, column: 17, scope: !2334, inlinedAt: !2250)
!2337 = !DILocation(line: 333, column: 36, scope: !2334, inlinedAt: !2250)
!2338 = !DILocation(line: 333, column: 28, scope: !2334, inlinedAt: !2250)
!2339 = !DILocation(line: 333, column: 26, scope: !2334, inlinedAt: !2250)
!2340 = !DILocation(line: 333, column: 47, scope: !2334, inlinedAt: !2250)
!2341 = !DILocation(line: 333, column: 45, scope: !2334, inlinedAt: !2250)
!2342 = !DILocation(line: 333, column: 15, scope: !2334, inlinedAt: !2250)
!2343 = !DILocation(line: 334, column: 37, scope: !2334, inlinedAt: !2250)
!2344 = !DILocation(line: 334, column: 11, scope: !2334, inlinedAt: !2250)
!2345 = !DILocation(line: 334, column: 31, scope: !2334, inlinedAt: !2250)
!2346 = !DILocation(line: 336, column: 39, scope: !2334, inlinedAt: !2250)
!2347 = !DILocation(line: 336, column: 41, scope: !2334, inlinedAt: !2250)
!2348 = !DILocation(line: 336, column: 48, scope: !2334, inlinedAt: !2250)
!2349 = !DILocation(line: 336, column: 11, scope: !2334, inlinedAt: !2250)
!2350 = !DILocation(line: 336, column: 37, scope: !2334, inlinedAt: !2250)
!2351 = !DILocation(line: 340, column: 24, scope: !2334, inlinedAt: !2250)
!2352 = !DILocation(line: 340, column: 28, scope: !2334, inlinedAt: !2250)
!2353 = !DILocation(line: 340, column: 15, scope: !2334, inlinedAt: !2250)
!2354 = !DILocation(line: 340, column: 43, scope: !2334, inlinedAt: !2250)
!2355 = !DILocation(line: 340, column: 41, scope: !2334, inlinedAt: !2250)
!2356 = !DILocation(line: 341, column: 18, scope: !2334, inlinedAt: !2250)
!2357 = !DILocation(line: 339, column: 11, scope: !2334, inlinedAt: !2250)
!2358 = !DILocation(line: 339, column: 38, scope: !2334, inlinedAt: !2250)
!2359 = !DILocation(line: 351, column: 25, scope: !2334, inlinedAt: !2250)
!2360 = !DILocation(line: 352, column: 33, scope: !2334, inlinedAt: !2250)
!2361 = !DILocation(line: 352, column: 21, scope: !2334, inlinedAt: !2250)
!2362 = !DILocation(line: 352, column: 19, scope: !2334, inlinedAt: !2250)
!2363 = !DILocation(line: 352, column: 38, scope: !2334, inlinedAt: !2250)
!2364 = !DILocation(line: 353, column: 33, scope: !2334, inlinedAt: !2250)
!2365 = !DILocation(line: 353, column: 11, scope: !2334, inlinedAt: !2250)
!2366 = !DILocation(line: 353, column: 27, scope: !2334, inlinedAt: !2250)
!2367 = !DILocation(line: 356, column: 31, scope: !2334, inlinedAt: !2250)
!2368 = !DILocation(line: 356, column: 35, scope: !2334, inlinedAt: !2250)
!2369 = !DILocation(line: 357, column: 21, scope: !2334, inlinedAt: !2250)
!2370 = !DILocation(line: 357, column: 40, scope: !2334, inlinedAt: !2250)
!2371 = !DILocation(line: 357, column: 38, scope: !2334, inlinedAt: !2250)
!2372 = !DILocation(line: 356, column: 18, scope: !2334, inlinedAt: !2250)
!2373 = !DILocation(line: 355, column: 11, scope: !2334, inlinedAt: !2250)
!2374 = !DILocation(line: 355, column: 33, scope: !2334, inlinedAt: !2250)
!2375 = !DILocation(line: 361, column: 16, scope: !2334, inlinedAt: !2250)
!2376 = !DILocation(line: 361, column: 14, scope: !2334, inlinedAt: !2250)
!2377 = !DILocation(line: 361, column: 20, scope: !2334, inlinedAt: !2250)
!2378 = !DILocation(line: 361, column: 40, scope: !2334, inlinedAt: !2250)
!2379 = !DILocation(line: 361, column: 55, scope: !2334, inlinedAt: !2250)
!2380 = !DILocation(line: 361, column: 53, scope: !2334, inlinedAt: !2250)
!2381 = !DILocation(line: 362, column: 18, scope: !2334, inlinedAt: !2250)
!2382 = !DILocation(line: 360, column: 11, scope: !2334, inlinedAt: !2250)
!2383 = !DILocation(line: 360, column: 34, scope: !2334, inlinedAt: !2250)
!2384 = !DILocation(line: 366, column: 22, scope: !2385, inlinedAt: !2250)
!2385 = distinct !DILexicalBlock(scope: !2334, file: !2, line: 366, column: 11)
!2386 = !DILocation(line: 366, column: 16, scope: !2385, inlinedAt: !2250)
!2387 = !DILocation(line: 366, column: 29, scope: !2388, inlinedAt: !2250)
!2388 = distinct !DILexicalBlock(scope: !2385, file: !2, line: 366, column: 11)
!2389 = !DILocation(line: 366, column: 11, scope: !2385, inlinedAt: !2250)
!2390 = !DILocation(line: 368, column: 17, scope: !2391, inlinedAt: !2250)
!2391 = distinct !DILexicalBlock(scope: !2388, file: !2, line: 367, column: 13)
!2392 = !DILocation(line: 370, column: 19, scope: !2391, inlinedAt: !2250)
!2393 = !DILocation(line: 370, column: 22, scope: !2391, inlinedAt: !2250)
!2394 = !DILocation(line: 370, column: 17, scope: !2391, inlinedAt: !2250)
!2395 = !DILocation(line: 370, column: 29, scope: !2391, inlinedAt: !2250)
!2396 = !DILocation(line: 370, column: 27, scope: !2391, inlinedAt: !2250)
!2397 = !DILocation(line: 370, column: 52, scope: !2391, inlinedAt: !2250)
!2398 = !DILocation(line: 370, column: 44, scope: !2391, inlinedAt: !2250)
!2399 = !DILocation(line: 370, column: 42, scope: !2391, inlinedAt: !2250)
!2400 = !DILocation(line: 370, column: 57, scope: !2391, inlinedAt: !2250)
!2401 = !DILocation(line: 370, column: 61, scope: !2391, inlinedAt: !2250)
!2402 = !DILocation(line: 371, column: 17, scope: !2391, inlinedAt: !2250)
!2403 = !DILocation(line: 371, column: 36, scope: !2391, inlinedAt: !2250)
!2404 = !DILocation(line: 371, column: 34, scope: !2391, inlinedAt: !2250)
!2405 = !DILocation(line: 371, column: 53, scope: !2391, inlinedAt: !2250)
!2406 = !DILocation(line: 372, column: 30, scope: !2391, inlinedAt: !2250)
!2407 = !DILocation(line: 372, column: 45, scope: !2391, inlinedAt: !2250)
!2408 = !DILocation(line: 373, column: 37, scope: !2391, inlinedAt: !2250)
!2409 = !DILocation(line: 373, column: 15, scope: !2391, inlinedAt: !2250)
!2410 = !DILocation(line: 373, column: 31, scope: !2391, inlinedAt: !2250)
!2411 = !DILocation(line: 376, column: 25, scope: !2391, inlinedAt: !2250)
!2412 = !DILocation(line: 376, column: 27, scope: !2391, inlinedAt: !2250)
!2413 = !DILocation(line: 376, column: 31, scope: !2391, inlinedAt: !2250)
!2414 = !DILocation(line: 377, column: 25, scope: !2391, inlinedAt: !2250)
!2415 = !DILocation(line: 377, column: 40, scope: !2391, inlinedAt: !2250)
!2416 = !DILocation(line: 377, column: 38, scope: !2391, inlinedAt: !2250)
!2417 = !DILocation(line: 377, column: 55, scope: !2391, inlinedAt: !2250)
!2418 = !DILocation(line: 377, column: 53, scope: !2391, inlinedAt: !2250)
!2419 = !DILocation(line: 376, column: 22, scope: !2391, inlinedAt: !2250)
!2420 = !DILocation(line: 375, column: 15, scope: !2391, inlinedAt: !2250)
!2421 = !DILocation(line: 375, column: 37, scope: !2391, inlinedAt: !2250)
!2422 = !DILocation(line: 381, column: 36, scope: !2391, inlinedAt: !2250)
!2423 = !DILocation(line: 381, column: 51, scope: !2391, inlinedAt: !2250)
!2424 = !DILocation(line: 381, column: 49, scope: !2391, inlinedAt: !2250)
!2425 = !DILocation(line: 382, column: 22, scope: !2391, inlinedAt: !2250)
!2426 = !DILocation(line: 380, column: 15, scope: !2391, inlinedAt: !2250)
!2427 = !DILocation(line: 380, column: 38, scope: !2391, inlinedAt: !2250)
!2428 = !DILocation(line: 366, column: 38, scope: !2388, inlinedAt: !2250)
!2429 = distinct !{!2429, !2389, !2430, !207}
!2430 = !DILocation(line: 386, column: 13, scope: !2385, inlinedAt: !2250)
!2431 = !DILocation(line: 392, column: 18, scope: !2226, inlinedAt: !2250)
!2432 = !DILocation(line: 391, column: 16, scope: !2226, inlinedAt: !2250)
!2433 = !DILocation(line: 392, column: 13, scope: !2226, inlinedAt: !2250)
!2434 = !DILocation(line: 393, column: 24, scope: !2226, inlinedAt: !2250)
!2435 = !DILocation(line: 393, column: 22, scope: !2226, inlinedAt: !2250)
!2436 = !DILocation(line: 393, column: 46, scope: !2226, inlinedAt: !2250)
!2437 = !DILocation(line: 393, column: 44, scope: !2226, inlinedAt: !2250)
!2438 = !DILocation(line: 393, column: 11, scope: !2226, inlinedAt: !2250)
!2439 = !DILocation(line: 394, column: 33, scope: !2226, inlinedAt: !2250)
!2440 = !DILocation(line: 394, column: 7, scope: !2226, inlinedAt: !2250)
!2441 = !DILocation(line: 394, column: 27, scope: !2226, inlinedAt: !2250)
!2442 = !DILocation(line: 396, column: 35, scope: !2226, inlinedAt: !2250)
!2443 = !DILocation(line: 396, column: 40, scope: !2226, inlinedAt: !2250)
!2444 = !DILocation(line: 396, column: 47, scope: !2226, inlinedAt: !2250)
!2445 = !DILocation(line: 396, column: 7, scope: !2226, inlinedAt: !2250)
!2446 = !DILocation(line: 396, column: 33, scope: !2226, inlinedAt: !2250)
!2447 = !DILocation(line: 400, column: 23, scope: !2226, inlinedAt: !2250)
!2448 = !DILocation(line: 400, column: 30, scope: !2226, inlinedAt: !2250)
!2449 = !DILocation(line: 400, column: 14, scope: !2226, inlinedAt: !2250)
!2450 = !DILocation(line: 400, column: 48, scope: !2226, inlinedAt: !2250)
!2451 = !DILocation(line: 400, column: 46, scope: !2226, inlinedAt: !2250)
!2452 = !DILocation(line: 401, column: 14, scope: !2226, inlinedAt: !2250)
!2453 = !DILocation(line: 399, column: 7, scope: !2226, inlinedAt: !2250)
!2454 = !DILocation(line: 399, column: 34, scope: !2226, inlinedAt: !2250)
!2455 = !DILocation(line: 404, column: 7, scope: !2226, inlinedAt: !2250)
!2456 = !DILocation(line: 141, column: 39, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !1982, file: !2, line: 141, column: 7)
!2458 = !DILocation(line: 154, column: 5, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !2, line: 151, column: 5)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 150, column: 12)
!2461 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 145, column: 12)
!2462 = !DILocation(line: 164, column: 23, scope: !1996)
!2463 = !DILocation(line: 0, scope: !1996)
!2464 = !DILocation(line: 166, column: 5, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 166, column: 5)
!2466 = !DILocation(line: 169, column: 11, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !2, line: 167, column: 7)
!2468 = distinct !DILexicalBlock(scope: !2465, file: !2, line: 166, column: 5)
!2469 = !DILocation(line: 169, column: 27, scope: !2467)
!2470 = !DILocation(line: 0, scope: !425, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 168, column: 22, scope: !2467)
!2472 = !DILocation(line: 95, column: 18, scope: !425, inlinedAt: !2471)
!2473 = !DILocation(line: 95, column: 13, scope: !425, inlinedAt: !2471)
!2474 = !DILocation(line: 95, column: 23, scope: !425, inlinedAt: !2471)
!2475 = !DILocation(line: 168, column: 9, scope: !2467)
!2476 = !DILocation(line: 168, column: 57, scope: !2467)
!2477 = !DILocation(line: 172, column: 11, scope: !2467)
!2478 = !DILocation(line: 172, column: 27, scope: !2467)
!2479 = !DILocation(line: 0, scope: !425, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 171, column: 28, scope: !2467)
!2481 = !DILocation(line: 171, column: 9, scope: !2467)
!2482 = !DILocation(line: 171, column: 63, scope: !2467)
!2483 = !DILocation(line: 176, column: 11, scope: !2467)
!2484 = !DILocation(line: 176, column: 27, scope: !2467)
!2485 = !DILocation(line: 0, scope: !425, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 175, column: 29, scope: !2467)
!2487 = !DILocation(line: 175, column: 9, scope: !2467)
!2488 = !DILocation(line: 175, column: 64, scope: !2467)
!2489 = !DILocation(line: 179, column: 23, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 179, column: 9)
!2491 = distinct !DILexicalBlock(scope: !2467, file: !2, line: 179, column: 9)
!2492 = !DILocation(line: 179, column: 9, scope: !2491)
!2493 = !DILocation(line: 182, column: 15, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !2, line: 180, column: 11)
!2495 = !DILocation(line: 182, column: 31, scope: !2494)
!2496 = !DILocation(line: 0, scope: !425, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 181, column: 26, scope: !2494)
!2498 = !DILocation(line: 95, column: 27, scope: !425, inlinedAt: !2497)
!2499 = !DILocation(line: 181, column: 13, scope: !2494)
!2500 = !DILocation(line: 181, column: 61, scope: !2494)
!2501 = !DILocation(line: 185, column: 15, scope: !2494)
!2502 = !DILocation(line: 185, column: 31, scope: !2494)
!2503 = !DILocation(line: 0, scope: !425, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 184, column: 32, scope: !2494)
!2505 = !DILocation(line: 184, column: 13, scope: !2494)
!2506 = !DILocation(line: 184, column: 67, scope: !2494)
!2507 = !DILocation(line: 189, column: 15, scope: !2494)
!2508 = !DILocation(line: 189, column: 31, scope: !2494)
!2509 = !DILocation(line: 0, scope: !425, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 188, column: 33, scope: !2494)
!2511 = !DILocation(line: 188, column: 13, scope: !2494)
!2512 = !DILocation(line: 188, column: 68, scope: !2494)
!2513 = !DILocation(line: 179, column: 29, scope: !2490)
!2514 = distinct !{!2514, !2492, !2515, !207}
!2515 = !DILocation(line: 191, column: 11, scope: !2491)
!2516 = !DILocation(line: 193, column: 18, scope: !2467)
!2517 = !DILocation(line: 166, column: 19, scope: !2468)
!2518 = distinct !{!2518, !2464, !2519, !207}
!2519 = !DILocation(line: 194, column: 7, scope: !2465)
!2520 = !DILocation(line: 198, column: 1, scope: !1982)
!2521 = distinct !DISubprogram(name: "gsl_sf_legendre_array_n", scope: !20, file: !20, line: 78, type: !123, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2522)
!2522 = !{!2523, !2524, !2525}
!2523 = !DILocalVariable(name: "lmax", arg: 1, scope: !2521, file: !20, line: 78, type: !85)
!2524 = !DILocalVariable(name: "nlm", scope: !2521, file: !20, line: 80, type: !86)
!2525 = !DILocalVariable(name: "nsqrt", scope: !2521, file: !20, line: 81, type: !86)
!2526 = !DILocation(line: 0, scope: !2521)
!2527 = !DILocation(line: 0, scope: !122, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 80, column: 16, scope: !2521)
!2529 = !DILocation(line: 68, column: 17, scope: !122, inlinedAt: !2528)
!2530 = !DILocation(line: 68, column: 30, scope: !122, inlinedAt: !2528)
!2531 = !DILocation(line: 68, column: 22, scope: !122, inlinedAt: !2528)
!2532 = !DILocation(line: 68, column: 35, scope: !122, inlinedAt: !2528)
!2533 = !DILocation(line: 81, column: 20, scope: !2521)
!2534 = !DILocation(line: 81, column: 27, scope: !2521)
!2535 = !DILocation(line: 83, column: 15, scope: !2521)
!2536 = !DILocation(line: 83, column: 3, scope: !2521)
!2537 = !DISubprogram(name: "gsl_error", scope: !31, file: !31, line: 77, type: !2538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{null, !2540, !2540, !32, !32}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
