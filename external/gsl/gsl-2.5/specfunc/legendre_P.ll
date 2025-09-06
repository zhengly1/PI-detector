; ModuleID = 'legendre_P.c'
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
  br i1 %10, label %14, label %113, !dbg !135

14:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64 %1, metadata !136, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata double %2, metadata !141, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata double %3, metadata !142, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata ptr %4, metadata !143, metadata !DIExpression()), !dbg !157
  br i1 %13, label %15, label %16, !dbg !160

15:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 1) #6, !dbg !161
  br label %362, !dbg !161

16:                                               ; preds = %14
  %17 = fcmp une double %3, 1.000000e+00, !dbg !164
  %18 = fcmp une double %3, -1.000000e+00
  %19 = and i1 %17, %18, !dbg !165
  br i1 %19, label %20, label %21, !dbg !165

20:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 1) #6, !dbg !166
  br label %362, !dbg !166

21:                                               ; preds = %16
  %22 = fsub double 1.000000e+00, %2, !dbg !169
  %23 = fadd double %2, 1.000000e+00, !dbg !170
  %24 = fmul double %22, %23, !dbg !171
  %25 = tail call double @sqrt(double noundef %24) #6, !dbg !172
  call void @llvm.dbg.value(metadata double %25, metadata !144, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !155, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %2, metadata !154, metadata !DIExpression()), !dbg !173
  store double 1.000000e+00, ptr %4, align 8, !dbg !174, !tbaa !175
  %26 = icmp eq i64 %1, 0, !dbg !179
  br i1 %26, label %362, label %27, !dbg !181

27:                                               ; preds = %21
  %28 = getelementptr inbounds double, ptr %4, i64 1, !dbg !182
  store double %2, ptr %28, align 8, !dbg !183, !tbaa !175
  call void @llvm.dbg.value(metadata i64 1, metadata !150, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 2, metadata !148, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !155, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %2, metadata !154, metadata !DIExpression()), !dbg !173
  %29 = icmp eq i64 %1, 1, !dbg !184
  br i1 %29, label %34, label %30, !dbg !187

30:                                               ; preds = %27
  %31 = tail call i64 @llvm.umax.i64(i64 %6, i64 3), !dbg !187
  br label %36, !dbg !187

32:                                               ; preds = %36
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !156, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !153, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 0, metadata !151, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 1, metadata !149, metadata !DIExpression()), !dbg !173
  %33 = fmul double %25, %3
  br label %58, !dbg !188

34:                                               ; preds = %27
  %35 = fmul double %25, %3, !dbg !190
  br label %103, !dbg !188

36:                                               ; preds = %36, %30
  %37 = phi double [ %38, %36 ], [ 1.000000e+00, %30 ]
  %38 = phi double [ %52, %36 ], [ %2, %30 ]
  %39 = phi i64 [ %41, %36 ], [ 1, %30 ]
  %40 = phi i64 [ %54, %36 ], [ 2, %30 ]
  call void @llvm.dbg.value(metadata double %37, metadata !155, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %38, metadata !154, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 %39, metadata !150, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 %40, metadata !148, metadata !DIExpression()), !dbg !173
  %41 = add i64 %40, %39, !dbg !191
  call void @llvm.dbg.value(metadata i64 %41, metadata !150, metadata !DIExpression()), !dbg !173
  %42 = shl i64 %40, 1, !dbg !193
  %43 = add i64 %42, -1, !dbg !194
  %44 = uitofp i64 %43 to double, !dbg !195
  %45 = fmul double %44, %2, !dbg !196
  %46 = fmul double %38, %45, !dbg !197
  %47 = add i64 %40, -1, !dbg !198
  %48 = uitofp i64 %47 to double, !dbg !199
  %49 = fmul double %37, %48, !dbg !200
  %50 = fsub double %46, %49, !dbg !201
  %51 = uitofp i64 %40 to double, !dbg !202
  %52 = fdiv double %50, %51, !dbg !203
  call void @llvm.dbg.value(metadata double %52, metadata !152, metadata !DIExpression()), !dbg !173
  %53 = getelementptr inbounds double, ptr %4, i64 %41, !dbg !204
  store double %52, ptr %53, align 8, !dbg !205, !tbaa !175
  call void @llvm.dbg.value(metadata double %38, metadata !155, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %52, metadata !154, metadata !DIExpression()), !dbg !173
  %54 = add nuw i64 %40, 1, !dbg !206
  call void @llvm.dbg.value(metadata i64 %54, metadata !148, metadata !DIExpression()), !dbg !173
  %55 = icmp eq i64 %54, %31, !dbg !184
  br i1 %55, label %32, label %36, !dbg !187, !llvm.loop !207

56:                                               ; preds = %80, %58
  call void @llvm.dbg.value(metadata double %65, metadata !156, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %67, metadata !153, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 %64, metadata !151, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 %63, metadata !149, metadata !DIExpression()), !dbg !173
  %57 = icmp eq i64 %63, %1, !dbg !210
  br i1 %57, label %101, label %58, !dbg !188, !llvm.loop !212

58:                                               ; preds = %56, %32
  %59 = phi double [ -1.000000e+00, %32 ], [ %65, %56 ]
  %60 = phi double [ 1.000000e+00, %32 ], [ %67, %56 ]
  %61 = phi i64 [ 0, %32 ], [ %64, %56 ]
  %62 = phi i64 [ 1, %32 ], [ %63, %56 ]
  call void @llvm.dbg.value(metadata double %59, metadata !156, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %60, metadata !153, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 %61, metadata !151, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 %62, metadata !149, metadata !DIExpression()), !dbg !173
  %63 = add nuw i64 %62, 1, !dbg !214
  %64 = add i64 %63, %61, !dbg !216
  call void @llvm.dbg.value(metadata i64 %64, metadata !151, metadata !DIExpression()), !dbg !173
  %65 = fadd double %59, 2.000000e+00, !dbg !217
  call void @llvm.dbg.value(metadata double %65, metadata !156, metadata !DIExpression()), !dbg !173
  %66 = fmul double %33, %65, !dbg !218
  %67 = fmul double %60, %66, !dbg !219
  call void @llvm.dbg.value(metadata double %67, metadata !153, metadata !DIExpression()), !dbg !173
  %68 = getelementptr inbounds double, ptr %4, i64 %64, !dbg !220
  store double %67, ptr %68, align 8, !dbg !221, !tbaa !175
  call void @llvm.dbg.value(metadata double %67, metadata !155, metadata !DIExpression()), !dbg !173
  %69 = add i64 %64, %63, !dbg !222
  call void @llvm.dbg.value(metadata i64 %69, metadata !150, metadata !DIExpression()), !dbg !173
  %70 = fmul double %67, %2, !dbg !223
  %71 = shl i64 %62, 1, !dbg !224
  %72 = or disjoint i64 %71, 1, !dbg !225
  %73 = uitofp i64 %72 to double, !dbg !226
  %74 = fmul double %70, %73, !dbg !227
  call void @llvm.dbg.value(metadata double %74, metadata !154, metadata !DIExpression()), !dbg !173
  %75 = getelementptr inbounds double, ptr %4, i64 %69, !dbg !228
  store double %74, ptr %75, align 8, !dbg !229, !tbaa !175
  %76 = add i64 %62, 2, !dbg !230
  call void @llvm.dbg.value(metadata i64 %76, metadata !148, metadata !DIExpression()), !dbg !173
  %77 = icmp ugt i64 %76, %1, !dbg !232
  br i1 %77, label %56, label %78, !dbg !234

78:                                               ; preds = %58
  %79 = add i64 %62, -1
  br label %80, !dbg !234

80:                                               ; preds = %80, %78
  %81 = phi double [ %67, %78 ], [ %82, %80 ]
  %82 = phi double [ %74, %78 ], [ %97, %80 ]
  %83 = phi i64 [ %69, %78 ], [ %85, %80 ]
  %84 = phi i64 [ %76, %78 ], [ %99, %80 ]
  call void @llvm.dbg.value(metadata double %81, metadata !155, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %82, metadata !154, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 %83, metadata !150, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 %84, metadata !148, metadata !DIExpression()), !dbg !173
  %85 = add i64 %84, %83, !dbg !235
  call void @llvm.dbg.value(metadata i64 %85, metadata !150, metadata !DIExpression()), !dbg !173
  %86 = shl i64 %84, 1, !dbg !237
  %87 = add i64 %86, -1, !dbg !238
  %88 = uitofp i64 %87 to double, !dbg !239
  %89 = fmul double %88, %2, !dbg !240
  %90 = fmul double %82, %89, !dbg !241
  %91 = add i64 %79, %84, !dbg !242
  %92 = uitofp i64 %91 to double, !dbg !243
  %93 = fmul double %81, %92, !dbg !244
  %94 = fsub double %90, %93, !dbg !245
  %95 = sub i64 %84, %62, !dbg !246
  %96 = uitofp i64 %95 to double, !dbg !247
  %97 = fdiv double %94, %96, !dbg !248
  call void @llvm.dbg.value(metadata double %97, metadata !152, metadata !DIExpression()), !dbg !173
  %98 = getelementptr inbounds double, ptr %4, i64 %85, !dbg !249
  store double %97, ptr %98, align 8, !dbg !250, !tbaa !175
  call void @llvm.dbg.value(metadata double %82, metadata !155, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %97, metadata !154, metadata !DIExpression()), !dbg !173
  %99 = add i64 %84, 1, !dbg !251
  call void @llvm.dbg.value(metadata i64 %99, metadata !148, metadata !DIExpression()), !dbg !173
  %100 = icmp ugt i64 %99, %1, !dbg !232
  br i1 %100, label %56, label %80, !dbg !234, !llvm.loop !252

101:                                              ; preds = %56
  %102 = fadd double %65, 2.000000e+00, !dbg !254
  br label %103, !dbg !254

103:                                              ; preds = %101, %34
  %104 = phi double [ %35, %34 ], [ %33, %101 ], !dbg !190
  %105 = phi i64 [ 0, %34 ], [ %64, %101 ], !dbg !173
  %106 = phi double [ 1.000000e+00, %34 ], [ %67, %101 ], !dbg !173
  %107 = phi double [ 1.000000e+00, %34 ], [ %102, %101 ], !dbg !173
  call void @llvm.dbg.value(metadata !DIArgList(i64 %105, i64 %1), metadata !151, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !173
  call void @llvm.dbg.value(metadata double %107, metadata !156, metadata !DIExpression()), !dbg !173
  %108 = fmul double %104, %107, !dbg !255
  %109 = fmul double %106, %108, !dbg !256
  call void @llvm.dbg.value(metadata double %109, metadata !153, metadata !DIExpression()), !dbg !173
  %110 = getelementptr double, ptr %4, i64 %105, !dbg !257
  %111 = getelementptr double, ptr %110, i64 %1, !dbg !257
  %112 = getelementptr double, ptr %111, i64 1, !dbg !257
  store double %109, ptr %112, align 8, !dbg !258, !tbaa !175
  br label %306, !dbg !259

113:                                              ; preds = %5
  call void @llvm.dbg.value(metadata i64 %1, metadata !260, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %2, metadata !263, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %3, metadata !264, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata ptr %4, metadata !265, metadata !DIExpression()), !dbg !286
  br i1 %13, label %114, label %115, !dbg !289

114:                                              ; preds = %113
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 222, i32 noundef 1) #6, !dbg !290
  br label %306, !dbg !290

115:                                              ; preds = %113
  %116 = fcmp une double %3, 1.000000e+00, !dbg !293
  %117 = fcmp une double %3, -1.000000e+00
  %118 = and i1 %116, %117, !dbg !294
  br i1 %118, label %119, label %120, !dbg !294

119:                                              ; preds = %115
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 232, i32 noundef 1) #6, !dbg !295
  br label %306, !dbg !295

120:                                              ; preds = %115
  call void @llvm.dbg.value(metadata double 0x5CD0B15A491EB84, metadata !266, metadata !DIExpression()), !dbg !298
  %121 = fsub double 1.000000e+00, %2, !dbg !299
  %122 = fadd double %2, 1.000000e+00, !dbg !300
  %123 = fmul double %121, %122, !dbg !301
  %124 = tail call double @sqrt(double noundef %123) #6, !dbg !302
  call void @llvm.dbg.value(metadata double %124, metadata !270, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 %9, metadata !280, metadata !DIExpression()), !dbg !298
  %125 = getelementptr inbounds double, ptr %4, i64 %9, !dbg !305
  call void @llvm.dbg.value(metadata ptr %125, metadata !281, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 %1, metadata !306, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata ptr %125, metadata !311, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i64 0, metadata !312, metadata !DIExpression()), !dbg !313
  %126 = shl i64 %1, 1
  %127 = add i64 %126, 2, !dbg !315
  %128 = tail call i64 @llvm.umax.i64(i64 %127, i64 1), !dbg !315
  %129 = and i64 %128, 3, !dbg !315
  %130 = icmp ult i64 %127, 4, !dbg !315
  br i1 %130, label %154, label %131, !dbg !315

131:                                              ; preds = %120
  %132 = and i64 %128, -4, !dbg !315
  br label %133, !dbg !315

133:                                              ; preds = %133, %131
  %134 = phi i64 [ 0, %131 ], [ %151, %133 ]
  %135 = phi i64 [ 0, %131 ], [ %152, %133 ]
  call void @llvm.dbg.value(metadata i64 %134, metadata !312, metadata !DIExpression()), !dbg !313
  %136 = uitofp i64 %134 to double, !dbg !317
  %137 = tail call double @llvm.sqrt.f64(double %136), !dbg !319
  %138 = getelementptr inbounds double, ptr %125, i64 %134, !dbg !320
  store double %137, ptr %138, align 8, !dbg !321, !tbaa !175
  %139 = or disjoint i64 %134, 1, !dbg !322
  call void @llvm.dbg.value(metadata i64 %139, metadata !312, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i64 %139, metadata !312, metadata !DIExpression()), !dbg !313
  %140 = uitofp i64 %139 to double, !dbg !317
  %141 = tail call double @llvm.sqrt.f64(double %140), !dbg !319
  %142 = getelementptr inbounds double, ptr %125, i64 %139, !dbg !320
  store double %141, ptr %142, align 8, !dbg !321, !tbaa !175
  %143 = or disjoint i64 %134, 2, !dbg !322
  call void @llvm.dbg.value(metadata i64 %143, metadata !312, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i64 %143, metadata !312, metadata !DIExpression()), !dbg !313
  %144 = uitofp i64 %143 to double, !dbg !317
  %145 = tail call double @llvm.sqrt.f64(double %144), !dbg !319
  %146 = getelementptr inbounds double, ptr %125, i64 %143, !dbg !320
  store double %145, ptr %146, align 8, !dbg !321, !tbaa !175
  %147 = or disjoint i64 %134, 3, !dbg !322
  call void @llvm.dbg.value(metadata i64 %147, metadata !312, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i64 %147, metadata !312, metadata !DIExpression()), !dbg !313
  %148 = uitofp i64 %147 to double, !dbg !317
  %149 = tail call double @llvm.sqrt.f64(double %148), !dbg !319
  %150 = getelementptr inbounds double, ptr %125, i64 %147, !dbg !320
  store double %149, ptr %150, align 8, !dbg !321, !tbaa !175
  %151 = add nuw i64 %134, 4, !dbg !322
  call void @llvm.dbg.value(metadata i64 %151, metadata !312, metadata !DIExpression()), !dbg !313
  %152 = add i64 %135, 4, !dbg !315
  %153 = icmp eq i64 %152, %132, !dbg !315
  br i1 %153, label %154, label %133, !dbg !315, !llvm.loop !323

154:                                              ; preds = %133, %120
  %155 = phi i64 [ 0, %120 ], [ %151, %133 ]
  %156 = icmp eq i64 %129, 0, !dbg !315
  br i1 %156, label %166, label %157, !dbg !315

157:                                              ; preds = %154, %157
  %158 = phi i64 [ %163, %157 ], [ %155, %154 ]
  %159 = phi i64 [ %164, %157 ], [ 0, %154 ]
  call void @llvm.dbg.value(metadata i64 %158, metadata !312, metadata !DIExpression()), !dbg !313
  %160 = uitofp i64 %158 to double, !dbg !317
  %161 = tail call double @llvm.sqrt.f64(double %160), !dbg !319
  %162 = getelementptr inbounds double, ptr %125, i64 %158, !dbg !320
  store double %161, ptr %162, align 8, !dbg !321, !tbaa !175
  %163 = add nuw i64 %158, 1, !dbg !322
  call void @llvm.dbg.value(metadata i64 %163, metadata !312, metadata !DIExpression()), !dbg !313
  %164 = add i64 %159, 1, !dbg !315
  %165 = icmp eq i64 %164, %129, !dbg !315
  br i1 %165, label %166, label %157, !dbg !315, !llvm.loop !325

166:                                              ; preds = %157, %154
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !279, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %2, metadata !278, metadata !DIExpression()), !dbg !298
  store double 1.000000e+00, ptr %4, align 8, !dbg !327, !tbaa !175
  %167 = icmp eq i64 %1, 0, !dbg !328
  br i1 %167, label %306, label %168, !dbg !330

168:                                              ; preds = %166
  %169 = getelementptr inbounds double, ptr %4, i64 1, !dbg !331
  store double %2, ptr %169, align 8, !dbg !332, !tbaa !175
  call void @llvm.dbg.value(metadata i64 1, metadata !273, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 2, metadata !271, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !279, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %2, metadata !278, metadata !DIExpression()), !dbg !298
  %170 = icmp eq i64 %1, 1, !dbg !333
  br i1 %170, label %289, label %171, !dbg !334

171:                                              ; preds = %168
  %172 = tail call i64 @llvm.umax.i64(i64 %6, i64 3), !dbg !334
  %173 = and i64 %172, 1, !dbg !334
  %174 = icmp ult i64 %6, 4, !dbg !334
  br i1 %174, label %178, label %175, !dbg !334

175:                                              ; preds = %171
  %176 = and i64 %172, -2, !dbg !334
  %177 = add i64 %176, -4
  br label %197, !dbg !334

178:                                              ; preds = %197, %171
  %179 = phi i64 [ 2, %171 ], [ %224, %197 ]
  %180 = phi double [ 1.000000e+00, %171 ], [ %211, %197 ]
  %181 = phi double [ %2, %171 ], [ %222, %197 ]
  %182 = phi i64 [ 1, %171 ], [ %216, %197 ]
  %183 = icmp eq i64 %173, 0, !dbg !334
  br i1 %183, label %195, label %184, !dbg !334

184:                                              ; preds = %178
  call void @llvm.dbg.value(metadata i64 %179, metadata !271, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %180, metadata !279, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %181, metadata !278, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 %182, metadata !273, metadata !DIExpression()), !dbg !298
  %185 = uitofp i64 %179 to double, !dbg !335
  %186 = fdiv double 1.000000e+00, %185, !dbg !336
  call void @llvm.dbg.value(metadata double %186, metadata !282, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata !DIArgList(i64 %182, i64 %179), metadata !273, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !298
  %187 = fsub double 2.000000e+00, %186, !dbg !338
  %188 = fmul double %187, %2, !dbg !339
  %189 = fmul double %181, %188, !dbg !340
  %190 = fsub double 1.000000e+00, %186, !dbg !341
  %191 = fmul double %180, %190, !dbg !342
  %192 = fsub double %189, %191, !dbg !343
  call void @llvm.dbg.value(metadata double %192, metadata !275, metadata !DIExpression()), !dbg !298
  %193 = getelementptr double, ptr %4, i64 %182, !dbg !344
  %194 = getelementptr double, ptr %193, i64 %179, !dbg !344
  store double %192, ptr %194, align 8, !dbg !345, !tbaa !175
  call void @llvm.dbg.value(metadata double %181, metadata !279, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %192, metadata !278, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 %179, metadata !271, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !298
  br label %195, !dbg !346

195:                                              ; preds = %178, %184
  call void @llvm.dbg.value(metadata i64 1, metadata !272, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double 1.000000e+280, metadata !277, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double 0x5D48966111CD756, metadata !276, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 0, metadata !274, metadata !DIExpression()), !dbg !298
  %196 = tail call i64 @llvm.umax.i64(i64 %1, i64 2), !dbg !346
  br label %229, !dbg !346

197:                                              ; preds = %197, %175
  %198 = phi i64 [ 2, %175 ], [ %224, %197 ]
  %199 = phi double [ 1.000000e+00, %175 ], [ %211, %197 ]
  %200 = phi double [ %2, %175 ], [ %222, %197 ]
  %201 = phi i64 [ 1, %175 ], [ %216, %197 ]
  %202 = phi i64 [ 0, %175 ], [ %225, %197 ]
  call void @llvm.dbg.value(metadata i64 %198, metadata !271, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %199, metadata !279, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %200, metadata !278, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 %201, metadata !273, metadata !DIExpression()), !dbg !298
  %203 = uitofp i64 %198 to double, !dbg !335
  %204 = fdiv double 1.000000e+00, %203, !dbg !336
  call void @llvm.dbg.value(metadata double %204, metadata !282, metadata !DIExpression()), !dbg !337
  %205 = add i64 %201, %198, !dbg !348
  call void @llvm.dbg.value(metadata i64 %205, metadata !273, metadata !DIExpression()), !dbg !298
  %206 = fsub double 2.000000e+00, %204, !dbg !338
  %207 = fmul double %206, %2, !dbg !339
  %208 = fmul double %200, %207, !dbg !340
  %209 = fsub double 1.000000e+00, %204, !dbg !341
  %210 = fmul double %199, %209, !dbg !342
  %211 = fsub double %208, %210, !dbg !343
  call void @llvm.dbg.value(metadata double %211, metadata !275, metadata !DIExpression()), !dbg !298
  %212 = getelementptr inbounds double, ptr %4, i64 %205, !dbg !344
  store double %211, ptr %212, align 8, !dbg !345, !tbaa !175
  call void @llvm.dbg.value(metadata double %200, metadata !279, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %211, metadata !278, metadata !DIExpression()), !dbg !298
  %213 = or disjoint i64 %198, 1, !dbg !349
  call void @llvm.dbg.value(metadata i64 %213, metadata !271, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 %213, metadata !271, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %200, metadata !279, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %211, metadata !278, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 %205, metadata !273, metadata !DIExpression()), !dbg !298
  %214 = uitofp i64 %213 to double, !dbg !335
  %215 = fdiv double 1.000000e+00, %214, !dbg !336
  call void @llvm.dbg.value(metadata double %215, metadata !282, metadata !DIExpression()), !dbg !337
  %216 = add i64 %205, %213, !dbg !348
  call void @llvm.dbg.value(metadata i64 %216, metadata !273, metadata !DIExpression()), !dbg !298
  %217 = fsub double 2.000000e+00, %215, !dbg !338
  %218 = fmul double %217, %2, !dbg !339
  %219 = fmul double %211, %218, !dbg !340
  %220 = fsub double 1.000000e+00, %215, !dbg !341
  %221 = fmul double %200, %220, !dbg !342
  %222 = fsub double %219, %221, !dbg !343
  call void @llvm.dbg.value(metadata double %222, metadata !275, metadata !DIExpression()), !dbg !298
  %223 = getelementptr inbounds double, ptr %4, i64 %216, !dbg !344
  store double %222, ptr %223, align 8, !dbg !345, !tbaa !175
  call void @llvm.dbg.value(metadata double %211, metadata !279, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %222, metadata !278, metadata !DIExpression()), !dbg !298
  %224 = add nuw i64 %198, 2, !dbg !349
  call void @llvm.dbg.value(metadata i64 %224, metadata !271, metadata !DIExpression()), !dbg !298
  %225 = add i64 %202, 2, !dbg !334
  %226 = icmp eq i64 %202, %177, !dbg !334
  br i1 %226, label %178, label %197, !dbg !334, !llvm.loop !350

227:                                              ; preds = %258, %229
  call void @llvm.dbg.value(metadata i64 %235, metadata !272, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %234, metadata !277, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %244, metadata !276, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 %236, metadata !274, metadata !DIExpression()), !dbg !298
  %228 = icmp eq i64 %235, %196, !dbg !352
  br i1 %228, label %289, label %229, !dbg !346, !llvm.loop !354

229:                                              ; preds = %227, %195
  %230 = phi i64 [ %235, %227 ], [ 1, %195 ]
  %231 = phi double [ %234, %227 ], [ 1.000000e+280, %195 ]
  %232 = phi double [ %244, %227 ], [ 0x5D48966111CD756, %195 ]
  %233 = phi i64 [ %236, %227 ], [ 0, %195 ]
  call void @llvm.dbg.value(metadata i64 %230, metadata !272, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %231, metadata !277, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %232, metadata !276, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 %233, metadata !274, metadata !DIExpression()), !dbg !298
  %234 = fmul double %124, %231, !dbg !356
  call void @llvm.dbg.value(metadata double %234, metadata !277, metadata !DIExpression()), !dbg !298
  %235 = add nuw i64 %230, 1, !dbg !358
  %236 = add i64 %233, %235, !dbg !359
  call void @llvm.dbg.value(metadata i64 %236, metadata !274, metadata !DIExpression()), !dbg !298
  %237 = shl i64 %230, 1, !dbg !360
  %238 = getelementptr double, ptr %125, i64 %237, !dbg !361
  %239 = getelementptr double, ptr %238, i64 -1, !dbg !361
  %240 = load double, ptr %239, align 8, !dbg !361, !tbaa !175
  %241 = fmul double %240, %3, !dbg !362
  %242 = load double, ptr %238, align 8, !dbg !363, !tbaa !175
  %243 = fdiv double %241, %242, !dbg !364
  %244 = fmul double %232, %243, !dbg !365
  call void @llvm.dbg.value(metadata double %244, metadata !276, metadata !DIExpression()), !dbg !298
  %245 = fmul double %234, %244, !dbg !366
  %246 = getelementptr inbounds double, ptr %4, i64 %236, !dbg !367
  store double %245, ptr %246, align 8, !dbg !368, !tbaa !175
  call void @llvm.dbg.value(metadata double %244, metadata !279, metadata !DIExpression()), !dbg !298
  %247 = add i64 %236, %235, !dbg !369
  call void @llvm.dbg.value(metadata i64 %247, metadata !273, metadata !DIExpression()), !dbg !298
  %248 = or disjoint i64 %237, 1, !dbg !370
  %249 = getelementptr inbounds double, ptr %125, i64 %248, !dbg !371
  %250 = load double, ptr %249, align 8, !dbg !371, !tbaa !175
  %251 = fmul double %250, %2, !dbg !372
  %252 = fmul double %244, %251, !dbg !373
  call void @llvm.dbg.value(metadata double %252, metadata !278, metadata !DIExpression()), !dbg !298
  %253 = fmul double %234, %252, !dbg !374
  %254 = getelementptr inbounds double, ptr %4, i64 %247, !dbg !375
  store double %253, ptr %254, align 8, !dbg !376, !tbaa !175
  %255 = add nuw i64 %230, 2, !dbg !377
  call void @llvm.dbg.value(metadata i64 %255, metadata !271, metadata !DIExpression()), !dbg !298
  %256 = getelementptr double, ptr %125, i64 %230, !dbg !379
  %257 = icmp ugt i64 %255, %1, !dbg !380
  br i1 %257, label %227, label %258, !dbg !382

258:                                              ; preds = %229, %258
  %259 = phi i64 [ %287, %258 ], [ %255, %229 ]
  %260 = phi double [ %261, %258 ], [ %244, %229 ]
  %261 = phi double [ %284, %258 ], [ %252, %229 ]
  %262 = phi i64 [ %263, %258 ], [ %247, %229 ]
  call void @llvm.dbg.value(metadata i64 %259, metadata !271, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %260, metadata !279, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %261, metadata !278, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 %262, metadata !273, metadata !DIExpression()), !dbg !298
  %263 = add i64 %262, %259, !dbg !383
  call void @llvm.dbg.value(metadata i64 %263, metadata !273, metadata !DIExpression()), !dbg !298
  %264 = shl i64 %259, 1, !dbg !385
  %265 = add i64 %264, -1, !dbg !386
  %266 = uitofp i64 %265 to double, !dbg !387
  %267 = getelementptr double, ptr %256, i64 %259, !dbg !388
  %268 = load double, ptr %267, align 8, !dbg !388, !tbaa !175
  %269 = fdiv double %266, %268, !dbg !389
  %270 = sub i64 %259, %230, !dbg !390
  %271 = getelementptr inbounds double, ptr %125, i64 %270, !dbg !391
  %272 = load double, ptr %271, align 8, !dbg !391, !tbaa !175
  %273 = fdiv double %269, %272, !dbg !392
  %274 = fmul double %273, %2, !dbg !393
  %275 = fmul double %261, %274, !dbg !394
  %276 = getelementptr double, ptr %271, i64 -1, !dbg !395
  %277 = load double, ptr %276, align 8, !dbg !395, !tbaa !175
  %278 = getelementptr double, ptr %267, i64 -1, !dbg !396
  %279 = load double, ptr %278, align 8, !dbg !396, !tbaa !175
  %280 = fmul double %277, %279, !dbg !397
  %281 = fdiv double %280, %268, !dbg !398
  %282 = fdiv double %281, %272, !dbg !399
  %283 = fmul double %260, %282, !dbg !400
  %284 = fsub double %275, %283, !dbg !401
  call void @llvm.dbg.value(metadata double %284, metadata !275, metadata !DIExpression()), !dbg !298
  %285 = fmul double %234, %284, !dbg !402
  %286 = getelementptr inbounds double, ptr %4, i64 %263, !dbg !403
  store double %285, ptr %286, align 8, !dbg !404, !tbaa !175
  call void @llvm.dbg.value(metadata double %261, metadata !279, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %284, metadata !278, metadata !DIExpression()), !dbg !298
  %287 = add i64 %259, 1, !dbg !405
  call void @llvm.dbg.value(metadata i64 %287, metadata !271, metadata !DIExpression()), !dbg !298
  %288 = icmp ugt i64 %287, %1, !dbg !380
  br i1 %288, label %227, label %258, !dbg !382, !llvm.loop !406

289:                                              ; preds = %227, %168
  %290 = phi i64 [ 0, %168 ], [ %236, %227 ], !dbg !298
  %291 = phi double [ 0x5D48966111CD756, %168 ], [ %244, %227 ], !dbg !298
  %292 = phi double [ 1.000000e+280, %168 ], [ %234, %227 ], !dbg !298
  %293 = phi i64 [ 1, %168 ], [ %196, %227 ], !dbg !408
  %294 = fmul double %124, %292, !dbg !409
  call void @llvm.dbg.value(metadata double %294, metadata !277, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata !DIArgList(i64 %290, i64 %293), metadata !274, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !298
  %295 = getelementptr double, ptr %125, i64 %126, !dbg !410
  %296 = getelementptr double, ptr %295, i64 -1, !dbg !410
  %297 = load double, ptr %296, align 8, !dbg !410, !tbaa !175
  %298 = fmul double %297, %3, !dbg !411
  %299 = load double, ptr %295, align 8, !dbg !412, !tbaa !175
  %300 = fdiv double %298, %299, !dbg !413
  %301 = fmul double %291, %300, !dbg !414
  call void @llvm.dbg.value(metadata double %301, metadata !276, metadata !DIExpression()), !dbg !298
  %302 = fmul double %294, %301, !dbg !415
  %303 = getelementptr double, ptr %4, i64 %290, !dbg !416
  %304 = getelementptr double, ptr %303, i64 %293, !dbg !416
  %305 = getelementptr double, ptr %304, i64 1, !dbg !416
  store double %302, ptr %305, align 8, !dbg !417, !tbaa !175
  br label %306, !dbg !418

306:                                              ; preds = %289, %166, %119, %114, %103
  %307 = phi i32 [ 0, %103 ], [ 1, %114 ], [ 1, %119 ], [ 0, %166 ], [ 0, %289 ], !dbg !134
  tail call void @llvm.dbg.value(metadata i32 %307, metadata !110, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !112, metadata !DIExpression()), !dbg !120
  switch i32 %0, label %309 [
    i32 3, label %362
    i32 0, label %362
    i32 1, label %310
    i32 2, label %308
  ], !dbg !419

308:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCC, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !114, metadata !DIExpression()), !dbg !120
  br label %310, !dbg !421

309:                                              ; preds = %306
  br label %310, !dbg !425

310:                                              ; preds = %306, %309, %308
  %311 = phi double [ 0x3FE6A09E667F3BCC, %308 ], [ 0x3FD20DD750429B6D, %306 ], [ 0.000000e+00, %309 ], !dbg !120
  %312 = phi double [ 5.000000e-01, %308 ], [ 0x3FC9884533D43651, %306 ], [ 0.000000e+00, %309 ], !dbg !120
  tail call void @llvm.dbg.value(metadata double %312, metadata !114, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %311, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i64 1, metadata !118, metadata !DIExpression()), !dbg !426
  %313 = getelementptr inbounds double, ptr %4, i64 %9, !dbg !425
  tail call void @llvm.dbg.value(metadata ptr %313, metadata !119, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 0, metadata !115, metadata !DIExpression()), !dbg !426
  %314 = tail call i64 @llvm.umax.i64(i64 %6, i64 1), !dbg !427
  br label %315, !dbg !427

315:                                              ; preds = %310, %359
  %316 = phi i64 [ 1, %310 ], [ %360, %359 ]
  %317 = phi i64 [ 0, %310 ], [ %321, %359 ]
  tail call void @llvm.dbg.value(metadata i64 %316, metadata !118, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !115, metadata !DIExpression()), !dbg !426
  %318 = getelementptr inbounds double, ptr %313, i64 %316, !dbg !429
  %319 = load double, ptr %318, align 8, !dbg !429, !tbaa !175
  %320 = fmul double %311, %319, !dbg !432
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !433, metadata !DIExpression()), !dbg !439
  tail call void @llvm.dbg.value(metadata i64 0, metadata !438, metadata !DIExpression()), !dbg !439
  %321 = add nuw i64 %317, 1, !dbg !441
  %322 = mul i64 %321, %317, !dbg !442
  %323 = lshr i64 %322, 1, !dbg !443
  %324 = getelementptr double, ptr %4, i64 %323, !dbg !444
  %325 = load double, ptr %324, align 8, !dbg !445, !tbaa !175
  %326 = fmul double %325, %320, !dbg !445
  store double %326, ptr %324, align 8, !dbg !445, !tbaa !175
  tail call void @llvm.dbg.value(metadata i64 1, metadata !117, metadata !DIExpression()), !dbg !426
  %327 = icmp eq i64 %317, 0, !dbg !446
  br i1 %327, label %359, label %328, !dbg !449

328:                                              ; preds = %315
  %329 = and i64 %317, 1, !dbg !449
  %330 = icmp eq i64 %317, 1, !dbg !449
  br i1 %330, label %350, label %331, !dbg !449

331:                                              ; preds = %328
  %332 = and i64 %317, -2, !dbg !449
  %333 = getelementptr double, ptr %324, i64 1, !dbg !449
  br label %334, !dbg !449

334:                                              ; preds = %334, %331
  %335 = phi i64 [ 1, %331 ], [ %347, %334 ]
  %336 = phi i64 [ 0, %331 ], [ %348, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !117, metadata !DIExpression()), !dbg !426
  %337 = load double, ptr %318, align 8, !dbg !450, !tbaa !175
  %338 = fmul double %312, %337, !dbg !452
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !433, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !438, metadata !DIExpression()), !dbg !453
  %339 = getelementptr double, ptr %324, i64 %335, !dbg !455
  %340 = load double, ptr %339, align 8, !dbg !456, !tbaa !175
  %341 = fmul double %340, %338, !dbg !456
  store double %341, ptr %339, align 8, !dbg !456, !tbaa !175
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !117, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !117, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !426
  %342 = load double, ptr %318, align 8, !dbg !450, !tbaa !175
  %343 = fmul double %312, %342, !dbg !452
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !433, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !438, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !453
  %344 = getelementptr double, ptr %333, i64 %335, !dbg !455
  %345 = load double, ptr %344, align 8, !dbg !456, !tbaa !175
  %346 = fmul double %345, %343, !dbg !456
  store double %346, ptr %344, align 8, !dbg !456, !tbaa !175
  %347 = add nuw i64 %335, 2, !dbg !457
  tail call void @llvm.dbg.value(metadata i64 %347, metadata !117, metadata !DIExpression()), !dbg !426
  %348 = add i64 %336, 2, !dbg !449
  %349 = icmp eq i64 %348, %332, !dbg !449
  br i1 %349, label %350, label %334, !dbg !449, !llvm.loop !458

350:                                              ; preds = %334, %328
  %351 = phi i64 [ 1, %328 ], [ %347, %334 ]
  %352 = icmp eq i64 %329, 0, !dbg !449
  br i1 %352, label %359, label %353, !dbg !449

353:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i64 %351, metadata !117, metadata !DIExpression()), !dbg !426
  %354 = load double, ptr %318, align 8, !dbg !450, !tbaa !175
  %355 = fmul double %312, %354, !dbg !452
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !433, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata i64 %351, metadata !438, metadata !DIExpression()), !dbg !453
  %356 = getelementptr double, ptr %324, i64 %351, !dbg !455
  %357 = load double, ptr %356, align 8, !dbg !456, !tbaa !175
  %358 = fmul double %357, %355, !dbg !456
  store double %358, ptr %356, align 8, !dbg !456, !tbaa !175
  tail call void @llvm.dbg.value(metadata i64 %351, metadata !117, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !426
  br label %359, !dbg !460

359:                                              ; preds = %353, %350, %315
  %360 = add i64 %316, 2, !dbg !460
  tail call void @llvm.dbg.value(metadata i64 %360, metadata !118, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 %321, metadata !115, metadata !DIExpression()), !dbg !426
  %361 = icmp eq i64 %321, %314, !dbg !461
  br i1 %361, label %362, label %315, !dbg !427, !llvm.loop !462

362:                                              ; preds = %359, %15, %20, %21, %306, %306
  %363 = phi i32 [ %307, %306 ], [ %307, %306 ], [ 0, %21 ], [ 1, %20 ], [ 1, %15 ], [ %307, %359 ]
  ret i32 %363, !dbg !464
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @gsl_sf_legendre_nlm(i64 noundef %0) local_unnamed_addr #1 !dbg !122 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !121, metadata !DIExpression()), !dbg !465
  %2 = add i64 %0, 1, !dbg !466
  %3 = add i64 %0, 2, !dbg !467
  %4 = mul i64 %2, %3, !dbg !468
  %5 = lshr i64 %4, 1, !dbg !469
  ret i64 %5, !dbg !470
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !471 double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @gsl_sf_legendre_array_index(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 !dbg !434 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !433, metadata !DIExpression()), !dbg !475
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !438, metadata !DIExpression()), !dbg !475
  %3 = add i64 %0, 1, !dbg !476
  %4 = mul i64 %3, %0, !dbg !477
  %5 = lshr i64 %4, 1, !dbg !478
  %6 = add i64 %5, %1, !dbg !479
  ret i64 %6, !dbg !480
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv_array(i32 noundef %0, i64 noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !dbg !481 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !485, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !486, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata double %2, metadata !487, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !488, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !489, metadata !DIExpression()), !dbg !491
  %6 = tail call i32 @gsl_sf_legendre_deriv_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4), !dbg !492, !range !99
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !490, metadata !DIExpression()), !dbg !491
  ret i32 %6, !dbg !493
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 !dbg !494 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !498, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !499, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata double %2, metadata !500, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata double %3, metadata !501, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !502, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !503, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !517
  %7 = add i64 %1, 1, !dbg !519
  %8 = add i64 %1, 2, !dbg !520
  %9 = mul i64 %7, %8, !dbg !521
  %10 = lshr i64 %9, 1, !dbg !522
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !505, metadata !DIExpression()), !dbg !516
  %11 = fsub double 1.000000e+00, %2, !dbg !523
  %12 = fadd double %2, 1.000000e+00, !dbg !524
  %13 = fmul double %11, %12, !dbg !525
  %14 = tail call double @sqrt(double noundef %13) #6, !dbg !526
  tail call void @llvm.dbg.value(metadata double %14, metadata !507, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata double poison, metadata !508, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !509, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !510, metadata !DIExpression()), !dbg !516
  %15 = icmp eq i32 %0, 3, !dbg !527
  %16 = fcmp ogt double %2, 1.000000e+00, !dbg !529
  %17 = fcmp olt double %2, -1.000000e+00
  %18 = or i1 %16, %17, !dbg !529
  br i1 %15, label %19, label %152, !dbg !530

19:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %1, metadata !531, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata double %2, metadata !536, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata double %3, metadata !537, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata ptr %4, metadata !538, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata ptr %5, metadata !539, metadata !DIExpression()), !dbg !556
  br i1 %18, label %20, label %21, !dbg !559

20:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 1) #6, !dbg !560
  br label %349, !dbg !560

21:                                               ; preds = %19
  %22 = tail call double @llvm.fabs.f64(double %2), !dbg !563
  %23 = fcmp oeq double %22, 1.000000e+00, !dbg !564
  br i1 %23, label %24, label %25, !dbg !565

24:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 435, i32 noundef 1) #6, !dbg !566
  br label %349, !dbg !566

25:                                               ; preds = %21
  %26 = fcmp une double %3, 1.000000e+00, !dbg !569
  %27 = fcmp une double %3, -1.000000e+00
  %28 = and i1 %26, %27, !dbg !570
  br i1 %28, label %29, label %30, !dbg !570

29:                                               ; preds = %25
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 1) #6, !dbg !571
  br label %349, !dbg !571

30:                                               ; preds = %25
  %31 = tail call double @sqrt(double noundef %13) #6, !dbg !574
  call void @llvm.dbg.value(metadata double %31, metadata !540, metadata !DIExpression()), !dbg !575
  %32 = fdiv double 1.000000e+00, %31, !dbg !576
  call void @llvm.dbg.value(metadata double %32, metadata !545, metadata !DIExpression()), !dbg !575
  %33 = fmul double %32, %2, !dbg !577
  call void @llvm.dbg.value(metadata double %33, metadata !546, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !554, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata double %2, metadata !553, metadata !DIExpression()), !dbg !575
  store double 1.000000e+00, ptr %4, align 8, !dbg !578, !tbaa !175
  store double 0.000000e+00, ptr %5, align 8, !dbg !579, !tbaa !175
  %34 = icmp eq i64 %1, 0, !dbg !580
  br i1 %34, label %349, label %35, !dbg !582

35:                                               ; preds = %30
  %36 = getelementptr inbounds double, ptr %4, i64 1, !dbg !583
  store double %2, ptr %36, align 8, !dbg !584, !tbaa !175
  %37 = fneg double %31, !dbg !585
  %38 = getelementptr inbounds double, ptr %5, i64 1, !dbg !586
  store double %37, ptr %38, align 8, !dbg !587, !tbaa !175
  call void @llvm.dbg.value(metadata i64 1, metadata !549, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i64 2, metadata !547, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !554, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata double %2, metadata !553, metadata !DIExpression()), !dbg !575
  %39 = icmp eq i64 %1, 1, !dbg !588
  br i1 %39, label %45, label %40, !dbg !591

40:                                               ; preds = %35
  %41 = tail call i64 @llvm.umax.i64(i64 %7, i64 3), !dbg !591
  br label %47, !dbg !591

42:                                               ; preds = %47
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !555, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !552, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i64 0, metadata !550, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i64 1, metadata !548, metadata !DIExpression()), !dbg !575
  %43 = fmul double %31, %3
  %44 = fneg double %32
  br label %75, !dbg !592

45:                                               ; preds = %35
  %46 = fmul double %31, %3, !dbg !594
  br label %139, !dbg !592

47:                                               ; preds = %47, %40
  %48 = phi double [ %49, %47 ], [ 1.000000e+00, %40 ]
  %49 = phi double [ %63, %47 ], [ %2, %40 ]
  %50 = phi i64 [ %52, %47 ], [ 1, %40 ]
  %51 = phi i64 [ %71, %47 ], [ 2, %40 ]
  call void @llvm.dbg.value(metadata double %48, metadata !554, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata double %49, metadata !553, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i64 %50, metadata !549, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i64 %51, metadata !547, metadata !DIExpression()), !dbg !575
  %52 = add i64 %51, %50, !dbg !595
  call void @llvm.dbg.value(metadata i64 %52, metadata !549, metadata !DIExpression()), !dbg !575
  %53 = shl i64 %51, 1, !dbg !597
  %54 = add i64 %53, -1, !dbg !598
  %55 = uitofp i64 %54 to double, !dbg !599
  %56 = fmul double %55, %2, !dbg !600
  %57 = fmul double %49, %56, !dbg !601
  %58 = add i64 %51, -1, !dbg !602
  %59 = uitofp i64 %58 to double, !dbg !603
  %60 = fmul double %48, %59, !dbg !604
  %61 = fsub double %57, %60, !dbg !605
  %62 = uitofp i64 %51 to double, !dbg !606
  %63 = fdiv double %61, %62, !dbg !607
  call void @llvm.dbg.value(metadata double %63, metadata !551, metadata !DIExpression()), !dbg !575
  %64 = getelementptr inbounds double, ptr %4, i64 %52, !dbg !608
  store double %63, ptr %64, align 8, !dbg !609, !tbaa !175
  %65 = fneg double %62, !dbg !610
  %66 = fmul double %63, %2, !dbg !611
  %67 = fsub double %49, %66, !dbg !612
  %68 = fmul double %67, %65, !dbg !613
  %69 = fmul double %32, %68, !dbg !614
  %70 = getelementptr inbounds double, ptr %5, i64 %52, !dbg !615
  store double %69, ptr %70, align 8, !dbg !616, !tbaa !175
  call void @llvm.dbg.value(metadata double %49, metadata !554, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata double %63, metadata !553, metadata !DIExpression()), !dbg !575
  %71 = add nuw i64 %51, 1, !dbg !617
  call void @llvm.dbg.value(metadata i64 %71, metadata !547, metadata !DIExpression()), !dbg !575
  %72 = icmp eq i64 %71, %41, !dbg !588
  br i1 %72, label %42, label %47, !dbg !591, !llvm.loop !618

73:                                               ; preds = %106, %75
  call void @llvm.dbg.value(metadata double %82, metadata !555, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata double %84, metadata !552, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i64 %81, metadata !550, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i64 %80, metadata !548, metadata !DIExpression()), !dbg !575
  %74 = icmp eq i64 %80, %1, !dbg !620
  br i1 %74, label %136, label %75, !dbg !592, !llvm.loop !622

75:                                               ; preds = %73, %42
  %76 = phi double [ -1.000000e+00, %42 ], [ %82, %73 ]
  %77 = phi double [ 1.000000e+00, %42 ], [ %84, %73 ]
  %78 = phi i64 [ 0, %42 ], [ %81, %73 ]
  %79 = phi i64 [ 1, %42 ], [ %80, %73 ]
  call void @llvm.dbg.value(metadata double %76, metadata !555, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata double %77, metadata !552, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i64 %78, metadata !550, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i64 %79, metadata !548, metadata !DIExpression()), !dbg !575
  %80 = add nuw i64 %79, 1, !dbg !624
  %81 = add i64 %80, %78, !dbg !626
  call void @llvm.dbg.value(metadata i64 %81, metadata !550, metadata !DIExpression()), !dbg !575
  %82 = fadd double %76, 2.000000e+00, !dbg !627
  call void @llvm.dbg.value(metadata double %82, metadata !555, metadata !DIExpression()), !dbg !575
  %83 = fmul double %43, %82, !dbg !628
  %84 = fmul double %77, %83, !dbg !629
  call void @llvm.dbg.value(metadata double %84, metadata !552, metadata !DIExpression()), !dbg !575
  %85 = getelementptr inbounds double, ptr %4, i64 %81, !dbg !630
  store double %84, ptr %85, align 8, !dbg !631, !tbaa !175
  %86 = uitofp i64 %79 to double, !dbg !632
  %87 = fmul double %33, %86, !dbg !633
  %88 = fmul double %84, %87, !dbg !634
  %89 = getelementptr inbounds double, ptr %5, i64 %81, !dbg !635
  store double %88, ptr %89, align 8, !dbg !636, !tbaa !175
  call void @llvm.dbg.value(metadata double %84, metadata !554, metadata !DIExpression()), !dbg !575
  %90 = add i64 %81, %80, !dbg !637
  call void @llvm.dbg.value(metadata i64 %90, metadata !549, metadata !DIExpression()), !dbg !575
  %91 = fmul double %84, %2, !dbg !638
  %92 = shl i64 %79, 1, !dbg !639
  %93 = or disjoint i64 %92, 1, !dbg !640
  %94 = uitofp i64 %93 to double, !dbg !641
  %95 = fmul double %91, %94, !dbg !642
  call void @llvm.dbg.value(metadata double %95, metadata !553, metadata !DIExpression()), !dbg !575
  %96 = getelementptr inbounds double, ptr %4, i64 %90, !dbg !643
  store double %95, ptr %96, align 8, !dbg !644, !tbaa !175
  %97 = fmul double %84, %94, !dbg !645
  %98 = uitofp i64 %80 to double, !dbg !646
  %99 = fmul double %98, %2, !dbg !647
  %100 = fmul double %99, %95, !dbg !648
  %101 = fsub double %97, %100, !dbg !649
  %102 = fmul double %101, %44, !dbg !650
  %103 = getelementptr inbounds double, ptr %5, i64 %90, !dbg !651
  store double %102, ptr %103, align 8, !dbg !652, !tbaa !175
  %104 = add i64 %79, 2, !dbg !653
  call void @llvm.dbg.value(metadata i64 %104, metadata !547, metadata !DIExpression()), !dbg !575
  %105 = icmp ugt i64 %104, %1, !dbg !655
  br i1 %105, label %73, label %106, !dbg !657

106:                                              ; preds = %75, %106
  %107 = phi double [ %108, %106 ], [ %84, %75 ]
  %108 = phi double [ %124, %106 ], [ %95, %75 ]
  %109 = phi i64 [ %111, %106 ], [ %90, %75 ]
  %110 = phi i64 [ %134, %106 ], [ %104, %75 ]
  call void @llvm.dbg.value(metadata double %107, metadata !554, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata double %108, metadata !553, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i64 %109, metadata !549, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i64 %110, metadata !547, metadata !DIExpression()), !dbg !575
  %111 = add i64 %110, %109, !dbg !658
  call void @llvm.dbg.value(metadata i64 %111, metadata !549, metadata !DIExpression()), !dbg !575
  %112 = shl i64 %110, 1, !dbg !660
  %113 = add i64 %112, -1, !dbg !661
  %114 = uitofp i64 %113 to double, !dbg !662
  %115 = fmul double %114, %2, !dbg !663
  %116 = fmul double %108, %115, !dbg !664
  %117 = add i64 %110, %79, !dbg !665
  %118 = add i64 %117, -1, !dbg !666
  %119 = uitofp i64 %118 to double, !dbg !667
  %120 = fmul double %107, %119, !dbg !668
  %121 = fsub double %116, %120, !dbg !669
  %122 = sub i64 %110, %79, !dbg !670
  %123 = uitofp i64 %122 to double, !dbg !671
  %124 = fdiv double %121, %123, !dbg !672
  call void @llvm.dbg.value(metadata double %124, metadata !551, metadata !DIExpression()), !dbg !575
  %125 = getelementptr inbounds double, ptr %4, i64 %111, !dbg !673
  store double %124, ptr %125, align 8, !dbg !674, !tbaa !175
  %126 = uitofp i64 %117 to double, !dbg !675
  %127 = fmul double %108, %126, !dbg !676
  %128 = uitofp i64 %110 to double, !dbg !677
  %129 = fmul double %128, %2, !dbg !678
  %130 = fmul double %129, %124, !dbg !679
  %131 = fsub double %127, %130, !dbg !680
  %132 = fmul double %131, %44, !dbg !681
  %133 = getelementptr inbounds double, ptr %5, i64 %111, !dbg !682
  store double %132, ptr %133, align 8, !dbg !683, !tbaa !175
  call void @llvm.dbg.value(metadata double %108, metadata !554, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata double %124, metadata !553, metadata !DIExpression()), !dbg !575
  %134 = add i64 %110, 1, !dbg !684
  call void @llvm.dbg.value(metadata i64 %134, metadata !547, metadata !DIExpression()), !dbg !575
  %135 = icmp ugt i64 %134, %1, !dbg !655
  br i1 %135, label %73, label %106, !dbg !657, !llvm.loop !685

136:                                              ; preds = %73
  %137 = add i64 %81, %7, !dbg !687
  %138 = fadd double %82, 2.000000e+00, !dbg !688
  br label %139, !dbg !687

139:                                              ; preds = %136, %45
  %140 = phi double [ %46, %45 ], [ %43, %136 ], !dbg !594
  %141 = phi double [ 1.000000e+00, %45 ], [ %84, %136 ], !dbg !575
  %142 = phi double [ 1.000000e+00, %45 ], [ %138, %136 ], !dbg !575
  %143 = phi i64 [ 2, %45 ], [ %137, %136 ], !dbg !689
  call void @llvm.dbg.value(metadata i64 %143, metadata !550, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata double %142, metadata !555, metadata !DIExpression()), !dbg !575
  %144 = fmul double %140, %142, !dbg !690
  %145 = fmul double %141, %144, !dbg !691
  call void @llvm.dbg.value(metadata double %145, metadata !552, metadata !DIExpression()), !dbg !575
  %146 = getelementptr inbounds double, ptr %4, i64 %143, !dbg !692
  store double %145, ptr %146, align 8, !dbg !693, !tbaa !175
  %147 = uitofp i64 %1 to double, !dbg !694
  %148 = fmul double %147, %2, !dbg !695
  %149 = fmul double %148, %145, !dbg !696
  %150 = fmul double %32, %149, !dbg !697
  %151 = getelementptr inbounds double, ptr %5, i64 %143, !dbg !698
  store double %150, ptr %151, align 8, !dbg !699, !tbaa !175
  br label %349, !dbg !700

152:                                              ; preds = %6
  call void @llvm.dbg.value(metadata i64 %1, metadata !701, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata double %2, metadata !704, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata double %3, metadata !705, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata ptr %4, metadata !706, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata ptr %5, metadata !707, metadata !DIExpression()), !dbg !731
  br i1 %18, label %153, label %154, !dbg !734

153:                                              ; preds = %152
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 222, i32 noundef 1) #6, !dbg !735
  br label %349, !dbg !735

154:                                              ; preds = %152
  %155 = tail call double @llvm.fabs.f64(double %2), !dbg !738
  %156 = fcmp oeq double %155, 1.000000e+00, !dbg !739
  br i1 %156, label %157, label %158, !dbg !740

157:                                              ; preds = %154
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 227, i32 noundef 1) #6, !dbg !741
  br label %349, !dbg !741

158:                                              ; preds = %154
  %159 = fcmp une double %3, 1.000000e+00, !dbg !744
  %160 = fcmp une double %3, -1.000000e+00
  %161 = and i1 %159, %160, !dbg !745
  br i1 %161, label %162, label %163, !dbg !745

162:                                              ; preds = %158
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 232, i32 noundef 1) #6, !dbg !746
  br label %349, !dbg !746

163:                                              ; preds = %158
  call void @llvm.dbg.value(metadata double 0x5CD0B15A491EB84, metadata !708, metadata !DIExpression()), !dbg !749
  %164 = tail call double @sqrt(double noundef %13) #6, !dbg !750
  call void @llvm.dbg.value(metadata double %164, metadata !713, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %207, metadata !714, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %208, metadata !715, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i64 %10, metadata !725, metadata !DIExpression()), !dbg !749
  %165 = getelementptr inbounds double, ptr %4, i64 %10, !dbg !753
  call void @llvm.dbg.value(metadata ptr %165, metadata !726, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i64 %1, metadata !306, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata ptr %165, metadata !311, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 0, metadata !312, metadata !DIExpression()), !dbg !754
  %166 = shl i64 %1, 1
  %167 = add i64 %166, 2, !dbg !756
  %168 = tail call i64 @llvm.umax.i64(i64 %167, i64 1), !dbg !756
  %169 = and i64 %168, 3, !dbg !756
  %170 = icmp ult i64 %167, 4, !dbg !756
  br i1 %170, label %194, label %171, !dbg !756

171:                                              ; preds = %163
  %172 = and i64 %168, -4, !dbg !756
  br label %173, !dbg !756

173:                                              ; preds = %173, %171
  %174 = phi i64 [ 0, %171 ], [ %191, %173 ]
  %175 = phi i64 [ 0, %171 ], [ %192, %173 ]
  call void @llvm.dbg.value(metadata i64 %174, metadata !312, metadata !DIExpression()), !dbg !754
  %176 = uitofp i64 %174 to double, !dbg !757
  %177 = tail call double @llvm.sqrt.f64(double %176), !dbg !758
  %178 = getelementptr inbounds double, ptr %165, i64 %174, !dbg !759
  store double %177, ptr %178, align 8, !dbg !760, !tbaa !175
  %179 = or disjoint i64 %174, 1, !dbg !761
  call void @llvm.dbg.value(metadata i64 %179, metadata !312, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 %179, metadata !312, metadata !DIExpression()), !dbg !754
  %180 = uitofp i64 %179 to double, !dbg !757
  %181 = tail call double @llvm.sqrt.f64(double %180), !dbg !758
  %182 = getelementptr inbounds double, ptr %165, i64 %179, !dbg !759
  store double %181, ptr %182, align 8, !dbg !760, !tbaa !175
  %183 = or disjoint i64 %174, 2, !dbg !761
  call void @llvm.dbg.value(metadata i64 %183, metadata !312, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 %183, metadata !312, metadata !DIExpression()), !dbg !754
  %184 = uitofp i64 %183 to double, !dbg !757
  %185 = tail call double @llvm.sqrt.f64(double %184), !dbg !758
  %186 = getelementptr inbounds double, ptr %165, i64 %183, !dbg !759
  store double %185, ptr %186, align 8, !dbg !760, !tbaa !175
  %187 = or disjoint i64 %174, 3, !dbg !761
  call void @llvm.dbg.value(metadata i64 %187, metadata !312, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 %187, metadata !312, metadata !DIExpression()), !dbg !754
  %188 = uitofp i64 %187 to double, !dbg !757
  %189 = tail call double @llvm.sqrt.f64(double %188), !dbg !758
  %190 = getelementptr inbounds double, ptr %165, i64 %187, !dbg !759
  store double %189, ptr %190, align 8, !dbg !760, !tbaa !175
  %191 = add nuw i64 %174, 4, !dbg !761
  call void @llvm.dbg.value(metadata i64 %191, metadata !312, metadata !DIExpression()), !dbg !754
  %192 = add i64 %175, 4, !dbg !756
  %193 = icmp eq i64 %192, %172, !dbg !756
  br i1 %193, label %194, label %173, !dbg !756, !llvm.loop !762

194:                                              ; preds = %173, %163
  %195 = phi i64 [ 0, %163 ], [ %191, %173 ]
  %196 = icmp eq i64 %169, 0, !dbg !756
  br i1 %196, label %206, label %197, !dbg !756

197:                                              ; preds = %194, %197
  %198 = phi i64 [ %203, %197 ], [ %195, %194 ]
  %199 = phi i64 [ %204, %197 ], [ 0, %194 ]
  call void @llvm.dbg.value(metadata i64 %198, metadata !312, metadata !DIExpression()), !dbg !754
  %200 = uitofp i64 %198 to double, !dbg !757
  %201 = tail call double @llvm.sqrt.f64(double %200), !dbg !758
  %202 = getelementptr inbounds double, ptr %165, i64 %198, !dbg !759
  store double %201, ptr %202, align 8, !dbg !760, !tbaa !175
  %203 = add nuw i64 %198, 1, !dbg !761
  call void @llvm.dbg.value(metadata i64 %203, metadata !312, metadata !DIExpression()), !dbg !754
  %204 = add i64 %199, 1, !dbg !756
  %205 = icmp eq i64 %204, %169, !dbg !756
  br i1 %205, label %206, label %197, !dbg !756, !llvm.loop !764

206:                                              ; preds = %197, %194
  %207 = fdiv double 1.000000e+00, %164, !dbg !765
  %208 = fmul double %207, %2, !dbg !766
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !724, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %2, metadata !723, metadata !DIExpression()), !dbg !749
  store double 1.000000e+00, ptr %4, align 8, !dbg !767, !tbaa !175
  store double 0.000000e+00, ptr %5, align 8, !dbg !768, !tbaa !175
  %209 = icmp eq i64 %1, 0, !dbg !769
  br i1 %209, label %349, label %210, !dbg !771

210:                                              ; preds = %206
  %211 = getelementptr inbounds double, ptr %4, i64 1, !dbg !772
  store double %2, ptr %211, align 8, !dbg !773, !tbaa !175
  %212 = fneg double %164, !dbg !774
  %213 = getelementptr inbounds double, ptr %5, i64 1, !dbg !775
  store double %212, ptr %213, align 8, !dbg !776, !tbaa !175
  call void @llvm.dbg.value(metadata i64 1, metadata !718, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i64 2, metadata !716, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !724, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %2, metadata !723, metadata !DIExpression()), !dbg !749
  %214 = icmp eq i64 %1, 1, !dbg !777
  br i1 %214, label %331, label %215, !dbg !778

215:                                              ; preds = %210
  %216 = tail call i64 @llvm.umax.i64(i64 %7, i64 3), !dbg !778
  br label %219, !dbg !778

217:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i64 1, metadata !717, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double 1.000000e+280, metadata !722, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double 0x5D48966111CD756, metadata !721, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i64 0, metadata !719, metadata !DIExpression()), !dbg !749
  %218 = tail call i64 @llvm.umax.i64(i64 %1, i64 2), !dbg !779
  br label %243, !dbg !779

219:                                              ; preds = %219, %215
  %220 = phi i64 [ %239, %219 ], [ 2, %215 ]
  %221 = phi double [ %222, %219 ], [ 1.000000e+00, %215 ]
  %222 = phi double [ %232, %219 ], [ %2, %215 ]
  %223 = phi i64 [ %226, %219 ], [ 1, %215 ]
  call void @llvm.dbg.value(metadata i64 %220, metadata !716, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %221, metadata !724, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %222, metadata !723, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i64 %223, metadata !718, metadata !DIExpression()), !dbg !749
  %224 = uitofp i64 %220 to double, !dbg !781
  %225 = fdiv double 1.000000e+00, %224, !dbg !782
  call void @llvm.dbg.value(metadata double %225, metadata !727, metadata !DIExpression()), !dbg !783
  %226 = add i64 %223, %220, !dbg !784
  call void @llvm.dbg.value(metadata i64 %226, metadata !718, metadata !DIExpression()), !dbg !749
  %227 = fsub double 2.000000e+00, %225, !dbg !785
  %228 = fmul double %227, %2, !dbg !786
  %229 = fmul double %222, %228, !dbg !787
  %230 = fsub double 1.000000e+00, %225, !dbg !788
  %231 = fmul double %221, %230, !dbg !789
  %232 = fsub double %229, %231, !dbg !790
  call void @llvm.dbg.value(metadata double %232, metadata !720, metadata !DIExpression()), !dbg !749
  %233 = getelementptr inbounds double, ptr %4, i64 %226, !dbg !791
  store double %232, ptr %233, align 8, !dbg !792, !tbaa !175
  %234 = fmul double %207, %224, !dbg !793
  %235 = fmul double %232, %2, !dbg !794
  %236 = fsub double %235, %222, !dbg !795
  %237 = fmul double %234, %236, !dbg !796
  %238 = getelementptr inbounds double, ptr %5, i64 %226, !dbg !797
  store double %237, ptr %238, align 8, !dbg !798, !tbaa !175
  call void @llvm.dbg.value(metadata double %222, metadata !724, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %232, metadata !723, metadata !DIExpression()), !dbg !749
  %239 = add nuw i64 %220, 1, !dbg !799
  call void @llvm.dbg.value(metadata i64 %239, metadata !716, metadata !DIExpression()), !dbg !749
  %240 = icmp eq i64 %239, %216, !dbg !777
  br i1 %240, label %217, label %219, !dbg !778, !llvm.loop !800

241:                                              ; preds = %285, %243
  call void @llvm.dbg.value(metadata i64 %249, metadata !717, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %248, metadata !722, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %258, metadata !721, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i64 %250, metadata !719, metadata !DIExpression()), !dbg !749
  %242 = icmp eq i64 %249, %218, !dbg !802
  br i1 %242, label %328, label %243, !dbg !779, !llvm.loop !804

243:                                              ; preds = %241, %217
  %244 = phi i64 [ %249, %241 ], [ 1, %217 ]
  %245 = phi double [ %248, %241 ], [ 1.000000e+280, %217 ]
  %246 = phi double [ %258, %241 ], [ 0x5D48966111CD756, %217 ]
  %247 = phi i64 [ %250, %241 ], [ 0, %217 ]
  call void @llvm.dbg.value(metadata i64 %244, metadata !717, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %245, metadata !722, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %246, metadata !721, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i64 %247, metadata !719, metadata !DIExpression()), !dbg !749
  %248 = fmul double %164, %245, !dbg !806
  call void @llvm.dbg.value(metadata double %248, metadata !722, metadata !DIExpression()), !dbg !749
  %249 = add nuw i64 %244, 1, !dbg !808
  %250 = add i64 %247, %249, !dbg !809
  call void @llvm.dbg.value(metadata i64 %250, metadata !719, metadata !DIExpression()), !dbg !749
  %251 = shl i64 %244, 1, !dbg !810
  %252 = getelementptr double, ptr %165, i64 %251, !dbg !811
  %253 = getelementptr double, ptr %252, i64 -1, !dbg !811
  %254 = load double, ptr %253, align 8, !dbg !811, !tbaa !175
  %255 = fmul double %254, %3, !dbg !812
  %256 = load double, ptr %252, align 8, !dbg !813, !tbaa !175
  %257 = fdiv double %255, %256, !dbg !814
  %258 = fmul double %246, %257, !dbg !815
  call void @llvm.dbg.value(metadata double %258, metadata !721, metadata !DIExpression()), !dbg !749
  %259 = fmul double %248, %258, !dbg !816
  %260 = getelementptr inbounds double, ptr %4, i64 %250, !dbg !817
  store double %259, ptr %260, align 8, !dbg !818, !tbaa !175
  %261 = uitofp i64 %244 to double, !dbg !819
  %262 = fmul double %208, %261, !dbg !820
  %263 = fmul double %262, %259, !dbg !821
  %264 = getelementptr inbounds double, ptr %5, i64 %250, !dbg !822
  store double %263, ptr %264, align 8, !dbg !823, !tbaa !175
  call void @llvm.dbg.value(metadata double %258, metadata !724, metadata !DIExpression()), !dbg !749
  %265 = add i64 %250, %249, !dbg !824
  call void @llvm.dbg.value(metadata i64 %265, metadata !718, metadata !DIExpression()), !dbg !749
  %266 = or disjoint i64 %251, 1, !dbg !825
  %267 = getelementptr inbounds double, ptr %165, i64 %266, !dbg !826
  %268 = load double, ptr %267, align 8, !dbg !826, !tbaa !175
  %269 = fmul double %268, %2, !dbg !827
  %270 = fmul double %258, %269, !dbg !828
  call void @llvm.dbg.value(metadata double %270, metadata !723, metadata !DIExpression()), !dbg !749
  %271 = fmul double %248, %270, !dbg !829
  %272 = getelementptr inbounds double, ptr %4, i64 %265, !dbg !830
  store double %271, ptr %272, align 8, !dbg !831, !tbaa !175
  %273 = fadd double %261, 1.000000e+00, !dbg !832
  %274 = fmul double %273, %2, !dbg !833
  %275 = fmul double %274, %271, !dbg !834
  %276 = load double, ptr %267, align 8, !dbg !835, !tbaa !175
  %277 = load double, ptr %260, align 8, !dbg !836, !tbaa !175
  %278 = fmul double %276, %277, !dbg !837
  %279 = fsub double %275, %278, !dbg !838
  %280 = fmul double %207, %279, !dbg !839
  %281 = getelementptr inbounds double, ptr %5, i64 %265, !dbg !840
  store double %280, ptr %281, align 8, !dbg !841, !tbaa !175
  %282 = add nuw i64 %244, 2, !dbg !842
  call void @llvm.dbg.value(metadata i64 %282, metadata !716, metadata !DIExpression()), !dbg !749
  %283 = getelementptr double, ptr %165, i64 %244, !dbg !844
  %284 = icmp ugt i64 %282, %1, !dbg !845
  br i1 %284, label %241, label %285, !dbg !847

285:                                              ; preds = %243, %285
  %286 = phi i64 [ %326, %285 ], [ %282, %243 ]
  %287 = phi double [ %288, %285 ], [ %258, %243 ]
  %288 = phi double [ %311, %285 ], [ %270, %243 ]
  %289 = phi i64 [ %290, %285 ], [ %265, %243 ]
  call void @llvm.dbg.value(metadata i64 %286, metadata !716, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %287, metadata !724, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %288, metadata !723, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i64 %289, metadata !718, metadata !DIExpression()), !dbg !749
  %290 = add i64 %289, %286, !dbg !848
  call void @llvm.dbg.value(metadata i64 %290, metadata !718, metadata !DIExpression()), !dbg !749
  %291 = shl i64 %286, 1, !dbg !850
  %292 = add i64 %291, -1, !dbg !851
  %293 = uitofp i64 %292 to double, !dbg !852
  %294 = getelementptr double, ptr %283, i64 %286, !dbg !853
  %295 = load double, ptr %294, align 8, !dbg !853, !tbaa !175
  %296 = fdiv double %293, %295, !dbg !854
  %297 = sub i64 %286, %244, !dbg !855
  %298 = getelementptr inbounds double, ptr %165, i64 %297, !dbg !856
  %299 = load double, ptr %298, align 8, !dbg !856, !tbaa !175
  %300 = fdiv double %296, %299, !dbg !857
  %301 = fmul double %300, %2, !dbg !858
  %302 = fmul double %288, %301, !dbg !859
  %303 = getelementptr double, ptr %298, i64 -1, !dbg !860
  %304 = load double, ptr %303, align 8, !dbg !860, !tbaa !175
  %305 = getelementptr double, ptr %294, i64 -1, !dbg !861
  %306 = load double, ptr %305, align 8, !dbg !861, !tbaa !175
  %307 = fmul double %304, %306, !dbg !862
  %308 = fdiv double %307, %295, !dbg !863
  %309 = fdiv double %308, %299, !dbg !864
  %310 = fmul double %287, %309, !dbg !865
  %311 = fsub double %302, %310, !dbg !866
  call void @llvm.dbg.value(metadata double %311, metadata !720, metadata !DIExpression()), !dbg !749
  %312 = fmul double %248, %311, !dbg !867
  %313 = getelementptr inbounds double, ptr %4, i64 %290, !dbg !868
  store double %312, ptr %313, align 8, !dbg !869, !tbaa !175
  %314 = uitofp i64 %286 to double, !dbg !870
  %315 = fmul double %314, %2, !dbg !871
  %316 = fmul double %315, %312, !dbg !872
  %317 = load double, ptr %294, align 8, !dbg !873, !tbaa !175
  %318 = load double, ptr %298, align 8, !dbg !874, !tbaa !175
  %319 = fmul double %317, %318, !dbg !875
  %320 = getelementptr inbounds double, ptr %4, i64 %289, !dbg !876
  %321 = load double, ptr %320, align 8, !dbg !876, !tbaa !175
  %322 = fmul double %319, %321, !dbg !877
  %323 = fsub double %316, %322, !dbg !878
  %324 = fmul double %207, %323, !dbg !879
  %325 = getelementptr inbounds double, ptr %5, i64 %290, !dbg !880
  store double %324, ptr %325, align 8, !dbg !881, !tbaa !175
  call void @llvm.dbg.value(metadata double %288, metadata !724, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata double %311, metadata !723, metadata !DIExpression()), !dbg !749
  %326 = add i64 %286, 1, !dbg !882
  call void @llvm.dbg.value(metadata i64 %326, metadata !716, metadata !DIExpression()), !dbg !749
  %327 = icmp ugt i64 %326, %1, !dbg !845
  br i1 %327, label %241, label %285, !dbg !847, !llvm.loop !883

328:                                              ; preds = %241
  %329 = add i64 %218, 1, !dbg !885
  %330 = add i64 %329, %250, !dbg !886
  br label %331, !dbg !886

331:                                              ; preds = %328, %210
  %332 = phi double [ %258, %328 ], [ 0x5D48966111CD756, %210 ], !dbg !749
  %333 = phi double [ %248, %328 ], [ 1.000000e+280, %210 ], !dbg !749
  %334 = phi i64 [ %330, %328 ], [ 2, %210 ], !dbg !887
  %335 = fmul double %164, %333, !dbg !886
  call void @llvm.dbg.value(metadata double %335, metadata !722, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i64 %334, metadata !719, metadata !DIExpression()), !dbg !749
  %336 = getelementptr double, ptr %165, i64 %166, !dbg !888
  %337 = getelementptr double, ptr %336, i64 -1, !dbg !888
  %338 = load double, ptr %337, align 8, !dbg !888, !tbaa !175
  %339 = fmul double %338, %3, !dbg !889
  %340 = load double, ptr %336, align 8, !dbg !890, !tbaa !175
  %341 = fdiv double %339, %340, !dbg !891
  %342 = fmul double %332, %341, !dbg !892
  call void @llvm.dbg.value(metadata double %342, metadata !721, metadata !DIExpression()), !dbg !749
  %343 = fmul double %335, %342, !dbg !893
  %344 = getelementptr inbounds double, ptr %4, i64 %334, !dbg !894
  store double %343, ptr %344, align 8, !dbg !895, !tbaa !175
  %345 = uitofp i64 %1 to double, !dbg !896
  %346 = fmul double %208, %345, !dbg !897
  %347 = fmul double %346, %343, !dbg !898
  %348 = getelementptr inbounds double, ptr %5, i64 %334, !dbg !899
  store double %347, ptr %348, align 8, !dbg !900, !tbaa !175
  br label %349, !dbg !901

349:                                              ; preds = %331, %206, %162, %157, %153, %139, %30, %29, %24, %20
  %350 = phi i32 [ 1, %20 ], [ 1, %24 ], [ 1, %29 ], [ 0, %30 ], [ 0, %139 ], [ 1, %153 ], [ 1, %157 ], [ 1, %162 ], [ 0, %206 ], [ 0, %331 ], !dbg !529
  tail call void @llvm.dbg.value(metadata i32 %350, metadata !504, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata i64 0, metadata !506, metadata !DIExpression()), !dbg !516
  %351 = icmp ult i64 %9, 2, !dbg !902
  br i1 %351, label %392, label %352, !dbg !905

352:                                              ; preds = %349
  %353 = fdiv double -1.000000e+00, %14
  %354 = tail call i64 @llvm.umax.i64(i64 %10, i64 1), !dbg !905
  %355 = and i64 %354, 3, !dbg !905
  %356 = icmp ult i64 %9, 8, !dbg !905
  br i1 %356, label %380, label %357, !dbg !905

357:                                              ; preds = %352
  %358 = and i64 %354, 9223372036854775804, !dbg !905
  br label %359, !dbg !905

359:                                              ; preds = %359, %357
  %360 = phi i64 [ 0, %357 ], [ %377, %359 ]
  %361 = phi i64 [ 0, %357 ], [ %378, %359 ]
  tail call void @llvm.dbg.value(metadata i64 %360, metadata !506, metadata !DIExpression()), !dbg !516
  %362 = getelementptr inbounds double, ptr %5, i64 %360, !dbg !906
  %363 = load double, ptr %362, align 8, !dbg !908, !tbaa !175
  %364 = fmul double %353, %363, !dbg !908
  store double %364, ptr %362, align 8, !dbg !908, !tbaa !175
  %365 = or disjoint i64 %360, 1, !dbg !909
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !506, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !506, metadata !DIExpression()), !dbg !516
  %366 = getelementptr inbounds double, ptr %5, i64 %365, !dbg !906
  %367 = load double, ptr %366, align 8, !dbg !908, !tbaa !175
  %368 = fmul double %353, %367, !dbg !908
  store double %368, ptr %366, align 8, !dbg !908, !tbaa !175
  %369 = or disjoint i64 %360, 2, !dbg !909
  tail call void @llvm.dbg.value(metadata i64 %369, metadata !506, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata i64 %369, metadata !506, metadata !DIExpression()), !dbg !516
  %370 = getelementptr inbounds double, ptr %5, i64 %369, !dbg !906
  %371 = load double, ptr %370, align 8, !dbg !908, !tbaa !175
  %372 = fmul double %353, %371, !dbg !908
  store double %372, ptr %370, align 8, !dbg !908, !tbaa !175
  %373 = or disjoint i64 %360, 3, !dbg !909
  tail call void @llvm.dbg.value(metadata i64 %373, metadata !506, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata i64 %373, metadata !506, metadata !DIExpression()), !dbg !516
  %374 = getelementptr inbounds double, ptr %5, i64 %373, !dbg !906
  %375 = load double, ptr %374, align 8, !dbg !908, !tbaa !175
  %376 = fmul double %353, %375, !dbg !908
  store double %376, ptr %374, align 8, !dbg !908, !tbaa !175
  %377 = add nuw nsw i64 %360, 4, !dbg !909
  tail call void @llvm.dbg.value(metadata i64 %377, metadata !506, metadata !DIExpression()), !dbg !516
  %378 = add i64 %361, 4, !dbg !905
  %379 = icmp eq i64 %378, %358, !dbg !905
  br i1 %379, label %380, label %359, !dbg !905, !llvm.loop !910

380:                                              ; preds = %359, %352
  %381 = phi i64 [ 0, %352 ], [ %377, %359 ]
  %382 = icmp eq i64 %355, 0, !dbg !905
  br i1 %382, label %392, label %383, !dbg !905

383:                                              ; preds = %380, %383
  %384 = phi i64 [ %389, %383 ], [ %381, %380 ]
  %385 = phi i64 [ %390, %383 ], [ 0, %380 ]
  tail call void @llvm.dbg.value(metadata i64 %384, metadata !506, metadata !DIExpression()), !dbg !516
  %386 = getelementptr inbounds double, ptr %5, i64 %384, !dbg !906
  %387 = load double, ptr %386, align 8, !dbg !908, !tbaa !175
  %388 = fmul double %353, %387, !dbg !908
  store double %388, ptr %386, align 8, !dbg !908, !tbaa !175
  %389 = add nuw nsw i64 %384, 1, !dbg !909
  tail call void @llvm.dbg.value(metadata i64 %389, metadata !506, metadata !DIExpression()), !dbg !516
  %390 = add i64 %385, 1, !dbg !905
  %391 = icmp eq i64 %390, %355, !dbg !905
  br i1 %391, label %392, label %383, !dbg !905, !llvm.loop !912

392:                                              ; preds = %380, %383, %349
  switch i32 %0, label %394 [
    i32 3, label %438
    i32 0, label %438
    i32 1, label %395
    i32 2, label %393
  ], !dbg !913

393:                                              ; preds = %392
  tail call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCC, metadata !509, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !510, metadata !DIExpression()), !dbg !516
  br label %395, !dbg !915

394:                                              ; preds = %392
  br label %395, !dbg !919

395:                                              ; preds = %392, %394, %393
  %396 = phi double [ 0x3FE6A09E667F3BCC, %393 ], [ 0x3FD20DD750429B6D, %392 ], [ 0.000000e+00, %394 ], !dbg !516
  %397 = phi double [ 5.000000e-01, %393 ], [ 0x3FC9884533D43651, %392 ], [ 0.000000e+00, %394 ], !dbg !516
  tail call void @llvm.dbg.value(metadata double %397, metadata !510, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata double %396, metadata !509, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata i64 1, metadata !514, metadata !DIExpression()), !dbg !920
  %398 = getelementptr inbounds double, ptr %4, i64 %10, !dbg !919
  tail call void @llvm.dbg.value(metadata ptr %398, metadata !515, metadata !DIExpression()), !dbg !920
  tail call void @llvm.dbg.value(metadata i64 0, metadata !511, metadata !DIExpression()), !dbg !920
  %399 = tail call i64 @llvm.umax.i64(i64 %7, i64 1), !dbg !921
  br label %400, !dbg !921

400:                                              ; preds = %395, %434
  %401 = phi i64 [ 1, %395 ], [ %436, %434 ]
  %402 = phi i64 [ 1, %395 ], [ %435, %434 ]
  %403 = phi i64 [ 0, %395 ], [ %407, %434 ]
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !514, metadata !DIExpression()), !dbg !920
  tail call void @llvm.dbg.value(metadata i64 %403, metadata !511, metadata !DIExpression()), !dbg !920
  %404 = getelementptr inbounds double, ptr %398, i64 %402, !dbg !923
  %405 = load double, ptr %404, align 8, !dbg !923, !tbaa !175
  %406 = fmul double %396, %405, !dbg !926
  tail call void @llvm.dbg.value(metadata i64 %403, metadata !433, metadata !DIExpression()), !dbg !927
  tail call void @llvm.dbg.value(metadata i64 0, metadata !438, metadata !DIExpression()), !dbg !927
  %407 = add nuw i64 %403, 1, !dbg !929
  %408 = mul i64 %407, %403, !dbg !930
  %409 = lshr i64 %408, 1, !dbg !931
  %410 = getelementptr inbounds double, ptr %4, i64 %409, !dbg !932
  %411 = load double, ptr %410, align 8, !dbg !933, !tbaa !175
  %412 = fmul double %411, %406, !dbg !933
  store double %412, ptr %410, align 8, !dbg !933, !tbaa !175
  %413 = load double, ptr %404, align 8, !dbg !934, !tbaa !175
  %414 = fmul double %396, %413, !dbg !935
  tail call void @llvm.dbg.value(metadata i64 %403, metadata !433, metadata !DIExpression()), !dbg !936
  tail call void @llvm.dbg.value(metadata i64 0, metadata !438, metadata !DIExpression()), !dbg !936
  %415 = getelementptr inbounds double, ptr %5, i64 %409, !dbg !938
  %416 = load double, ptr %415, align 8, !dbg !939, !tbaa !175
  %417 = fmul double %416, %414, !dbg !939
  store double %417, ptr %415, align 8, !dbg !939, !tbaa !175
  tail call void @llvm.dbg.value(metadata i64 1, metadata !513, metadata !DIExpression()), !dbg !920
  %418 = icmp eq i64 %403, 0, !dbg !940
  br i1 %418, label %434, label %419, !dbg !943

419:                                              ; preds = %400, %419
  %420 = phi i64 [ %432, %419 ], [ 1, %400 ]
  tail call void @llvm.dbg.value(metadata i64 %420, metadata !513, metadata !DIExpression()), !dbg !920
  %421 = load double, ptr %404, align 8, !dbg !944, !tbaa !175
  %422 = fmul double %397, %421, !dbg !946
  tail call void @llvm.dbg.value(metadata i64 %403, metadata !433, metadata !DIExpression()), !dbg !947
  tail call void @llvm.dbg.value(metadata i64 %420, metadata !438, metadata !DIExpression()), !dbg !947
  %423 = add i64 %420, %409, !dbg !949
  %424 = getelementptr inbounds double, ptr %4, i64 %423, !dbg !950
  %425 = load double, ptr %424, align 8, !dbg !951, !tbaa !175
  %426 = fmul double %425, %422, !dbg !951
  store double %426, ptr %424, align 8, !dbg !951, !tbaa !175
  %427 = load double, ptr %404, align 8, !dbg !952, !tbaa !175
  %428 = fmul double %397, %427, !dbg !953
  tail call void @llvm.dbg.value(metadata i64 %403, metadata !433, metadata !DIExpression()), !dbg !954
  tail call void @llvm.dbg.value(metadata i64 %420, metadata !438, metadata !DIExpression()), !dbg !954
  %429 = getelementptr inbounds double, ptr %5, i64 %423, !dbg !956
  %430 = load double, ptr %429, align 8, !dbg !957, !tbaa !175
  %431 = fmul double %430, %428, !dbg !957
  store double %431, ptr %429, align 8, !dbg !957, !tbaa !175
  %432 = add nuw i64 %420, 1, !dbg !958
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !513, metadata !DIExpression()), !dbg !920
  %433 = icmp eq i64 %432, %401, !dbg !940
  br i1 %433, label %434, label %419, !dbg !943, !llvm.loop !959

434:                                              ; preds = %419, %400
  %435 = add i64 %402, 2, !dbg !961
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !514, metadata !DIExpression()), !dbg !920
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !511, metadata !DIExpression()), !dbg !920
  %436 = add i64 %401, 1, !dbg !921
  %437 = icmp eq i64 %407, %399, !dbg !962
  br i1 %437, label %438, label %400, !dbg !921, !llvm.loop !963

438:                                              ; preds = %434, %392, %392
  ret i32 %350, !dbg !965
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv_alt_array(i32 noundef %0, i64 noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !dbg !966 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !968, metadata !DIExpression()), !dbg !974
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !969, metadata !DIExpression()), !dbg !974
  tail call void @llvm.dbg.value(metadata double %2, metadata !970, metadata !DIExpression()), !dbg !974
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !971, metadata !DIExpression()), !dbg !974
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !972, metadata !DIExpression()), !dbg !974
  %6 = tail call i32 @gsl_sf_legendre_deriv_alt_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4), !dbg !975, !range !99
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !973, metadata !DIExpression()), !dbg !974
  ret i32 %6, !dbg !976
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv_alt_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 !dbg !977 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !979, metadata !DIExpression()), !dbg !994
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !980, metadata !DIExpression()), !dbg !994
  tail call void @llvm.dbg.value(metadata double %2, metadata !981, metadata !DIExpression()), !dbg !994
  tail call void @llvm.dbg.value(metadata double %3, metadata !982, metadata !DIExpression()), !dbg !994
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !983, metadata !DIExpression()), !dbg !994
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !984, metadata !DIExpression()), !dbg !994
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !995
  %7 = add i64 %1, 1, !dbg !997
  %8 = add i64 %1, 2, !dbg !998
  %9 = mul i64 %7, %8, !dbg !999
  %10 = lshr i64 %9, 1, !dbg !1000
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !986, metadata !DIExpression()), !dbg !994
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !987, metadata !DIExpression()), !dbg !994
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !988, metadata !DIExpression()), !dbg !994
  %11 = icmp eq i32 %0, 3, !dbg !1001
  %12 = fcmp ogt double %2, 1.000000e+00, !dbg !1003
  %13 = fcmp olt double %2, -1.000000e+00
  %14 = or i1 %12, %13, !dbg !1003
  br i1 %11, label %15, label %151, !dbg !1004

15:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %1, metadata !1005, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata double %2, metadata !1008, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata double %3, metadata !1009, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr %4, metadata !1010, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr %5, metadata !1011, metadata !DIExpression()), !dbg !1028
  br i1 %14, label %16, label %17, !dbg !1031

16:                                               ; preds = %15
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 1) #6, !dbg !1032
  br label %398, !dbg !1032

17:                                               ; preds = %15
  %18 = tail call double @llvm.fabs.f64(double %2), !dbg !1035
  %19 = fcmp oeq double %18, 1.000000e+00, !dbg !1036
  br i1 %19, label %20, label %21, !dbg !1037

20:                                               ; preds = %17
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 435, i32 noundef 1) #6, !dbg !1038
  br label %398, !dbg !1038

21:                                               ; preds = %17
  %22 = fcmp une double %3, 1.000000e+00, !dbg !1041
  %23 = fcmp une double %3, -1.000000e+00
  %24 = and i1 %22, %23, !dbg !1042
  br i1 %24, label %25, label %26, !dbg !1042

25:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 1) #6, !dbg !1043
  br label %398, !dbg !1043

26:                                               ; preds = %21
  %27 = fsub double 1.000000e+00, %2, !dbg !1046
  %28 = fadd double %2, 1.000000e+00, !dbg !1047
  %29 = fmul double %27, %28, !dbg !1048
  %30 = tail call double @sqrt(double noundef %29) #6, !dbg !1049
  call void @llvm.dbg.value(metadata double %30, metadata !1012, metadata !DIExpression()), !dbg !1050
  %31 = fdiv double 1.000000e+00, %30, !dbg !1051
  call void @llvm.dbg.value(metadata double %31, metadata !1017, metadata !DIExpression()), !dbg !1050
  %32 = fmul double %31, %2, !dbg !1052
  call void @llvm.dbg.value(metadata double %32, metadata !1018, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1026, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata double %2, metadata !1025, metadata !DIExpression()), !dbg !1050
  store double 1.000000e+00, ptr %4, align 8, !dbg !1053, !tbaa !175
  store double 0.000000e+00, ptr %5, align 8, !dbg !1054, !tbaa !175
  %33 = icmp eq i64 %1, 0, !dbg !1055
  br i1 %33, label %398, label %34, !dbg !1057

34:                                               ; preds = %26
  %35 = getelementptr inbounds double, ptr %4, i64 1, !dbg !1058
  store double %2, ptr %35, align 8, !dbg !1059, !tbaa !175
  %36 = fneg double %30, !dbg !1060
  %37 = getelementptr inbounds double, ptr %5, i64 1, !dbg !1061
  store double %36, ptr %37, align 8, !dbg !1062, !tbaa !175
  call void @llvm.dbg.value(metadata i64 1, metadata !1021, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 2, metadata !1019, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1026, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata double %2, metadata !1025, metadata !DIExpression()), !dbg !1050
  %38 = icmp eq i64 %1, 1, !dbg !1063
  br i1 %38, label %44, label %39, !dbg !1066

39:                                               ; preds = %34
  %40 = tail call i64 @llvm.umax.i64(i64 %7, i64 3), !dbg !1066
  br label %46, !dbg !1066

41:                                               ; preds = %46
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !1027, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1024, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 0, metadata !1022, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 1, metadata !1020, metadata !DIExpression()), !dbg !1050
  %42 = fmul double %30, %3
  %43 = fneg double %31
  br label %74, !dbg !1067

44:                                               ; preds = %34
  %45 = fmul double %30, %3, !dbg !1069
  br label %138, !dbg !1067

46:                                               ; preds = %46, %39
  %47 = phi double [ %48, %46 ], [ 1.000000e+00, %39 ]
  %48 = phi double [ %62, %46 ], [ %2, %39 ]
  %49 = phi i64 [ %51, %46 ], [ 1, %39 ]
  %50 = phi i64 [ %70, %46 ], [ 2, %39 ]
  call void @llvm.dbg.value(metadata double %47, metadata !1026, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata double %48, metadata !1025, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %49, metadata !1021, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %50, metadata !1019, metadata !DIExpression()), !dbg !1050
  %51 = add i64 %50, %49, !dbg !1070
  call void @llvm.dbg.value(metadata i64 %51, metadata !1021, metadata !DIExpression()), !dbg !1050
  %52 = shl i64 %50, 1, !dbg !1072
  %53 = add i64 %52, -1, !dbg !1073
  %54 = uitofp i64 %53 to double, !dbg !1074
  %55 = fmul double %54, %2, !dbg !1075
  %56 = fmul double %48, %55, !dbg !1076
  %57 = add i64 %50, -1, !dbg !1077
  %58 = uitofp i64 %57 to double, !dbg !1078
  %59 = fmul double %47, %58, !dbg !1079
  %60 = fsub double %56, %59, !dbg !1080
  %61 = uitofp i64 %50 to double, !dbg !1081
  %62 = fdiv double %60, %61, !dbg !1082
  call void @llvm.dbg.value(metadata double %62, metadata !1023, metadata !DIExpression()), !dbg !1050
  %63 = getelementptr inbounds double, ptr %4, i64 %51, !dbg !1083
  store double %62, ptr %63, align 8, !dbg !1084, !tbaa !175
  %64 = fneg double %61, !dbg !1085
  %65 = fmul double %62, %2, !dbg !1086
  %66 = fsub double %48, %65, !dbg !1087
  %67 = fmul double %66, %64, !dbg !1088
  %68 = fmul double %31, %67, !dbg !1089
  %69 = getelementptr inbounds double, ptr %5, i64 %51, !dbg !1090
  store double %68, ptr %69, align 8, !dbg !1091, !tbaa !175
  call void @llvm.dbg.value(metadata double %48, metadata !1026, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata double %62, metadata !1025, metadata !DIExpression()), !dbg !1050
  %70 = add nuw i64 %50, 1, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %70, metadata !1019, metadata !DIExpression()), !dbg !1050
  %71 = icmp eq i64 %70, %40, !dbg !1063
  br i1 %71, label %41, label %46, !dbg !1066, !llvm.loop !1093

72:                                               ; preds = %105, %74
  call void @llvm.dbg.value(metadata double %81, metadata !1027, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata double %83, metadata !1024, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %80, metadata !1022, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %79, metadata !1020, metadata !DIExpression()), !dbg !1050
  %73 = icmp eq i64 %79, %1, !dbg !1095
  br i1 %73, label %135, label %74, !dbg !1067, !llvm.loop !1097

74:                                               ; preds = %72, %41
  %75 = phi double [ -1.000000e+00, %41 ], [ %81, %72 ]
  %76 = phi double [ 1.000000e+00, %41 ], [ %83, %72 ]
  %77 = phi i64 [ 0, %41 ], [ %80, %72 ]
  %78 = phi i64 [ 1, %41 ], [ %79, %72 ]
  call void @llvm.dbg.value(metadata double %75, metadata !1027, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata double %76, metadata !1024, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %77, metadata !1022, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %78, metadata !1020, metadata !DIExpression()), !dbg !1050
  %79 = add nuw i64 %78, 1, !dbg !1099
  %80 = add i64 %79, %77, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %80, metadata !1022, metadata !DIExpression()), !dbg !1050
  %81 = fadd double %75, 2.000000e+00, !dbg !1102
  call void @llvm.dbg.value(metadata double %81, metadata !1027, metadata !DIExpression()), !dbg !1050
  %82 = fmul double %42, %81, !dbg !1103
  %83 = fmul double %76, %82, !dbg !1104
  call void @llvm.dbg.value(metadata double %83, metadata !1024, metadata !DIExpression()), !dbg !1050
  %84 = getelementptr inbounds double, ptr %4, i64 %80, !dbg !1105
  store double %83, ptr %84, align 8, !dbg !1106, !tbaa !175
  %85 = uitofp i64 %78 to double, !dbg !1107
  %86 = fmul double %32, %85, !dbg !1108
  %87 = fmul double %83, %86, !dbg !1109
  %88 = getelementptr inbounds double, ptr %5, i64 %80, !dbg !1110
  store double %87, ptr %88, align 8, !dbg !1111, !tbaa !175
  call void @llvm.dbg.value(metadata double %83, metadata !1026, metadata !DIExpression()), !dbg !1050
  %89 = add i64 %80, %79, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %89, metadata !1021, metadata !DIExpression()), !dbg !1050
  %90 = fmul double %83, %2, !dbg !1113
  %91 = shl i64 %78, 1, !dbg !1114
  %92 = or disjoint i64 %91, 1, !dbg !1115
  %93 = uitofp i64 %92 to double, !dbg !1116
  %94 = fmul double %90, %93, !dbg !1117
  call void @llvm.dbg.value(metadata double %94, metadata !1025, metadata !DIExpression()), !dbg !1050
  %95 = getelementptr inbounds double, ptr %4, i64 %89, !dbg !1118
  store double %94, ptr %95, align 8, !dbg !1119, !tbaa !175
  %96 = fmul double %83, %93, !dbg !1120
  %97 = uitofp i64 %79 to double, !dbg !1121
  %98 = fmul double %97, %2, !dbg !1122
  %99 = fmul double %98, %94, !dbg !1123
  %100 = fsub double %96, %99, !dbg !1124
  %101 = fmul double %100, %43, !dbg !1125
  %102 = getelementptr inbounds double, ptr %5, i64 %89, !dbg !1126
  store double %101, ptr %102, align 8, !dbg !1127, !tbaa !175
  %103 = add i64 %78, 2, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %103, metadata !1019, metadata !DIExpression()), !dbg !1050
  %104 = icmp ugt i64 %103, %1, !dbg !1130
  br i1 %104, label %72, label %105, !dbg !1132

105:                                              ; preds = %74, %105
  %106 = phi double [ %107, %105 ], [ %83, %74 ]
  %107 = phi double [ %123, %105 ], [ %94, %74 ]
  %108 = phi i64 [ %110, %105 ], [ %89, %74 ]
  %109 = phi i64 [ %133, %105 ], [ %103, %74 ]
  call void @llvm.dbg.value(metadata double %106, metadata !1026, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata double %107, metadata !1025, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %108, metadata !1021, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %109, metadata !1019, metadata !DIExpression()), !dbg !1050
  %110 = add i64 %109, %108, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %110, metadata !1021, metadata !DIExpression()), !dbg !1050
  %111 = shl i64 %109, 1, !dbg !1135
  %112 = add i64 %111, -1, !dbg !1136
  %113 = uitofp i64 %112 to double, !dbg !1137
  %114 = fmul double %113, %2, !dbg !1138
  %115 = fmul double %107, %114, !dbg !1139
  %116 = add i64 %109, %78, !dbg !1140
  %117 = add i64 %116, -1, !dbg !1141
  %118 = uitofp i64 %117 to double, !dbg !1142
  %119 = fmul double %106, %118, !dbg !1143
  %120 = fsub double %115, %119, !dbg !1144
  %121 = sub i64 %109, %78, !dbg !1145
  %122 = uitofp i64 %121 to double, !dbg !1146
  %123 = fdiv double %120, %122, !dbg !1147
  call void @llvm.dbg.value(metadata double %123, metadata !1023, metadata !DIExpression()), !dbg !1050
  %124 = getelementptr inbounds double, ptr %4, i64 %110, !dbg !1148
  store double %123, ptr %124, align 8, !dbg !1149, !tbaa !175
  %125 = uitofp i64 %116 to double, !dbg !1150
  %126 = fmul double %107, %125, !dbg !1151
  %127 = uitofp i64 %109 to double, !dbg !1152
  %128 = fmul double %127, %2, !dbg !1153
  %129 = fmul double %128, %123, !dbg !1154
  %130 = fsub double %126, %129, !dbg !1155
  %131 = fmul double %130, %43, !dbg !1156
  %132 = getelementptr inbounds double, ptr %5, i64 %110, !dbg !1157
  store double %131, ptr %132, align 8, !dbg !1158, !tbaa !175
  call void @llvm.dbg.value(metadata double %107, metadata !1026, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata double %123, metadata !1025, metadata !DIExpression()), !dbg !1050
  %133 = add i64 %109, 1, !dbg !1159
  call void @llvm.dbg.value(metadata i64 %133, metadata !1019, metadata !DIExpression()), !dbg !1050
  %134 = icmp ugt i64 %133, %1, !dbg !1130
  br i1 %134, label %72, label %105, !dbg !1132, !llvm.loop !1160

135:                                              ; preds = %72
  %136 = add i64 %80, %7, !dbg !1162
  %137 = fadd double %81, 2.000000e+00, !dbg !1163
  br label %138, !dbg !1162

138:                                              ; preds = %135, %44
  %139 = phi double [ %45, %44 ], [ %42, %135 ], !dbg !1069
  %140 = phi double [ 1.000000e+00, %44 ], [ %83, %135 ], !dbg !1050
  %141 = phi double [ 1.000000e+00, %44 ], [ %137, %135 ], !dbg !1050
  %142 = phi i64 [ 2, %44 ], [ %136, %135 ], !dbg !1164
  call void @llvm.dbg.value(metadata i64 %142, metadata !1022, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata double %141, metadata !1027, metadata !DIExpression()), !dbg !1050
  %143 = fmul double %139, %141, !dbg !1165
  %144 = fmul double %140, %143, !dbg !1166
  call void @llvm.dbg.value(metadata double %144, metadata !1024, metadata !DIExpression()), !dbg !1050
  %145 = getelementptr inbounds double, ptr %4, i64 %142, !dbg !1167
  store double %144, ptr %145, align 8, !dbg !1168, !tbaa !175
  %146 = uitofp i64 %1 to double, !dbg !1169
  %147 = fmul double %146, %2, !dbg !1170
  %148 = fmul double %147, %144, !dbg !1171
  %149 = fmul double %31, %148, !dbg !1172
  %150 = getelementptr inbounds double, ptr %5, i64 %142, !dbg !1173
  store double %149, ptr %150, align 8, !dbg !1174, !tbaa !175
  br label %351, !dbg !1175

151:                                              ; preds = %6
  call void @llvm.dbg.value(metadata i64 %1, metadata !1176, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata double %2, metadata !1179, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata double %3, metadata !1180, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata ptr %4, metadata !1181, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata ptr %5, metadata !1182, metadata !DIExpression()), !dbg !1206
  br i1 %14, label %152, label %153, !dbg !1209

152:                                              ; preds = %151
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 222, i32 noundef 1) #6, !dbg !1210
  br label %351, !dbg !1210

153:                                              ; preds = %151
  %154 = tail call double @llvm.fabs.f64(double %2), !dbg !1213
  %155 = fcmp oeq double %154, 1.000000e+00, !dbg !1214
  br i1 %155, label %156, label %157, !dbg !1215

156:                                              ; preds = %153
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 227, i32 noundef 1) #6, !dbg !1216
  br label %351, !dbg !1216

157:                                              ; preds = %153
  %158 = fcmp une double %3, 1.000000e+00, !dbg !1219
  %159 = fcmp une double %3, -1.000000e+00
  %160 = and i1 %158, %159, !dbg !1220
  br i1 %160, label %161, label %162, !dbg !1220

161:                                              ; preds = %157
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 232, i32 noundef 1) #6, !dbg !1221
  br label %351, !dbg !1221

162:                                              ; preds = %157
  call void @llvm.dbg.value(metadata double 0x5CD0B15A491EB84, metadata !1183, metadata !DIExpression()), !dbg !1224
  %163 = fsub double 1.000000e+00, %2, !dbg !1225
  %164 = fadd double %2, 1.000000e+00, !dbg !1226
  %165 = fmul double %163, %164, !dbg !1227
  %166 = tail call double @sqrt(double noundef %165) #6, !dbg !1228
  call void @llvm.dbg.value(metadata double %166, metadata !1188, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %209, metadata !1189, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %210, metadata !1190, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %10, metadata !1200, metadata !DIExpression()), !dbg !1224
  %167 = getelementptr inbounds double, ptr %4, i64 %10, !dbg !1231
  call void @llvm.dbg.value(metadata ptr %167, metadata !1201, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %1, metadata !306, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata ptr %167, metadata !311, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i64 0, metadata !312, metadata !DIExpression()), !dbg !1232
  %168 = shl i64 %1, 1
  %169 = add i64 %168, 2, !dbg !1234
  %170 = tail call i64 @llvm.umax.i64(i64 %169, i64 1), !dbg !1234
  %171 = and i64 %170, 3, !dbg !1234
  %172 = icmp ult i64 %169, 4, !dbg !1234
  br i1 %172, label %196, label %173, !dbg !1234

173:                                              ; preds = %162
  %174 = and i64 %170, -4, !dbg !1234
  br label %175, !dbg !1234

175:                                              ; preds = %175, %173
  %176 = phi i64 [ 0, %173 ], [ %193, %175 ]
  %177 = phi i64 [ 0, %173 ], [ %194, %175 ]
  call void @llvm.dbg.value(metadata i64 %176, metadata !312, metadata !DIExpression()), !dbg !1232
  %178 = uitofp i64 %176 to double, !dbg !1235
  %179 = tail call double @llvm.sqrt.f64(double %178), !dbg !1236
  %180 = getelementptr inbounds double, ptr %167, i64 %176, !dbg !1237
  store double %179, ptr %180, align 8, !dbg !1238, !tbaa !175
  %181 = or disjoint i64 %176, 1, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %181, metadata !312, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %181, metadata !312, metadata !DIExpression()), !dbg !1232
  %182 = uitofp i64 %181 to double, !dbg !1235
  %183 = tail call double @llvm.sqrt.f64(double %182), !dbg !1236
  %184 = getelementptr inbounds double, ptr %167, i64 %181, !dbg !1237
  store double %183, ptr %184, align 8, !dbg !1238, !tbaa !175
  %185 = or disjoint i64 %176, 2, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %185, metadata !312, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %185, metadata !312, metadata !DIExpression()), !dbg !1232
  %186 = uitofp i64 %185 to double, !dbg !1235
  %187 = tail call double @llvm.sqrt.f64(double %186), !dbg !1236
  %188 = getelementptr inbounds double, ptr %167, i64 %185, !dbg !1237
  store double %187, ptr %188, align 8, !dbg !1238, !tbaa !175
  %189 = or disjoint i64 %176, 3, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %189, metadata !312, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %189, metadata !312, metadata !DIExpression()), !dbg !1232
  %190 = uitofp i64 %189 to double, !dbg !1235
  %191 = tail call double @llvm.sqrt.f64(double %190), !dbg !1236
  %192 = getelementptr inbounds double, ptr %167, i64 %189, !dbg !1237
  store double %191, ptr %192, align 8, !dbg !1238, !tbaa !175
  %193 = add nuw i64 %176, 4, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %193, metadata !312, metadata !DIExpression()), !dbg !1232
  %194 = add i64 %177, 4, !dbg !1234
  %195 = icmp eq i64 %194, %174, !dbg !1234
  br i1 %195, label %196, label %175, !dbg !1234, !llvm.loop !1240

196:                                              ; preds = %175, %162
  %197 = phi i64 [ 0, %162 ], [ %193, %175 ]
  %198 = icmp eq i64 %171, 0, !dbg !1234
  br i1 %198, label %208, label %199, !dbg !1234

199:                                              ; preds = %196, %199
  %200 = phi i64 [ %205, %199 ], [ %197, %196 ]
  %201 = phi i64 [ %206, %199 ], [ 0, %196 ]
  call void @llvm.dbg.value(metadata i64 %200, metadata !312, metadata !DIExpression()), !dbg !1232
  %202 = uitofp i64 %200 to double, !dbg !1235
  %203 = tail call double @llvm.sqrt.f64(double %202), !dbg !1236
  %204 = getelementptr inbounds double, ptr %167, i64 %200, !dbg !1237
  store double %203, ptr %204, align 8, !dbg !1238, !tbaa !175
  %205 = add nuw i64 %200, 1, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %205, metadata !312, metadata !DIExpression()), !dbg !1232
  %206 = add i64 %201, 1, !dbg !1234
  %207 = icmp eq i64 %206, %171, !dbg !1234
  br i1 %207, label %208, label %199, !dbg !1234, !llvm.loop !1242

208:                                              ; preds = %199, %196
  %209 = fdiv double 1.000000e+00, %166, !dbg !1243
  %210 = fmul double %209, %2, !dbg !1244
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1199, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %2, metadata !1198, metadata !DIExpression()), !dbg !1224
  store double 1.000000e+00, ptr %4, align 8, !dbg !1245, !tbaa !175
  store double 0.000000e+00, ptr %5, align 8, !dbg !1246, !tbaa !175
  %211 = icmp eq i64 %1, 0, !dbg !1247
  br i1 %211, label %351, label %212, !dbg !1249

212:                                              ; preds = %208
  %213 = getelementptr inbounds double, ptr %4, i64 1, !dbg !1250
  store double %2, ptr %213, align 8, !dbg !1251, !tbaa !175
  %214 = fneg double %166, !dbg !1252
  %215 = getelementptr inbounds double, ptr %5, i64 1, !dbg !1253
  store double %214, ptr %215, align 8, !dbg !1254, !tbaa !175
  call void @llvm.dbg.value(metadata i64 1, metadata !1193, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 2, metadata !1191, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1199, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %2, metadata !1198, metadata !DIExpression()), !dbg !1224
  %216 = icmp eq i64 %1, 1, !dbg !1255
  br i1 %216, label %333, label %217, !dbg !1256

217:                                              ; preds = %212
  %218 = tail call i64 @llvm.umax.i64(i64 %7, i64 3), !dbg !1256
  br label %221, !dbg !1256

219:                                              ; preds = %221
  call void @llvm.dbg.value(metadata i64 1, metadata !1192, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double 1.000000e+280, metadata !1197, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double 0x5D48966111CD756, metadata !1196, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 0, metadata !1194, metadata !DIExpression()), !dbg !1224
  %220 = tail call i64 @llvm.umax.i64(i64 %1, i64 2), !dbg !1257
  br label %245, !dbg !1257

221:                                              ; preds = %221, %217
  %222 = phi i64 [ %241, %221 ], [ 2, %217 ]
  %223 = phi double [ %224, %221 ], [ 1.000000e+00, %217 ]
  %224 = phi double [ %234, %221 ], [ %2, %217 ]
  %225 = phi i64 [ %228, %221 ], [ 1, %217 ]
  call void @llvm.dbg.value(metadata i64 %222, metadata !1191, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %223, metadata !1199, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %224, metadata !1198, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %225, metadata !1193, metadata !DIExpression()), !dbg !1224
  %226 = uitofp i64 %222 to double, !dbg !1259
  %227 = fdiv double 1.000000e+00, %226, !dbg !1260
  call void @llvm.dbg.value(metadata double %227, metadata !1202, metadata !DIExpression()), !dbg !1261
  %228 = add i64 %225, %222, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %228, metadata !1193, metadata !DIExpression()), !dbg !1224
  %229 = fsub double 2.000000e+00, %227, !dbg !1263
  %230 = fmul double %229, %2, !dbg !1264
  %231 = fmul double %224, %230, !dbg !1265
  %232 = fsub double 1.000000e+00, %227, !dbg !1266
  %233 = fmul double %223, %232, !dbg !1267
  %234 = fsub double %231, %233, !dbg !1268
  call void @llvm.dbg.value(metadata double %234, metadata !1195, metadata !DIExpression()), !dbg !1224
  %235 = getelementptr inbounds double, ptr %4, i64 %228, !dbg !1269
  store double %234, ptr %235, align 8, !dbg !1270, !tbaa !175
  %236 = fmul double %209, %226, !dbg !1271
  %237 = fmul double %234, %2, !dbg !1272
  %238 = fsub double %237, %224, !dbg !1273
  %239 = fmul double %236, %238, !dbg !1274
  %240 = getelementptr inbounds double, ptr %5, i64 %228, !dbg !1275
  store double %239, ptr %240, align 8, !dbg !1276, !tbaa !175
  call void @llvm.dbg.value(metadata double %224, metadata !1199, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %234, metadata !1198, metadata !DIExpression()), !dbg !1224
  %241 = add nuw i64 %222, 1, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %241, metadata !1191, metadata !DIExpression()), !dbg !1224
  %242 = icmp eq i64 %241, %218, !dbg !1255
  br i1 %242, label %219, label %221, !dbg !1256, !llvm.loop !1278

243:                                              ; preds = %287, %245
  call void @llvm.dbg.value(metadata i64 %251, metadata !1192, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %250, metadata !1197, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %260, metadata !1196, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %252, metadata !1194, metadata !DIExpression()), !dbg !1224
  %244 = icmp eq i64 %251, %220, !dbg !1280
  br i1 %244, label %330, label %245, !dbg !1257, !llvm.loop !1282

245:                                              ; preds = %243, %219
  %246 = phi i64 [ %251, %243 ], [ 1, %219 ]
  %247 = phi double [ %250, %243 ], [ 1.000000e+280, %219 ]
  %248 = phi double [ %260, %243 ], [ 0x5D48966111CD756, %219 ]
  %249 = phi i64 [ %252, %243 ], [ 0, %219 ]
  call void @llvm.dbg.value(metadata i64 %246, metadata !1192, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %247, metadata !1197, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %248, metadata !1196, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %249, metadata !1194, metadata !DIExpression()), !dbg !1224
  %250 = fmul double %166, %247, !dbg !1284
  call void @llvm.dbg.value(metadata double %250, metadata !1197, metadata !DIExpression()), !dbg !1224
  %251 = add nuw i64 %246, 1, !dbg !1286
  %252 = add i64 %249, %251, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %252, metadata !1194, metadata !DIExpression()), !dbg !1224
  %253 = shl i64 %246, 1, !dbg !1288
  %254 = getelementptr double, ptr %167, i64 %253, !dbg !1289
  %255 = getelementptr double, ptr %254, i64 -1, !dbg !1289
  %256 = load double, ptr %255, align 8, !dbg !1289, !tbaa !175
  %257 = fmul double %256, %3, !dbg !1290
  %258 = load double, ptr %254, align 8, !dbg !1291, !tbaa !175
  %259 = fdiv double %257, %258, !dbg !1292
  %260 = fmul double %248, %259, !dbg !1293
  call void @llvm.dbg.value(metadata double %260, metadata !1196, metadata !DIExpression()), !dbg !1224
  %261 = fmul double %250, %260, !dbg !1294
  %262 = getelementptr inbounds double, ptr %4, i64 %252, !dbg !1295
  store double %261, ptr %262, align 8, !dbg !1296, !tbaa !175
  %263 = uitofp i64 %246 to double, !dbg !1297
  %264 = fmul double %210, %263, !dbg !1298
  %265 = fmul double %264, %261, !dbg !1299
  %266 = getelementptr inbounds double, ptr %5, i64 %252, !dbg !1300
  store double %265, ptr %266, align 8, !dbg !1301, !tbaa !175
  call void @llvm.dbg.value(metadata double %260, metadata !1199, metadata !DIExpression()), !dbg !1224
  %267 = add i64 %252, %251, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %267, metadata !1193, metadata !DIExpression()), !dbg !1224
  %268 = or disjoint i64 %253, 1, !dbg !1303
  %269 = getelementptr inbounds double, ptr %167, i64 %268, !dbg !1304
  %270 = load double, ptr %269, align 8, !dbg !1304, !tbaa !175
  %271 = fmul double %270, %2, !dbg !1305
  %272 = fmul double %260, %271, !dbg !1306
  call void @llvm.dbg.value(metadata double %272, metadata !1198, metadata !DIExpression()), !dbg !1224
  %273 = fmul double %250, %272, !dbg !1307
  %274 = getelementptr inbounds double, ptr %4, i64 %267, !dbg !1308
  store double %273, ptr %274, align 8, !dbg !1309, !tbaa !175
  %275 = fadd double %263, 1.000000e+00, !dbg !1310
  %276 = fmul double %275, %2, !dbg !1311
  %277 = fmul double %276, %273, !dbg !1312
  %278 = load double, ptr %269, align 8, !dbg !1313, !tbaa !175
  %279 = load double, ptr %262, align 8, !dbg !1314, !tbaa !175
  %280 = fmul double %278, %279, !dbg !1315
  %281 = fsub double %277, %280, !dbg !1316
  %282 = fmul double %209, %281, !dbg !1317
  %283 = getelementptr inbounds double, ptr %5, i64 %267, !dbg !1318
  store double %282, ptr %283, align 8, !dbg !1319, !tbaa !175
  %284 = add nuw i64 %246, 2, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %284, metadata !1191, metadata !DIExpression()), !dbg !1224
  %285 = getelementptr double, ptr %167, i64 %246, !dbg !1322
  %286 = icmp ugt i64 %284, %1, !dbg !1323
  br i1 %286, label %243, label %287, !dbg !1325

287:                                              ; preds = %245, %287
  %288 = phi i64 [ %328, %287 ], [ %284, %245 ]
  %289 = phi double [ %290, %287 ], [ %260, %245 ]
  %290 = phi double [ %313, %287 ], [ %272, %245 ]
  %291 = phi i64 [ %292, %287 ], [ %267, %245 ]
  call void @llvm.dbg.value(metadata i64 %288, metadata !1191, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %289, metadata !1199, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %290, metadata !1198, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %291, metadata !1193, metadata !DIExpression()), !dbg !1224
  %292 = add i64 %291, %288, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %292, metadata !1193, metadata !DIExpression()), !dbg !1224
  %293 = shl i64 %288, 1, !dbg !1328
  %294 = add i64 %293, -1, !dbg !1329
  %295 = uitofp i64 %294 to double, !dbg !1330
  %296 = getelementptr double, ptr %285, i64 %288, !dbg !1331
  %297 = load double, ptr %296, align 8, !dbg !1331, !tbaa !175
  %298 = fdiv double %295, %297, !dbg !1332
  %299 = sub i64 %288, %246, !dbg !1333
  %300 = getelementptr inbounds double, ptr %167, i64 %299, !dbg !1334
  %301 = load double, ptr %300, align 8, !dbg !1334, !tbaa !175
  %302 = fdiv double %298, %301, !dbg !1335
  %303 = fmul double %302, %2, !dbg !1336
  %304 = fmul double %290, %303, !dbg !1337
  %305 = getelementptr double, ptr %300, i64 -1, !dbg !1338
  %306 = load double, ptr %305, align 8, !dbg !1338, !tbaa !175
  %307 = getelementptr double, ptr %296, i64 -1, !dbg !1339
  %308 = load double, ptr %307, align 8, !dbg !1339, !tbaa !175
  %309 = fmul double %306, %308, !dbg !1340
  %310 = fdiv double %309, %297, !dbg !1341
  %311 = fdiv double %310, %301, !dbg !1342
  %312 = fmul double %289, %311, !dbg !1343
  %313 = fsub double %304, %312, !dbg !1344
  call void @llvm.dbg.value(metadata double %313, metadata !1195, metadata !DIExpression()), !dbg !1224
  %314 = fmul double %250, %313, !dbg !1345
  %315 = getelementptr inbounds double, ptr %4, i64 %292, !dbg !1346
  store double %314, ptr %315, align 8, !dbg !1347, !tbaa !175
  %316 = uitofp i64 %288 to double, !dbg !1348
  %317 = fmul double %316, %2, !dbg !1349
  %318 = fmul double %317, %314, !dbg !1350
  %319 = load double, ptr %296, align 8, !dbg !1351, !tbaa !175
  %320 = load double, ptr %300, align 8, !dbg !1352, !tbaa !175
  %321 = fmul double %319, %320, !dbg !1353
  %322 = getelementptr inbounds double, ptr %4, i64 %291, !dbg !1354
  %323 = load double, ptr %322, align 8, !dbg !1354, !tbaa !175
  %324 = fmul double %321, %323, !dbg !1355
  %325 = fsub double %318, %324, !dbg !1356
  %326 = fmul double %209, %325, !dbg !1357
  %327 = getelementptr inbounds double, ptr %5, i64 %292, !dbg !1358
  store double %326, ptr %327, align 8, !dbg !1359, !tbaa !175
  call void @llvm.dbg.value(metadata double %290, metadata !1199, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %313, metadata !1198, metadata !DIExpression()), !dbg !1224
  %328 = add i64 %288, 1, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %328, metadata !1191, metadata !DIExpression()), !dbg !1224
  %329 = icmp ugt i64 %328, %1, !dbg !1323
  br i1 %329, label %243, label %287, !dbg !1325, !llvm.loop !1361

330:                                              ; preds = %243
  %331 = add i64 %220, 1, !dbg !1363
  %332 = add i64 %331, %252, !dbg !1364
  br label %333, !dbg !1364

333:                                              ; preds = %330, %212
  %334 = phi double [ %260, %330 ], [ 0x5D48966111CD756, %212 ], !dbg !1224
  %335 = phi double [ %250, %330 ], [ 1.000000e+280, %212 ], !dbg !1224
  %336 = phi i64 [ %332, %330 ], [ 2, %212 ], !dbg !1365
  %337 = fmul double %166, %335, !dbg !1364
  call void @llvm.dbg.value(metadata double %337, metadata !1197, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %336, metadata !1194, metadata !DIExpression()), !dbg !1224
  %338 = getelementptr double, ptr %167, i64 %168, !dbg !1366
  %339 = getelementptr double, ptr %338, i64 -1, !dbg !1366
  %340 = load double, ptr %339, align 8, !dbg !1366, !tbaa !175
  %341 = fmul double %340, %3, !dbg !1367
  %342 = load double, ptr %338, align 8, !dbg !1368, !tbaa !175
  %343 = fdiv double %341, %342, !dbg !1369
  %344 = fmul double %334, %343, !dbg !1370
  call void @llvm.dbg.value(metadata double %344, metadata !1196, metadata !DIExpression()), !dbg !1224
  %345 = fmul double %337, %344, !dbg !1371
  %346 = getelementptr inbounds double, ptr %4, i64 %336, !dbg !1372
  store double %345, ptr %346, align 8, !dbg !1373, !tbaa !175
  %347 = uitofp i64 %1 to double, !dbg !1374
  %348 = fmul double %210, %347, !dbg !1375
  %349 = fmul double %348, %345, !dbg !1376
  %350 = getelementptr inbounds double, ptr %5, i64 %336, !dbg !1377
  store double %349, ptr %350, align 8, !dbg !1378, !tbaa !175
  br label %351, !dbg !1379

351:                                              ; preds = %333, %208, %161, %156, %152, %138
  %352 = phi i32 [ 0, %138 ], [ 1, %152 ], [ 1, %156 ], [ 1, %161 ], [ 0, %208 ], [ 0, %333 ], !dbg !1003
  tail call void @llvm.dbg.value(metadata i32 %352, metadata !985, metadata !DIExpression()), !dbg !994
  switch i32 %0, label %354 [
    i32 3, label %398
    i32 0, label %398
    i32 1, label %355
    i32 2, label %353
  ], !dbg !1380

353:                                              ; preds = %351
  tail call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCC, metadata !987, metadata !DIExpression()), !dbg !994
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !988, metadata !DIExpression()), !dbg !994
  br label %355, !dbg !1382

354:                                              ; preds = %351
  br label %355, !dbg !1386

355:                                              ; preds = %351, %354, %353
  %356 = phi double [ 0x3FE6A09E667F3BCC, %353 ], [ 0x3FD20DD750429B6D, %351 ], [ 0.000000e+00, %354 ], !dbg !994
  %357 = phi double [ 5.000000e-01, %353 ], [ 0x3FC9884533D43651, %351 ], [ 0.000000e+00, %354 ], !dbg !994
  tail call void @llvm.dbg.value(metadata double %357, metadata !988, metadata !DIExpression()), !dbg !994
  tail call void @llvm.dbg.value(metadata double %356, metadata !987, metadata !DIExpression()), !dbg !994
  tail call void @llvm.dbg.value(metadata i64 1, metadata !992, metadata !DIExpression()), !dbg !1387
  %358 = getelementptr inbounds double, ptr %4, i64 %10, !dbg !1386
  tail call void @llvm.dbg.value(metadata ptr %358, metadata !993, metadata !DIExpression()), !dbg !1387
  tail call void @llvm.dbg.value(metadata i64 0, metadata !989, metadata !DIExpression()), !dbg !1387
  %359 = tail call i64 @llvm.umax.i64(i64 %7, i64 1), !dbg !1388
  br label %360, !dbg !1388

360:                                              ; preds = %355, %394
  %361 = phi i64 [ 1, %355 ], [ %396, %394 ]
  %362 = phi i64 [ 1, %355 ], [ %395, %394 ]
  %363 = phi i64 [ 0, %355 ], [ %367, %394 ]
  tail call void @llvm.dbg.value(metadata i64 %362, metadata !992, metadata !DIExpression()), !dbg !1387
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !989, metadata !DIExpression()), !dbg !1387
  %364 = getelementptr inbounds double, ptr %358, i64 %362, !dbg !1390
  %365 = load double, ptr %364, align 8, !dbg !1390, !tbaa !175
  %366 = fmul double %356, %365, !dbg !1393
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !433, metadata !DIExpression()), !dbg !1394
  tail call void @llvm.dbg.value(metadata i64 0, metadata !438, metadata !DIExpression()), !dbg !1394
  %367 = add nuw i64 %363, 1, !dbg !1396
  %368 = mul i64 %367, %363, !dbg !1397
  %369 = lshr i64 %368, 1, !dbg !1398
  %370 = getelementptr inbounds double, ptr %4, i64 %369, !dbg !1399
  %371 = load double, ptr %370, align 8, !dbg !1400, !tbaa !175
  %372 = fmul double %371, %366, !dbg !1400
  store double %372, ptr %370, align 8, !dbg !1400, !tbaa !175
  %373 = load double, ptr %364, align 8, !dbg !1401, !tbaa !175
  %374 = fmul double %356, %373, !dbg !1402
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !433, metadata !DIExpression()), !dbg !1403
  tail call void @llvm.dbg.value(metadata i64 0, metadata !438, metadata !DIExpression()), !dbg !1403
  %375 = getelementptr inbounds double, ptr %5, i64 %369, !dbg !1405
  %376 = load double, ptr %375, align 8, !dbg !1406, !tbaa !175
  %377 = fmul double %376, %374, !dbg !1406
  store double %377, ptr %375, align 8, !dbg !1406, !tbaa !175
  tail call void @llvm.dbg.value(metadata i64 1, metadata !991, metadata !DIExpression()), !dbg !1387
  %378 = icmp eq i64 %363, 0, !dbg !1407
  br i1 %378, label %394, label %379, !dbg !1410

379:                                              ; preds = %360, %379
  %380 = phi i64 [ %392, %379 ], [ 1, %360 ]
  tail call void @llvm.dbg.value(metadata i64 %380, metadata !991, metadata !DIExpression()), !dbg !1387
  %381 = load double, ptr %364, align 8, !dbg !1411, !tbaa !175
  %382 = fmul double %357, %381, !dbg !1413
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !433, metadata !DIExpression()), !dbg !1414
  tail call void @llvm.dbg.value(metadata i64 %380, metadata !438, metadata !DIExpression()), !dbg !1414
  %383 = add i64 %380, %369, !dbg !1416
  %384 = getelementptr inbounds double, ptr %4, i64 %383, !dbg !1417
  %385 = load double, ptr %384, align 8, !dbg !1418, !tbaa !175
  %386 = fmul double %385, %382, !dbg !1418
  store double %386, ptr %384, align 8, !dbg !1418, !tbaa !175
  %387 = load double, ptr %364, align 8, !dbg !1419, !tbaa !175
  %388 = fmul double %357, %387, !dbg !1420
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !433, metadata !DIExpression()), !dbg !1421
  tail call void @llvm.dbg.value(metadata i64 %380, metadata !438, metadata !DIExpression()), !dbg !1421
  %389 = getelementptr inbounds double, ptr %5, i64 %383, !dbg !1423
  %390 = load double, ptr %389, align 8, !dbg !1424, !tbaa !175
  %391 = fmul double %390, %388, !dbg !1424
  store double %391, ptr %389, align 8, !dbg !1424, !tbaa !175
  %392 = add nuw i64 %380, 1, !dbg !1425
  tail call void @llvm.dbg.value(metadata i64 %392, metadata !991, metadata !DIExpression()), !dbg !1387
  %393 = icmp eq i64 %392, %361, !dbg !1407
  br i1 %393, label %394, label %379, !dbg !1410, !llvm.loop !1426

394:                                              ; preds = %379, %360
  %395 = add i64 %362, 2, !dbg !1428
  tail call void @llvm.dbg.value(metadata i64 %395, metadata !992, metadata !DIExpression()), !dbg !1387
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !989, metadata !DIExpression()), !dbg !1387
  %396 = add i64 %361, 1, !dbg !1388
  %397 = icmp eq i64 %367, %359, !dbg !1429
  br i1 %397, label %398, label %360, !dbg !1388, !llvm.loop !1430

398:                                              ; preds = %394, %16, %20, %25, %26, %351, %351
  %399 = phi i32 [ %352, %351 ], [ %352, %351 ], [ 0, %26 ], [ 1, %25 ], [ 1, %20 ], [ 1, %16 ], [ %352, %394 ]
  ret i32 %399, !dbg !1432
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv2_array(i32 noundef %0, i64 noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 !dbg !1433 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1437, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1438, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata double %2, metadata !1439, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1440, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1441, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1442, metadata !DIExpression()), !dbg !1444
  %7 = tail call i32 @gsl_sf_legendre_deriv2_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %5), !dbg !1445, !range !99
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1443, metadata !DIExpression()), !dbg !1444
  ret i32 %7, !dbg !1446
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv2_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 !dbg !1447 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1451, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1452, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata double %2, metadata !1453, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata double %3, metadata !1454, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1455, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1456, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1457, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !1477
  %8 = add i64 %1, 1, !dbg !1479
  %9 = add i64 %1, 2, !dbg !1480
  %10 = mul i64 %8, %9, !dbg !1481
  %11 = lshr i64 %10, 1, !dbg !1482
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1459, metadata !DIExpression()), !dbg !1476
  %12 = fsub double 1.000000e+00, %2, !dbg !1483
  %13 = fadd double %2, 1.000000e+00, !dbg !1484
  %14 = fmul double %12, %13, !dbg !1485
  %15 = tail call double @sqrt(double noundef %14) #6, !dbg !1486
  tail call void @llvm.dbg.value(metadata double %15, metadata !1461, metadata !DIExpression()), !dbg !1476
  %16 = fdiv double 1.000000e+00, %15, !dbg !1487
  tail call void @llvm.dbg.value(metadata double %16, metadata !1462, metadata !DIExpression()), !dbg !1476
  %17 = fmul double %16, %16, !dbg !1488
  tail call void @llvm.dbg.value(metadata double %17, metadata !1463, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1464, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1465, metadata !DIExpression()), !dbg !1476
  %18 = icmp eq i32 %0, 3, !dbg !1489
  %19 = fcmp ogt double %2, 1.000000e+00, !dbg !1491
  %20 = fcmp olt double %2, -1.000000e+00
  %21 = or i1 %19, %20, !dbg !1491
  br i1 %18, label %22, label %201, !dbg !1492

22:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i64 %1, metadata !1493, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata double %2, metadata !1498, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata double %3, metadata !1499, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %4, metadata !1500, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %5, metadata !1501, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %6, metadata !1502, metadata !DIExpression()), !dbg !1520
  br i1 %21, label %23, label %24, !dbg !1523

23:                                               ; preds = %22
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 1) #6, !dbg !1524
  br label %444, !dbg !1524

24:                                               ; preds = %22
  %25 = tail call double @llvm.fabs.f64(double %2), !dbg !1527
  %26 = fcmp oeq double %25, 1.000000e+00, !dbg !1528
  br i1 %26, label %27, label %28, !dbg !1529

27:                                               ; preds = %24
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 435, i32 noundef 1) #6, !dbg !1530
  br label %444, !dbg !1530

28:                                               ; preds = %24
  %29 = fcmp une double %3, 1.000000e+00, !dbg !1533
  %30 = fcmp une double %3, -1.000000e+00
  %31 = and i1 %29, %30, !dbg !1534
  br i1 %31, label %32, label %33, !dbg !1534

32:                                               ; preds = %28
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 1) #6, !dbg !1535
  br label %444, !dbg !1535

33:                                               ; preds = %28
  %34 = tail call double @sqrt(double noundef %14) #6, !dbg !1538
  call void @llvm.dbg.value(metadata double %34, metadata !1503, metadata !DIExpression()), !dbg !1539
  %35 = fdiv double 1.000000e+00, %34, !dbg !1540
  call void @llvm.dbg.value(metadata double %35, metadata !1508, metadata !DIExpression()), !dbg !1539
  %36 = fdiv double %35, %34, !dbg !1541
  call void @llvm.dbg.value(metadata double %36, metadata !1509, metadata !DIExpression()), !dbg !1539
  %37 = fmul double %35, %2, !dbg !1542
  call void @llvm.dbg.value(metadata double %37, metadata !1510, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1518, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata double %2, metadata !1517, metadata !DIExpression()), !dbg !1539
  store double 1.000000e+00, ptr %4, align 8, !dbg !1543, !tbaa !175
  store double 0.000000e+00, ptr %5, align 8, !dbg !1544, !tbaa !175
  store double 0.000000e+00, ptr %6, align 8, !dbg !1545, !tbaa !175
  %38 = icmp eq i64 %1, 0, !dbg !1546
  br i1 %38, label %444, label %39, !dbg !1548

39:                                               ; preds = %33
  %40 = getelementptr inbounds double, ptr %4, i64 1, !dbg !1549
  store double %2, ptr %40, align 8, !dbg !1550, !tbaa !175
  %41 = fneg double %34, !dbg !1551
  %42 = getelementptr inbounds double, ptr %5, i64 1, !dbg !1552
  store double %41, ptr %42, align 8, !dbg !1553, !tbaa !175
  %43 = fneg double %2, !dbg !1554
  %44 = getelementptr inbounds double, ptr %6, i64 1, !dbg !1555
  store double %43, ptr %44, align 8, !dbg !1556, !tbaa !175
  call void @llvm.dbg.value(metadata i64 1, metadata !1513, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 2, metadata !1511, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1518, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata double %2, metadata !1517, metadata !DIExpression()), !dbg !1539
  %45 = icmp eq i64 %1, 1, !dbg !1557
  br i1 %45, label %51, label %46, !dbg !1560

46:                                               ; preds = %39
  %47 = tail call i64 @llvm.umax.i64(i64 %8, i64 3), !dbg !1560
  br label %53, !dbg !1560

48:                                               ; preds = %53
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !1519, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1516, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 0, metadata !1514, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 1, metadata !1512, metadata !DIExpression()), !dbg !1539
  %49 = fmul double %34, %3
  %50 = fneg double %35
  br label %87, !dbg !1561

51:                                               ; preds = %39
  %52 = fmul double %34, %3, !dbg !1563
  br label %179, !dbg !1561

53:                                               ; preds = %53, %46
  %54 = phi double [ %55, %53 ], [ 1.000000e+00, %46 ]
  %55 = phi double [ %69, %53 ], [ %2, %46 ]
  %56 = phi i64 [ %58, %53 ], [ 1, %46 ]
  %57 = phi i64 [ %83, %53 ], [ 2, %46 ]
  call void @llvm.dbg.value(metadata double %54, metadata !1518, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata double %55, metadata !1517, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %56, metadata !1513, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %57, metadata !1511, metadata !DIExpression()), !dbg !1539
  %58 = add i64 %57, %56, !dbg !1564
  call void @llvm.dbg.value(metadata i64 %58, metadata !1513, metadata !DIExpression()), !dbg !1539
  %59 = shl i64 %57, 1, !dbg !1566
  %60 = add i64 %59, -1, !dbg !1567
  %61 = uitofp i64 %60 to double, !dbg !1568
  %62 = fmul double %61, %2, !dbg !1569
  %63 = fmul double %55, %62, !dbg !1570
  %64 = add i64 %57, -1, !dbg !1571
  %65 = uitofp i64 %64 to double, !dbg !1572
  %66 = fmul double %54, %65, !dbg !1573
  %67 = fsub double %63, %66, !dbg !1574
  %68 = uitofp i64 %57 to double, !dbg !1575
  %69 = fdiv double %67, %68, !dbg !1576
  call void @llvm.dbg.value(metadata double %69, metadata !1515, metadata !DIExpression()), !dbg !1539
  %70 = getelementptr inbounds double, ptr %4, i64 %58, !dbg !1577
  store double %69, ptr %70, align 8, !dbg !1578, !tbaa !175
  %71 = fneg double %68, !dbg !1579
  %72 = fmul double %69, %2, !dbg !1580
  %73 = fsub double %55, %72, !dbg !1581
  %74 = fmul double %73, %71, !dbg !1582
  %75 = fmul double %35, %74, !dbg !1583
  %76 = getelementptr inbounds double, ptr %5, i64 %58, !dbg !1584
  store double %75, ptr %76, align 8, !dbg !1585, !tbaa !175
  %77 = fadd double %68, 1.000000e+00, !dbg !1586
  %78 = fmul double %77, %71, !dbg !1587
  %79 = fmul double %78, %69, !dbg !1588
  %80 = fmul double %37, %75, !dbg !1589
  %81 = fsub double %79, %80, !dbg !1590
  %82 = getelementptr inbounds double, ptr %6, i64 %58, !dbg !1591
  store double %81, ptr %82, align 8, !dbg !1592, !tbaa !175
  call void @llvm.dbg.value(metadata double %55, metadata !1518, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata double %69, metadata !1517, metadata !DIExpression()), !dbg !1539
  %83 = add nuw i64 %57, 1, !dbg !1593
  call void @llvm.dbg.value(metadata i64 %83, metadata !1511, metadata !DIExpression()), !dbg !1539
  %84 = icmp eq i64 %83, %47, !dbg !1557
  br i1 %84, label %48, label %53, !dbg !1560, !llvm.loop !1594

85:                                               ; preds = %138, %87
  call void @llvm.dbg.value(metadata double %94, metadata !1519, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata double %96, metadata !1516, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %93, metadata !1514, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %92, metadata !1512, metadata !DIExpression()), !dbg !1539
  %86 = icmp eq i64 %92, %1, !dbg !1596
  br i1 %86, label %176, label %87, !dbg !1561, !llvm.loop !1598

87:                                               ; preds = %85, %48
  %88 = phi double [ -1.000000e+00, %48 ], [ %94, %85 ]
  %89 = phi double [ 1.000000e+00, %48 ], [ %96, %85 ]
  %90 = phi i64 [ 0, %48 ], [ %93, %85 ]
  %91 = phi i64 [ 1, %48 ], [ %92, %85 ]
  call void @llvm.dbg.value(metadata double %88, metadata !1519, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata double %89, metadata !1516, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %90, metadata !1514, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %91, metadata !1512, metadata !DIExpression()), !dbg !1539
  %92 = add nuw i64 %91, 1, !dbg !1600
  %93 = add i64 %92, %90, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %93, metadata !1514, metadata !DIExpression()), !dbg !1539
  %94 = fadd double %88, 2.000000e+00, !dbg !1603
  call void @llvm.dbg.value(metadata double %94, metadata !1519, metadata !DIExpression()), !dbg !1539
  %95 = fmul double %49, %94, !dbg !1604
  %96 = fmul double %89, %95, !dbg !1605
  call void @llvm.dbg.value(metadata double %96, metadata !1516, metadata !DIExpression()), !dbg !1539
  %97 = getelementptr inbounds double, ptr %4, i64 %93, !dbg !1606
  store double %96, ptr %97, align 8, !dbg !1607, !tbaa !175
  %98 = uitofp i64 %91 to double, !dbg !1608
  %99 = fmul double %37, %98, !dbg !1609
  %100 = fmul double %96, %99, !dbg !1610
  %101 = getelementptr inbounds double, ptr %5, i64 %93, !dbg !1611
  store double %100, ptr %101, align 8, !dbg !1612, !tbaa !175
  %102 = fmul double %36, %98, !dbg !1613
  %103 = fadd double %98, 1.000000e+00, !dbg !1614
  %104 = fsub double %102, %103, !dbg !1615
  %105 = fmul double %104, %98, !dbg !1616
  %106 = load double, ptr %97, align 8, !dbg !1617, !tbaa !175
  %107 = fmul double %106, %105, !dbg !1618
  %108 = fmul double %37, %100, !dbg !1619
  %109 = fsub double %107, %108, !dbg !1620
  %110 = getelementptr inbounds double, ptr %6, i64 %93, !dbg !1621
  store double %109, ptr %110, align 8, !dbg !1622, !tbaa !175
  call void @llvm.dbg.value(metadata double %96, metadata !1518, metadata !DIExpression()), !dbg !1539
  %111 = add i64 %93, %92, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %111, metadata !1513, metadata !DIExpression()), !dbg !1539
  %112 = fmul double %96, %2, !dbg !1624
  %113 = shl i64 %91, 1, !dbg !1625
  %114 = or disjoint i64 %113, 1, !dbg !1626
  %115 = uitofp i64 %114 to double, !dbg !1627
  %116 = fmul double %112, %115, !dbg !1628
  call void @llvm.dbg.value(metadata double %116, metadata !1517, metadata !DIExpression()), !dbg !1539
  %117 = getelementptr inbounds double, ptr %4, i64 %111, !dbg !1629
  store double %116, ptr %117, align 8, !dbg !1630, !tbaa !175
  %118 = fmul double %96, %115, !dbg !1631
  %119 = uitofp i64 %92 to double, !dbg !1632
  %120 = fmul double %119, %2, !dbg !1633
  %121 = fmul double %120, %116, !dbg !1634
  %122 = fsub double %118, %121, !dbg !1635
  %123 = fmul double %122, %50, !dbg !1636
  %124 = getelementptr inbounds double, ptr %5, i64 %111, !dbg !1637
  store double %123, ptr %124, align 8, !dbg !1638, !tbaa !175
  %125 = mul i64 %91, %91, !dbg !1639
  %126 = uitofp i64 %125 to double, !dbg !1640
  %127 = fmul double %36, %126, !dbg !1641
  %128 = fadd double %98, 2.000000e+00, !dbg !1642
  %129 = fmul double %103, %128, !dbg !1643
  %130 = fsub double %127, %129, !dbg !1644
  %131 = load double, ptr %117, align 8, !dbg !1645, !tbaa !175
  %132 = fmul double %130, %131, !dbg !1646
  %133 = fmul double %37, %123, !dbg !1647
  %134 = fsub double %132, %133, !dbg !1648
  %135 = getelementptr inbounds double, ptr %6, i64 %111, !dbg !1649
  store double %134, ptr %135, align 8, !dbg !1650, !tbaa !175
  %136 = add i64 %91, 2, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %136, metadata !1511, metadata !DIExpression()), !dbg !1539
  %137 = icmp ugt i64 %136, %1, !dbg !1653
  br i1 %137, label %85, label %138, !dbg !1655

138:                                              ; preds = %87, %138
  %139 = phi double [ %140, %138 ], [ %96, %87 ]
  %140 = phi double [ %156, %138 ], [ %116, %87 ]
  %141 = phi i64 [ %143, %138 ], [ %111, %87 ]
  %142 = phi i64 [ %174, %138 ], [ %136, %87 ]
  call void @llvm.dbg.value(metadata double %139, metadata !1518, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata double %140, metadata !1517, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %141, metadata !1513, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %142, metadata !1511, metadata !DIExpression()), !dbg !1539
  %143 = add i64 %142, %141, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %143, metadata !1513, metadata !DIExpression()), !dbg !1539
  %144 = shl i64 %142, 1, !dbg !1658
  %145 = add i64 %144, -1, !dbg !1659
  %146 = uitofp i64 %145 to double, !dbg !1660
  %147 = fmul double %146, %2, !dbg !1661
  %148 = fmul double %140, %147, !dbg !1662
  %149 = add i64 %142, %91, !dbg !1663
  %150 = add i64 %149, -1, !dbg !1664
  %151 = uitofp i64 %150 to double, !dbg !1665
  %152 = fmul double %139, %151, !dbg !1666
  %153 = fsub double %148, %152, !dbg !1667
  %154 = sub i64 %142, %91, !dbg !1668
  %155 = uitofp i64 %154 to double, !dbg !1669
  %156 = fdiv double %153, %155, !dbg !1670
  call void @llvm.dbg.value(metadata double %156, metadata !1515, metadata !DIExpression()), !dbg !1539
  %157 = getelementptr inbounds double, ptr %4, i64 %143, !dbg !1671
  store double %156, ptr %157, align 8, !dbg !1672, !tbaa !175
  %158 = uitofp i64 %149 to double, !dbg !1673
  %159 = fmul double %140, %158, !dbg !1674
  %160 = uitofp i64 %142 to double, !dbg !1675
  %161 = fmul double %160, %2, !dbg !1676
  %162 = fmul double %161, %156, !dbg !1677
  %163 = fsub double %159, %162, !dbg !1678
  %164 = fmul double %163, %50, !dbg !1679
  %165 = getelementptr inbounds double, ptr %5, i64 %143, !dbg !1680
  store double %164, ptr %165, align 8, !dbg !1681, !tbaa !175
  %166 = fadd double %160, 1.000000e+00, !dbg !1682
  %167 = fmul double %166, %160, !dbg !1683
  %168 = fsub double %127, %167, !dbg !1684
  %169 = load double, ptr %157, align 8, !dbg !1685, !tbaa !175
  %170 = fmul double %169, %168, !dbg !1686
  %171 = fmul double %37, %164, !dbg !1687
  %172 = fsub double %170, %171, !dbg !1688
  %173 = getelementptr inbounds double, ptr %6, i64 %143, !dbg !1689
  store double %172, ptr %173, align 8, !dbg !1690, !tbaa !175
  call void @llvm.dbg.value(metadata double %140, metadata !1518, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata double %156, metadata !1517, metadata !DIExpression()), !dbg !1539
  %174 = add i64 %142, 1, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %174, metadata !1511, metadata !DIExpression()), !dbg !1539
  %175 = icmp ugt i64 %174, %1, !dbg !1653
  br i1 %175, label %85, label %138, !dbg !1655, !llvm.loop !1692

176:                                              ; preds = %85
  %177 = add i64 %93, %8, !dbg !1694
  %178 = fadd double %94, 2.000000e+00, !dbg !1695
  br label %179, !dbg !1694

179:                                              ; preds = %176, %51
  %180 = phi double [ %52, %51 ], [ %49, %176 ], !dbg !1563
  %181 = phi double [ 1.000000e+00, %51 ], [ %96, %176 ], !dbg !1539
  %182 = phi double [ 1.000000e+00, %51 ], [ %178, %176 ], !dbg !1539
  %183 = phi i64 [ 2, %51 ], [ %177, %176 ], !dbg !1696
  call void @llvm.dbg.value(metadata i64 %183, metadata !1514, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata double %182, metadata !1519, metadata !DIExpression()), !dbg !1539
  %184 = fmul double %180, %182, !dbg !1697
  %185 = fmul double %181, %184, !dbg !1698
  call void @llvm.dbg.value(metadata double %185, metadata !1516, metadata !DIExpression()), !dbg !1539
  %186 = getelementptr inbounds double, ptr %4, i64 %183, !dbg !1699
  store double %185, ptr %186, align 8, !dbg !1700, !tbaa !175
  %187 = uitofp i64 %1 to double, !dbg !1701
  %188 = fmul double %187, %2, !dbg !1702
  %189 = fmul double %188, %185, !dbg !1703
  %190 = fmul double %35, %189, !dbg !1704
  %191 = getelementptr inbounds double, ptr %5, i64 %183, !dbg !1705
  store double %190, ptr %191, align 8, !dbg !1706, !tbaa !175
  %192 = fmul double %36, %187, !dbg !1707
  %193 = fadd double %187, 1.000000e+00, !dbg !1708
  %194 = fsub double %192, %193, !dbg !1709
  %195 = fmul double %194, %187, !dbg !1710
  %196 = load double, ptr %186, align 8, !dbg !1711, !tbaa !175
  %197 = fmul double %195, %196, !dbg !1712
  %198 = fmul double %37, %190, !dbg !1713
  %199 = fsub double %197, %198, !dbg !1714
  %200 = getelementptr inbounds double, ptr %6, i64 %183, !dbg !1715
  store double %199, ptr %200, align 8, !dbg !1716, !tbaa !175
  br label %444, !dbg !1717

201:                                              ; preds = %7
  call void @llvm.dbg.value(metadata i64 %1, metadata !1718, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata double %2, metadata !1721, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata double %3, metadata !1722, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %4, metadata !1723, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %5, metadata !1724, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %6, metadata !1725, metadata !DIExpression()), !dbg !1750
  br i1 %21, label %202, label %203, !dbg !1753

202:                                              ; preds = %201
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 222, i32 noundef 1) #6, !dbg !1754
  br label %444, !dbg !1754

203:                                              ; preds = %201
  %204 = tail call double @llvm.fabs.f64(double %2), !dbg !1757
  %205 = fcmp oeq double %204, 1.000000e+00, !dbg !1758
  br i1 %205, label %206, label %207, !dbg !1759

206:                                              ; preds = %203
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 227, i32 noundef 1) #6, !dbg !1760
  br label %444, !dbg !1760

207:                                              ; preds = %203
  %208 = fcmp une double %3, 1.000000e+00, !dbg !1763
  %209 = fcmp une double %3, -1.000000e+00
  %210 = and i1 %208, %209, !dbg !1764
  br i1 %210, label %211, label %212, !dbg !1764

211:                                              ; preds = %207
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 232, i32 noundef 1) #6, !dbg !1765
  br label %444, !dbg !1765

212:                                              ; preds = %207
  call void @llvm.dbg.value(metadata double 0x5CD0B15A491EB84, metadata !1726, metadata !DIExpression()), !dbg !1768
  %213 = tail call double @sqrt(double noundef %14) #6, !dbg !1769
  call void @llvm.dbg.value(metadata double %213, metadata !1731, metadata !DIExpression()), !dbg !1768
  %214 = fdiv double 1.000000e+00, %213, !dbg !1770
  call void @llvm.dbg.value(metadata double %214, metadata !1732, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double %257, metadata !1733, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double %258, metadata !1734, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %11, metadata !1744, metadata !DIExpression()), !dbg !1768
  %215 = getelementptr inbounds double, ptr %4, i64 %11, !dbg !1773
  call void @llvm.dbg.value(metadata ptr %215, metadata !1745, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %1, metadata !306, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata ptr %215, metadata !311, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 0, metadata !312, metadata !DIExpression()), !dbg !1774
  %216 = shl i64 %1, 1
  %217 = add i64 %216, 2, !dbg !1776
  %218 = tail call i64 @llvm.umax.i64(i64 %217, i64 1), !dbg !1776
  %219 = and i64 %218, 3, !dbg !1776
  %220 = icmp ult i64 %217, 4, !dbg !1776
  br i1 %220, label %244, label %221, !dbg !1776

221:                                              ; preds = %212
  %222 = and i64 %218, -4, !dbg !1776
  br label %223, !dbg !1776

223:                                              ; preds = %223, %221
  %224 = phi i64 [ 0, %221 ], [ %241, %223 ]
  %225 = phi i64 [ 0, %221 ], [ %242, %223 ]
  call void @llvm.dbg.value(metadata i64 %224, metadata !312, metadata !DIExpression()), !dbg !1774
  %226 = uitofp i64 %224 to double, !dbg !1777
  %227 = tail call double @llvm.sqrt.f64(double %226), !dbg !1778
  %228 = getelementptr inbounds double, ptr %215, i64 %224, !dbg !1779
  store double %227, ptr %228, align 8, !dbg !1780, !tbaa !175
  %229 = or disjoint i64 %224, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %229, metadata !312, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 %229, metadata !312, metadata !DIExpression()), !dbg !1774
  %230 = uitofp i64 %229 to double, !dbg !1777
  %231 = tail call double @llvm.sqrt.f64(double %230), !dbg !1778
  %232 = getelementptr inbounds double, ptr %215, i64 %229, !dbg !1779
  store double %231, ptr %232, align 8, !dbg !1780, !tbaa !175
  %233 = or disjoint i64 %224, 2, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %233, metadata !312, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 %233, metadata !312, metadata !DIExpression()), !dbg !1774
  %234 = uitofp i64 %233 to double, !dbg !1777
  %235 = tail call double @llvm.sqrt.f64(double %234), !dbg !1778
  %236 = getelementptr inbounds double, ptr %215, i64 %233, !dbg !1779
  store double %235, ptr %236, align 8, !dbg !1780, !tbaa !175
  %237 = or disjoint i64 %224, 3, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %237, metadata !312, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 %237, metadata !312, metadata !DIExpression()), !dbg !1774
  %238 = uitofp i64 %237 to double, !dbg !1777
  %239 = tail call double @llvm.sqrt.f64(double %238), !dbg !1778
  %240 = getelementptr inbounds double, ptr %215, i64 %237, !dbg !1779
  store double %239, ptr %240, align 8, !dbg !1780, !tbaa !175
  %241 = add nuw i64 %224, 4, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %241, metadata !312, metadata !DIExpression()), !dbg !1774
  %242 = add i64 %225, 4, !dbg !1776
  %243 = icmp eq i64 %242, %222, !dbg !1776
  br i1 %243, label %244, label %223, !dbg !1776, !llvm.loop !1782

244:                                              ; preds = %223, %212
  %245 = phi i64 [ 0, %212 ], [ %241, %223 ]
  %246 = icmp eq i64 %219, 0, !dbg !1776
  br i1 %246, label %256, label %247, !dbg !1776

247:                                              ; preds = %244, %247
  %248 = phi i64 [ %253, %247 ], [ %245, %244 ]
  %249 = phi i64 [ %254, %247 ], [ 0, %244 ]
  call void @llvm.dbg.value(metadata i64 %248, metadata !312, metadata !DIExpression()), !dbg !1774
  %250 = uitofp i64 %248 to double, !dbg !1777
  %251 = tail call double @llvm.sqrt.f64(double %250), !dbg !1778
  %252 = getelementptr inbounds double, ptr %215, i64 %248, !dbg !1779
  store double %251, ptr %252, align 8, !dbg !1780, !tbaa !175
  %253 = add nuw i64 %248, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %253, metadata !312, metadata !DIExpression()), !dbg !1774
  %254 = add i64 %249, 1, !dbg !1776
  %255 = icmp eq i64 %254, %219, !dbg !1776
  br i1 %255, label %256, label %247, !dbg !1776, !llvm.loop !1784

256:                                              ; preds = %247, %244
  %257 = fdiv double %214, %213, !dbg !1785
  %258 = fmul double %214, %2, !dbg !1786
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1743, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double %2, metadata !1742, metadata !DIExpression()), !dbg !1768
  store double 1.000000e+00, ptr %4, align 8, !dbg !1787, !tbaa !175
  store double 0.000000e+00, ptr %5, align 8, !dbg !1788, !tbaa !175
  store double 0.000000e+00, ptr %6, align 8, !dbg !1789, !tbaa !175
  %259 = icmp eq i64 %1, 0, !dbg !1790
  br i1 %259, label %444, label %260, !dbg !1792

260:                                              ; preds = %256
  %261 = getelementptr inbounds double, ptr %4, i64 1, !dbg !1793
  store double %2, ptr %261, align 8, !dbg !1794, !tbaa !175
  %262 = fneg double %213, !dbg !1795
  %263 = getelementptr inbounds double, ptr %5, i64 1, !dbg !1796
  store double %262, ptr %263, align 8, !dbg !1797, !tbaa !175
  %264 = fneg double %2, !dbg !1798
  %265 = getelementptr inbounds double, ptr %6, i64 1, !dbg !1799
  store double %264, ptr %265, align 8, !dbg !1800, !tbaa !175
  call void @llvm.dbg.value(metadata i64 1, metadata !1737, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 2, metadata !1735, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1743, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double %2, metadata !1742, metadata !DIExpression()), !dbg !1768
  %266 = icmp eq i64 %1, 1, !dbg !1801
  br i1 %266, label %417, label %267, !dbg !1802

267:                                              ; preds = %260
  %268 = tail call i64 @llvm.umax.i64(i64 %8, i64 3), !dbg !1802
  br label %271, !dbg !1802

269:                                              ; preds = %271
  call void @llvm.dbg.value(metadata i64 1, metadata !1736, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double 1.000000e+280, metadata !1741, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double 0x5D48966111CD756, metadata !1740, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 0, metadata !1738, metadata !DIExpression()), !dbg !1768
  %270 = tail call i64 @llvm.umax.i64(i64 %1, i64 2), !dbg !1803
  br label %302, !dbg !1803

271:                                              ; preds = %271, %267
  %272 = phi i64 [ %298, %271 ], [ 2, %267 ]
  %273 = phi double [ %274, %271 ], [ 1.000000e+00, %267 ]
  %274 = phi double [ %284, %271 ], [ %2, %267 ]
  %275 = phi i64 [ %278, %271 ], [ 1, %267 ]
  call void @llvm.dbg.value(metadata i64 %272, metadata !1735, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double %273, metadata !1743, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double %274, metadata !1742, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %275, metadata !1737, metadata !DIExpression()), !dbg !1768
  %276 = uitofp i64 %272 to double, !dbg !1805
  %277 = fdiv double 1.000000e+00, %276, !dbg !1806
  call void @llvm.dbg.value(metadata double %277, metadata !1746, metadata !DIExpression()), !dbg !1807
  %278 = add i64 %275, %272, !dbg !1808
  call void @llvm.dbg.value(metadata i64 %278, metadata !1737, metadata !DIExpression()), !dbg !1768
  %279 = fsub double 2.000000e+00, %277, !dbg !1809
  %280 = fmul double %279, %2, !dbg !1810
  %281 = fmul double %274, %280, !dbg !1811
  %282 = fsub double 1.000000e+00, %277, !dbg !1812
  %283 = fmul double %273, %282, !dbg !1813
  %284 = fsub double %281, %283, !dbg !1814
  call void @llvm.dbg.value(metadata double %284, metadata !1739, metadata !DIExpression()), !dbg !1768
  %285 = getelementptr inbounds double, ptr %4, i64 %278, !dbg !1815
  store double %284, ptr %285, align 8, !dbg !1816, !tbaa !175
  %286 = fmul double %214, %276, !dbg !1817
  %287 = fmul double %284, %2, !dbg !1818
  %288 = fsub double %287, %274, !dbg !1819
  %289 = fmul double %286, %288, !dbg !1820
  %290 = getelementptr inbounds double, ptr %5, i64 %278, !dbg !1821
  store double %289, ptr %290, align 8, !dbg !1822, !tbaa !175
  %291 = fneg double %276, !dbg !1823
  %292 = fadd double %276, 1.000000e+00, !dbg !1824
  %293 = fmul double %292, %291, !dbg !1825
  %294 = fmul double %293, %284, !dbg !1826
  %295 = fmul double %258, %289, !dbg !1827
  %296 = fsub double %294, %295, !dbg !1828
  %297 = getelementptr inbounds double, ptr %6, i64 %278, !dbg !1829
  store double %296, ptr %297, align 8, !dbg !1830, !tbaa !175
  call void @llvm.dbg.value(metadata double %274, metadata !1743, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double %284, metadata !1742, metadata !DIExpression()), !dbg !1768
  %298 = add nuw i64 %272, 1, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %298, metadata !1735, metadata !DIExpression()), !dbg !1768
  %299 = icmp eq i64 %298, %268, !dbg !1801
  br i1 %299, label %269, label %271, !dbg !1802, !llvm.loop !1832

300:                                              ; preds = %363, %302
  call void @llvm.dbg.value(metadata i64 %308, metadata !1736, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double %307, metadata !1741, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double %317, metadata !1740, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %309, metadata !1738, metadata !DIExpression()), !dbg !1768
  %301 = icmp eq i64 %308, %270, !dbg !1834
  br i1 %301, label %414, label %302, !dbg !1803, !llvm.loop !1836

302:                                              ; preds = %300, %269
  %303 = phi i64 [ %308, %300 ], [ 1, %269 ]
  %304 = phi double [ %307, %300 ], [ 1.000000e+280, %269 ]
  %305 = phi double [ %317, %300 ], [ 0x5D48966111CD756, %269 ]
  %306 = phi i64 [ %309, %300 ], [ 0, %269 ]
  call void @llvm.dbg.value(metadata i64 %303, metadata !1736, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double %304, metadata !1741, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double %305, metadata !1740, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %306, metadata !1738, metadata !DIExpression()), !dbg !1768
  %307 = fmul double %213, %304, !dbg !1838
  call void @llvm.dbg.value(metadata double %307, metadata !1741, metadata !DIExpression()), !dbg !1768
  %308 = add nuw i64 %303, 1, !dbg !1840
  %309 = add i64 %306, %308, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %309, metadata !1738, metadata !DIExpression()), !dbg !1768
  %310 = shl i64 %303, 1, !dbg !1842
  %311 = getelementptr double, ptr %215, i64 %310, !dbg !1843
  %312 = getelementptr double, ptr %311, i64 -1, !dbg !1843
  %313 = load double, ptr %312, align 8, !dbg !1843, !tbaa !175
  %314 = fmul double %313, %3, !dbg !1844
  %315 = load double, ptr %311, align 8, !dbg !1845, !tbaa !175
  %316 = fdiv double %314, %315, !dbg !1846
  %317 = fmul double %305, %316, !dbg !1847
  call void @llvm.dbg.value(metadata double %317, metadata !1740, metadata !DIExpression()), !dbg !1768
  %318 = fmul double %307, %317, !dbg !1848
  %319 = getelementptr inbounds double, ptr %4, i64 %309, !dbg !1849
  store double %318, ptr %319, align 8, !dbg !1850, !tbaa !175
  %320 = uitofp i64 %303 to double, !dbg !1851
  %321 = fmul double %258, %320, !dbg !1852
  %322 = fmul double %321, %318, !dbg !1853
  %323 = getelementptr inbounds double, ptr %5, i64 %309, !dbg !1854
  store double %322, ptr %323, align 8, !dbg !1855, !tbaa !175
  %324 = fmul double %257, %320, !dbg !1856
  %325 = fadd double %320, 1.000000e+00, !dbg !1857
  %326 = fsub double %324, %325, !dbg !1858
  %327 = fmul double %326, %320, !dbg !1859
  %328 = load double, ptr %319, align 8, !dbg !1860, !tbaa !175
  %329 = fmul double %327, %328, !dbg !1861
  %330 = fmul double %258, %322, !dbg !1862
  %331 = fsub double %329, %330, !dbg !1863
  %332 = getelementptr inbounds double, ptr %6, i64 %309, !dbg !1864
  store double %331, ptr %332, align 8, !dbg !1865, !tbaa !175
  call void @llvm.dbg.value(metadata double %317, metadata !1743, metadata !DIExpression()), !dbg !1768
  %333 = add i64 %309, %308, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %333, metadata !1737, metadata !DIExpression()), !dbg !1768
  %334 = or disjoint i64 %310, 1, !dbg !1867
  %335 = getelementptr inbounds double, ptr %215, i64 %334, !dbg !1868
  %336 = load double, ptr %335, align 8, !dbg !1868, !tbaa !175
  %337 = fmul double %336, %2, !dbg !1869
  %338 = fmul double %317, %337, !dbg !1870
  call void @llvm.dbg.value(metadata double %338, metadata !1742, metadata !DIExpression()), !dbg !1768
  %339 = fmul double %307, %338, !dbg !1871
  %340 = getelementptr inbounds double, ptr %4, i64 %333, !dbg !1872
  store double %339, ptr %340, align 8, !dbg !1873, !tbaa !175
  %341 = fmul double %325, %2, !dbg !1874
  %342 = fmul double %341, %339, !dbg !1875
  %343 = load double, ptr %335, align 8, !dbg !1876, !tbaa !175
  %344 = load double, ptr %319, align 8, !dbg !1877, !tbaa !175
  %345 = fmul double %343, %344, !dbg !1878
  %346 = fsub double %342, %345, !dbg !1879
  %347 = fmul double %214, %346, !dbg !1880
  %348 = getelementptr inbounds double, ptr %5, i64 %333, !dbg !1881
  store double %347, ptr %348, align 8, !dbg !1882, !tbaa !175
  %349 = mul i64 %303, %303, !dbg !1883
  %350 = uitofp i64 %349 to double, !dbg !1884
  %351 = fmul double %257, %350, !dbg !1885
  %352 = fadd double %320, 2.000000e+00, !dbg !1886
  %353 = fmul double %325, %352, !dbg !1887
  %354 = fsub double %351, %353, !dbg !1888
  %355 = load double, ptr %340, align 8, !dbg !1889, !tbaa !175
  %356 = fmul double %354, %355, !dbg !1890
  %357 = fmul double %258, %347, !dbg !1891
  %358 = fsub double %356, %357, !dbg !1892
  %359 = getelementptr inbounds double, ptr %6, i64 %333, !dbg !1893
  store double %358, ptr %359, align 8, !dbg !1894, !tbaa !175
  %360 = add nuw i64 %303, 2, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %360, metadata !1735, metadata !DIExpression()), !dbg !1768
  %361 = getelementptr double, ptr %215, i64 %303, !dbg !1897
  %362 = icmp ugt i64 %360, %1, !dbg !1898
  br i1 %362, label %300, label %363, !dbg !1900

363:                                              ; preds = %302, %363
  %364 = phi i64 [ %412, %363 ], [ %360, %302 ]
  %365 = phi double [ %366, %363 ], [ %317, %302 ]
  %366 = phi double [ %389, %363 ], [ %338, %302 ]
  %367 = phi i64 [ %368, %363 ], [ %333, %302 ]
  call void @llvm.dbg.value(metadata i64 %364, metadata !1735, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double %365, metadata !1743, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double %366, metadata !1742, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %367, metadata !1737, metadata !DIExpression()), !dbg !1768
  %368 = add i64 %367, %364, !dbg !1901
  call void @llvm.dbg.value(metadata i64 %368, metadata !1737, metadata !DIExpression()), !dbg !1768
  %369 = shl i64 %364, 1, !dbg !1903
  %370 = add i64 %369, -1, !dbg !1904
  %371 = uitofp i64 %370 to double, !dbg !1905
  %372 = getelementptr double, ptr %361, i64 %364, !dbg !1906
  %373 = load double, ptr %372, align 8, !dbg !1906, !tbaa !175
  %374 = fdiv double %371, %373, !dbg !1907
  %375 = sub i64 %364, %303, !dbg !1908
  %376 = getelementptr inbounds double, ptr %215, i64 %375, !dbg !1909
  %377 = load double, ptr %376, align 8, !dbg !1909, !tbaa !175
  %378 = fdiv double %374, %377, !dbg !1910
  %379 = fmul double %378, %2, !dbg !1911
  %380 = fmul double %366, %379, !dbg !1912
  %381 = getelementptr double, ptr %376, i64 -1, !dbg !1913
  %382 = load double, ptr %381, align 8, !dbg !1913, !tbaa !175
  %383 = getelementptr double, ptr %372, i64 -1, !dbg !1914
  %384 = load double, ptr %383, align 8, !dbg !1914, !tbaa !175
  %385 = fmul double %382, %384, !dbg !1915
  %386 = fdiv double %385, %373, !dbg !1916
  %387 = fdiv double %386, %377, !dbg !1917
  %388 = fmul double %365, %387, !dbg !1918
  %389 = fsub double %380, %388, !dbg !1919
  call void @llvm.dbg.value(metadata double %389, metadata !1739, metadata !DIExpression()), !dbg !1768
  %390 = fmul double %307, %389, !dbg !1920
  %391 = getelementptr inbounds double, ptr %4, i64 %368, !dbg !1921
  store double %390, ptr %391, align 8, !dbg !1922, !tbaa !175
  %392 = uitofp i64 %364 to double, !dbg !1923
  %393 = fmul double %392, %2, !dbg !1924
  %394 = fmul double %393, %390, !dbg !1925
  %395 = load double, ptr %372, align 8, !dbg !1926, !tbaa !175
  %396 = load double, ptr %376, align 8, !dbg !1927, !tbaa !175
  %397 = fmul double %395, %396, !dbg !1928
  %398 = getelementptr inbounds double, ptr %4, i64 %367, !dbg !1929
  %399 = load double, ptr %398, align 8, !dbg !1929, !tbaa !175
  %400 = fmul double %397, %399, !dbg !1930
  %401 = fsub double %394, %400, !dbg !1931
  %402 = fmul double %214, %401, !dbg !1932
  %403 = getelementptr inbounds double, ptr %5, i64 %368, !dbg !1933
  store double %402, ptr %403, align 8, !dbg !1934, !tbaa !175
  %404 = fadd double %392, 1.000000e+00, !dbg !1935
  %405 = fmul double %404, %392, !dbg !1936
  %406 = fsub double %351, %405, !dbg !1937
  %407 = load double, ptr %391, align 8, !dbg !1938, !tbaa !175
  %408 = fmul double %406, %407, !dbg !1939
  %409 = fmul double %258, %402, !dbg !1940
  %410 = fsub double %408, %409, !dbg !1941
  %411 = getelementptr inbounds double, ptr %6, i64 %368, !dbg !1942
  store double %410, ptr %411, align 8, !dbg !1943, !tbaa !175
  call void @llvm.dbg.value(metadata double %366, metadata !1743, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata double %389, metadata !1742, metadata !DIExpression()), !dbg !1768
  %412 = add i64 %364, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %412, metadata !1735, metadata !DIExpression()), !dbg !1768
  %413 = icmp ugt i64 %412, %1, !dbg !1898
  br i1 %413, label %300, label %363, !dbg !1900, !llvm.loop !1945

414:                                              ; preds = %300
  %415 = add i64 %270, 1, !dbg !1947
  %416 = add i64 %415, %309, !dbg !1948
  br label %417, !dbg !1948

417:                                              ; preds = %414, %260
  %418 = phi double [ %317, %414 ], [ 0x5D48966111CD756, %260 ], !dbg !1768
  %419 = phi double [ %307, %414 ], [ 1.000000e+280, %260 ], !dbg !1768
  %420 = phi i64 [ %416, %414 ], [ 2, %260 ], !dbg !1949
  %421 = fmul double %213, %419, !dbg !1948
  call void @llvm.dbg.value(metadata double %421, metadata !1741, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %420, metadata !1738, metadata !DIExpression()), !dbg !1768
  %422 = getelementptr double, ptr %215, i64 %216, !dbg !1950
  %423 = getelementptr double, ptr %422, i64 -1, !dbg !1950
  %424 = load double, ptr %423, align 8, !dbg !1950, !tbaa !175
  %425 = fmul double %424, %3, !dbg !1951
  %426 = load double, ptr %422, align 8, !dbg !1952, !tbaa !175
  %427 = fdiv double %425, %426, !dbg !1953
  %428 = fmul double %418, %427, !dbg !1954
  call void @llvm.dbg.value(metadata double %428, metadata !1740, metadata !DIExpression()), !dbg !1768
  %429 = fmul double %421, %428, !dbg !1955
  %430 = getelementptr inbounds double, ptr %4, i64 %420, !dbg !1956
  store double %429, ptr %430, align 8, !dbg !1957, !tbaa !175
  %431 = uitofp i64 %1 to double, !dbg !1958
  %432 = fmul double %258, %431, !dbg !1959
  %433 = fmul double %432, %429, !dbg !1960
  %434 = getelementptr inbounds double, ptr %5, i64 %420, !dbg !1961
  store double %433, ptr %434, align 8, !dbg !1962, !tbaa !175
  %435 = fmul double %257, %431, !dbg !1963
  %436 = fadd double %431, 1.000000e+00, !dbg !1964
  %437 = fsub double %435, %436, !dbg !1965
  %438 = fmul double %437, %431, !dbg !1966
  %439 = load double, ptr %430, align 8, !dbg !1967, !tbaa !175
  %440 = fmul double %438, %439, !dbg !1968
  %441 = fmul double %258, %433, !dbg !1969
  %442 = fsub double %440, %441, !dbg !1970
  %443 = getelementptr inbounds double, ptr %6, i64 %420, !dbg !1971
  store double %442, ptr %443, align 8, !dbg !1972, !tbaa !175
  br label %444, !dbg !1973

444:                                              ; preds = %417, %256, %211, %206, %202, %179, %33, %32, %27, %23
  %445 = phi i32 [ 1, %23 ], [ 1, %27 ], [ 1, %32 ], [ 0, %33 ], [ 0, %179 ], [ 1, %202 ], [ 1, %206 ], [ 1, %211 ], [ 0, %256 ], [ 0, %417 ], !dbg !1491
  tail call void @llvm.dbg.value(metadata i32 %445, metadata !1458, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1460, metadata !DIExpression()), !dbg !1476
  %446 = icmp ult i64 %10, 2, !dbg !1974
  br i1 %446, label %493, label %447, !dbg !1975

447:                                              ; preds = %444
  %448 = fmul double %16, %2
  %449 = fneg double %16
  %450 = tail call i64 @llvm.umax.i64(i64 %11, i64 1), !dbg !1975
  %451 = and i64 %450, 1, !dbg !1975
  %452 = icmp ult i64 %10, 4, !dbg !1975
  br i1 %452, label %480, label %453, !dbg !1975

453:                                              ; preds = %447
  %454 = and i64 %450, 9223372036854775806, !dbg !1975
  br label %455, !dbg !1975

455:                                              ; preds = %455, %453
  %456 = phi i64 [ 0, %453 ], [ %477, %455 ]
  %457 = phi i64 [ 0, %453 ], [ %478, %455 ]
  tail call void @llvm.dbg.value(metadata i64 %456, metadata !1460, metadata !DIExpression()), !dbg !1476
  %458 = getelementptr inbounds double, ptr %5, i64 %456, !dbg !1976
  %459 = load double, ptr %458, align 8, !dbg !1976, !tbaa !175
  tail call void @llvm.dbg.value(metadata double %459, metadata !1466, metadata !DIExpression()), !dbg !1977
  %460 = getelementptr inbounds double, ptr %6, i64 %456, !dbg !1978
  %461 = load double, ptr %460, align 8, !dbg !1978, !tbaa !175
  tail call void @llvm.dbg.value(metadata double %461, metadata !1470, metadata !DIExpression()), !dbg !1977
  %462 = fmul double %448, %459, !dbg !1979
  %463 = fsub double %461, %462, !dbg !1980
  %464 = fmul double %17, %463, !dbg !1981
  store double %464, ptr %460, align 8, !dbg !1982, !tbaa !175
  %465 = load double, ptr %458, align 8, !dbg !1983, !tbaa !175
  %466 = fmul double %465, %449, !dbg !1983
  store double %466, ptr %458, align 8, !dbg !1983, !tbaa !175
  %467 = or disjoint i64 %456, 1, !dbg !1984
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1460, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1460, metadata !DIExpression()), !dbg !1476
  %468 = getelementptr inbounds double, ptr %5, i64 %467, !dbg !1976
  %469 = load double, ptr %468, align 8, !dbg !1976, !tbaa !175
  tail call void @llvm.dbg.value(metadata double %469, metadata !1466, metadata !DIExpression()), !dbg !1977
  %470 = getelementptr inbounds double, ptr %6, i64 %467, !dbg !1978
  %471 = load double, ptr %470, align 8, !dbg !1978, !tbaa !175
  tail call void @llvm.dbg.value(metadata double %471, metadata !1470, metadata !DIExpression()), !dbg !1977
  %472 = fmul double %448, %469, !dbg !1979
  %473 = fsub double %471, %472, !dbg !1980
  %474 = fmul double %17, %473, !dbg !1981
  store double %474, ptr %470, align 8, !dbg !1982, !tbaa !175
  %475 = load double, ptr %468, align 8, !dbg !1983, !tbaa !175
  %476 = fmul double %475, %449, !dbg !1983
  store double %476, ptr %468, align 8, !dbg !1983, !tbaa !175
  %477 = add nuw nsw i64 %456, 2, !dbg !1984
  tail call void @llvm.dbg.value(metadata i64 %477, metadata !1460, metadata !DIExpression()), !dbg !1476
  %478 = add i64 %457, 2, !dbg !1975
  %479 = icmp eq i64 %478, %454, !dbg !1975
  br i1 %479, label %480, label %455, !dbg !1975, !llvm.loop !1985

480:                                              ; preds = %455, %447
  %481 = phi i64 [ 0, %447 ], [ %477, %455 ]
  %482 = icmp eq i64 %451, 0, !dbg !1975
  br i1 %482, label %493, label %483, !dbg !1975

483:                                              ; preds = %480
  tail call void @llvm.dbg.value(metadata i64 %481, metadata !1460, metadata !DIExpression()), !dbg !1476
  %484 = getelementptr inbounds double, ptr %5, i64 %481, !dbg !1976
  %485 = load double, ptr %484, align 8, !dbg !1976, !tbaa !175
  tail call void @llvm.dbg.value(metadata double %485, metadata !1466, metadata !DIExpression()), !dbg !1977
  %486 = getelementptr inbounds double, ptr %6, i64 %481, !dbg !1978
  %487 = load double, ptr %486, align 8, !dbg !1978, !tbaa !175
  tail call void @llvm.dbg.value(metadata double %487, metadata !1470, metadata !DIExpression()), !dbg !1977
  %488 = fmul double %448, %485, !dbg !1979
  %489 = fsub double %487, %488, !dbg !1980
  %490 = fmul double %17, %489, !dbg !1981
  store double %490, ptr %486, align 8, !dbg !1982, !tbaa !175
  %491 = load double, ptr %484, align 8, !dbg !1983, !tbaa !175
  %492 = fmul double %491, %449, !dbg !1983
  store double %492, ptr %484, align 8, !dbg !1983, !tbaa !175
  tail call void @llvm.dbg.value(metadata i64 %481, metadata !1460, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1476
  br label %493, !dbg !1987

493:                                              ; preds = %483, %480, %444
  switch i32 %0, label %495 [
    i32 3, label %549
    i32 0, label %549
    i32 1, label %496
    i32 2, label %494
  ], !dbg !1987

494:                                              ; preds = %493
  tail call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCC, metadata !1464, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !1465, metadata !DIExpression()), !dbg !1476
  br label %496, !dbg !1989

495:                                              ; preds = %493
  br label %496, !dbg !1993

496:                                              ; preds = %493, %495, %494
  %497 = phi double [ 0x3FE6A09E667F3BCC, %494 ], [ 0x3FD20DD750429B6D, %493 ], [ 0.000000e+00, %495 ], !dbg !1476
  %498 = phi double [ 5.000000e-01, %494 ], [ 0x3FC9884533D43651, %493 ], [ 0.000000e+00, %495 ], !dbg !1476
  tail call void @llvm.dbg.value(metadata double %498, metadata !1465, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata double %497, metadata !1464, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1474, metadata !DIExpression()), !dbg !1994
  %499 = getelementptr inbounds double, ptr %4, i64 %11, !dbg !1993
  tail call void @llvm.dbg.value(metadata ptr %499, metadata !1475, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1471, metadata !DIExpression()), !dbg !1994
  %500 = tail call i64 @llvm.umax.i64(i64 %8, i64 1), !dbg !1995
  br label %501, !dbg !1995

501:                                              ; preds = %496, %545
  %502 = phi i64 [ 1, %496 ], [ %547, %545 ]
  %503 = phi i64 [ 1, %496 ], [ %546, %545 ]
  %504 = phi i64 [ 0, %496 ], [ %508, %545 ]
  tail call void @llvm.dbg.value(metadata i64 %503, metadata !1474, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1471, metadata !DIExpression()), !dbg !1994
  %505 = getelementptr inbounds double, ptr %499, i64 %503, !dbg !1997
  %506 = load double, ptr %505, align 8, !dbg !1997, !tbaa !175
  %507 = fmul double %497, %506, !dbg !2000
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !433, metadata !DIExpression()), !dbg !2001
  tail call void @llvm.dbg.value(metadata i64 0, metadata !438, metadata !DIExpression()), !dbg !2001
  %508 = add nuw i64 %504, 1, !dbg !2003
  %509 = mul i64 %508, %504, !dbg !2004
  %510 = lshr i64 %509, 1, !dbg !2005
  %511 = getelementptr inbounds double, ptr %4, i64 %510, !dbg !2006
  %512 = load double, ptr %511, align 8, !dbg !2007, !tbaa !175
  %513 = fmul double %512, %507, !dbg !2007
  store double %513, ptr %511, align 8, !dbg !2007, !tbaa !175
  %514 = load double, ptr %505, align 8, !dbg !2008, !tbaa !175
  %515 = fmul double %497, %514, !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !433, metadata !DIExpression()), !dbg !2010
  tail call void @llvm.dbg.value(metadata i64 0, metadata !438, metadata !DIExpression()), !dbg !2010
  %516 = getelementptr inbounds double, ptr %5, i64 %510, !dbg !2012
  %517 = load double, ptr %516, align 8, !dbg !2013, !tbaa !175
  %518 = fmul double %517, %515, !dbg !2013
  store double %518, ptr %516, align 8, !dbg !2013, !tbaa !175
  %519 = load double, ptr %505, align 8, !dbg !2014, !tbaa !175
  %520 = fmul double %497, %519, !dbg !2015
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !433, metadata !DIExpression()), !dbg !2016
  tail call void @llvm.dbg.value(metadata i64 0, metadata !438, metadata !DIExpression()), !dbg !2016
  %521 = getelementptr inbounds double, ptr %6, i64 %510, !dbg !2018
  %522 = load double, ptr %521, align 8, !dbg !2019, !tbaa !175
  %523 = fmul double %522, %520, !dbg !2019
  store double %523, ptr %521, align 8, !dbg !2019, !tbaa !175
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1473, metadata !DIExpression()), !dbg !1994
  %524 = icmp eq i64 %504, 0, !dbg !2020
  br i1 %524, label %545, label %525, !dbg !2023

525:                                              ; preds = %501, %525
  %526 = phi i64 [ %543, %525 ], [ 1, %501 ]
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1473, metadata !DIExpression()), !dbg !1994
  %527 = load double, ptr %505, align 8, !dbg !2024, !tbaa !175
  %528 = fmul double %498, %527, !dbg !2026
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !433, metadata !DIExpression()), !dbg !2027
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !438, metadata !DIExpression()), !dbg !2027
  %529 = add i64 %526, %510, !dbg !2029
  %530 = getelementptr inbounds double, ptr %4, i64 %529, !dbg !2030
  %531 = load double, ptr %530, align 8, !dbg !2031, !tbaa !175
  %532 = fmul double %531, %528, !dbg !2031
  store double %532, ptr %530, align 8, !dbg !2031, !tbaa !175
  %533 = load double, ptr %505, align 8, !dbg !2032, !tbaa !175
  %534 = fmul double %498, %533, !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !433, metadata !DIExpression()), !dbg !2034
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !438, metadata !DIExpression()), !dbg !2034
  %535 = getelementptr inbounds double, ptr %5, i64 %529, !dbg !2036
  %536 = load double, ptr %535, align 8, !dbg !2037, !tbaa !175
  %537 = fmul double %536, %534, !dbg !2037
  store double %537, ptr %535, align 8, !dbg !2037, !tbaa !175
  %538 = load double, ptr %505, align 8, !dbg !2038, !tbaa !175
  %539 = fmul double %498, %538, !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !433, metadata !DIExpression()), !dbg !2040
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !438, metadata !DIExpression()), !dbg !2040
  %540 = getelementptr inbounds double, ptr %6, i64 %529, !dbg !2042
  %541 = load double, ptr %540, align 8, !dbg !2043, !tbaa !175
  %542 = fmul double %541, %539, !dbg !2043
  store double %542, ptr %540, align 8, !dbg !2043, !tbaa !175
  %543 = add nuw i64 %526, 1, !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %543, metadata !1473, metadata !DIExpression()), !dbg !1994
  %544 = icmp eq i64 %543, %502, !dbg !2020
  br i1 %544, label %545, label %525, !dbg !2023, !llvm.loop !2045

545:                                              ; preds = %525, %501
  %546 = add i64 %503, 2, !dbg !2047
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1474, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 %508, metadata !1471, metadata !DIExpression()), !dbg !1994
  %547 = add i64 %502, 1, !dbg !1995
  %548 = icmp eq i64 %508, %500, !dbg !2048
  br i1 %548, label %549, label %501, !dbg !1995, !llvm.loop !2049

549:                                              ; preds = %545, %493, %493
  ret i32 %445, !dbg !2051
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv2_alt_array(i32 noundef %0, i64 noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 !dbg !2052 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2054, metadata !DIExpression()), !dbg !2061
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2055, metadata !DIExpression()), !dbg !2061
  tail call void @llvm.dbg.value(metadata double %2, metadata !2056, metadata !DIExpression()), !dbg !2061
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2057, metadata !DIExpression()), !dbg !2061
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2058, metadata !DIExpression()), !dbg !2061
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2059, metadata !DIExpression()), !dbg !2061
  %7 = tail call i32 @gsl_sf_legendre_deriv2_alt_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %5), !dbg !2062, !range !99
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2060, metadata !DIExpression()), !dbg !2061
  ret i32 %7, !dbg !2063
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_deriv2_alt_array_e(i32 noundef %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 !dbg !2064 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2066, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2067, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double %2, metadata !2068, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double %3, metadata !2069, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2070, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2071, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2072, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !2083
  %8 = add i64 %1, 1, !dbg !2085
  %9 = add i64 %1, 2, !dbg !2086
  %10 = mul i64 %8, %9, !dbg !2087
  %11 = lshr i64 %10, 1, !dbg !2088
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2074, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2075, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2076, metadata !DIExpression()), !dbg !2082
  %12 = icmp eq i32 %0, 3, !dbg !2089
  %13 = fcmp ogt double %2, 1.000000e+00, !dbg !2091
  %14 = fcmp olt double %2, -1.000000e+00
  %15 = or i1 %13, %14, !dbg !2091
  br i1 %12, label %16, label %198, !dbg !2092

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i64 %1, metadata !2093, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata double %2, metadata !2096, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata double %3, metadata !2097, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %4, metadata !2098, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %5, metadata !2099, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %6, metadata !2100, metadata !DIExpression()), !dbg !2118
  br i1 %15, label %17, label %18, !dbg !2121

17:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 1) #6, !dbg !2122
  br label %501, !dbg !2122

18:                                               ; preds = %16
  %19 = tail call double @llvm.fabs.f64(double %2), !dbg !2125
  %20 = fcmp oeq double %19, 1.000000e+00, !dbg !2126
  br i1 %20, label %21, label %22, !dbg !2127

21:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 435, i32 noundef 1) #6, !dbg !2128
  br label %501, !dbg !2128

22:                                               ; preds = %18
  %23 = fcmp une double %3, 1.000000e+00, !dbg !2131
  %24 = fcmp une double %3, -1.000000e+00
  %25 = and i1 %23, %24, !dbg !2132
  br i1 %25, label %26, label %27, !dbg !2132

26:                                               ; preds = %22
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 1) #6, !dbg !2133
  br label %501, !dbg !2133

27:                                               ; preds = %22
  %28 = fsub double 1.000000e+00, %2, !dbg !2136
  %29 = fadd double %2, 1.000000e+00, !dbg !2137
  %30 = fmul double %28, %29, !dbg !2138
  %31 = tail call double @sqrt(double noundef %30) #6, !dbg !2139
  call void @llvm.dbg.value(metadata double %31, metadata !2101, metadata !DIExpression()), !dbg !2140
  %32 = fdiv double 1.000000e+00, %31, !dbg !2141
  call void @llvm.dbg.value(metadata double %32, metadata !2106, metadata !DIExpression()), !dbg !2140
  %33 = fdiv double %32, %31, !dbg !2142
  call void @llvm.dbg.value(metadata double %33, metadata !2107, metadata !DIExpression()), !dbg !2140
  %34 = fmul double %32, %2, !dbg !2143
  call void @llvm.dbg.value(metadata double %34, metadata !2108, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2116, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata double %2, metadata !2115, metadata !DIExpression()), !dbg !2140
  store double 1.000000e+00, ptr %4, align 8, !dbg !2144, !tbaa !175
  store double 0.000000e+00, ptr %5, align 8, !dbg !2145, !tbaa !175
  store double 0.000000e+00, ptr %6, align 8, !dbg !2146, !tbaa !175
  %35 = icmp eq i64 %1, 0, !dbg !2147
  br i1 %35, label %501, label %36, !dbg !2149

36:                                               ; preds = %27
  %37 = getelementptr inbounds double, ptr %4, i64 1, !dbg !2150
  store double %2, ptr %37, align 8, !dbg !2151, !tbaa !175
  %38 = fneg double %31, !dbg !2152
  %39 = getelementptr inbounds double, ptr %5, i64 1, !dbg !2153
  store double %38, ptr %39, align 8, !dbg !2154, !tbaa !175
  %40 = fneg double %2, !dbg !2155
  %41 = getelementptr inbounds double, ptr %6, i64 1, !dbg !2156
  store double %40, ptr %41, align 8, !dbg !2157, !tbaa !175
  call void @llvm.dbg.value(metadata i64 1, metadata !2111, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i64 2, metadata !2109, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2116, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata double %2, metadata !2115, metadata !DIExpression()), !dbg !2140
  %42 = icmp eq i64 %1, 1, !dbg !2158
  br i1 %42, label %48, label %43, !dbg !2161

43:                                               ; preds = %36
  %44 = tail call i64 @llvm.umax.i64(i64 %8, i64 3), !dbg !2161
  br label %50, !dbg !2161

45:                                               ; preds = %50
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !2117, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2114, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i64 0, metadata !2112, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i64 1, metadata !2110, metadata !DIExpression()), !dbg !2140
  %46 = fmul double %31, %3
  %47 = fneg double %32
  br label %84, !dbg !2162

48:                                               ; preds = %36
  %49 = fmul double %31, %3, !dbg !2164
  br label %176, !dbg !2162

50:                                               ; preds = %50, %43
  %51 = phi double [ %52, %50 ], [ 1.000000e+00, %43 ]
  %52 = phi double [ %66, %50 ], [ %2, %43 ]
  %53 = phi i64 [ %55, %50 ], [ 1, %43 ]
  %54 = phi i64 [ %80, %50 ], [ 2, %43 ]
  call void @llvm.dbg.value(metadata double %51, metadata !2116, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata double %52, metadata !2115, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %53, metadata !2111, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %54, metadata !2109, metadata !DIExpression()), !dbg !2140
  %55 = add i64 %54, %53, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %55, metadata !2111, metadata !DIExpression()), !dbg !2140
  %56 = shl i64 %54, 1, !dbg !2167
  %57 = add i64 %56, -1, !dbg !2168
  %58 = uitofp i64 %57 to double, !dbg !2169
  %59 = fmul double %58, %2, !dbg !2170
  %60 = fmul double %52, %59, !dbg !2171
  %61 = add i64 %54, -1, !dbg !2172
  %62 = uitofp i64 %61 to double, !dbg !2173
  %63 = fmul double %51, %62, !dbg !2174
  %64 = fsub double %60, %63, !dbg !2175
  %65 = uitofp i64 %54 to double, !dbg !2176
  %66 = fdiv double %64, %65, !dbg !2177
  call void @llvm.dbg.value(metadata double %66, metadata !2113, metadata !DIExpression()), !dbg !2140
  %67 = getelementptr inbounds double, ptr %4, i64 %55, !dbg !2178
  store double %66, ptr %67, align 8, !dbg !2179, !tbaa !175
  %68 = fneg double %65, !dbg !2180
  %69 = fmul double %66, %2, !dbg !2181
  %70 = fsub double %52, %69, !dbg !2182
  %71 = fmul double %70, %68, !dbg !2183
  %72 = fmul double %32, %71, !dbg !2184
  %73 = getelementptr inbounds double, ptr %5, i64 %55, !dbg !2185
  store double %72, ptr %73, align 8, !dbg !2186, !tbaa !175
  %74 = fadd double %65, 1.000000e+00, !dbg !2187
  %75 = fmul double %74, %68, !dbg !2188
  %76 = fmul double %75, %66, !dbg !2189
  %77 = fmul double %34, %72, !dbg !2190
  %78 = fsub double %76, %77, !dbg !2191
  %79 = getelementptr inbounds double, ptr %6, i64 %55, !dbg !2192
  store double %78, ptr %79, align 8, !dbg !2193, !tbaa !175
  call void @llvm.dbg.value(metadata double %52, metadata !2116, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata double %66, metadata !2115, metadata !DIExpression()), !dbg !2140
  %80 = add nuw i64 %54, 1, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %80, metadata !2109, metadata !DIExpression()), !dbg !2140
  %81 = icmp eq i64 %80, %44, !dbg !2158
  br i1 %81, label %45, label %50, !dbg !2161, !llvm.loop !2195

82:                                               ; preds = %135, %84
  call void @llvm.dbg.value(metadata double %91, metadata !2117, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata double %93, metadata !2114, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %90, metadata !2112, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %89, metadata !2110, metadata !DIExpression()), !dbg !2140
  %83 = icmp eq i64 %89, %1, !dbg !2197
  br i1 %83, label %173, label %84, !dbg !2162, !llvm.loop !2199

84:                                               ; preds = %82, %45
  %85 = phi double [ -1.000000e+00, %45 ], [ %91, %82 ]
  %86 = phi double [ 1.000000e+00, %45 ], [ %93, %82 ]
  %87 = phi i64 [ 0, %45 ], [ %90, %82 ]
  %88 = phi i64 [ 1, %45 ], [ %89, %82 ]
  call void @llvm.dbg.value(metadata double %85, metadata !2117, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata double %86, metadata !2114, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %87, metadata !2112, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %88, metadata !2110, metadata !DIExpression()), !dbg !2140
  %89 = add nuw i64 %88, 1, !dbg !2201
  %90 = add i64 %89, %87, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %90, metadata !2112, metadata !DIExpression()), !dbg !2140
  %91 = fadd double %85, 2.000000e+00, !dbg !2204
  call void @llvm.dbg.value(metadata double %91, metadata !2117, metadata !DIExpression()), !dbg !2140
  %92 = fmul double %46, %91, !dbg !2205
  %93 = fmul double %86, %92, !dbg !2206
  call void @llvm.dbg.value(metadata double %93, metadata !2114, metadata !DIExpression()), !dbg !2140
  %94 = getelementptr inbounds double, ptr %4, i64 %90, !dbg !2207
  store double %93, ptr %94, align 8, !dbg !2208, !tbaa !175
  %95 = uitofp i64 %88 to double, !dbg !2209
  %96 = fmul double %34, %95, !dbg !2210
  %97 = fmul double %93, %96, !dbg !2211
  %98 = getelementptr inbounds double, ptr %5, i64 %90, !dbg !2212
  store double %97, ptr %98, align 8, !dbg !2213, !tbaa !175
  %99 = fmul double %33, %95, !dbg !2214
  %100 = fadd double %95, 1.000000e+00, !dbg !2215
  %101 = fsub double %99, %100, !dbg !2216
  %102 = fmul double %101, %95, !dbg !2217
  %103 = load double, ptr %94, align 8, !dbg !2218, !tbaa !175
  %104 = fmul double %103, %102, !dbg !2219
  %105 = fmul double %34, %97, !dbg !2220
  %106 = fsub double %104, %105, !dbg !2221
  %107 = getelementptr inbounds double, ptr %6, i64 %90, !dbg !2222
  store double %106, ptr %107, align 8, !dbg !2223, !tbaa !175
  call void @llvm.dbg.value(metadata double %93, metadata !2116, metadata !DIExpression()), !dbg !2140
  %108 = add i64 %90, %89, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %108, metadata !2111, metadata !DIExpression()), !dbg !2140
  %109 = fmul double %93, %2, !dbg !2225
  %110 = shl i64 %88, 1, !dbg !2226
  %111 = or disjoint i64 %110, 1, !dbg !2227
  %112 = uitofp i64 %111 to double, !dbg !2228
  %113 = fmul double %109, %112, !dbg !2229
  call void @llvm.dbg.value(metadata double %113, metadata !2115, metadata !DIExpression()), !dbg !2140
  %114 = getelementptr inbounds double, ptr %4, i64 %108, !dbg !2230
  store double %113, ptr %114, align 8, !dbg !2231, !tbaa !175
  %115 = fmul double %93, %112, !dbg !2232
  %116 = uitofp i64 %89 to double, !dbg !2233
  %117 = fmul double %116, %2, !dbg !2234
  %118 = fmul double %117, %113, !dbg !2235
  %119 = fsub double %115, %118, !dbg !2236
  %120 = fmul double %119, %47, !dbg !2237
  %121 = getelementptr inbounds double, ptr %5, i64 %108, !dbg !2238
  store double %120, ptr %121, align 8, !dbg !2239, !tbaa !175
  %122 = mul i64 %88, %88, !dbg !2240
  %123 = uitofp i64 %122 to double, !dbg !2241
  %124 = fmul double %33, %123, !dbg !2242
  %125 = fadd double %95, 2.000000e+00, !dbg !2243
  %126 = fmul double %100, %125, !dbg !2244
  %127 = fsub double %124, %126, !dbg !2245
  %128 = load double, ptr %114, align 8, !dbg !2246, !tbaa !175
  %129 = fmul double %127, %128, !dbg !2247
  %130 = fmul double %34, %120, !dbg !2248
  %131 = fsub double %129, %130, !dbg !2249
  %132 = getelementptr inbounds double, ptr %6, i64 %108, !dbg !2250
  store double %131, ptr %132, align 8, !dbg !2251, !tbaa !175
  %133 = add i64 %88, 2, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %133, metadata !2109, metadata !DIExpression()), !dbg !2140
  %134 = icmp ugt i64 %133, %1, !dbg !2254
  br i1 %134, label %82, label %135, !dbg !2256

135:                                              ; preds = %84, %135
  %136 = phi double [ %137, %135 ], [ %93, %84 ]
  %137 = phi double [ %153, %135 ], [ %113, %84 ]
  %138 = phi i64 [ %140, %135 ], [ %108, %84 ]
  %139 = phi i64 [ %171, %135 ], [ %133, %84 ]
  call void @llvm.dbg.value(metadata double %136, metadata !2116, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata double %137, metadata !2115, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %138, metadata !2111, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %139, metadata !2109, metadata !DIExpression()), !dbg !2140
  %140 = add i64 %139, %138, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %140, metadata !2111, metadata !DIExpression()), !dbg !2140
  %141 = shl i64 %139, 1, !dbg !2259
  %142 = add i64 %141, -1, !dbg !2260
  %143 = uitofp i64 %142 to double, !dbg !2261
  %144 = fmul double %143, %2, !dbg !2262
  %145 = fmul double %137, %144, !dbg !2263
  %146 = add i64 %139, %88, !dbg !2264
  %147 = add i64 %146, -1, !dbg !2265
  %148 = uitofp i64 %147 to double, !dbg !2266
  %149 = fmul double %136, %148, !dbg !2267
  %150 = fsub double %145, %149, !dbg !2268
  %151 = sub i64 %139, %88, !dbg !2269
  %152 = uitofp i64 %151 to double, !dbg !2270
  %153 = fdiv double %150, %152, !dbg !2271
  call void @llvm.dbg.value(metadata double %153, metadata !2113, metadata !DIExpression()), !dbg !2140
  %154 = getelementptr inbounds double, ptr %4, i64 %140, !dbg !2272
  store double %153, ptr %154, align 8, !dbg !2273, !tbaa !175
  %155 = uitofp i64 %146 to double, !dbg !2274
  %156 = fmul double %137, %155, !dbg !2275
  %157 = uitofp i64 %139 to double, !dbg !2276
  %158 = fmul double %157, %2, !dbg !2277
  %159 = fmul double %158, %153, !dbg !2278
  %160 = fsub double %156, %159, !dbg !2279
  %161 = fmul double %160, %47, !dbg !2280
  %162 = getelementptr inbounds double, ptr %5, i64 %140, !dbg !2281
  store double %161, ptr %162, align 8, !dbg !2282, !tbaa !175
  %163 = fadd double %157, 1.000000e+00, !dbg !2283
  %164 = fmul double %163, %157, !dbg !2284
  %165 = fsub double %124, %164, !dbg !2285
  %166 = load double, ptr %154, align 8, !dbg !2286, !tbaa !175
  %167 = fmul double %166, %165, !dbg !2287
  %168 = fmul double %34, %161, !dbg !2288
  %169 = fsub double %167, %168, !dbg !2289
  %170 = getelementptr inbounds double, ptr %6, i64 %140, !dbg !2290
  store double %169, ptr %170, align 8, !dbg !2291, !tbaa !175
  call void @llvm.dbg.value(metadata double %137, metadata !2116, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata double %153, metadata !2115, metadata !DIExpression()), !dbg !2140
  %171 = add i64 %139, 1, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %171, metadata !2109, metadata !DIExpression()), !dbg !2140
  %172 = icmp ugt i64 %171, %1, !dbg !2254
  br i1 %172, label %82, label %135, !dbg !2256, !llvm.loop !2293

173:                                              ; preds = %82
  %174 = add i64 %90, %8, !dbg !2295
  %175 = fadd double %91, 2.000000e+00, !dbg !2296
  br label %176, !dbg !2295

176:                                              ; preds = %173, %48
  %177 = phi double [ %49, %48 ], [ %46, %173 ], !dbg !2164
  %178 = phi double [ 1.000000e+00, %48 ], [ %93, %173 ], !dbg !2140
  %179 = phi double [ 1.000000e+00, %48 ], [ %175, %173 ], !dbg !2140
  %180 = phi i64 [ 2, %48 ], [ %174, %173 ], !dbg !2297
  call void @llvm.dbg.value(metadata i64 %180, metadata !2112, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata double %179, metadata !2117, metadata !DIExpression()), !dbg !2140
  %181 = fmul double %177, %179, !dbg !2298
  %182 = fmul double %178, %181, !dbg !2299
  call void @llvm.dbg.value(metadata double %182, metadata !2114, metadata !DIExpression()), !dbg !2140
  %183 = getelementptr inbounds double, ptr %4, i64 %180, !dbg !2300
  store double %182, ptr %183, align 8, !dbg !2301, !tbaa !175
  %184 = uitofp i64 %1 to double, !dbg !2302
  %185 = fmul double %184, %2, !dbg !2303
  %186 = fmul double %185, %182, !dbg !2304
  %187 = fmul double %32, %186, !dbg !2305
  %188 = getelementptr inbounds double, ptr %5, i64 %180, !dbg !2306
  store double %187, ptr %188, align 8, !dbg !2307, !tbaa !175
  %189 = fmul double %33, %184, !dbg !2308
  %190 = fadd double %184, 1.000000e+00, !dbg !2309
  %191 = fsub double %189, %190, !dbg !2310
  %192 = fmul double %191, %184, !dbg !2311
  %193 = load double, ptr %183, align 8, !dbg !2312, !tbaa !175
  %194 = fmul double %192, %193, !dbg !2313
  %195 = fmul double %34, %187, !dbg !2314
  %196 = fsub double %194, %195, !dbg !2315
  %197 = getelementptr inbounds double, ptr %6, i64 %180, !dbg !2316
  store double %196, ptr %197, align 8, !dbg !2317, !tbaa !175
  br label %444, !dbg !2318

198:                                              ; preds = %7
  call void @llvm.dbg.value(metadata i64 %1, metadata !2319, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata double %2, metadata !2322, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata double %3, metadata !2323, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata ptr %4, metadata !2324, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata ptr %5, metadata !2325, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata ptr %6, metadata !2326, metadata !DIExpression()), !dbg !2351
  br i1 %15, label %199, label %200, !dbg !2354

199:                                              ; preds = %198
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 222, i32 noundef 1) #6, !dbg !2355
  br label %444, !dbg !2355

200:                                              ; preds = %198
  %201 = tail call double @llvm.fabs.f64(double %2), !dbg !2358
  %202 = fcmp oeq double %201, 1.000000e+00, !dbg !2359
  br i1 %202, label %203, label %204, !dbg !2360

203:                                              ; preds = %200
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 227, i32 noundef 1) #6, !dbg !2361
  br label %444, !dbg !2361

204:                                              ; preds = %200
  %205 = fcmp une double %3, 1.000000e+00, !dbg !2364
  %206 = fcmp une double %3, -1.000000e+00
  %207 = and i1 %205, %206, !dbg !2365
  br i1 %207, label %208, label %209, !dbg !2365

208:                                              ; preds = %204
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 232, i32 noundef 1) #6, !dbg !2366
  br label %444, !dbg !2366

209:                                              ; preds = %204
  call void @llvm.dbg.value(metadata double 0x5CD0B15A491EB84, metadata !2327, metadata !DIExpression()), !dbg !2369
  %210 = fsub double 1.000000e+00, %2, !dbg !2370
  %211 = fadd double %2, 1.000000e+00, !dbg !2371
  %212 = fmul double %210, %211, !dbg !2372
  %213 = tail call double @sqrt(double noundef %212) #6, !dbg !2373
  call void @llvm.dbg.value(metadata double %213, metadata !2332, metadata !DIExpression()), !dbg !2369
  %214 = fdiv double 1.000000e+00, %213, !dbg !2374
  call void @llvm.dbg.value(metadata double %214, metadata !2333, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double %257, metadata !2334, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double %258, metadata !2335, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i64 %1, metadata !121, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %11, metadata !2345, metadata !DIExpression()), !dbg !2369
  %215 = getelementptr inbounds double, ptr %4, i64 %11, !dbg !2377
  call void @llvm.dbg.value(metadata ptr %215, metadata !2346, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i64 %1, metadata !306, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %215, metadata !311, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i64 0, metadata !312, metadata !DIExpression()), !dbg !2378
  %216 = shl i64 %1, 1
  %217 = add i64 %216, 2, !dbg !2380
  %218 = tail call i64 @llvm.umax.i64(i64 %217, i64 1), !dbg !2380
  %219 = and i64 %218, 3, !dbg !2380
  %220 = icmp ult i64 %217, 4, !dbg !2380
  br i1 %220, label %244, label %221, !dbg !2380

221:                                              ; preds = %209
  %222 = and i64 %218, -4, !dbg !2380
  br label %223, !dbg !2380

223:                                              ; preds = %223, %221
  %224 = phi i64 [ 0, %221 ], [ %241, %223 ]
  %225 = phi i64 [ 0, %221 ], [ %242, %223 ]
  call void @llvm.dbg.value(metadata i64 %224, metadata !312, metadata !DIExpression()), !dbg !2378
  %226 = uitofp i64 %224 to double, !dbg !2381
  %227 = tail call double @llvm.sqrt.f64(double %226), !dbg !2382
  %228 = getelementptr inbounds double, ptr %215, i64 %224, !dbg !2383
  store double %227, ptr %228, align 8, !dbg !2384, !tbaa !175
  %229 = or disjoint i64 %224, 1, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %229, metadata !312, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i64 %229, metadata !312, metadata !DIExpression()), !dbg !2378
  %230 = uitofp i64 %229 to double, !dbg !2381
  %231 = tail call double @llvm.sqrt.f64(double %230), !dbg !2382
  %232 = getelementptr inbounds double, ptr %215, i64 %229, !dbg !2383
  store double %231, ptr %232, align 8, !dbg !2384, !tbaa !175
  %233 = or disjoint i64 %224, 2, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %233, metadata !312, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i64 %233, metadata !312, metadata !DIExpression()), !dbg !2378
  %234 = uitofp i64 %233 to double, !dbg !2381
  %235 = tail call double @llvm.sqrt.f64(double %234), !dbg !2382
  %236 = getelementptr inbounds double, ptr %215, i64 %233, !dbg !2383
  store double %235, ptr %236, align 8, !dbg !2384, !tbaa !175
  %237 = or disjoint i64 %224, 3, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %237, metadata !312, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i64 %237, metadata !312, metadata !DIExpression()), !dbg !2378
  %238 = uitofp i64 %237 to double, !dbg !2381
  %239 = tail call double @llvm.sqrt.f64(double %238), !dbg !2382
  %240 = getelementptr inbounds double, ptr %215, i64 %237, !dbg !2383
  store double %239, ptr %240, align 8, !dbg !2384, !tbaa !175
  %241 = add nuw i64 %224, 4, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %241, metadata !312, metadata !DIExpression()), !dbg !2378
  %242 = add i64 %225, 4, !dbg !2380
  %243 = icmp eq i64 %242, %222, !dbg !2380
  br i1 %243, label %244, label %223, !dbg !2380, !llvm.loop !2386

244:                                              ; preds = %223, %209
  %245 = phi i64 [ 0, %209 ], [ %241, %223 ]
  %246 = icmp eq i64 %219, 0, !dbg !2380
  br i1 %246, label %256, label %247, !dbg !2380

247:                                              ; preds = %244, %247
  %248 = phi i64 [ %253, %247 ], [ %245, %244 ]
  %249 = phi i64 [ %254, %247 ], [ 0, %244 ]
  call void @llvm.dbg.value(metadata i64 %248, metadata !312, metadata !DIExpression()), !dbg !2378
  %250 = uitofp i64 %248 to double, !dbg !2381
  %251 = tail call double @llvm.sqrt.f64(double %250), !dbg !2382
  %252 = getelementptr inbounds double, ptr %215, i64 %248, !dbg !2383
  store double %251, ptr %252, align 8, !dbg !2384, !tbaa !175
  %253 = add nuw i64 %248, 1, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %253, metadata !312, metadata !DIExpression()), !dbg !2378
  %254 = add i64 %249, 1, !dbg !2380
  %255 = icmp eq i64 %254, %219, !dbg !2380
  br i1 %255, label %256, label %247, !dbg !2380, !llvm.loop !2388

256:                                              ; preds = %247, %244
  %257 = fdiv double %214, %213, !dbg !2389
  %258 = fmul double %214, %2, !dbg !2390
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2344, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double %2, metadata !2343, metadata !DIExpression()), !dbg !2369
  store double 1.000000e+00, ptr %4, align 8, !dbg !2391, !tbaa !175
  store double 0.000000e+00, ptr %5, align 8, !dbg !2392, !tbaa !175
  store double 0.000000e+00, ptr %6, align 8, !dbg !2393, !tbaa !175
  %259 = icmp eq i64 %1, 0, !dbg !2394
  br i1 %259, label %444, label %260, !dbg !2396

260:                                              ; preds = %256
  %261 = getelementptr inbounds double, ptr %4, i64 1, !dbg !2397
  store double %2, ptr %261, align 8, !dbg !2398, !tbaa !175
  %262 = fneg double %213, !dbg !2399
  %263 = getelementptr inbounds double, ptr %5, i64 1, !dbg !2400
  store double %262, ptr %263, align 8, !dbg !2401, !tbaa !175
  %264 = fneg double %2, !dbg !2402
  %265 = getelementptr inbounds double, ptr %6, i64 1, !dbg !2403
  store double %264, ptr %265, align 8, !dbg !2404, !tbaa !175
  call void @llvm.dbg.value(metadata i64 1, metadata !2338, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i64 2, metadata !2336, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2344, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double %2, metadata !2343, metadata !DIExpression()), !dbg !2369
  %266 = icmp eq i64 %1, 1, !dbg !2405
  br i1 %266, label %417, label %267, !dbg !2406

267:                                              ; preds = %260
  %268 = tail call i64 @llvm.umax.i64(i64 %8, i64 3), !dbg !2406
  br label %271, !dbg !2406

269:                                              ; preds = %271
  call void @llvm.dbg.value(metadata i64 1, metadata !2337, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double 1.000000e+280, metadata !2342, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double 0x5D48966111CD756, metadata !2341, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i64 0, metadata !2339, metadata !DIExpression()), !dbg !2369
  %270 = tail call i64 @llvm.umax.i64(i64 %1, i64 2), !dbg !2407
  br label %302, !dbg !2407

271:                                              ; preds = %271, %267
  %272 = phi i64 [ %298, %271 ], [ 2, %267 ]
  %273 = phi double [ %274, %271 ], [ 1.000000e+00, %267 ]
  %274 = phi double [ %284, %271 ], [ %2, %267 ]
  %275 = phi i64 [ %278, %271 ], [ 1, %267 ]
  call void @llvm.dbg.value(metadata i64 %272, metadata !2336, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double %273, metadata !2344, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double %274, metadata !2343, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i64 %275, metadata !2338, metadata !DIExpression()), !dbg !2369
  %276 = uitofp i64 %272 to double, !dbg !2409
  %277 = fdiv double 1.000000e+00, %276, !dbg !2410
  call void @llvm.dbg.value(metadata double %277, metadata !2347, metadata !DIExpression()), !dbg !2411
  %278 = add i64 %275, %272, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %278, metadata !2338, metadata !DIExpression()), !dbg !2369
  %279 = fsub double 2.000000e+00, %277, !dbg !2413
  %280 = fmul double %279, %2, !dbg !2414
  %281 = fmul double %274, %280, !dbg !2415
  %282 = fsub double 1.000000e+00, %277, !dbg !2416
  %283 = fmul double %273, %282, !dbg !2417
  %284 = fsub double %281, %283, !dbg !2418
  call void @llvm.dbg.value(metadata double %284, metadata !2340, metadata !DIExpression()), !dbg !2369
  %285 = getelementptr inbounds double, ptr %4, i64 %278, !dbg !2419
  store double %284, ptr %285, align 8, !dbg !2420, !tbaa !175
  %286 = fmul double %214, %276, !dbg !2421
  %287 = fmul double %284, %2, !dbg !2422
  %288 = fsub double %287, %274, !dbg !2423
  %289 = fmul double %286, %288, !dbg !2424
  %290 = getelementptr inbounds double, ptr %5, i64 %278, !dbg !2425
  store double %289, ptr %290, align 8, !dbg !2426, !tbaa !175
  %291 = fneg double %276, !dbg !2427
  %292 = fadd double %276, 1.000000e+00, !dbg !2428
  %293 = fmul double %292, %291, !dbg !2429
  %294 = fmul double %293, %284, !dbg !2430
  %295 = fmul double %258, %289, !dbg !2431
  %296 = fsub double %294, %295, !dbg !2432
  %297 = getelementptr inbounds double, ptr %6, i64 %278, !dbg !2433
  store double %296, ptr %297, align 8, !dbg !2434, !tbaa !175
  call void @llvm.dbg.value(metadata double %274, metadata !2344, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double %284, metadata !2343, metadata !DIExpression()), !dbg !2369
  %298 = add nuw i64 %272, 1, !dbg !2435
  call void @llvm.dbg.value(metadata i64 %298, metadata !2336, metadata !DIExpression()), !dbg !2369
  %299 = icmp eq i64 %298, %268, !dbg !2405
  br i1 %299, label %269, label %271, !dbg !2406, !llvm.loop !2436

300:                                              ; preds = %363, %302
  call void @llvm.dbg.value(metadata i64 %308, metadata !2337, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double %307, metadata !2342, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double %317, metadata !2341, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i64 %309, metadata !2339, metadata !DIExpression()), !dbg !2369
  %301 = icmp eq i64 %308, %270, !dbg !2438
  br i1 %301, label %414, label %302, !dbg !2407, !llvm.loop !2440

302:                                              ; preds = %300, %269
  %303 = phi i64 [ %308, %300 ], [ 1, %269 ]
  %304 = phi double [ %307, %300 ], [ 1.000000e+280, %269 ]
  %305 = phi double [ %317, %300 ], [ 0x5D48966111CD756, %269 ]
  %306 = phi i64 [ %309, %300 ], [ 0, %269 ]
  call void @llvm.dbg.value(metadata i64 %303, metadata !2337, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double %304, metadata !2342, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double %305, metadata !2341, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i64 %306, metadata !2339, metadata !DIExpression()), !dbg !2369
  %307 = fmul double %213, %304, !dbg !2442
  call void @llvm.dbg.value(metadata double %307, metadata !2342, metadata !DIExpression()), !dbg !2369
  %308 = add nuw i64 %303, 1, !dbg !2444
  %309 = add i64 %306, %308, !dbg !2445
  call void @llvm.dbg.value(metadata i64 %309, metadata !2339, metadata !DIExpression()), !dbg !2369
  %310 = shl i64 %303, 1, !dbg !2446
  %311 = getelementptr double, ptr %215, i64 %310, !dbg !2447
  %312 = getelementptr double, ptr %311, i64 -1, !dbg !2447
  %313 = load double, ptr %312, align 8, !dbg !2447, !tbaa !175
  %314 = fmul double %313, %3, !dbg !2448
  %315 = load double, ptr %311, align 8, !dbg !2449, !tbaa !175
  %316 = fdiv double %314, %315, !dbg !2450
  %317 = fmul double %305, %316, !dbg !2451
  call void @llvm.dbg.value(metadata double %317, metadata !2341, metadata !DIExpression()), !dbg !2369
  %318 = fmul double %307, %317, !dbg !2452
  %319 = getelementptr inbounds double, ptr %4, i64 %309, !dbg !2453
  store double %318, ptr %319, align 8, !dbg !2454, !tbaa !175
  %320 = uitofp i64 %303 to double, !dbg !2455
  %321 = fmul double %258, %320, !dbg !2456
  %322 = fmul double %321, %318, !dbg !2457
  %323 = getelementptr inbounds double, ptr %5, i64 %309, !dbg !2458
  store double %322, ptr %323, align 8, !dbg !2459, !tbaa !175
  %324 = fmul double %257, %320, !dbg !2460
  %325 = fadd double %320, 1.000000e+00, !dbg !2461
  %326 = fsub double %324, %325, !dbg !2462
  %327 = fmul double %326, %320, !dbg !2463
  %328 = load double, ptr %319, align 8, !dbg !2464, !tbaa !175
  %329 = fmul double %327, %328, !dbg !2465
  %330 = fmul double %258, %322, !dbg !2466
  %331 = fsub double %329, %330, !dbg !2467
  %332 = getelementptr inbounds double, ptr %6, i64 %309, !dbg !2468
  store double %331, ptr %332, align 8, !dbg !2469, !tbaa !175
  call void @llvm.dbg.value(metadata double %317, metadata !2344, metadata !DIExpression()), !dbg !2369
  %333 = add i64 %309, %308, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %333, metadata !2338, metadata !DIExpression()), !dbg !2369
  %334 = or disjoint i64 %310, 1, !dbg !2471
  %335 = getelementptr inbounds double, ptr %215, i64 %334, !dbg !2472
  %336 = load double, ptr %335, align 8, !dbg !2472, !tbaa !175
  %337 = fmul double %336, %2, !dbg !2473
  %338 = fmul double %317, %337, !dbg !2474
  call void @llvm.dbg.value(metadata double %338, metadata !2343, metadata !DIExpression()), !dbg !2369
  %339 = fmul double %307, %338, !dbg !2475
  %340 = getelementptr inbounds double, ptr %4, i64 %333, !dbg !2476
  store double %339, ptr %340, align 8, !dbg !2477, !tbaa !175
  %341 = fmul double %325, %2, !dbg !2478
  %342 = fmul double %341, %339, !dbg !2479
  %343 = load double, ptr %335, align 8, !dbg !2480, !tbaa !175
  %344 = load double, ptr %319, align 8, !dbg !2481, !tbaa !175
  %345 = fmul double %343, %344, !dbg !2482
  %346 = fsub double %342, %345, !dbg !2483
  %347 = fmul double %214, %346, !dbg !2484
  %348 = getelementptr inbounds double, ptr %5, i64 %333, !dbg !2485
  store double %347, ptr %348, align 8, !dbg !2486, !tbaa !175
  %349 = mul i64 %303, %303, !dbg !2487
  %350 = uitofp i64 %349 to double, !dbg !2488
  %351 = fmul double %257, %350, !dbg !2489
  %352 = fadd double %320, 2.000000e+00, !dbg !2490
  %353 = fmul double %325, %352, !dbg !2491
  %354 = fsub double %351, %353, !dbg !2492
  %355 = load double, ptr %340, align 8, !dbg !2493, !tbaa !175
  %356 = fmul double %354, %355, !dbg !2494
  %357 = fmul double %258, %347, !dbg !2495
  %358 = fsub double %356, %357, !dbg !2496
  %359 = getelementptr inbounds double, ptr %6, i64 %333, !dbg !2497
  store double %358, ptr %359, align 8, !dbg !2498, !tbaa !175
  %360 = add nuw i64 %303, 2, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %360, metadata !2336, metadata !DIExpression()), !dbg !2369
  %361 = getelementptr double, ptr %215, i64 %303, !dbg !2501
  %362 = icmp ugt i64 %360, %1, !dbg !2502
  br i1 %362, label %300, label %363, !dbg !2504

363:                                              ; preds = %302, %363
  %364 = phi i64 [ %412, %363 ], [ %360, %302 ]
  %365 = phi double [ %366, %363 ], [ %317, %302 ]
  %366 = phi double [ %389, %363 ], [ %338, %302 ]
  %367 = phi i64 [ %368, %363 ], [ %333, %302 ]
  call void @llvm.dbg.value(metadata i64 %364, metadata !2336, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double %365, metadata !2344, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double %366, metadata !2343, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i64 %367, metadata !2338, metadata !DIExpression()), !dbg !2369
  %368 = add i64 %367, %364, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %368, metadata !2338, metadata !DIExpression()), !dbg !2369
  %369 = shl i64 %364, 1, !dbg !2507
  %370 = add i64 %369, -1, !dbg !2508
  %371 = uitofp i64 %370 to double, !dbg !2509
  %372 = getelementptr double, ptr %361, i64 %364, !dbg !2510
  %373 = load double, ptr %372, align 8, !dbg !2510, !tbaa !175
  %374 = fdiv double %371, %373, !dbg !2511
  %375 = sub i64 %364, %303, !dbg !2512
  %376 = getelementptr inbounds double, ptr %215, i64 %375, !dbg !2513
  %377 = load double, ptr %376, align 8, !dbg !2513, !tbaa !175
  %378 = fdiv double %374, %377, !dbg !2514
  %379 = fmul double %378, %2, !dbg !2515
  %380 = fmul double %366, %379, !dbg !2516
  %381 = getelementptr double, ptr %376, i64 -1, !dbg !2517
  %382 = load double, ptr %381, align 8, !dbg !2517, !tbaa !175
  %383 = getelementptr double, ptr %372, i64 -1, !dbg !2518
  %384 = load double, ptr %383, align 8, !dbg !2518, !tbaa !175
  %385 = fmul double %382, %384, !dbg !2519
  %386 = fdiv double %385, %373, !dbg !2520
  %387 = fdiv double %386, %377, !dbg !2521
  %388 = fmul double %365, %387, !dbg !2522
  %389 = fsub double %380, %388, !dbg !2523
  call void @llvm.dbg.value(metadata double %389, metadata !2340, metadata !DIExpression()), !dbg !2369
  %390 = fmul double %307, %389, !dbg !2524
  %391 = getelementptr inbounds double, ptr %4, i64 %368, !dbg !2525
  store double %390, ptr %391, align 8, !dbg !2526, !tbaa !175
  %392 = uitofp i64 %364 to double, !dbg !2527
  %393 = fmul double %392, %2, !dbg !2528
  %394 = fmul double %393, %390, !dbg !2529
  %395 = load double, ptr %372, align 8, !dbg !2530, !tbaa !175
  %396 = load double, ptr %376, align 8, !dbg !2531, !tbaa !175
  %397 = fmul double %395, %396, !dbg !2532
  %398 = getelementptr inbounds double, ptr %4, i64 %367, !dbg !2533
  %399 = load double, ptr %398, align 8, !dbg !2533, !tbaa !175
  %400 = fmul double %397, %399, !dbg !2534
  %401 = fsub double %394, %400, !dbg !2535
  %402 = fmul double %214, %401, !dbg !2536
  %403 = getelementptr inbounds double, ptr %5, i64 %368, !dbg !2537
  store double %402, ptr %403, align 8, !dbg !2538, !tbaa !175
  %404 = fadd double %392, 1.000000e+00, !dbg !2539
  %405 = fmul double %404, %392, !dbg !2540
  %406 = fsub double %351, %405, !dbg !2541
  %407 = load double, ptr %391, align 8, !dbg !2542, !tbaa !175
  %408 = fmul double %406, %407, !dbg !2543
  %409 = fmul double %258, %402, !dbg !2544
  %410 = fsub double %408, %409, !dbg !2545
  %411 = getelementptr inbounds double, ptr %6, i64 %368, !dbg !2546
  store double %410, ptr %411, align 8, !dbg !2547, !tbaa !175
  call void @llvm.dbg.value(metadata double %366, metadata !2344, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata double %389, metadata !2343, metadata !DIExpression()), !dbg !2369
  %412 = add i64 %364, 1, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %412, metadata !2336, metadata !DIExpression()), !dbg !2369
  %413 = icmp ugt i64 %412, %1, !dbg !2502
  br i1 %413, label %300, label %363, !dbg !2504, !llvm.loop !2549

414:                                              ; preds = %300
  %415 = add i64 %270, 1, !dbg !2551
  %416 = add i64 %415, %309, !dbg !2552
  br label %417, !dbg !2552

417:                                              ; preds = %414, %260
  %418 = phi double [ %317, %414 ], [ 0x5D48966111CD756, %260 ], !dbg !2369
  %419 = phi double [ %307, %414 ], [ 1.000000e+280, %260 ], !dbg !2369
  %420 = phi i64 [ %416, %414 ], [ 2, %260 ], !dbg !2553
  %421 = fmul double %213, %419, !dbg !2552
  call void @llvm.dbg.value(metadata double %421, metadata !2342, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i64 %420, metadata !2339, metadata !DIExpression()), !dbg !2369
  %422 = getelementptr double, ptr %215, i64 %216, !dbg !2554
  %423 = getelementptr double, ptr %422, i64 -1, !dbg !2554
  %424 = load double, ptr %423, align 8, !dbg !2554, !tbaa !175
  %425 = fmul double %424, %3, !dbg !2555
  %426 = load double, ptr %422, align 8, !dbg !2556, !tbaa !175
  %427 = fdiv double %425, %426, !dbg !2557
  %428 = fmul double %418, %427, !dbg !2558
  call void @llvm.dbg.value(metadata double %428, metadata !2341, metadata !DIExpression()), !dbg !2369
  %429 = fmul double %421, %428, !dbg !2559
  %430 = getelementptr inbounds double, ptr %4, i64 %420, !dbg !2560
  store double %429, ptr %430, align 8, !dbg !2561, !tbaa !175
  %431 = uitofp i64 %1 to double, !dbg !2562
  %432 = fmul double %258, %431, !dbg !2563
  %433 = fmul double %432, %429, !dbg !2564
  %434 = getelementptr inbounds double, ptr %5, i64 %420, !dbg !2565
  store double %433, ptr %434, align 8, !dbg !2566, !tbaa !175
  %435 = fmul double %257, %431, !dbg !2567
  %436 = fadd double %431, 1.000000e+00, !dbg !2568
  %437 = fsub double %435, %436, !dbg !2569
  %438 = fmul double %437, %431, !dbg !2570
  %439 = load double, ptr %430, align 8, !dbg !2571, !tbaa !175
  %440 = fmul double %438, %439, !dbg !2572
  %441 = fmul double %258, %433, !dbg !2573
  %442 = fsub double %440, %441, !dbg !2574
  %443 = getelementptr inbounds double, ptr %6, i64 %420, !dbg !2575
  store double %442, ptr %443, align 8, !dbg !2576, !tbaa !175
  br label %444, !dbg !2577

444:                                              ; preds = %417, %256, %208, %203, %199, %176
  %445 = phi i32 [ 0, %176 ], [ 1, %199 ], [ 1, %203 ], [ 1, %208 ], [ 0, %256 ], [ 0, %417 ], !dbg !2091
  tail call void @llvm.dbg.value(metadata i32 %445, metadata !2073, metadata !DIExpression()), !dbg !2082
  switch i32 %0, label %447 [
    i32 3, label %501
    i32 0, label %501
    i32 1, label %448
    i32 2, label %446
  ], !dbg !2578

446:                                              ; preds = %444
  tail call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCC, metadata !2075, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !2076, metadata !DIExpression()), !dbg !2082
  br label %448, !dbg !2580

447:                                              ; preds = %444
  br label %448, !dbg !2584

448:                                              ; preds = %444, %447, %446
  %449 = phi double [ 0x3FE6A09E667F3BCC, %446 ], [ 0x3FD20DD750429B6D, %444 ], [ 0.000000e+00, %447 ], !dbg !2082
  %450 = phi double [ 5.000000e-01, %446 ], [ 0x3FC9884533D43651, %444 ], [ 0.000000e+00, %447 ], !dbg !2082
  tail call void @llvm.dbg.value(metadata double %450, metadata !2076, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double %449, metadata !2075, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2080, metadata !DIExpression()), !dbg !2585
  %451 = getelementptr inbounds double, ptr %4, i64 %11, !dbg !2584
  tail call void @llvm.dbg.value(metadata ptr %451, metadata !2081, metadata !DIExpression()), !dbg !2585
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2077, metadata !DIExpression()), !dbg !2585
  %452 = tail call i64 @llvm.umax.i64(i64 %8, i64 1), !dbg !2586
  br label %453, !dbg !2586

453:                                              ; preds = %448, %497
  %454 = phi i64 [ 1, %448 ], [ %499, %497 ]
  %455 = phi i64 [ 1, %448 ], [ %498, %497 ]
  %456 = phi i64 [ 0, %448 ], [ %460, %497 ]
  tail call void @llvm.dbg.value(metadata i64 %455, metadata !2080, metadata !DIExpression()), !dbg !2585
  tail call void @llvm.dbg.value(metadata i64 %456, metadata !2077, metadata !DIExpression()), !dbg !2585
  %457 = getelementptr inbounds double, ptr %451, i64 %455, !dbg !2588
  %458 = load double, ptr %457, align 8, !dbg !2588, !tbaa !175
  %459 = fmul double %449, %458, !dbg !2591
  tail call void @llvm.dbg.value(metadata i64 %456, metadata !433, metadata !DIExpression()), !dbg !2592
  tail call void @llvm.dbg.value(metadata i64 0, metadata !438, metadata !DIExpression()), !dbg !2592
  %460 = add nuw i64 %456, 1, !dbg !2594
  %461 = mul i64 %460, %456, !dbg !2595
  %462 = lshr i64 %461, 1, !dbg !2596
  %463 = getelementptr inbounds double, ptr %4, i64 %462, !dbg !2597
  %464 = load double, ptr %463, align 8, !dbg !2598, !tbaa !175
  %465 = fmul double %464, %459, !dbg !2598
  store double %465, ptr %463, align 8, !dbg !2598, !tbaa !175
  %466 = load double, ptr %457, align 8, !dbg !2599, !tbaa !175
  %467 = fmul double %449, %466, !dbg !2600
  tail call void @llvm.dbg.value(metadata i64 %456, metadata !433, metadata !DIExpression()), !dbg !2601
  tail call void @llvm.dbg.value(metadata i64 0, metadata !438, metadata !DIExpression()), !dbg !2601
  %468 = getelementptr inbounds double, ptr %5, i64 %462, !dbg !2603
  %469 = load double, ptr %468, align 8, !dbg !2604, !tbaa !175
  %470 = fmul double %469, %467, !dbg !2604
  store double %470, ptr %468, align 8, !dbg !2604, !tbaa !175
  %471 = load double, ptr %457, align 8, !dbg !2605, !tbaa !175
  %472 = fmul double %449, %471, !dbg !2606
  tail call void @llvm.dbg.value(metadata i64 %456, metadata !433, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.dbg.value(metadata i64 0, metadata !438, metadata !DIExpression()), !dbg !2607
  %473 = getelementptr inbounds double, ptr %6, i64 %462, !dbg !2609
  %474 = load double, ptr %473, align 8, !dbg !2610, !tbaa !175
  %475 = fmul double %474, %472, !dbg !2610
  store double %475, ptr %473, align 8, !dbg !2610, !tbaa !175
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2079, metadata !DIExpression()), !dbg !2585
  %476 = icmp eq i64 %456, 0, !dbg !2611
  br i1 %476, label %497, label %477, !dbg !2614

477:                                              ; preds = %453, %477
  %478 = phi i64 [ %495, %477 ], [ 1, %453 ]
  tail call void @llvm.dbg.value(metadata i64 %478, metadata !2079, metadata !DIExpression()), !dbg !2585
  %479 = load double, ptr %457, align 8, !dbg !2615, !tbaa !175
  %480 = fmul double %450, %479, !dbg !2617
  tail call void @llvm.dbg.value(metadata i64 %456, metadata !433, metadata !DIExpression()), !dbg !2618
  tail call void @llvm.dbg.value(metadata i64 %478, metadata !438, metadata !DIExpression()), !dbg !2618
  %481 = add i64 %478, %462, !dbg !2620
  %482 = getelementptr inbounds double, ptr %4, i64 %481, !dbg !2621
  %483 = load double, ptr %482, align 8, !dbg !2622, !tbaa !175
  %484 = fmul double %483, %480, !dbg !2622
  store double %484, ptr %482, align 8, !dbg !2622, !tbaa !175
  %485 = load double, ptr %457, align 8, !dbg !2623, !tbaa !175
  %486 = fmul double %450, %485, !dbg !2624
  tail call void @llvm.dbg.value(metadata i64 %456, metadata !433, metadata !DIExpression()), !dbg !2625
  tail call void @llvm.dbg.value(metadata i64 %478, metadata !438, metadata !DIExpression()), !dbg !2625
  %487 = getelementptr inbounds double, ptr %5, i64 %481, !dbg !2627
  %488 = load double, ptr %487, align 8, !dbg !2628, !tbaa !175
  %489 = fmul double %488, %486, !dbg !2628
  store double %489, ptr %487, align 8, !dbg !2628, !tbaa !175
  %490 = load double, ptr %457, align 8, !dbg !2629, !tbaa !175
  %491 = fmul double %450, %490, !dbg !2630
  tail call void @llvm.dbg.value(metadata i64 %456, metadata !433, metadata !DIExpression()), !dbg !2631
  tail call void @llvm.dbg.value(metadata i64 %478, metadata !438, metadata !DIExpression()), !dbg !2631
  %492 = getelementptr inbounds double, ptr %6, i64 %481, !dbg !2633
  %493 = load double, ptr %492, align 8, !dbg !2634, !tbaa !175
  %494 = fmul double %493, %491, !dbg !2634
  store double %494, ptr %492, align 8, !dbg !2634, !tbaa !175
  %495 = add nuw i64 %478, 1, !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 %495, metadata !2079, metadata !DIExpression()), !dbg !2585
  %496 = icmp eq i64 %495, %454, !dbg !2611
  br i1 %496, label %497, label %477, !dbg !2614, !llvm.loop !2636

497:                                              ; preds = %477, %453
  %498 = add i64 %455, 2, !dbg !2638
  tail call void @llvm.dbg.value(metadata i64 %498, metadata !2080, metadata !DIExpression()), !dbg !2585
  tail call void @llvm.dbg.value(metadata i64 %460, metadata !2077, metadata !DIExpression()), !dbg !2585
  %499 = add i64 %454, 1, !dbg !2586
  %500 = icmp eq i64 %460, %452, !dbg !2639
  br i1 %500, label %501, label %453, !dbg !2586, !llvm.loop !2640

501:                                              ; preds = %497, %17, %21, %26, %27, %444, %444
  %502 = phi i32 [ %445, %444 ], [ %445, %444 ], [ 0, %27 ], [ 1, %26 ], [ 1, %21 ], [ 1, %17 ], [ %445, %497 ]
  ret i32 %502, !dbg !2642
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @gsl_sf_legendre_array_n(i64 noundef %0) local_unnamed_addr #1 !dbg !2643 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2645, metadata !DIExpression()), !dbg !2648
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !121, metadata !DIExpression()), !dbg !2649
  %2 = add i64 %0, 1, !dbg !2651
  %3 = add i64 %0, 2, !dbg !2652
  %4 = mul i64 %2, %3, !dbg !2653
  %5 = lshr i64 %4, 1, !dbg !2654
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2646, metadata !DIExpression()), !dbg !2648
  %6 = shl i64 %0, 1, !dbg !2655
  %7 = add i64 %6, 2, !dbg !2656
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2647, metadata !DIExpression()), !dbg !2648
  %8 = add i64 %7, %5, !dbg !2657
  ret i64 %8, !dbg !2658
}

declare !dbg !2659 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!169 = !DILocation(line: 444, column: 34, scope: !145, inlinedAt: !158)
!170 = !DILocation(line: 444, column: 46, scope: !145, inlinedAt: !158)
!171 = !DILocation(line: 444, column: 39, scope: !145, inlinedAt: !158)
!172 = !DILocation(line: 444, column: 24, scope: !145, inlinedAt: !158)
!173 = !DILocation(line: 0, scope: !145, inlinedAt: !158)
!174 = !DILocation(line: 466, column: 23, scope: !145, inlinedAt: !158)
!175 = !{!176, !176, i64 0}
!176 = !{!"double", !177, i64 0}
!177 = !{!"omnipotent char", !178, i64 0}
!178 = !{!"Simple C/C++ TBAA"}
!179 = !DILocation(line: 474, column: 16, scope: !180, inlinedAt: !158)
!180 = distinct !DILexicalBlock(scope: !145, file: !2, line: 474, column: 11)
!181 = !DILocation(line: 474, column: 11, scope: !145, inlinedAt: !158)
!182 = !DILocation(line: 477, column: 7, scope: !145, inlinedAt: !158)
!183 = !DILocation(line: 477, column: 23, scope: !145, inlinedAt: !158)
!184 = !DILocation(line: 488, column: 21, scope: !185, inlinedAt: !158)
!185 = distinct !DILexicalBlock(scope: !186, file: !2, line: 488, column: 7)
!186 = distinct !DILexicalBlock(scope: !145, file: !2, line: 488, column: 7)
!187 = !DILocation(line: 488, column: 7, scope: !186, inlinedAt: !158)
!188 = !DILocation(line: 511, column: 7, scope: !189, inlinedAt: !158)
!189 = distinct !DILexicalBlock(scope: !145, file: !2, line: 511, column: 7)
!190 = !DILocation(line: 577, column: 22, scope: !145, inlinedAt: !158)
!191 = !DILocation(line: 490, column: 13, scope: !192, inlinedAt: !158)
!192 = distinct !DILexicalBlock(scope: !185, file: !2, line: 489, column: 9)
!193 = !DILocation(line: 491, column: 20, scope: !192, inlinedAt: !158)
!194 = !DILocation(line: 491, column: 23, scope: !192, inlinedAt: !158)
!195 = !DILocation(line: 491, column: 18, scope: !192, inlinedAt: !158)
!196 = !DILocation(line: 491, column: 28, scope: !192, inlinedAt: !158)
!197 = !DILocation(line: 491, column: 32, scope: !192, inlinedAt: !158)
!198 = !DILocation(line: 491, column: 43, scope: !192, inlinedAt: !158)
!199 = !DILocation(line: 491, column: 40, scope: !192, inlinedAt: !158)
!200 = !DILocation(line: 491, column: 48, scope: !192, inlinedAt: !158)
!201 = !DILocation(line: 491, column: 38, scope: !192, inlinedAt: !158)
!202 = !DILocation(line: 491, column: 57, scope: !192, inlinedAt: !158)
!203 = !DILocation(line: 491, column: 55, scope: !192, inlinedAt: !158)
!204 = !DILocation(line: 492, column: 11, scope: !192, inlinedAt: !158)
!205 = !DILocation(line: 492, column: 27, scope: !192, inlinedAt: !158)
!206 = !DILocation(line: 488, column: 30, scope: !185, inlinedAt: !158)
!207 = distinct !{!207, !187, !208, !209}
!208 = !DILocation(line: 502, column: 9, scope: !186, inlinedAt: !158)
!209 = !{!"llvm.loop.mustprogress"}
!210 = !DILocation(line: 511, column: 21, scope: !211, inlinedAt: !158)
!211 = distinct !DILexicalBlock(scope: !189, file: !2, line: 511, column: 7)
!212 = distinct !{!212, !188, !213, !209}
!213 = !DILocation(line: 571, column: 9, scope: !189, inlinedAt: !158)
!214 = !DILocation(line: 520, column: 22, scope: !215, inlinedAt: !158)
!215 = distinct !DILexicalBlock(scope: !211, file: !2, line: 512, column: 9)
!216 = !DILocation(line: 520, column: 17, scope: !215, inlinedAt: !158)
!217 = !DILocation(line: 521, column: 18, scope: !215, inlinedAt: !158)
!218 = !DILocation(line: 522, column: 30, scope: !215, inlinedAt: !158)
!219 = !DILocation(line: 522, column: 15, scope: !215, inlinedAt: !158)
!220 = !DILocation(line: 523, column: 11, scope: !215, inlinedAt: !158)
!221 = !DILocation(line: 523, column: 31, scope: !215, inlinedAt: !158)
!222 = !DILocation(line: 541, column: 25, scope: !215, inlinedAt: !158)
!223 = !DILocation(line: 542, column: 19, scope: !215, inlinedAt: !158)
!224 = !DILocation(line: 542, column: 29, scope: !215, inlinedAt: !158)
!225 = !DILocation(line: 542, column: 32, scope: !215, inlinedAt: !158)
!226 = !DILocation(line: 542, column: 27, scope: !215, inlinedAt: !158)
!227 = !DILocation(line: 542, column: 25, scope: !215, inlinedAt: !158)
!228 = !DILocation(line: 543, column: 11, scope: !215, inlinedAt: !158)
!229 = !DILocation(line: 543, column: 27, scope: !215, inlinedAt: !158)
!230 = !DILocation(line: 554, column: 22, scope: !231, inlinedAt: !158)
!231 = distinct !DILexicalBlock(scope: !215, file: !2, line: 554, column: 11)
!232 = !DILocation(line: 554, column: 29, scope: !233, inlinedAt: !158)
!233 = distinct !DILexicalBlock(scope: !231, file: !2, line: 554, column: 11)
!234 = !DILocation(line: 554, column: 11, scope: !231, inlinedAt: !158)
!235 = !DILocation(line: 556, column: 17, scope: !236, inlinedAt: !158)
!236 = distinct !DILexicalBlock(scope: !233, file: !2, line: 555, column: 13)
!237 = !DILocation(line: 557, column: 24, scope: !236, inlinedAt: !158)
!238 = !DILocation(line: 557, column: 27, scope: !236, inlinedAt: !158)
!239 = !DILocation(line: 557, column: 22, scope: !236, inlinedAt: !158)
!240 = !DILocation(line: 557, column: 32, scope: !236, inlinedAt: !158)
!241 = !DILocation(line: 557, column: 36, scope: !236, inlinedAt: !158)
!242 = !DILocation(line: 557, column: 51, scope: !236, inlinedAt: !158)
!243 = !DILocation(line: 557, column: 44, scope: !236, inlinedAt: !158)
!244 = !DILocation(line: 557, column: 56, scope: !236, inlinedAt: !158)
!245 = !DILocation(line: 557, column: 42, scope: !236, inlinedAt: !158)
!246 = !DILocation(line: 558, column: 33, scope: !236, inlinedAt: !158)
!247 = !DILocation(line: 558, column: 21, scope: !236, inlinedAt: !158)
!248 = !DILocation(line: 557, column: 63, scope: !236, inlinedAt: !158)
!249 = !DILocation(line: 559, column: 15, scope: !236, inlinedAt: !158)
!250 = !DILocation(line: 559, column: 31, scope: !236, inlinedAt: !158)
!251 = !DILocation(line: 554, column: 38, scope: !233, inlinedAt: !158)
!252 = distinct !{!252, !234, !253, !209}
!253 = !DILocation(line: 570, column: 13, scope: !231, inlinedAt: !158)
!254 = !DILocation(line: 576, column: 14, scope: !145, inlinedAt: !158)
!255 = !DILocation(line: 577, column: 26, scope: !145, inlinedAt: !158)
!256 = !DILocation(line: 577, column: 11, scope: !145, inlinedAt: !158)
!257 = !DILocation(line: 578, column: 7, scope: !145, inlinedAt: !158)
!258 = !DILocation(line: 578, column: 27, scope: !145, inlinedAt: !158)
!259 = !DILocation(line: 588, column: 7, scope: !145, inlinedAt: !158)
!260 = !DILocalVariable(name: "lmax", arg: 1, scope: !261, file: !2, line: 218, type: !85)
!261 = distinct !DISubprogram(name: "legendre_array_schmidt_e", scope: !2, file: !2, line: 217, type: !138, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !262)
!262 = !{!260, !263, !264, !265, !266, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282}
!263 = !DILocalVariable(name: "x", arg: 2, scope: !261, file: !2, line: 218, type: !89)
!264 = !DILocalVariable(name: "csphase", arg: 3, scope: !261, file: !2, line: 218, type: !89)
!265 = !DILocalVariable(name: "result_array", arg: 4, scope: !261, file: !2, line: 218, type: !90)
!266 = !DILocalVariable(name: "eps", scope: !267, file: !2, line: 236, type: !89)
!267 = distinct !DILexicalBlock(scope: !268, file: !2, line: 235, column: 5)
!268 = distinct !DILexicalBlock(scope: !269, file: !2, line: 230, column: 12)
!269 = distinct !DILexicalBlock(scope: !261, file: !2, line: 220, column: 7)
!270 = !DILocalVariable(name: "u", scope: !267, file: !2, line: 237, type: !89)
!271 = !DILocalVariable(name: "l", scope: !267, file: !2, line: 247, type: !86)
!272 = !DILocalVariable(name: "m", scope: !267, file: !2, line: 247, type: !86)
!273 = !DILocalVariable(name: "k", scope: !267, file: !2, line: 248, type: !86)
!274 = !DILocalVariable(name: "idxmm", scope: !267, file: !2, line: 248, type: !86)
!275 = !DILocalVariable(name: "plm", scope: !267, file: !2, line: 249, type: !70)
!276 = !DILocalVariable(name: "pmm", scope: !267, file: !2, line: 250, type: !70)
!277 = !DILocalVariable(name: "rescalem", scope: !267, file: !2, line: 251, type: !70)
!278 = !DILocalVariable(name: "pm1", scope: !267, file: !2, line: 252, type: !70)
!279 = !DILocalVariable(name: "pm2", scope: !267, file: !2, line: 253, type: !70)
!280 = !DILocalVariable(name: "nlm", scope: !267, file: !2, line: 254, type: !86)
!281 = !DILocalVariable(name: "sqrts", scope: !267, file: !2, line: 255, type: !90)
!282 = !DILocalVariable(name: "linv", scope: !283, file: !2, line: 288, type: !70)
!283 = distinct !DILexicalBlock(scope: !284, file: !2, line: 287, column: 9)
!284 = distinct !DILexicalBlock(scope: !285, file: !2, line: 286, column: 7)
!285 = distinct !DILexicalBlock(scope: !267, file: !2, line: 286, column: 7)
!286 = !DILocation(line: 0, scope: !261, inlinedAt: !287)
!287 = distinct !DILocation(line: 121, column: 11, scope: !288)
!288 = distinct !DILexicalBlock(scope: !133, file: !2, line: 119, column: 5)
!289 = !DILocation(line: 220, column: 15, scope: !269, inlinedAt: !287)
!290 = !DILocation(line: 222, column: 7, scope: !291, inlinedAt: !287)
!291 = distinct !DILexicalBlock(scope: !292, file: !2, line: 222, column: 7)
!292 = distinct !DILexicalBlock(scope: !269, file: !2, line: 221, column: 5)
!293 = !DILocation(line: 230, column: 20, scope: !268, inlinedAt: !287)
!294 = !DILocation(line: 230, column: 27, scope: !268, inlinedAt: !287)
!295 = !DILocation(line: 232, column: 7, scope: !296, inlinedAt: !287)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 232, column: 7)
!297 = distinct !DILexicalBlock(scope: !268, file: !2, line: 231, column: 5)
!298 = !DILocation(line: 0, scope: !267, inlinedAt: !287)
!299 = !DILocation(line: 237, column: 34, scope: !267, inlinedAt: !287)
!300 = !DILocation(line: 237, column: 46, scope: !267, inlinedAt: !287)
!301 = !DILocation(line: 237, column: 39, scope: !267, inlinedAt: !287)
!302 = !DILocation(line: 237, column: 24, scope: !267, inlinedAt: !287)
!303 = !DILocation(line: 0, scope: !122, inlinedAt: !304)
!304 = distinct !DILocation(line: 254, column: 20, scope: !267, inlinedAt: !287)
!305 = !DILocation(line: 255, column: 25, scope: !267, inlinedAt: !287)
!306 = !DILocalVariable(name: "lmax", arg: 1, scope: !307, file: !20, line: 109, type: !85)
!307 = distinct !DISubprogram(name: "legendre_sqrts", scope: !20, file: !20, line: 109, type: !308, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !310)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !85, !90}
!310 = !{!306, !311, !312}
!311 = !DILocalVariable(name: "array", arg: 2, scope: !307, file: !20, line: 109, type: !90)
!312 = !DILocalVariable(name: "l", scope: !307, file: !20, line: 111, type: !86)
!313 = !DILocation(line: 0, scope: !307, inlinedAt: !314)
!314 = distinct !DILocation(line: 258, column: 7, scope: !267, inlinedAt: !287)
!315 = !DILocation(line: 112, column: 3, scope: !316, inlinedAt: !314)
!316 = distinct !DILexicalBlock(scope: !307, file: !20, line: 112, column: 3)
!317 = !DILocation(line: 113, column: 21, scope: !318, inlinedAt: !314)
!318 = distinct !DILexicalBlock(scope: !316, file: !20, line: 112, column: 3)
!319 = !DILocation(line: 113, column: 16, scope: !318, inlinedAt: !314)
!320 = !DILocation(line: 113, column: 5, scope: !318, inlinedAt: !314)
!321 = !DILocation(line: 113, column: 14, scope: !318, inlinedAt: !314)
!322 = !DILocation(line: 112, column: 34, scope: !318, inlinedAt: !314)
!323 = distinct !{!323, !315, !324, !209}
!324 = !DILocation(line: 113, column: 31, scope: !316, inlinedAt: !314)
!325 = distinct !{!325, !326}
!326 = !{!"llvm.loop.unroll.disable"}
!327 = !DILocation(line: 264, column: 23, scope: !267, inlinedAt: !287)
!328 = !DILocation(line: 272, column: 16, scope: !329, inlinedAt: !287)
!329 = distinct !DILexicalBlock(scope: !267, file: !2, line: 272, column: 11)
!330 = !DILocation(line: 272, column: 11, scope: !267, inlinedAt: !287)
!331 = !DILocation(line: 275, column: 7, scope: !267, inlinedAt: !287)
!332 = !DILocation(line: 275, column: 23, scope: !267, inlinedAt: !287)
!333 = !DILocation(line: 286, column: 21, scope: !284, inlinedAt: !287)
!334 = !DILocation(line: 286, column: 7, scope: !285, inlinedAt: !287)
!335 = !DILocation(line: 288, column: 31, scope: !283, inlinedAt: !287)
!336 = !DILocation(line: 288, column: 29, scope: !283, inlinedAt: !287)
!337 = !DILocation(line: 0, scope: !283, inlinedAt: !287)
!338 = !DILocation(line: 292, column: 22, scope: !283, inlinedAt: !287)
!339 = !DILocation(line: 292, column: 30, scope: !283, inlinedAt: !287)
!340 = !DILocation(line: 292, column: 34, scope: !283, inlinedAt: !287)
!341 = !DILocation(line: 292, column: 47, scope: !283, inlinedAt: !287)
!342 = !DILocation(line: 292, column: 55, scope: !283, inlinedAt: !287)
!343 = !DILocation(line: 292, column: 40, scope: !283, inlinedAt: !287)
!344 = !DILocation(line: 293, column: 11, scope: !283, inlinedAt: !287)
!345 = !DILocation(line: 293, column: 27, scope: !283, inlinedAt: !287)
!346 = !DILocation(line: 321, column: 7, scope: !347, inlinedAt: !287)
!347 = distinct !DILexicalBlock(scope: !267, file: !2, line: 321, column: 7)
!348 = !DILocation(line: 290, column: 13, scope: !283, inlinedAt: !287)
!349 = !DILocation(line: 286, column: 30, scope: !284, inlinedAt: !287)
!350 = distinct !{!350, !334, !351, !209}
!351 = !DILocation(line: 303, column: 9, scope: !285, inlinedAt: !287)
!352 = !DILocation(line: 321, column: 21, scope: !353, inlinedAt: !287)
!353 = distinct !DILexicalBlock(scope: !347, file: !2, line: 321, column: 7)
!354 = distinct !{!354, !346, !355, !209}
!355 = !DILocation(line: 387, column: 9, scope: !347, inlinedAt: !287)
!356 = !DILocation(line: 324, column: 20, scope: !357, inlinedAt: !287)
!357 = distinct !DILexicalBlock(scope: !353, file: !2, line: 322, column: 9)
!358 = !DILocation(line: 332, column: 22, scope: !357, inlinedAt: !287)
!359 = !DILocation(line: 332, column: 17, scope: !357, inlinedAt: !287)
!360 = !DILocation(line: 333, column: 36, scope: !357, inlinedAt: !287)
!361 = !DILocation(line: 333, column: 28, scope: !357, inlinedAt: !287)
!362 = !DILocation(line: 333, column: 26, scope: !357, inlinedAt: !287)
!363 = !DILocation(line: 333, column: 47, scope: !357, inlinedAt: !287)
!364 = !DILocation(line: 333, column: 45, scope: !357, inlinedAt: !287)
!365 = !DILocation(line: 333, column: 15, scope: !357, inlinedAt: !287)
!366 = !DILocation(line: 334, column: 37, scope: !357, inlinedAt: !287)
!367 = !DILocation(line: 334, column: 11, scope: !357, inlinedAt: !287)
!368 = !DILocation(line: 334, column: 31, scope: !357, inlinedAt: !287)
!369 = !DILocation(line: 351, column: 25, scope: !357, inlinedAt: !287)
!370 = !DILocation(line: 352, column: 33, scope: !357, inlinedAt: !287)
!371 = !DILocation(line: 352, column: 21, scope: !357, inlinedAt: !287)
!372 = !DILocation(line: 352, column: 19, scope: !357, inlinedAt: !287)
!373 = !DILocation(line: 352, column: 38, scope: !357, inlinedAt: !287)
!374 = !DILocation(line: 353, column: 33, scope: !357, inlinedAt: !287)
!375 = !DILocation(line: 353, column: 11, scope: !357, inlinedAt: !287)
!376 = !DILocation(line: 353, column: 27, scope: !357, inlinedAt: !287)
!377 = !DILocation(line: 366, column: 22, scope: !378, inlinedAt: !287)
!378 = distinct !DILexicalBlock(scope: !357, file: !2, line: 366, column: 11)
!379 = !DILocation(line: 366, column: 16, scope: !378, inlinedAt: !287)
!380 = !DILocation(line: 366, column: 29, scope: !381, inlinedAt: !287)
!381 = distinct !DILexicalBlock(scope: !378, file: !2, line: 366, column: 11)
!382 = !DILocation(line: 366, column: 11, scope: !378, inlinedAt: !287)
!383 = !DILocation(line: 368, column: 17, scope: !384, inlinedAt: !287)
!384 = distinct !DILexicalBlock(scope: !381, file: !2, line: 367, column: 13)
!385 = !DILocation(line: 370, column: 19, scope: !384, inlinedAt: !287)
!386 = !DILocation(line: 370, column: 22, scope: !384, inlinedAt: !287)
!387 = !DILocation(line: 370, column: 17, scope: !384, inlinedAt: !287)
!388 = !DILocation(line: 370, column: 29, scope: !384, inlinedAt: !287)
!389 = !DILocation(line: 370, column: 27, scope: !384, inlinedAt: !287)
!390 = !DILocation(line: 370, column: 52, scope: !384, inlinedAt: !287)
!391 = !DILocation(line: 370, column: 44, scope: !384, inlinedAt: !287)
!392 = !DILocation(line: 370, column: 42, scope: !384, inlinedAt: !287)
!393 = !DILocation(line: 370, column: 57, scope: !384, inlinedAt: !287)
!394 = !DILocation(line: 370, column: 61, scope: !384, inlinedAt: !287)
!395 = !DILocation(line: 371, column: 17, scope: !384, inlinedAt: !287)
!396 = !DILocation(line: 371, column: 36, scope: !384, inlinedAt: !287)
!397 = !DILocation(line: 371, column: 34, scope: !384, inlinedAt: !287)
!398 = !DILocation(line: 371, column: 53, scope: !384, inlinedAt: !287)
!399 = !DILocation(line: 372, column: 30, scope: !384, inlinedAt: !287)
!400 = !DILocation(line: 372, column: 45, scope: !384, inlinedAt: !287)
!401 = !DILocation(line: 370, column: 67, scope: !384, inlinedAt: !287)
!402 = !DILocation(line: 373, column: 37, scope: !384, inlinedAt: !287)
!403 = !DILocation(line: 373, column: 15, scope: !384, inlinedAt: !287)
!404 = !DILocation(line: 373, column: 31, scope: !384, inlinedAt: !287)
!405 = !DILocation(line: 366, column: 38, scope: !381, inlinedAt: !287)
!406 = distinct !{!406, !382, !407, !209}
!407 = !DILocation(line: 386, column: 13, scope: !378, inlinedAt: !287)
!408 = !DILocation(line: 321, scope: !347, inlinedAt: !287)
!409 = !DILocation(line: 391, column: 16, scope: !267, inlinedAt: !287)
!410 = !DILocation(line: 393, column: 24, scope: !267, inlinedAt: !287)
!411 = !DILocation(line: 393, column: 22, scope: !267, inlinedAt: !287)
!412 = !DILocation(line: 393, column: 46, scope: !267, inlinedAt: !287)
!413 = !DILocation(line: 393, column: 44, scope: !267, inlinedAt: !287)
!414 = !DILocation(line: 393, column: 11, scope: !267, inlinedAt: !287)
!415 = !DILocation(line: 394, column: 33, scope: !267, inlinedAt: !287)
!416 = !DILocation(line: 394, column: 7, scope: !267, inlinedAt: !287)
!417 = !DILocation(line: 394, column: 27, scope: !267, inlinedAt: !287)
!418 = !DILocation(line: 404, column: 7, scope: !267, inlinedAt: !287)
!419 = !DILocation(line: 141, column: 39, scope: !420)
!420 = distinct !DILexicalBlock(scope: !101, file: !2, line: 141, column: 7)
!421 = !DILocation(line: 154, column: 5, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !2, line: 151, column: 5)
!423 = distinct !DILexicalBlock(scope: !424, file: !2, line: 150, column: 12)
!424 = distinct !DILexicalBlock(scope: !420, file: !2, line: 145, column: 12)
!425 = !DILocation(line: 164, column: 23, scope: !116)
!426 = !DILocation(line: 0, scope: !116)
!427 = !DILocation(line: 166, column: 5, scope: !428)
!428 = distinct !DILexicalBlock(scope: !116, file: !2, line: 166, column: 5)
!429 = !DILocation(line: 169, column: 11, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !2, line: 167, column: 7)
!431 = distinct !DILexicalBlock(scope: !428, file: !2, line: 166, column: 5)
!432 = !DILocation(line: 169, column: 27, scope: !430)
!433 = !DILocalVariable(name: "l", arg: 1, scope: !434, file: !20, line: 93, type: !85)
!434 = distinct !DISubprogram(name: "gsl_sf_legendre_array_index", scope: !20, file: !20, line: 93, type: !435, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{!86, !85, !85}
!437 = !{!433, !438}
!438 = !DILocalVariable(name: "m", arg: 2, scope: !434, file: !20, line: 93, type: !85)
!439 = !DILocation(line: 0, scope: !434, inlinedAt: !440)
!440 = distinct !DILocation(line: 168, column: 22, scope: !430)
!441 = !DILocation(line: 95, column: 18, scope: !434, inlinedAt: !440)
!442 = !DILocation(line: 95, column: 13, scope: !434, inlinedAt: !440)
!443 = !DILocation(line: 95, column: 23, scope: !434, inlinedAt: !440)
!444 = !DILocation(line: 168, column: 9, scope: !430)
!445 = !DILocation(line: 168, column: 57, scope: !430)
!446 = !DILocation(line: 179, column: 23, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !2, line: 179, column: 9)
!448 = distinct !DILexicalBlock(scope: !430, file: !2, line: 179, column: 9)
!449 = !DILocation(line: 179, column: 9, scope: !448)
!450 = !DILocation(line: 182, column: 15, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !2, line: 180, column: 11)
!452 = !DILocation(line: 182, column: 31, scope: !451)
!453 = !DILocation(line: 0, scope: !434, inlinedAt: !454)
!454 = distinct !DILocation(line: 181, column: 26, scope: !451)
!455 = !DILocation(line: 181, column: 13, scope: !451)
!456 = !DILocation(line: 181, column: 61, scope: !451)
!457 = !DILocation(line: 179, column: 29, scope: !447)
!458 = distinct !{!458, !449, !459, !209}
!459 = !DILocation(line: 191, column: 11, scope: !448)
!460 = !DILocation(line: 193, column: 18, scope: !430)
!461 = !DILocation(line: 166, column: 19, scope: !431)
!462 = distinct !{!462, !427, !463, !209}
!463 = !DILocation(line: 194, column: 7, scope: !428)
!464 = !DILocation(line: 198, column: 1, scope: !101)
!465 = !DILocation(line: 0, scope: !122)
!466 = !DILocation(line: 68, column: 17, scope: !122)
!467 = !DILocation(line: 68, column: 30, scope: !122)
!468 = !DILocation(line: 68, column: 22, scope: !122)
!469 = !DILocation(line: 68, column: 35, scope: !122)
!470 = !DILocation(line: 68, column: 3, scope: !122)
!471 = !DISubprogram(name: "sqrt", scope: !472, file: !472, line: 143, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!472 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!473 = !DISubroutineType(types: !474)
!474 = !{!70, !70}
!475 = !DILocation(line: 0, scope: !434)
!476 = !DILocation(line: 95, column: 18, scope: !434)
!477 = !DILocation(line: 95, column: 13, scope: !434)
!478 = !DILocation(line: 95, column: 23, scope: !434)
!479 = !DILocation(line: 95, column: 27, scope: !434)
!480 = !DILocation(line: 95, column: 3, scope: !434)
!481 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv_array", scope: !2, file: !2, line: 74, type: !482, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !484)
!482 = !DISubroutineType(types: !483)
!483 = !{!32, !83, !85, !89, !90, !90}
!484 = !{!485, !486, !487, !488, !489, !490}
!485 = !DILocalVariable(name: "norm", arg: 1, scope: !481, file: !2, line: 75, type: !83)
!486 = !DILocalVariable(name: "lmax", arg: 2, scope: !481, file: !2, line: 75, type: !85)
!487 = !DILocalVariable(name: "x", arg: 3, scope: !481, file: !2, line: 75, type: !89)
!488 = !DILocalVariable(name: "result_array", arg: 4, scope: !481, file: !2, line: 76, type: !90)
!489 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !481, file: !2, line: 76, type: !90)
!490 = !DILocalVariable(name: "s", scope: !481, file: !2, line: 78, type: !32)
!491 = !DILocation(line: 0, scope: !481)
!492 = !DILocation(line: 78, column: 11, scope: !481)
!493 = !DILocation(line: 79, column: 3, scope: !481)
!494 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv_array_e", scope: !2, file: !2, line: 95, type: !495, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{!32, !83, !85, !89, !89, !90, !90}
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !513, !514, !515}
!498 = !DILocalVariable(name: "norm", arg: 1, scope: !494, file: !2, line: 96, type: !83)
!499 = !DILocalVariable(name: "lmax", arg: 2, scope: !494, file: !2, line: 96, type: !85)
!500 = !DILocalVariable(name: "x", arg: 3, scope: !494, file: !2, line: 96, type: !89)
!501 = !DILocalVariable(name: "csphase", arg: 4, scope: !494, file: !2, line: 97, type: !89)
!502 = !DILocalVariable(name: "result_array", arg: 5, scope: !494, file: !2, line: 97, type: !90)
!503 = !DILocalVariable(name: "result_deriv_array", arg: 6, scope: !494, file: !2, line: 97, type: !90)
!504 = !DILocalVariable(name: "s", scope: !494, file: !2, line: 99, type: !32)
!505 = !DILocalVariable(name: "nlm", scope: !494, file: !2, line: 100, type: !85)
!506 = !DILocalVariable(name: "i", scope: !494, file: !2, line: 102, type: !86)
!507 = !DILocalVariable(name: "u", scope: !494, file: !2, line: 104, type: !89)
!508 = !DILocalVariable(name: "uinv", scope: !494, file: !2, line: 105, type: !89)
!509 = !DILocalVariable(name: "fac1", scope: !494, file: !2, line: 111, type: !70)
!510 = !DILocalVariable(name: "fac2", scope: !494, file: !2, line: 111, type: !70)
!511 = !DILocalVariable(name: "l", scope: !512, file: !2, line: 162, type: !86)
!512 = distinct !DILexicalBlock(scope: !494, file: !2, line: 161, column: 3)
!513 = !DILocalVariable(name: "m", scope: !512, file: !2, line: 162, type: !86)
!514 = !DILocalVariable(name: "twoellp1", scope: !512, file: !2, line: 163, type: !86)
!515 = !DILocalVariable(name: "sqrts", scope: !512, file: !2, line: 164, type: !90)
!516 = !DILocation(line: 0, scope: !494)
!517 = !DILocation(line: 0, scope: !122, inlinedAt: !518)
!518 = distinct !DILocation(line: 100, column: 22, scope: !494)
!519 = !DILocation(line: 68, column: 17, scope: !122, inlinedAt: !518)
!520 = !DILocation(line: 68, column: 30, scope: !122, inlinedAt: !518)
!521 = !DILocation(line: 68, column: 22, scope: !122, inlinedAt: !518)
!522 = !DILocation(line: 68, column: 35, scope: !122, inlinedAt: !518)
!523 = !DILocation(line: 104, column: 30, scope: !494)
!524 = !DILocation(line: 104, column: 42, scope: !494)
!525 = !DILocation(line: 104, column: 35, scope: !494)
!526 = !DILocation(line: 104, column: 20, scope: !494)
!527 = !DILocation(line: 113, column: 12, scope: !528)
!528 = distinct !DILexicalBlock(scope: !494, file: !2, line: 113, column: 7)
!529 = !DILocation(line: 0, scope: !528)
!530 = !DILocation(line: 113, column: 7, scope: !494)
!531 = !DILocalVariable(name: "lmax", arg: 1, scope: !532, file: !2, line: 426, type: !85)
!532 = distinct !DISubprogram(name: "legendre_deriv_array_none_e", scope: !2, file: !2, line: 425, type: !533, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !535)
!533 = !DISubroutineType(types: !534)
!534 = !{!32, !85, !89, !89, !90, !90}
!535 = !{!531, !536, !537, !538, !539, !540, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555}
!536 = !DILocalVariable(name: "x", arg: 2, scope: !532, file: !2, line: 426, type: !89)
!537 = !DILocalVariable(name: "csphase", arg: 3, scope: !532, file: !2, line: 426, type: !89)
!538 = !DILocalVariable(name: "result_array", arg: 4, scope: !532, file: !2, line: 426, type: !90)
!539 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !532, file: !2, line: 426, type: !90)
!540 = !DILocalVariable(name: "u", scope: !541, file: !2, line: 444, type: !89)
!541 = distinct !DILexicalBlock(scope: !542, file: !2, line: 443, column: 5)
!542 = distinct !DILexicalBlock(scope: !543, file: !2, line: 438, column: 12)
!543 = distinct !DILexicalBlock(scope: !544, file: !2, line: 433, column: 12)
!544 = distinct !DILexicalBlock(scope: !532, file: !2, line: 428, column: 7)
!545 = !DILocalVariable(name: "uinv", scope: !541, file: !2, line: 446, type: !89)
!546 = !DILocalVariable(name: "xbyu", scope: !541, file: !2, line: 452, type: !89)
!547 = !DILocalVariable(name: "l", scope: !541, file: !2, line: 454, type: !86)
!548 = !DILocalVariable(name: "m", scope: !541, file: !2, line: 454, type: !86)
!549 = !DILocalVariable(name: "k", scope: !541, file: !2, line: 455, type: !86)
!550 = !DILocalVariable(name: "idxmm", scope: !541, file: !2, line: 455, type: !86)
!551 = !DILocalVariable(name: "plm", scope: !541, file: !2, line: 456, type: !70)
!552 = !DILocalVariable(name: "pmm", scope: !541, file: !2, line: 456, type: !70)
!553 = !DILocalVariable(name: "pm1", scope: !541, file: !2, line: 457, type: !70)
!554 = !DILocalVariable(name: "pm2", scope: !541, file: !2, line: 458, type: !70)
!555 = !DILocalVariable(name: "twomm1", scope: !541, file: !2, line: 459, type: !70)
!556 = !DILocation(line: 0, scope: !532, inlinedAt: !557)
!557 = distinct !DILocation(line: 116, column: 11, scope: !558)
!558 = distinct !DILexicalBlock(scope: !528, file: !2, line: 114, column: 5)
!559 = !DILocation(line: 428, column: 15, scope: !544, inlinedAt: !557)
!560 = !DILocation(line: 430, column: 7, scope: !561, inlinedAt: !557)
!561 = distinct !DILexicalBlock(scope: !562, file: !2, line: 430, column: 7)
!562 = distinct !DILexicalBlock(scope: !544, file: !2, line: 429, column: 5)
!563 = !DILocation(line: 433, column: 12, scope: !543, inlinedAt: !557)
!564 = !DILocation(line: 433, column: 20, scope: !543, inlinedAt: !557)
!565 = !DILocation(line: 433, column: 12, scope: !544, inlinedAt: !557)
!566 = !DILocation(line: 435, column: 7, scope: !567, inlinedAt: !557)
!567 = distinct !DILexicalBlock(scope: !568, file: !2, line: 435, column: 7)
!568 = distinct !DILexicalBlock(scope: !543, file: !2, line: 434, column: 5)
!569 = !DILocation(line: 438, column: 20, scope: !542, inlinedAt: !557)
!570 = !DILocation(line: 438, column: 27, scope: !542, inlinedAt: !557)
!571 = !DILocation(line: 440, column: 7, scope: !572, inlinedAt: !557)
!572 = distinct !DILexicalBlock(scope: !573, file: !2, line: 440, column: 7)
!573 = distinct !DILexicalBlock(scope: !542, file: !2, line: 439, column: 5)
!574 = !DILocation(line: 444, column: 24, scope: !541, inlinedAt: !557)
!575 = !DILocation(line: 0, scope: !541, inlinedAt: !557)
!576 = !DILocation(line: 446, column: 31, scope: !541, inlinedAt: !557)
!577 = !DILocation(line: 452, column: 29, scope: !541, inlinedAt: !557)
!578 = !DILocation(line: 466, column: 23, scope: !541, inlinedAt: !557)
!579 = !DILocation(line: 468, column: 29, scope: !541, inlinedAt: !557)
!580 = !DILocation(line: 474, column: 16, scope: !581, inlinedAt: !557)
!581 = distinct !DILexicalBlock(scope: !541, file: !2, line: 474, column: 11)
!582 = !DILocation(line: 474, column: 11, scope: !541, inlinedAt: !557)
!583 = !DILocation(line: 477, column: 7, scope: !541, inlinedAt: !557)
!584 = !DILocation(line: 477, column: 23, scope: !541, inlinedAt: !557)
!585 = !DILocation(line: 479, column: 31, scope: !541, inlinedAt: !557)
!586 = !DILocation(line: 479, column: 7, scope: !541, inlinedAt: !557)
!587 = !DILocation(line: 479, column: 29, scope: !541, inlinedAt: !557)
!588 = !DILocation(line: 488, column: 21, scope: !589, inlinedAt: !557)
!589 = distinct !DILexicalBlock(scope: !590, file: !2, line: 488, column: 7)
!590 = distinct !DILexicalBlock(scope: !541, file: !2, line: 488, column: 7)
!591 = !DILocation(line: 488, column: 7, scope: !590, inlinedAt: !557)
!592 = !DILocation(line: 511, column: 7, scope: !593, inlinedAt: !557)
!593 = distinct !DILexicalBlock(scope: !541, file: !2, line: 511, column: 7)
!594 = !DILocation(line: 577, column: 22, scope: !541, inlinedAt: !557)
!595 = !DILocation(line: 490, column: 13, scope: !596, inlinedAt: !557)
!596 = distinct !DILexicalBlock(scope: !589, file: !2, line: 489, column: 9)
!597 = !DILocation(line: 491, column: 20, scope: !596, inlinedAt: !557)
!598 = !DILocation(line: 491, column: 23, scope: !596, inlinedAt: !557)
!599 = !DILocation(line: 491, column: 18, scope: !596, inlinedAt: !557)
!600 = !DILocation(line: 491, column: 28, scope: !596, inlinedAt: !557)
!601 = !DILocation(line: 491, column: 32, scope: !596, inlinedAt: !557)
!602 = !DILocation(line: 491, column: 43, scope: !596, inlinedAt: !557)
!603 = !DILocation(line: 491, column: 40, scope: !596, inlinedAt: !557)
!604 = !DILocation(line: 491, column: 48, scope: !596, inlinedAt: !557)
!605 = !DILocation(line: 491, column: 38, scope: !596, inlinedAt: !557)
!606 = !DILocation(line: 491, column: 57, scope: !596, inlinedAt: !557)
!607 = !DILocation(line: 491, column: 55, scope: !596, inlinedAt: !557)
!608 = !DILocation(line: 492, column: 11, scope: !596, inlinedAt: !557)
!609 = !DILocation(line: 492, column: 27, scope: !596, inlinedAt: !557)
!610 = !DILocation(line: 494, column: 35, scope: !596, inlinedAt: !557)
!611 = !DILocation(line: 494, column: 57, scope: !596, inlinedAt: !557)
!612 = !DILocation(line: 494, column: 53, scope: !596, inlinedAt: !557)
!613 = !DILocation(line: 494, column: 46, scope: !596, inlinedAt: !557)
!614 = !DILocation(line: 494, column: 64, scope: !596, inlinedAt: !557)
!615 = !DILocation(line: 494, column: 11, scope: !596, inlinedAt: !557)
!616 = !DILocation(line: 494, column: 33, scope: !596, inlinedAt: !557)
!617 = !DILocation(line: 488, column: 30, scope: !589, inlinedAt: !557)
!618 = distinct !{!618, !591, !619, !209}
!619 = !DILocation(line: 502, column: 9, scope: !590, inlinedAt: !557)
!620 = !DILocation(line: 511, column: 21, scope: !621, inlinedAt: !557)
!621 = distinct !DILexicalBlock(scope: !593, file: !2, line: 511, column: 7)
!622 = distinct !{!622, !592, !623, !209}
!623 = !DILocation(line: 571, column: 9, scope: !593, inlinedAt: !557)
!624 = !DILocation(line: 520, column: 22, scope: !625, inlinedAt: !557)
!625 = distinct !DILexicalBlock(scope: !621, file: !2, line: 512, column: 9)
!626 = !DILocation(line: 520, column: 17, scope: !625, inlinedAt: !557)
!627 = !DILocation(line: 521, column: 18, scope: !625, inlinedAt: !557)
!628 = !DILocation(line: 522, column: 30, scope: !625, inlinedAt: !557)
!629 = !DILocation(line: 522, column: 15, scope: !625, inlinedAt: !557)
!630 = !DILocation(line: 523, column: 11, scope: !625, inlinedAt: !557)
!631 = !DILocation(line: 523, column: 31, scope: !625, inlinedAt: !557)
!632 = !DILocation(line: 525, column: 39, scope: !625, inlinedAt: !557)
!633 = !DILocation(line: 525, column: 41, scope: !625, inlinedAt: !557)
!634 = !DILocation(line: 525, column: 48, scope: !625, inlinedAt: !557)
!635 = !DILocation(line: 525, column: 11, scope: !625, inlinedAt: !557)
!636 = !DILocation(line: 525, column: 37, scope: !625, inlinedAt: !557)
!637 = !DILocation(line: 541, column: 25, scope: !625, inlinedAt: !557)
!638 = !DILocation(line: 542, column: 19, scope: !625, inlinedAt: !557)
!639 = !DILocation(line: 542, column: 29, scope: !625, inlinedAt: !557)
!640 = !DILocation(line: 542, column: 32, scope: !625, inlinedAt: !557)
!641 = !DILocation(line: 542, column: 27, scope: !625, inlinedAt: !557)
!642 = !DILocation(line: 542, column: 25, scope: !625, inlinedAt: !557)
!643 = !DILocation(line: 543, column: 11, scope: !625, inlinedAt: !557)
!644 = !DILocation(line: 543, column: 27, scope: !625, inlinedAt: !557)
!645 = !DILocation(line: 545, column: 54, scope: !625, inlinedAt: !557)
!646 = !DILocation(line: 545, column: 62, scope: !625, inlinedAt: !557)
!647 = !DILocation(line: 545, column: 70, scope: !625, inlinedAt: !557)
!648 = !DILocation(line: 545, column: 74, scope: !625, inlinedAt: !557)
!649 = !DILocation(line: 545, column: 60, scope: !625, inlinedAt: !557)
!650 = !DILocation(line: 545, column: 41, scope: !625, inlinedAt: !557)
!651 = !DILocation(line: 545, column: 11, scope: !625, inlinedAt: !557)
!652 = !DILocation(line: 545, column: 33, scope: !625, inlinedAt: !557)
!653 = !DILocation(line: 554, column: 22, scope: !654, inlinedAt: !557)
!654 = distinct !DILexicalBlock(scope: !625, file: !2, line: 554, column: 11)
!655 = !DILocation(line: 554, column: 29, scope: !656, inlinedAt: !557)
!656 = distinct !DILexicalBlock(scope: !654, file: !2, line: 554, column: 11)
!657 = !DILocation(line: 554, column: 11, scope: !654, inlinedAt: !557)
!658 = !DILocation(line: 556, column: 17, scope: !659, inlinedAt: !557)
!659 = distinct !DILexicalBlock(scope: !656, file: !2, line: 555, column: 13)
!660 = !DILocation(line: 557, column: 24, scope: !659, inlinedAt: !557)
!661 = !DILocation(line: 557, column: 27, scope: !659, inlinedAt: !557)
!662 = !DILocation(line: 557, column: 22, scope: !659, inlinedAt: !557)
!663 = !DILocation(line: 557, column: 32, scope: !659, inlinedAt: !557)
!664 = !DILocation(line: 557, column: 36, scope: !659, inlinedAt: !557)
!665 = !DILocation(line: 557, column: 47, scope: !659, inlinedAt: !557)
!666 = !DILocation(line: 557, column: 51, scope: !659, inlinedAt: !557)
!667 = !DILocation(line: 557, column: 44, scope: !659, inlinedAt: !557)
!668 = !DILocation(line: 557, column: 56, scope: !659, inlinedAt: !557)
!669 = !DILocation(line: 557, column: 42, scope: !659, inlinedAt: !557)
!670 = !DILocation(line: 558, column: 33, scope: !659, inlinedAt: !557)
!671 = !DILocation(line: 558, column: 21, scope: !659, inlinedAt: !557)
!672 = !DILocation(line: 557, column: 63, scope: !659, inlinedAt: !557)
!673 = !DILocation(line: 559, column: 15, scope: !659, inlinedAt: !557)
!674 = !DILocation(line: 559, column: 31, scope: !659, inlinedAt: !557)
!675 = !DILocation(line: 561, column: 48, scope: !659, inlinedAt: !557)
!676 = !DILocation(line: 561, column: 56, scope: !659, inlinedAt: !557)
!677 = !DILocation(line: 561, column: 64, scope: !659, inlinedAt: !557)
!678 = !DILocation(line: 561, column: 66, scope: !659, inlinedAt: !557)
!679 = !DILocation(line: 561, column: 70, scope: !659, inlinedAt: !557)
!680 = !DILocation(line: 561, column: 62, scope: !659, inlinedAt: !557)
!681 = !DILocation(line: 561, column: 45, scope: !659, inlinedAt: !557)
!682 = !DILocation(line: 561, column: 15, scope: !659, inlinedAt: !557)
!683 = !DILocation(line: 561, column: 37, scope: !659, inlinedAt: !557)
!684 = !DILocation(line: 554, column: 38, scope: !656, inlinedAt: !557)
!685 = distinct !{!685, !657, !686, !209}
!686 = !DILocation(line: 570, column: 13, scope: !654, inlinedAt: !557)
!687 = !DILocation(line: 575, column: 18, scope: !541, inlinedAt: !557)
!688 = !DILocation(line: 576, column: 14, scope: !541, inlinedAt: !557)
!689 = !DILocation(line: 575, column: 13, scope: !541, inlinedAt: !557)
!690 = !DILocation(line: 577, column: 26, scope: !541, inlinedAt: !557)
!691 = !DILocation(line: 577, column: 11, scope: !541, inlinedAt: !557)
!692 = !DILocation(line: 578, column: 7, scope: !541, inlinedAt: !557)
!693 = !DILocation(line: 578, column: 27, scope: !541, inlinedAt: !557)
!694 = !DILocation(line: 580, column: 35, scope: !541, inlinedAt: !557)
!695 = !DILocation(line: 580, column: 40, scope: !541, inlinedAt: !557)
!696 = !DILocation(line: 580, column: 44, scope: !541, inlinedAt: !557)
!697 = !DILocation(line: 580, column: 50, scope: !541, inlinedAt: !557)
!698 = !DILocation(line: 580, column: 7, scope: !541, inlinedAt: !557)
!699 = !DILocation(line: 580, column: 33, scope: !541, inlinedAt: !557)
!700 = !DILocation(line: 588, column: 7, scope: !541, inlinedAt: !557)
!701 = !DILocalVariable(name: "lmax", arg: 1, scope: !702, file: !2, line: 218, type: !85)
!702 = distinct !DISubprogram(name: "legendre_deriv_array_schmidt_e", scope: !2, file: !2, line: 217, type: !533, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !703)
!703 = !{!701, !704, !705, !706, !707, !708, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727}
!704 = !DILocalVariable(name: "x", arg: 2, scope: !702, file: !2, line: 218, type: !89)
!705 = !DILocalVariable(name: "csphase", arg: 3, scope: !702, file: !2, line: 218, type: !89)
!706 = !DILocalVariable(name: "result_array", arg: 4, scope: !702, file: !2, line: 218, type: !90)
!707 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !702, file: !2, line: 218, type: !90)
!708 = !DILocalVariable(name: "eps", scope: !709, file: !2, line: 236, type: !89)
!709 = distinct !DILexicalBlock(scope: !710, file: !2, line: 235, column: 5)
!710 = distinct !DILexicalBlock(scope: !711, file: !2, line: 230, column: 12)
!711 = distinct !DILexicalBlock(scope: !712, file: !2, line: 225, column: 12)
!712 = distinct !DILexicalBlock(scope: !702, file: !2, line: 220, column: 7)
!713 = !DILocalVariable(name: "u", scope: !709, file: !2, line: 237, type: !89)
!714 = !DILocalVariable(name: "uinv", scope: !709, file: !2, line: 239, type: !89)
!715 = !DILocalVariable(name: "xbyu", scope: !709, file: !2, line: 245, type: !89)
!716 = !DILocalVariable(name: "l", scope: !709, file: !2, line: 247, type: !86)
!717 = !DILocalVariable(name: "m", scope: !709, file: !2, line: 247, type: !86)
!718 = !DILocalVariable(name: "k", scope: !709, file: !2, line: 248, type: !86)
!719 = !DILocalVariable(name: "idxmm", scope: !709, file: !2, line: 248, type: !86)
!720 = !DILocalVariable(name: "plm", scope: !709, file: !2, line: 249, type: !70)
!721 = !DILocalVariable(name: "pmm", scope: !709, file: !2, line: 250, type: !70)
!722 = !DILocalVariable(name: "rescalem", scope: !709, file: !2, line: 251, type: !70)
!723 = !DILocalVariable(name: "pm1", scope: !709, file: !2, line: 252, type: !70)
!724 = !DILocalVariable(name: "pm2", scope: !709, file: !2, line: 253, type: !70)
!725 = !DILocalVariable(name: "nlm", scope: !709, file: !2, line: 254, type: !86)
!726 = !DILocalVariable(name: "sqrts", scope: !709, file: !2, line: 255, type: !90)
!727 = !DILocalVariable(name: "linv", scope: !728, file: !2, line: 288, type: !70)
!728 = distinct !DILexicalBlock(scope: !729, file: !2, line: 287, column: 9)
!729 = distinct !DILexicalBlock(scope: !730, file: !2, line: 286, column: 7)
!730 = distinct !DILexicalBlock(scope: !709, file: !2, line: 286, column: 7)
!731 = !DILocation(line: 0, scope: !702, inlinedAt: !732)
!732 = distinct !DILocation(line: 121, column: 11, scope: !733)
!733 = distinct !DILexicalBlock(scope: !528, file: !2, line: 119, column: 5)
!734 = !DILocation(line: 220, column: 15, scope: !712, inlinedAt: !732)
!735 = !DILocation(line: 222, column: 7, scope: !736, inlinedAt: !732)
!736 = distinct !DILexicalBlock(scope: !737, file: !2, line: 222, column: 7)
!737 = distinct !DILexicalBlock(scope: !712, file: !2, line: 221, column: 5)
!738 = !DILocation(line: 225, column: 12, scope: !711, inlinedAt: !732)
!739 = !DILocation(line: 225, column: 20, scope: !711, inlinedAt: !732)
!740 = !DILocation(line: 225, column: 12, scope: !712, inlinedAt: !732)
!741 = !DILocation(line: 227, column: 7, scope: !742, inlinedAt: !732)
!742 = distinct !DILexicalBlock(scope: !743, file: !2, line: 227, column: 7)
!743 = distinct !DILexicalBlock(scope: !711, file: !2, line: 226, column: 5)
!744 = !DILocation(line: 230, column: 20, scope: !710, inlinedAt: !732)
!745 = !DILocation(line: 230, column: 27, scope: !710, inlinedAt: !732)
!746 = !DILocation(line: 232, column: 7, scope: !747, inlinedAt: !732)
!747 = distinct !DILexicalBlock(scope: !748, file: !2, line: 232, column: 7)
!748 = distinct !DILexicalBlock(scope: !710, file: !2, line: 231, column: 5)
!749 = !DILocation(line: 0, scope: !709, inlinedAt: !732)
!750 = !DILocation(line: 237, column: 24, scope: !709, inlinedAt: !732)
!751 = !DILocation(line: 0, scope: !122, inlinedAt: !752)
!752 = distinct !DILocation(line: 254, column: 20, scope: !709, inlinedAt: !732)
!753 = !DILocation(line: 255, column: 25, scope: !709, inlinedAt: !732)
!754 = !DILocation(line: 0, scope: !307, inlinedAt: !755)
!755 = distinct !DILocation(line: 258, column: 7, scope: !709, inlinedAt: !732)
!756 = !DILocation(line: 112, column: 3, scope: !316, inlinedAt: !755)
!757 = !DILocation(line: 113, column: 21, scope: !318, inlinedAt: !755)
!758 = !DILocation(line: 113, column: 16, scope: !318, inlinedAt: !755)
!759 = !DILocation(line: 113, column: 5, scope: !318, inlinedAt: !755)
!760 = !DILocation(line: 113, column: 14, scope: !318, inlinedAt: !755)
!761 = !DILocation(line: 112, column: 34, scope: !318, inlinedAt: !755)
!762 = distinct !{!762, !756, !763, !209}
!763 = !DILocation(line: 113, column: 31, scope: !316, inlinedAt: !755)
!764 = distinct !{!764, !326}
!765 = !DILocation(line: 239, column: 31, scope: !709, inlinedAt: !732)
!766 = !DILocation(line: 245, column: 29, scope: !709, inlinedAt: !732)
!767 = !DILocation(line: 264, column: 23, scope: !709, inlinedAt: !732)
!768 = !DILocation(line: 266, column: 29, scope: !709, inlinedAt: !732)
!769 = !DILocation(line: 272, column: 16, scope: !770, inlinedAt: !732)
!770 = distinct !DILexicalBlock(scope: !709, file: !2, line: 272, column: 11)
!771 = !DILocation(line: 272, column: 11, scope: !709, inlinedAt: !732)
!772 = !DILocation(line: 275, column: 7, scope: !709, inlinedAt: !732)
!773 = !DILocation(line: 275, column: 23, scope: !709, inlinedAt: !732)
!774 = !DILocation(line: 277, column: 31, scope: !709, inlinedAt: !732)
!775 = !DILocation(line: 277, column: 7, scope: !709, inlinedAt: !732)
!776 = !DILocation(line: 277, column: 29, scope: !709, inlinedAt: !732)
!777 = !DILocation(line: 286, column: 21, scope: !729, inlinedAt: !732)
!778 = !DILocation(line: 286, column: 7, scope: !730, inlinedAt: !732)
!779 = !DILocation(line: 321, column: 7, scope: !780, inlinedAt: !732)
!780 = distinct !DILexicalBlock(scope: !709, file: !2, line: 321, column: 7)
!781 = !DILocation(line: 288, column: 31, scope: !728, inlinedAt: !732)
!782 = !DILocation(line: 288, column: 29, scope: !728, inlinedAt: !732)
!783 = !DILocation(line: 0, scope: !728, inlinedAt: !732)
!784 = !DILocation(line: 290, column: 13, scope: !728, inlinedAt: !732)
!785 = !DILocation(line: 292, column: 22, scope: !728, inlinedAt: !732)
!786 = !DILocation(line: 292, column: 30, scope: !728, inlinedAt: !732)
!787 = !DILocation(line: 292, column: 34, scope: !728, inlinedAt: !732)
!788 = !DILocation(line: 292, column: 47, scope: !728, inlinedAt: !732)
!789 = !DILocation(line: 292, column: 55, scope: !728, inlinedAt: !732)
!790 = !DILocation(line: 292, column: 40, scope: !728, inlinedAt: !732)
!791 = !DILocation(line: 293, column: 11, scope: !728, inlinedAt: !732)
!792 = !DILocation(line: 293, column: 27, scope: !728, inlinedAt: !732)
!793 = !DILocation(line: 295, column: 40, scope: !728, inlinedAt: !732)
!794 = !DILocation(line: 295, column: 49, scope: !728, inlinedAt: !732)
!795 = !DILocation(line: 295, column: 55, scope: !728, inlinedAt: !732)
!796 = !DILocation(line: 295, column: 44, scope: !728, inlinedAt: !732)
!797 = !DILocation(line: 295, column: 11, scope: !728, inlinedAt: !732)
!798 = !DILocation(line: 295, column: 33, scope: !728, inlinedAt: !732)
!799 = !DILocation(line: 286, column: 30, scope: !729, inlinedAt: !732)
!800 = distinct !{!800, !778, !801, !209}
!801 = !DILocation(line: 303, column: 9, scope: !730, inlinedAt: !732)
!802 = !DILocation(line: 321, column: 21, scope: !803, inlinedAt: !732)
!803 = distinct !DILexicalBlock(scope: !780, file: !2, line: 321, column: 7)
!804 = distinct !{!804, !779, !805, !209}
!805 = !DILocation(line: 387, column: 9, scope: !780, inlinedAt: !732)
!806 = !DILocation(line: 324, column: 20, scope: !807, inlinedAt: !732)
!807 = distinct !DILexicalBlock(scope: !803, file: !2, line: 322, column: 9)
!808 = !DILocation(line: 332, column: 22, scope: !807, inlinedAt: !732)
!809 = !DILocation(line: 332, column: 17, scope: !807, inlinedAt: !732)
!810 = !DILocation(line: 333, column: 36, scope: !807, inlinedAt: !732)
!811 = !DILocation(line: 333, column: 28, scope: !807, inlinedAt: !732)
!812 = !DILocation(line: 333, column: 26, scope: !807, inlinedAt: !732)
!813 = !DILocation(line: 333, column: 47, scope: !807, inlinedAt: !732)
!814 = !DILocation(line: 333, column: 45, scope: !807, inlinedAt: !732)
!815 = !DILocation(line: 333, column: 15, scope: !807, inlinedAt: !732)
!816 = !DILocation(line: 334, column: 37, scope: !807, inlinedAt: !732)
!817 = !DILocation(line: 334, column: 11, scope: !807, inlinedAt: !732)
!818 = !DILocation(line: 334, column: 31, scope: !807, inlinedAt: !732)
!819 = !DILocation(line: 336, column: 39, scope: !807, inlinedAt: !732)
!820 = !DILocation(line: 336, column: 41, scope: !807, inlinedAt: !732)
!821 = !DILocation(line: 336, column: 48, scope: !807, inlinedAt: !732)
!822 = !DILocation(line: 336, column: 11, scope: !807, inlinedAt: !732)
!823 = !DILocation(line: 336, column: 37, scope: !807, inlinedAt: !732)
!824 = !DILocation(line: 351, column: 25, scope: !807, inlinedAt: !732)
!825 = !DILocation(line: 352, column: 33, scope: !807, inlinedAt: !732)
!826 = !DILocation(line: 352, column: 21, scope: !807, inlinedAt: !732)
!827 = !DILocation(line: 352, column: 19, scope: !807, inlinedAt: !732)
!828 = !DILocation(line: 352, column: 38, scope: !807, inlinedAt: !732)
!829 = !DILocation(line: 353, column: 33, scope: !807, inlinedAt: !732)
!830 = !DILocation(line: 353, column: 11, scope: !807, inlinedAt: !732)
!831 = !DILocation(line: 353, column: 27, scope: !807, inlinedAt: !732)
!832 = !DILocation(line: 356, column: 24, scope: !807, inlinedAt: !732)
!833 = !DILocation(line: 356, column: 31, scope: !807, inlinedAt: !732)
!834 = !DILocation(line: 356, column: 35, scope: !807, inlinedAt: !732)
!835 = !DILocation(line: 357, column: 21, scope: !807, inlinedAt: !732)
!836 = !DILocation(line: 357, column: 40, scope: !807, inlinedAt: !732)
!837 = !DILocation(line: 357, column: 38, scope: !807, inlinedAt: !732)
!838 = !DILocation(line: 356, column: 53, scope: !807, inlinedAt: !732)
!839 = !DILocation(line: 356, column: 18, scope: !807, inlinedAt: !732)
!840 = !DILocation(line: 355, column: 11, scope: !807, inlinedAt: !732)
!841 = !DILocation(line: 355, column: 33, scope: !807, inlinedAt: !732)
!842 = !DILocation(line: 366, column: 22, scope: !843, inlinedAt: !732)
!843 = distinct !DILexicalBlock(scope: !807, file: !2, line: 366, column: 11)
!844 = !DILocation(line: 366, column: 16, scope: !843, inlinedAt: !732)
!845 = !DILocation(line: 366, column: 29, scope: !846, inlinedAt: !732)
!846 = distinct !DILexicalBlock(scope: !843, file: !2, line: 366, column: 11)
!847 = !DILocation(line: 366, column: 11, scope: !843, inlinedAt: !732)
!848 = !DILocation(line: 368, column: 17, scope: !849, inlinedAt: !732)
!849 = distinct !DILexicalBlock(scope: !846, file: !2, line: 367, column: 13)
!850 = !DILocation(line: 370, column: 19, scope: !849, inlinedAt: !732)
!851 = !DILocation(line: 370, column: 22, scope: !849, inlinedAt: !732)
!852 = !DILocation(line: 370, column: 17, scope: !849, inlinedAt: !732)
!853 = !DILocation(line: 370, column: 29, scope: !849, inlinedAt: !732)
!854 = !DILocation(line: 370, column: 27, scope: !849, inlinedAt: !732)
!855 = !DILocation(line: 370, column: 52, scope: !849, inlinedAt: !732)
!856 = !DILocation(line: 370, column: 44, scope: !849, inlinedAt: !732)
!857 = !DILocation(line: 370, column: 42, scope: !849, inlinedAt: !732)
!858 = !DILocation(line: 370, column: 57, scope: !849, inlinedAt: !732)
!859 = !DILocation(line: 370, column: 61, scope: !849, inlinedAt: !732)
!860 = !DILocation(line: 371, column: 17, scope: !849, inlinedAt: !732)
!861 = !DILocation(line: 371, column: 36, scope: !849, inlinedAt: !732)
!862 = !DILocation(line: 371, column: 34, scope: !849, inlinedAt: !732)
!863 = !DILocation(line: 371, column: 53, scope: !849, inlinedAt: !732)
!864 = !DILocation(line: 372, column: 30, scope: !849, inlinedAt: !732)
!865 = !DILocation(line: 372, column: 45, scope: !849, inlinedAt: !732)
!866 = !DILocation(line: 370, column: 67, scope: !849, inlinedAt: !732)
!867 = !DILocation(line: 373, column: 37, scope: !849, inlinedAt: !732)
!868 = !DILocation(line: 373, column: 15, scope: !849, inlinedAt: !732)
!869 = !DILocation(line: 373, column: 31, scope: !849, inlinedAt: !732)
!870 = !DILocation(line: 376, column: 25, scope: !849, inlinedAt: !732)
!871 = !DILocation(line: 376, column: 27, scope: !849, inlinedAt: !732)
!872 = !DILocation(line: 376, column: 31, scope: !849, inlinedAt: !732)
!873 = !DILocation(line: 377, column: 25, scope: !849, inlinedAt: !732)
!874 = !DILocation(line: 377, column: 40, scope: !849, inlinedAt: !732)
!875 = !DILocation(line: 377, column: 38, scope: !849, inlinedAt: !732)
!876 = !DILocation(line: 377, column: 55, scope: !849, inlinedAt: !732)
!877 = !DILocation(line: 377, column: 53, scope: !849, inlinedAt: !732)
!878 = !DILocation(line: 376, column: 49, scope: !849, inlinedAt: !732)
!879 = !DILocation(line: 376, column: 22, scope: !849, inlinedAt: !732)
!880 = !DILocation(line: 375, column: 15, scope: !849, inlinedAt: !732)
!881 = !DILocation(line: 375, column: 37, scope: !849, inlinedAt: !732)
!882 = !DILocation(line: 366, column: 38, scope: !846, inlinedAt: !732)
!883 = distinct !{!883, !847, !884, !209}
!884 = !DILocation(line: 386, column: 13, scope: !843, inlinedAt: !732)
!885 = !DILocation(line: 392, column: 18, scope: !709, inlinedAt: !732)
!886 = !DILocation(line: 391, column: 16, scope: !709, inlinedAt: !732)
!887 = !DILocation(line: 392, column: 13, scope: !709, inlinedAt: !732)
!888 = !DILocation(line: 393, column: 24, scope: !709, inlinedAt: !732)
!889 = !DILocation(line: 393, column: 22, scope: !709, inlinedAt: !732)
!890 = !DILocation(line: 393, column: 46, scope: !709, inlinedAt: !732)
!891 = !DILocation(line: 393, column: 44, scope: !709, inlinedAt: !732)
!892 = !DILocation(line: 393, column: 11, scope: !709, inlinedAt: !732)
!893 = !DILocation(line: 394, column: 33, scope: !709, inlinedAt: !732)
!894 = !DILocation(line: 394, column: 7, scope: !709, inlinedAt: !732)
!895 = !DILocation(line: 394, column: 27, scope: !709, inlinedAt: !732)
!896 = !DILocation(line: 396, column: 35, scope: !709, inlinedAt: !732)
!897 = !DILocation(line: 396, column: 40, scope: !709, inlinedAt: !732)
!898 = !DILocation(line: 396, column: 47, scope: !709, inlinedAt: !732)
!899 = !DILocation(line: 396, column: 7, scope: !709, inlinedAt: !732)
!900 = !DILocation(line: 396, column: 33, scope: !709, inlinedAt: !732)
!901 = !DILocation(line: 404, column: 7, scope: !709, inlinedAt: !732)
!902 = !DILocation(line: 126, column: 17, scope: !903)
!903 = distinct !DILexicalBlock(scope: !904, file: !2, line: 126, column: 3)
!904 = distinct !DILexicalBlock(scope: !494, file: !2, line: 126, column: 3)
!905 = !DILocation(line: 126, column: 3, scope: !904)
!906 = !DILocation(line: 135, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !903, file: !2, line: 127, column: 5)
!908 = !DILocation(line: 135, column: 29, scope: !907)
!909 = !DILocation(line: 126, column: 24, scope: !903)
!910 = distinct !{!910, !905, !911, !209}
!911 = !DILocation(line: 137, column: 5, scope: !904)
!912 = distinct !{!912, !326}
!913 = !DILocation(line: 141, column: 39, scope: !914)
!914 = distinct !DILexicalBlock(scope: !494, file: !2, line: 141, column: 7)
!915 = !DILocation(line: 154, column: 5, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !2, line: 151, column: 5)
!917 = distinct !DILexicalBlock(scope: !918, file: !2, line: 150, column: 12)
!918 = distinct !DILexicalBlock(scope: !914, file: !2, line: 145, column: 12)
!919 = !DILocation(line: 164, column: 23, scope: !512)
!920 = !DILocation(line: 0, scope: !512)
!921 = !DILocation(line: 166, column: 5, scope: !922)
!922 = distinct !DILexicalBlock(scope: !512, file: !2, line: 166, column: 5)
!923 = !DILocation(line: 169, column: 11, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !2, line: 167, column: 7)
!925 = distinct !DILexicalBlock(scope: !922, file: !2, line: 166, column: 5)
!926 = !DILocation(line: 169, column: 27, scope: !924)
!927 = !DILocation(line: 0, scope: !434, inlinedAt: !928)
!928 = distinct !DILocation(line: 168, column: 22, scope: !924)
!929 = !DILocation(line: 95, column: 18, scope: !434, inlinedAt: !928)
!930 = !DILocation(line: 95, column: 13, scope: !434, inlinedAt: !928)
!931 = !DILocation(line: 95, column: 23, scope: !434, inlinedAt: !928)
!932 = !DILocation(line: 168, column: 9, scope: !924)
!933 = !DILocation(line: 168, column: 57, scope: !924)
!934 = !DILocation(line: 172, column: 11, scope: !924)
!935 = !DILocation(line: 172, column: 27, scope: !924)
!936 = !DILocation(line: 0, scope: !434, inlinedAt: !937)
!937 = distinct !DILocation(line: 171, column: 28, scope: !924)
!938 = !DILocation(line: 171, column: 9, scope: !924)
!939 = !DILocation(line: 171, column: 63, scope: !924)
!940 = !DILocation(line: 179, column: 23, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !2, line: 179, column: 9)
!942 = distinct !DILexicalBlock(scope: !924, file: !2, line: 179, column: 9)
!943 = !DILocation(line: 179, column: 9, scope: !942)
!944 = !DILocation(line: 182, column: 15, scope: !945)
!945 = distinct !DILexicalBlock(scope: !941, file: !2, line: 180, column: 11)
!946 = !DILocation(line: 182, column: 31, scope: !945)
!947 = !DILocation(line: 0, scope: !434, inlinedAt: !948)
!948 = distinct !DILocation(line: 181, column: 26, scope: !945)
!949 = !DILocation(line: 95, column: 27, scope: !434, inlinedAt: !948)
!950 = !DILocation(line: 181, column: 13, scope: !945)
!951 = !DILocation(line: 181, column: 61, scope: !945)
!952 = !DILocation(line: 185, column: 15, scope: !945)
!953 = !DILocation(line: 185, column: 31, scope: !945)
!954 = !DILocation(line: 0, scope: !434, inlinedAt: !955)
!955 = distinct !DILocation(line: 184, column: 32, scope: !945)
!956 = !DILocation(line: 184, column: 13, scope: !945)
!957 = !DILocation(line: 184, column: 67, scope: !945)
!958 = !DILocation(line: 179, column: 29, scope: !941)
!959 = distinct !{!959, !943, !960, !209}
!960 = !DILocation(line: 191, column: 11, scope: !942)
!961 = !DILocation(line: 193, column: 18, scope: !924)
!962 = !DILocation(line: 166, column: 19, scope: !925)
!963 = distinct !{!963, !921, !964, !209}
!964 = !DILocation(line: 194, column: 7, scope: !922)
!965 = !DILocation(line: 198, column: 1, scope: !494)
!966 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv_alt_array", scope: !2, file: !2, line: 74, type: !482, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !967)
!967 = !{!968, !969, !970, !971, !972, !973}
!968 = !DILocalVariable(name: "norm", arg: 1, scope: !966, file: !2, line: 75, type: !83)
!969 = !DILocalVariable(name: "lmax", arg: 2, scope: !966, file: !2, line: 75, type: !85)
!970 = !DILocalVariable(name: "x", arg: 3, scope: !966, file: !2, line: 75, type: !89)
!971 = !DILocalVariable(name: "result_array", arg: 4, scope: !966, file: !2, line: 76, type: !90)
!972 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !966, file: !2, line: 76, type: !90)
!973 = !DILocalVariable(name: "s", scope: !966, file: !2, line: 78, type: !32)
!974 = !DILocation(line: 0, scope: !966)
!975 = !DILocation(line: 78, column: 11, scope: !966)
!976 = !DILocation(line: 79, column: 3, scope: !966)
!977 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv_alt_array_e", scope: !2, file: !2, line: 95, type: !495, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !978)
!978 = !{!979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !991, !992, !993}
!979 = !DILocalVariable(name: "norm", arg: 1, scope: !977, file: !2, line: 96, type: !83)
!980 = !DILocalVariable(name: "lmax", arg: 2, scope: !977, file: !2, line: 96, type: !85)
!981 = !DILocalVariable(name: "x", arg: 3, scope: !977, file: !2, line: 96, type: !89)
!982 = !DILocalVariable(name: "csphase", arg: 4, scope: !977, file: !2, line: 97, type: !89)
!983 = !DILocalVariable(name: "result_array", arg: 5, scope: !977, file: !2, line: 97, type: !90)
!984 = !DILocalVariable(name: "result_deriv_array", arg: 6, scope: !977, file: !2, line: 97, type: !90)
!985 = !DILocalVariable(name: "s", scope: !977, file: !2, line: 99, type: !32)
!986 = !DILocalVariable(name: "nlm", scope: !977, file: !2, line: 100, type: !85)
!987 = !DILocalVariable(name: "fac1", scope: !977, file: !2, line: 111, type: !70)
!988 = !DILocalVariable(name: "fac2", scope: !977, file: !2, line: 111, type: !70)
!989 = !DILocalVariable(name: "l", scope: !990, file: !2, line: 162, type: !86)
!990 = distinct !DILexicalBlock(scope: !977, file: !2, line: 161, column: 3)
!991 = !DILocalVariable(name: "m", scope: !990, file: !2, line: 162, type: !86)
!992 = !DILocalVariable(name: "twoellp1", scope: !990, file: !2, line: 163, type: !86)
!993 = !DILocalVariable(name: "sqrts", scope: !990, file: !2, line: 164, type: !90)
!994 = !DILocation(line: 0, scope: !977)
!995 = !DILocation(line: 0, scope: !122, inlinedAt: !996)
!996 = distinct !DILocation(line: 100, column: 22, scope: !977)
!997 = !DILocation(line: 68, column: 17, scope: !122, inlinedAt: !996)
!998 = !DILocation(line: 68, column: 30, scope: !122, inlinedAt: !996)
!999 = !DILocation(line: 68, column: 22, scope: !122, inlinedAt: !996)
!1000 = !DILocation(line: 68, column: 35, scope: !122, inlinedAt: !996)
!1001 = !DILocation(line: 113, column: 12, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !977, file: !2, line: 113, column: 7)
!1003 = !DILocation(line: 0, scope: !1002)
!1004 = !DILocation(line: 113, column: 7, scope: !977)
!1005 = !DILocalVariable(name: "lmax", arg: 1, scope: !1006, file: !2, line: 426, type: !85)
!1006 = distinct !DISubprogram(name: "legendre_deriv_alt_array_none_e", scope: !2, file: !2, line: 425, type: !533, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1007)
!1007 = !{!1005, !1008, !1009, !1010, !1011, !1012, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1008 = !DILocalVariable(name: "x", arg: 2, scope: !1006, file: !2, line: 426, type: !89)
!1009 = !DILocalVariable(name: "csphase", arg: 3, scope: !1006, file: !2, line: 426, type: !89)
!1010 = !DILocalVariable(name: "result_array", arg: 4, scope: !1006, file: !2, line: 426, type: !90)
!1011 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !1006, file: !2, line: 426, type: !90)
!1012 = !DILocalVariable(name: "u", scope: !1013, file: !2, line: 444, type: !89)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 443, column: 5)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 438, column: 12)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 433, column: 12)
!1016 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 428, column: 7)
!1017 = !DILocalVariable(name: "uinv", scope: !1013, file: !2, line: 446, type: !89)
!1018 = !DILocalVariable(name: "xbyu", scope: !1013, file: !2, line: 452, type: !89)
!1019 = !DILocalVariable(name: "l", scope: !1013, file: !2, line: 454, type: !86)
!1020 = !DILocalVariable(name: "m", scope: !1013, file: !2, line: 454, type: !86)
!1021 = !DILocalVariable(name: "k", scope: !1013, file: !2, line: 455, type: !86)
!1022 = !DILocalVariable(name: "idxmm", scope: !1013, file: !2, line: 455, type: !86)
!1023 = !DILocalVariable(name: "plm", scope: !1013, file: !2, line: 456, type: !70)
!1024 = !DILocalVariable(name: "pmm", scope: !1013, file: !2, line: 456, type: !70)
!1025 = !DILocalVariable(name: "pm1", scope: !1013, file: !2, line: 457, type: !70)
!1026 = !DILocalVariable(name: "pm2", scope: !1013, file: !2, line: 458, type: !70)
!1027 = !DILocalVariable(name: "twomm1", scope: !1013, file: !2, line: 459, type: !70)
!1028 = !DILocation(line: 0, scope: !1006, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 116, column: 11, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 114, column: 5)
!1031 = !DILocation(line: 428, column: 15, scope: !1016, inlinedAt: !1029)
!1032 = !DILocation(line: 430, column: 7, scope: !1033, inlinedAt: !1029)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !2, line: 430, column: 7)
!1034 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 429, column: 5)
!1035 = !DILocation(line: 433, column: 12, scope: !1015, inlinedAt: !1029)
!1036 = !DILocation(line: 433, column: 20, scope: !1015, inlinedAt: !1029)
!1037 = !DILocation(line: 433, column: 12, scope: !1016, inlinedAt: !1029)
!1038 = !DILocation(line: 435, column: 7, scope: !1039, inlinedAt: !1029)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 435, column: 7)
!1040 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 434, column: 5)
!1041 = !DILocation(line: 438, column: 20, scope: !1014, inlinedAt: !1029)
!1042 = !DILocation(line: 438, column: 27, scope: !1014, inlinedAt: !1029)
!1043 = !DILocation(line: 440, column: 7, scope: !1044, inlinedAt: !1029)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 440, column: 7)
!1045 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 439, column: 5)
!1046 = !DILocation(line: 444, column: 34, scope: !1013, inlinedAt: !1029)
!1047 = !DILocation(line: 444, column: 46, scope: !1013, inlinedAt: !1029)
!1048 = !DILocation(line: 444, column: 39, scope: !1013, inlinedAt: !1029)
!1049 = !DILocation(line: 444, column: 24, scope: !1013, inlinedAt: !1029)
!1050 = !DILocation(line: 0, scope: !1013, inlinedAt: !1029)
!1051 = !DILocation(line: 446, column: 31, scope: !1013, inlinedAt: !1029)
!1052 = !DILocation(line: 452, column: 29, scope: !1013, inlinedAt: !1029)
!1053 = !DILocation(line: 466, column: 23, scope: !1013, inlinedAt: !1029)
!1054 = !DILocation(line: 468, column: 29, scope: !1013, inlinedAt: !1029)
!1055 = !DILocation(line: 474, column: 16, scope: !1056, inlinedAt: !1029)
!1056 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 474, column: 11)
!1057 = !DILocation(line: 474, column: 11, scope: !1013, inlinedAt: !1029)
!1058 = !DILocation(line: 477, column: 7, scope: !1013, inlinedAt: !1029)
!1059 = !DILocation(line: 477, column: 23, scope: !1013, inlinedAt: !1029)
!1060 = !DILocation(line: 479, column: 31, scope: !1013, inlinedAt: !1029)
!1061 = !DILocation(line: 479, column: 7, scope: !1013, inlinedAt: !1029)
!1062 = !DILocation(line: 479, column: 29, scope: !1013, inlinedAt: !1029)
!1063 = !DILocation(line: 488, column: 21, scope: !1064, inlinedAt: !1029)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 488, column: 7)
!1065 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 488, column: 7)
!1066 = !DILocation(line: 488, column: 7, scope: !1065, inlinedAt: !1029)
!1067 = !DILocation(line: 511, column: 7, scope: !1068, inlinedAt: !1029)
!1068 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 511, column: 7)
!1069 = !DILocation(line: 577, column: 22, scope: !1013, inlinedAt: !1029)
!1070 = !DILocation(line: 490, column: 13, scope: !1071, inlinedAt: !1029)
!1071 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 489, column: 9)
!1072 = !DILocation(line: 491, column: 20, scope: !1071, inlinedAt: !1029)
!1073 = !DILocation(line: 491, column: 23, scope: !1071, inlinedAt: !1029)
!1074 = !DILocation(line: 491, column: 18, scope: !1071, inlinedAt: !1029)
!1075 = !DILocation(line: 491, column: 28, scope: !1071, inlinedAt: !1029)
!1076 = !DILocation(line: 491, column: 32, scope: !1071, inlinedAt: !1029)
!1077 = !DILocation(line: 491, column: 43, scope: !1071, inlinedAt: !1029)
!1078 = !DILocation(line: 491, column: 40, scope: !1071, inlinedAt: !1029)
!1079 = !DILocation(line: 491, column: 48, scope: !1071, inlinedAt: !1029)
!1080 = !DILocation(line: 491, column: 38, scope: !1071, inlinedAt: !1029)
!1081 = !DILocation(line: 491, column: 57, scope: !1071, inlinedAt: !1029)
!1082 = !DILocation(line: 491, column: 55, scope: !1071, inlinedAt: !1029)
!1083 = !DILocation(line: 492, column: 11, scope: !1071, inlinedAt: !1029)
!1084 = !DILocation(line: 492, column: 27, scope: !1071, inlinedAt: !1029)
!1085 = !DILocation(line: 494, column: 35, scope: !1071, inlinedAt: !1029)
!1086 = !DILocation(line: 494, column: 57, scope: !1071, inlinedAt: !1029)
!1087 = !DILocation(line: 494, column: 53, scope: !1071, inlinedAt: !1029)
!1088 = !DILocation(line: 494, column: 46, scope: !1071, inlinedAt: !1029)
!1089 = !DILocation(line: 494, column: 64, scope: !1071, inlinedAt: !1029)
!1090 = !DILocation(line: 494, column: 11, scope: !1071, inlinedAt: !1029)
!1091 = !DILocation(line: 494, column: 33, scope: !1071, inlinedAt: !1029)
!1092 = !DILocation(line: 488, column: 30, scope: !1064, inlinedAt: !1029)
!1093 = distinct !{!1093, !1066, !1094, !209}
!1094 = !DILocation(line: 502, column: 9, scope: !1065, inlinedAt: !1029)
!1095 = !DILocation(line: 511, column: 21, scope: !1096, inlinedAt: !1029)
!1096 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 511, column: 7)
!1097 = distinct !{!1097, !1067, !1098, !209}
!1098 = !DILocation(line: 571, column: 9, scope: !1068, inlinedAt: !1029)
!1099 = !DILocation(line: 520, column: 22, scope: !1100, inlinedAt: !1029)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 512, column: 9)
!1101 = !DILocation(line: 520, column: 17, scope: !1100, inlinedAt: !1029)
!1102 = !DILocation(line: 521, column: 18, scope: !1100, inlinedAt: !1029)
!1103 = !DILocation(line: 522, column: 30, scope: !1100, inlinedAt: !1029)
!1104 = !DILocation(line: 522, column: 15, scope: !1100, inlinedAt: !1029)
!1105 = !DILocation(line: 523, column: 11, scope: !1100, inlinedAt: !1029)
!1106 = !DILocation(line: 523, column: 31, scope: !1100, inlinedAt: !1029)
!1107 = !DILocation(line: 525, column: 39, scope: !1100, inlinedAt: !1029)
!1108 = !DILocation(line: 525, column: 41, scope: !1100, inlinedAt: !1029)
!1109 = !DILocation(line: 525, column: 48, scope: !1100, inlinedAt: !1029)
!1110 = !DILocation(line: 525, column: 11, scope: !1100, inlinedAt: !1029)
!1111 = !DILocation(line: 525, column: 37, scope: !1100, inlinedAt: !1029)
!1112 = !DILocation(line: 541, column: 25, scope: !1100, inlinedAt: !1029)
!1113 = !DILocation(line: 542, column: 19, scope: !1100, inlinedAt: !1029)
!1114 = !DILocation(line: 542, column: 29, scope: !1100, inlinedAt: !1029)
!1115 = !DILocation(line: 542, column: 32, scope: !1100, inlinedAt: !1029)
!1116 = !DILocation(line: 542, column: 27, scope: !1100, inlinedAt: !1029)
!1117 = !DILocation(line: 542, column: 25, scope: !1100, inlinedAt: !1029)
!1118 = !DILocation(line: 543, column: 11, scope: !1100, inlinedAt: !1029)
!1119 = !DILocation(line: 543, column: 27, scope: !1100, inlinedAt: !1029)
!1120 = !DILocation(line: 545, column: 54, scope: !1100, inlinedAt: !1029)
!1121 = !DILocation(line: 545, column: 62, scope: !1100, inlinedAt: !1029)
!1122 = !DILocation(line: 545, column: 70, scope: !1100, inlinedAt: !1029)
!1123 = !DILocation(line: 545, column: 74, scope: !1100, inlinedAt: !1029)
!1124 = !DILocation(line: 545, column: 60, scope: !1100, inlinedAt: !1029)
!1125 = !DILocation(line: 545, column: 41, scope: !1100, inlinedAt: !1029)
!1126 = !DILocation(line: 545, column: 11, scope: !1100, inlinedAt: !1029)
!1127 = !DILocation(line: 545, column: 33, scope: !1100, inlinedAt: !1029)
!1128 = !DILocation(line: 554, column: 22, scope: !1129, inlinedAt: !1029)
!1129 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 554, column: 11)
!1130 = !DILocation(line: 554, column: 29, scope: !1131, inlinedAt: !1029)
!1131 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 554, column: 11)
!1132 = !DILocation(line: 554, column: 11, scope: !1129, inlinedAt: !1029)
!1133 = !DILocation(line: 556, column: 17, scope: !1134, inlinedAt: !1029)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 555, column: 13)
!1135 = !DILocation(line: 557, column: 24, scope: !1134, inlinedAt: !1029)
!1136 = !DILocation(line: 557, column: 27, scope: !1134, inlinedAt: !1029)
!1137 = !DILocation(line: 557, column: 22, scope: !1134, inlinedAt: !1029)
!1138 = !DILocation(line: 557, column: 32, scope: !1134, inlinedAt: !1029)
!1139 = !DILocation(line: 557, column: 36, scope: !1134, inlinedAt: !1029)
!1140 = !DILocation(line: 557, column: 47, scope: !1134, inlinedAt: !1029)
!1141 = !DILocation(line: 557, column: 51, scope: !1134, inlinedAt: !1029)
!1142 = !DILocation(line: 557, column: 44, scope: !1134, inlinedAt: !1029)
!1143 = !DILocation(line: 557, column: 56, scope: !1134, inlinedAt: !1029)
!1144 = !DILocation(line: 557, column: 42, scope: !1134, inlinedAt: !1029)
!1145 = !DILocation(line: 558, column: 33, scope: !1134, inlinedAt: !1029)
!1146 = !DILocation(line: 558, column: 21, scope: !1134, inlinedAt: !1029)
!1147 = !DILocation(line: 557, column: 63, scope: !1134, inlinedAt: !1029)
!1148 = !DILocation(line: 559, column: 15, scope: !1134, inlinedAt: !1029)
!1149 = !DILocation(line: 559, column: 31, scope: !1134, inlinedAt: !1029)
!1150 = !DILocation(line: 561, column: 48, scope: !1134, inlinedAt: !1029)
!1151 = !DILocation(line: 561, column: 56, scope: !1134, inlinedAt: !1029)
!1152 = !DILocation(line: 561, column: 64, scope: !1134, inlinedAt: !1029)
!1153 = !DILocation(line: 561, column: 66, scope: !1134, inlinedAt: !1029)
!1154 = !DILocation(line: 561, column: 70, scope: !1134, inlinedAt: !1029)
!1155 = !DILocation(line: 561, column: 62, scope: !1134, inlinedAt: !1029)
!1156 = !DILocation(line: 561, column: 45, scope: !1134, inlinedAt: !1029)
!1157 = !DILocation(line: 561, column: 15, scope: !1134, inlinedAt: !1029)
!1158 = !DILocation(line: 561, column: 37, scope: !1134, inlinedAt: !1029)
!1159 = !DILocation(line: 554, column: 38, scope: !1131, inlinedAt: !1029)
!1160 = distinct !{!1160, !1132, !1161, !209}
!1161 = !DILocation(line: 570, column: 13, scope: !1129, inlinedAt: !1029)
!1162 = !DILocation(line: 575, column: 18, scope: !1013, inlinedAt: !1029)
!1163 = !DILocation(line: 576, column: 14, scope: !1013, inlinedAt: !1029)
!1164 = !DILocation(line: 575, column: 13, scope: !1013, inlinedAt: !1029)
!1165 = !DILocation(line: 577, column: 26, scope: !1013, inlinedAt: !1029)
!1166 = !DILocation(line: 577, column: 11, scope: !1013, inlinedAt: !1029)
!1167 = !DILocation(line: 578, column: 7, scope: !1013, inlinedAt: !1029)
!1168 = !DILocation(line: 578, column: 27, scope: !1013, inlinedAt: !1029)
!1169 = !DILocation(line: 580, column: 35, scope: !1013, inlinedAt: !1029)
!1170 = !DILocation(line: 580, column: 40, scope: !1013, inlinedAt: !1029)
!1171 = !DILocation(line: 580, column: 44, scope: !1013, inlinedAt: !1029)
!1172 = !DILocation(line: 580, column: 50, scope: !1013, inlinedAt: !1029)
!1173 = !DILocation(line: 580, column: 7, scope: !1013, inlinedAt: !1029)
!1174 = !DILocation(line: 580, column: 33, scope: !1013, inlinedAt: !1029)
!1175 = !DILocation(line: 588, column: 7, scope: !1013, inlinedAt: !1029)
!1176 = !DILocalVariable(name: "lmax", arg: 1, scope: !1177, file: !2, line: 218, type: !85)
!1177 = distinct !DISubprogram(name: "legendre_deriv_alt_array_schmidt_e", scope: !2, file: !2, line: 217, type: !533, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1178)
!1178 = !{!1176, !1179, !1180, !1181, !1182, !1183, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202}
!1179 = !DILocalVariable(name: "x", arg: 2, scope: !1177, file: !2, line: 218, type: !89)
!1180 = !DILocalVariable(name: "csphase", arg: 3, scope: !1177, file: !2, line: 218, type: !89)
!1181 = !DILocalVariable(name: "result_array", arg: 4, scope: !1177, file: !2, line: 218, type: !90)
!1182 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !1177, file: !2, line: 218, type: !90)
!1183 = !DILocalVariable(name: "eps", scope: !1184, file: !2, line: 236, type: !89)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 235, column: 5)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 230, column: 12)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 225, column: 12)
!1187 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 220, column: 7)
!1188 = !DILocalVariable(name: "u", scope: !1184, file: !2, line: 237, type: !89)
!1189 = !DILocalVariable(name: "uinv", scope: !1184, file: !2, line: 239, type: !89)
!1190 = !DILocalVariable(name: "xbyu", scope: !1184, file: !2, line: 245, type: !89)
!1191 = !DILocalVariable(name: "l", scope: !1184, file: !2, line: 247, type: !86)
!1192 = !DILocalVariable(name: "m", scope: !1184, file: !2, line: 247, type: !86)
!1193 = !DILocalVariable(name: "k", scope: !1184, file: !2, line: 248, type: !86)
!1194 = !DILocalVariable(name: "idxmm", scope: !1184, file: !2, line: 248, type: !86)
!1195 = !DILocalVariable(name: "plm", scope: !1184, file: !2, line: 249, type: !70)
!1196 = !DILocalVariable(name: "pmm", scope: !1184, file: !2, line: 250, type: !70)
!1197 = !DILocalVariable(name: "rescalem", scope: !1184, file: !2, line: 251, type: !70)
!1198 = !DILocalVariable(name: "pm1", scope: !1184, file: !2, line: 252, type: !70)
!1199 = !DILocalVariable(name: "pm2", scope: !1184, file: !2, line: 253, type: !70)
!1200 = !DILocalVariable(name: "nlm", scope: !1184, file: !2, line: 254, type: !86)
!1201 = !DILocalVariable(name: "sqrts", scope: !1184, file: !2, line: 255, type: !90)
!1202 = !DILocalVariable(name: "linv", scope: !1203, file: !2, line: 288, type: !70)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 287, column: 9)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 286, column: 7)
!1205 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 286, column: 7)
!1206 = !DILocation(line: 0, scope: !1177, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 121, column: 11, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 119, column: 5)
!1209 = !DILocation(line: 220, column: 15, scope: !1187, inlinedAt: !1207)
!1210 = !DILocation(line: 222, column: 7, scope: !1211, inlinedAt: !1207)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !2, line: 222, column: 7)
!1212 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 221, column: 5)
!1213 = !DILocation(line: 225, column: 12, scope: !1186, inlinedAt: !1207)
!1214 = !DILocation(line: 225, column: 20, scope: !1186, inlinedAt: !1207)
!1215 = !DILocation(line: 225, column: 12, scope: !1187, inlinedAt: !1207)
!1216 = !DILocation(line: 227, column: 7, scope: !1217, inlinedAt: !1207)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 227, column: 7)
!1218 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 226, column: 5)
!1219 = !DILocation(line: 230, column: 20, scope: !1185, inlinedAt: !1207)
!1220 = !DILocation(line: 230, column: 27, scope: !1185, inlinedAt: !1207)
!1221 = !DILocation(line: 232, column: 7, scope: !1222, inlinedAt: !1207)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 232, column: 7)
!1223 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 231, column: 5)
!1224 = !DILocation(line: 0, scope: !1184, inlinedAt: !1207)
!1225 = !DILocation(line: 237, column: 34, scope: !1184, inlinedAt: !1207)
!1226 = !DILocation(line: 237, column: 46, scope: !1184, inlinedAt: !1207)
!1227 = !DILocation(line: 237, column: 39, scope: !1184, inlinedAt: !1207)
!1228 = !DILocation(line: 237, column: 24, scope: !1184, inlinedAt: !1207)
!1229 = !DILocation(line: 0, scope: !122, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 254, column: 20, scope: !1184, inlinedAt: !1207)
!1231 = !DILocation(line: 255, column: 25, scope: !1184, inlinedAt: !1207)
!1232 = !DILocation(line: 0, scope: !307, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 258, column: 7, scope: !1184, inlinedAt: !1207)
!1234 = !DILocation(line: 112, column: 3, scope: !316, inlinedAt: !1233)
!1235 = !DILocation(line: 113, column: 21, scope: !318, inlinedAt: !1233)
!1236 = !DILocation(line: 113, column: 16, scope: !318, inlinedAt: !1233)
!1237 = !DILocation(line: 113, column: 5, scope: !318, inlinedAt: !1233)
!1238 = !DILocation(line: 113, column: 14, scope: !318, inlinedAt: !1233)
!1239 = !DILocation(line: 112, column: 34, scope: !318, inlinedAt: !1233)
!1240 = distinct !{!1240, !1234, !1241, !209}
!1241 = !DILocation(line: 113, column: 31, scope: !316, inlinedAt: !1233)
!1242 = distinct !{!1242, !326}
!1243 = !DILocation(line: 239, column: 31, scope: !1184, inlinedAt: !1207)
!1244 = !DILocation(line: 245, column: 29, scope: !1184, inlinedAt: !1207)
!1245 = !DILocation(line: 264, column: 23, scope: !1184, inlinedAt: !1207)
!1246 = !DILocation(line: 266, column: 29, scope: !1184, inlinedAt: !1207)
!1247 = !DILocation(line: 272, column: 16, scope: !1248, inlinedAt: !1207)
!1248 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 272, column: 11)
!1249 = !DILocation(line: 272, column: 11, scope: !1184, inlinedAt: !1207)
!1250 = !DILocation(line: 275, column: 7, scope: !1184, inlinedAt: !1207)
!1251 = !DILocation(line: 275, column: 23, scope: !1184, inlinedAt: !1207)
!1252 = !DILocation(line: 277, column: 31, scope: !1184, inlinedAt: !1207)
!1253 = !DILocation(line: 277, column: 7, scope: !1184, inlinedAt: !1207)
!1254 = !DILocation(line: 277, column: 29, scope: !1184, inlinedAt: !1207)
!1255 = !DILocation(line: 286, column: 21, scope: !1204, inlinedAt: !1207)
!1256 = !DILocation(line: 286, column: 7, scope: !1205, inlinedAt: !1207)
!1257 = !DILocation(line: 321, column: 7, scope: !1258, inlinedAt: !1207)
!1258 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 321, column: 7)
!1259 = !DILocation(line: 288, column: 31, scope: !1203, inlinedAt: !1207)
!1260 = !DILocation(line: 288, column: 29, scope: !1203, inlinedAt: !1207)
!1261 = !DILocation(line: 0, scope: !1203, inlinedAt: !1207)
!1262 = !DILocation(line: 290, column: 13, scope: !1203, inlinedAt: !1207)
!1263 = !DILocation(line: 292, column: 22, scope: !1203, inlinedAt: !1207)
!1264 = !DILocation(line: 292, column: 30, scope: !1203, inlinedAt: !1207)
!1265 = !DILocation(line: 292, column: 34, scope: !1203, inlinedAt: !1207)
!1266 = !DILocation(line: 292, column: 47, scope: !1203, inlinedAt: !1207)
!1267 = !DILocation(line: 292, column: 55, scope: !1203, inlinedAt: !1207)
!1268 = !DILocation(line: 292, column: 40, scope: !1203, inlinedAt: !1207)
!1269 = !DILocation(line: 293, column: 11, scope: !1203, inlinedAt: !1207)
!1270 = !DILocation(line: 293, column: 27, scope: !1203, inlinedAt: !1207)
!1271 = !DILocation(line: 295, column: 40, scope: !1203, inlinedAt: !1207)
!1272 = !DILocation(line: 295, column: 49, scope: !1203, inlinedAt: !1207)
!1273 = !DILocation(line: 295, column: 55, scope: !1203, inlinedAt: !1207)
!1274 = !DILocation(line: 295, column: 44, scope: !1203, inlinedAt: !1207)
!1275 = !DILocation(line: 295, column: 11, scope: !1203, inlinedAt: !1207)
!1276 = !DILocation(line: 295, column: 33, scope: !1203, inlinedAt: !1207)
!1277 = !DILocation(line: 286, column: 30, scope: !1204, inlinedAt: !1207)
!1278 = distinct !{!1278, !1256, !1279, !209}
!1279 = !DILocation(line: 303, column: 9, scope: !1205, inlinedAt: !1207)
!1280 = !DILocation(line: 321, column: 21, scope: !1281, inlinedAt: !1207)
!1281 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 321, column: 7)
!1282 = distinct !{!1282, !1257, !1283, !209}
!1283 = !DILocation(line: 387, column: 9, scope: !1258, inlinedAt: !1207)
!1284 = !DILocation(line: 324, column: 20, scope: !1285, inlinedAt: !1207)
!1285 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 322, column: 9)
!1286 = !DILocation(line: 332, column: 22, scope: !1285, inlinedAt: !1207)
!1287 = !DILocation(line: 332, column: 17, scope: !1285, inlinedAt: !1207)
!1288 = !DILocation(line: 333, column: 36, scope: !1285, inlinedAt: !1207)
!1289 = !DILocation(line: 333, column: 28, scope: !1285, inlinedAt: !1207)
!1290 = !DILocation(line: 333, column: 26, scope: !1285, inlinedAt: !1207)
!1291 = !DILocation(line: 333, column: 47, scope: !1285, inlinedAt: !1207)
!1292 = !DILocation(line: 333, column: 45, scope: !1285, inlinedAt: !1207)
!1293 = !DILocation(line: 333, column: 15, scope: !1285, inlinedAt: !1207)
!1294 = !DILocation(line: 334, column: 37, scope: !1285, inlinedAt: !1207)
!1295 = !DILocation(line: 334, column: 11, scope: !1285, inlinedAt: !1207)
!1296 = !DILocation(line: 334, column: 31, scope: !1285, inlinedAt: !1207)
!1297 = !DILocation(line: 336, column: 39, scope: !1285, inlinedAt: !1207)
!1298 = !DILocation(line: 336, column: 41, scope: !1285, inlinedAt: !1207)
!1299 = !DILocation(line: 336, column: 48, scope: !1285, inlinedAt: !1207)
!1300 = !DILocation(line: 336, column: 11, scope: !1285, inlinedAt: !1207)
!1301 = !DILocation(line: 336, column: 37, scope: !1285, inlinedAt: !1207)
!1302 = !DILocation(line: 351, column: 25, scope: !1285, inlinedAt: !1207)
!1303 = !DILocation(line: 352, column: 33, scope: !1285, inlinedAt: !1207)
!1304 = !DILocation(line: 352, column: 21, scope: !1285, inlinedAt: !1207)
!1305 = !DILocation(line: 352, column: 19, scope: !1285, inlinedAt: !1207)
!1306 = !DILocation(line: 352, column: 38, scope: !1285, inlinedAt: !1207)
!1307 = !DILocation(line: 353, column: 33, scope: !1285, inlinedAt: !1207)
!1308 = !DILocation(line: 353, column: 11, scope: !1285, inlinedAt: !1207)
!1309 = !DILocation(line: 353, column: 27, scope: !1285, inlinedAt: !1207)
!1310 = !DILocation(line: 356, column: 24, scope: !1285, inlinedAt: !1207)
!1311 = !DILocation(line: 356, column: 31, scope: !1285, inlinedAt: !1207)
!1312 = !DILocation(line: 356, column: 35, scope: !1285, inlinedAt: !1207)
!1313 = !DILocation(line: 357, column: 21, scope: !1285, inlinedAt: !1207)
!1314 = !DILocation(line: 357, column: 40, scope: !1285, inlinedAt: !1207)
!1315 = !DILocation(line: 357, column: 38, scope: !1285, inlinedAt: !1207)
!1316 = !DILocation(line: 356, column: 53, scope: !1285, inlinedAt: !1207)
!1317 = !DILocation(line: 356, column: 18, scope: !1285, inlinedAt: !1207)
!1318 = !DILocation(line: 355, column: 11, scope: !1285, inlinedAt: !1207)
!1319 = !DILocation(line: 355, column: 33, scope: !1285, inlinedAt: !1207)
!1320 = !DILocation(line: 366, column: 22, scope: !1321, inlinedAt: !1207)
!1321 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 366, column: 11)
!1322 = !DILocation(line: 366, column: 16, scope: !1321, inlinedAt: !1207)
!1323 = !DILocation(line: 366, column: 29, scope: !1324, inlinedAt: !1207)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 366, column: 11)
!1325 = !DILocation(line: 366, column: 11, scope: !1321, inlinedAt: !1207)
!1326 = !DILocation(line: 368, column: 17, scope: !1327, inlinedAt: !1207)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 367, column: 13)
!1328 = !DILocation(line: 370, column: 19, scope: !1327, inlinedAt: !1207)
!1329 = !DILocation(line: 370, column: 22, scope: !1327, inlinedAt: !1207)
!1330 = !DILocation(line: 370, column: 17, scope: !1327, inlinedAt: !1207)
!1331 = !DILocation(line: 370, column: 29, scope: !1327, inlinedAt: !1207)
!1332 = !DILocation(line: 370, column: 27, scope: !1327, inlinedAt: !1207)
!1333 = !DILocation(line: 370, column: 52, scope: !1327, inlinedAt: !1207)
!1334 = !DILocation(line: 370, column: 44, scope: !1327, inlinedAt: !1207)
!1335 = !DILocation(line: 370, column: 42, scope: !1327, inlinedAt: !1207)
!1336 = !DILocation(line: 370, column: 57, scope: !1327, inlinedAt: !1207)
!1337 = !DILocation(line: 370, column: 61, scope: !1327, inlinedAt: !1207)
!1338 = !DILocation(line: 371, column: 17, scope: !1327, inlinedAt: !1207)
!1339 = !DILocation(line: 371, column: 36, scope: !1327, inlinedAt: !1207)
!1340 = !DILocation(line: 371, column: 34, scope: !1327, inlinedAt: !1207)
!1341 = !DILocation(line: 371, column: 53, scope: !1327, inlinedAt: !1207)
!1342 = !DILocation(line: 372, column: 30, scope: !1327, inlinedAt: !1207)
!1343 = !DILocation(line: 372, column: 45, scope: !1327, inlinedAt: !1207)
!1344 = !DILocation(line: 370, column: 67, scope: !1327, inlinedAt: !1207)
!1345 = !DILocation(line: 373, column: 37, scope: !1327, inlinedAt: !1207)
!1346 = !DILocation(line: 373, column: 15, scope: !1327, inlinedAt: !1207)
!1347 = !DILocation(line: 373, column: 31, scope: !1327, inlinedAt: !1207)
!1348 = !DILocation(line: 376, column: 25, scope: !1327, inlinedAt: !1207)
!1349 = !DILocation(line: 376, column: 27, scope: !1327, inlinedAt: !1207)
!1350 = !DILocation(line: 376, column: 31, scope: !1327, inlinedAt: !1207)
!1351 = !DILocation(line: 377, column: 25, scope: !1327, inlinedAt: !1207)
!1352 = !DILocation(line: 377, column: 40, scope: !1327, inlinedAt: !1207)
!1353 = !DILocation(line: 377, column: 38, scope: !1327, inlinedAt: !1207)
!1354 = !DILocation(line: 377, column: 55, scope: !1327, inlinedAt: !1207)
!1355 = !DILocation(line: 377, column: 53, scope: !1327, inlinedAt: !1207)
!1356 = !DILocation(line: 376, column: 49, scope: !1327, inlinedAt: !1207)
!1357 = !DILocation(line: 376, column: 22, scope: !1327, inlinedAt: !1207)
!1358 = !DILocation(line: 375, column: 15, scope: !1327, inlinedAt: !1207)
!1359 = !DILocation(line: 375, column: 37, scope: !1327, inlinedAt: !1207)
!1360 = !DILocation(line: 366, column: 38, scope: !1324, inlinedAt: !1207)
!1361 = distinct !{!1361, !1325, !1362, !209}
!1362 = !DILocation(line: 386, column: 13, scope: !1321, inlinedAt: !1207)
!1363 = !DILocation(line: 392, column: 18, scope: !1184, inlinedAt: !1207)
!1364 = !DILocation(line: 391, column: 16, scope: !1184, inlinedAt: !1207)
!1365 = !DILocation(line: 392, column: 13, scope: !1184, inlinedAt: !1207)
!1366 = !DILocation(line: 393, column: 24, scope: !1184, inlinedAt: !1207)
!1367 = !DILocation(line: 393, column: 22, scope: !1184, inlinedAt: !1207)
!1368 = !DILocation(line: 393, column: 46, scope: !1184, inlinedAt: !1207)
!1369 = !DILocation(line: 393, column: 44, scope: !1184, inlinedAt: !1207)
!1370 = !DILocation(line: 393, column: 11, scope: !1184, inlinedAt: !1207)
!1371 = !DILocation(line: 394, column: 33, scope: !1184, inlinedAt: !1207)
!1372 = !DILocation(line: 394, column: 7, scope: !1184, inlinedAt: !1207)
!1373 = !DILocation(line: 394, column: 27, scope: !1184, inlinedAt: !1207)
!1374 = !DILocation(line: 396, column: 35, scope: !1184, inlinedAt: !1207)
!1375 = !DILocation(line: 396, column: 40, scope: !1184, inlinedAt: !1207)
!1376 = !DILocation(line: 396, column: 47, scope: !1184, inlinedAt: !1207)
!1377 = !DILocation(line: 396, column: 7, scope: !1184, inlinedAt: !1207)
!1378 = !DILocation(line: 396, column: 33, scope: !1184, inlinedAt: !1207)
!1379 = !DILocation(line: 404, column: 7, scope: !1184, inlinedAt: !1207)
!1380 = !DILocation(line: 141, column: 39, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !977, file: !2, line: 141, column: 7)
!1382 = !DILocation(line: 154, column: 5, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 151, column: 5)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 150, column: 12)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 145, column: 12)
!1386 = !DILocation(line: 164, column: 23, scope: !990)
!1387 = !DILocation(line: 0, scope: !990)
!1388 = !DILocation(line: 166, column: 5, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !990, file: !2, line: 166, column: 5)
!1390 = !DILocation(line: 169, column: 11, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 167, column: 7)
!1392 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 166, column: 5)
!1393 = !DILocation(line: 169, column: 27, scope: !1391)
!1394 = !DILocation(line: 0, scope: !434, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 168, column: 22, scope: !1391)
!1396 = !DILocation(line: 95, column: 18, scope: !434, inlinedAt: !1395)
!1397 = !DILocation(line: 95, column: 13, scope: !434, inlinedAt: !1395)
!1398 = !DILocation(line: 95, column: 23, scope: !434, inlinedAt: !1395)
!1399 = !DILocation(line: 168, column: 9, scope: !1391)
!1400 = !DILocation(line: 168, column: 57, scope: !1391)
!1401 = !DILocation(line: 172, column: 11, scope: !1391)
!1402 = !DILocation(line: 172, column: 27, scope: !1391)
!1403 = !DILocation(line: 0, scope: !434, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 171, column: 28, scope: !1391)
!1405 = !DILocation(line: 171, column: 9, scope: !1391)
!1406 = !DILocation(line: 171, column: 63, scope: !1391)
!1407 = !DILocation(line: 179, column: 23, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 179, column: 9)
!1409 = distinct !DILexicalBlock(scope: !1391, file: !2, line: 179, column: 9)
!1410 = !DILocation(line: 179, column: 9, scope: !1409)
!1411 = !DILocation(line: 182, column: 15, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 180, column: 11)
!1413 = !DILocation(line: 182, column: 31, scope: !1412)
!1414 = !DILocation(line: 0, scope: !434, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 181, column: 26, scope: !1412)
!1416 = !DILocation(line: 95, column: 27, scope: !434, inlinedAt: !1415)
!1417 = !DILocation(line: 181, column: 13, scope: !1412)
!1418 = !DILocation(line: 181, column: 61, scope: !1412)
!1419 = !DILocation(line: 185, column: 15, scope: !1412)
!1420 = !DILocation(line: 185, column: 31, scope: !1412)
!1421 = !DILocation(line: 0, scope: !434, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 184, column: 32, scope: !1412)
!1423 = !DILocation(line: 184, column: 13, scope: !1412)
!1424 = !DILocation(line: 184, column: 67, scope: !1412)
!1425 = !DILocation(line: 179, column: 29, scope: !1408)
!1426 = distinct !{!1426, !1410, !1427, !209}
!1427 = !DILocation(line: 191, column: 11, scope: !1409)
!1428 = !DILocation(line: 193, column: 18, scope: !1391)
!1429 = !DILocation(line: 166, column: 19, scope: !1392)
!1430 = distinct !{!1430, !1388, !1431, !209}
!1431 = !DILocation(line: 194, column: 7, scope: !1389)
!1432 = !DILocation(line: 198, column: 1, scope: !977)
!1433 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv2_array", scope: !2, file: !2, line: 74, type: !1434, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1436)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!32, !83, !85, !89, !90, !90, !90}
!1436 = !{!1437, !1438, !1439, !1440, !1441, !1442, !1443}
!1437 = !DILocalVariable(name: "norm", arg: 1, scope: !1433, file: !2, line: 75, type: !83)
!1438 = !DILocalVariable(name: "lmax", arg: 2, scope: !1433, file: !2, line: 75, type: !85)
!1439 = !DILocalVariable(name: "x", arg: 3, scope: !1433, file: !2, line: 75, type: !89)
!1440 = !DILocalVariable(name: "result_array", arg: 4, scope: !1433, file: !2, line: 76, type: !90)
!1441 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !1433, file: !2, line: 76, type: !90)
!1442 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !1433, file: !2, line: 76, type: !90)
!1443 = !DILocalVariable(name: "s", scope: !1433, file: !2, line: 78, type: !32)
!1444 = !DILocation(line: 0, scope: !1433)
!1445 = !DILocation(line: 78, column: 11, scope: !1433)
!1446 = !DILocation(line: 79, column: 3, scope: !1433)
!1447 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv2_array_e", scope: !2, file: !2, line: 95, type: !1448, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1450)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!32, !83, !85, !89, !89, !90, !90, !90}
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1470, !1471, !1473, !1474, !1475}
!1451 = !DILocalVariable(name: "norm", arg: 1, scope: !1447, file: !2, line: 96, type: !83)
!1452 = !DILocalVariable(name: "lmax", arg: 2, scope: !1447, file: !2, line: 96, type: !85)
!1453 = !DILocalVariable(name: "x", arg: 3, scope: !1447, file: !2, line: 96, type: !89)
!1454 = !DILocalVariable(name: "csphase", arg: 4, scope: !1447, file: !2, line: 97, type: !89)
!1455 = !DILocalVariable(name: "result_array", arg: 5, scope: !1447, file: !2, line: 97, type: !90)
!1456 = !DILocalVariable(name: "result_deriv_array", arg: 6, scope: !1447, file: !2, line: 97, type: !90)
!1457 = !DILocalVariable(name: "result_deriv2_array", arg: 7, scope: !1447, file: !2, line: 97, type: !90)
!1458 = !DILocalVariable(name: "s", scope: !1447, file: !2, line: 99, type: !32)
!1459 = !DILocalVariable(name: "nlm", scope: !1447, file: !2, line: 100, type: !85)
!1460 = !DILocalVariable(name: "i", scope: !1447, file: !2, line: 102, type: !86)
!1461 = !DILocalVariable(name: "u", scope: !1447, file: !2, line: 104, type: !89)
!1462 = !DILocalVariable(name: "uinv", scope: !1447, file: !2, line: 105, type: !89)
!1463 = !DILocalVariable(name: "uinv2", scope: !1447, file: !2, line: 108, type: !89)
!1464 = !DILocalVariable(name: "fac1", scope: !1447, file: !2, line: 111, type: !70)
!1465 = !DILocalVariable(name: "fac2", scope: !1447, file: !2, line: 111, type: !70)
!1466 = !DILocalVariable(name: "dp", scope: !1467, file: !2, line: 129, type: !70)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 127, column: 5)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 126, column: 3)
!1469 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 126, column: 3)
!1470 = !DILocalVariable(name: "d2p", scope: !1467, file: !2, line: 130, type: !70)
!1471 = !DILocalVariable(name: "l", scope: !1472, file: !2, line: 162, type: !86)
!1472 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 161, column: 3)
!1473 = !DILocalVariable(name: "m", scope: !1472, file: !2, line: 162, type: !86)
!1474 = !DILocalVariable(name: "twoellp1", scope: !1472, file: !2, line: 163, type: !86)
!1475 = !DILocalVariable(name: "sqrts", scope: !1472, file: !2, line: 164, type: !90)
!1476 = !DILocation(line: 0, scope: !1447)
!1477 = !DILocation(line: 0, scope: !122, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 100, column: 22, scope: !1447)
!1479 = !DILocation(line: 68, column: 17, scope: !122, inlinedAt: !1478)
!1480 = !DILocation(line: 68, column: 30, scope: !122, inlinedAt: !1478)
!1481 = !DILocation(line: 68, column: 22, scope: !122, inlinedAt: !1478)
!1482 = !DILocation(line: 68, column: 35, scope: !122, inlinedAt: !1478)
!1483 = !DILocation(line: 104, column: 30, scope: !1447)
!1484 = !DILocation(line: 104, column: 42, scope: !1447)
!1485 = !DILocation(line: 104, column: 35, scope: !1447)
!1486 = !DILocation(line: 104, column: 20, scope: !1447)
!1487 = !DILocation(line: 105, column: 27, scope: !1447)
!1488 = !DILocation(line: 108, column: 29, scope: !1447)
!1489 = !DILocation(line: 113, column: 12, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 113, column: 7)
!1491 = !DILocation(line: 0, scope: !1490)
!1492 = !DILocation(line: 113, column: 7, scope: !1447)
!1493 = !DILocalVariable(name: "lmax", arg: 1, scope: !1494, file: !2, line: 426, type: !85)
!1494 = distinct !DISubprogram(name: "legendre_deriv2_array_none_e", scope: !2, file: !2, line: 425, type: !1495, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1497)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!32, !85, !89, !89, !90, !90, !90}
!1497 = !{!1493, !1498, !1499, !1500, !1501, !1502, !1503, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519}
!1498 = !DILocalVariable(name: "x", arg: 2, scope: !1494, file: !2, line: 426, type: !89)
!1499 = !DILocalVariable(name: "csphase", arg: 3, scope: !1494, file: !2, line: 426, type: !89)
!1500 = !DILocalVariable(name: "result_array", arg: 4, scope: !1494, file: !2, line: 426, type: !90)
!1501 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !1494, file: !2, line: 426, type: !90)
!1502 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !1494, file: !2, line: 426, type: !90)
!1503 = !DILocalVariable(name: "u", scope: !1504, file: !2, line: 444, type: !89)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !2, line: 443, column: 5)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !2, line: 438, column: 12)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !2, line: 433, column: 12)
!1507 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 428, column: 7)
!1508 = !DILocalVariable(name: "uinv", scope: !1504, file: !2, line: 446, type: !89)
!1509 = !DILocalVariable(name: "uinv2", scope: !1504, file: !2, line: 449, type: !89)
!1510 = !DILocalVariable(name: "xbyu", scope: !1504, file: !2, line: 452, type: !89)
!1511 = !DILocalVariable(name: "l", scope: !1504, file: !2, line: 454, type: !86)
!1512 = !DILocalVariable(name: "m", scope: !1504, file: !2, line: 454, type: !86)
!1513 = !DILocalVariable(name: "k", scope: !1504, file: !2, line: 455, type: !86)
!1514 = !DILocalVariable(name: "idxmm", scope: !1504, file: !2, line: 455, type: !86)
!1515 = !DILocalVariable(name: "plm", scope: !1504, file: !2, line: 456, type: !70)
!1516 = !DILocalVariable(name: "pmm", scope: !1504, file: !2, line: 456, type: !70)
!1517 = !DILocalVariable(name: "pm1", scope: !1504, file: !2, line: 457, type: !70)
!1518 = !DILocalVariable(name: "pm2", scope: !1504, file: !2, line: 458, type: !70)
!1519 = !DILocalVariable(name: "twomm1", scope: !1504, file: !2, line: 459, type: !70)
!1520 = !DILocation(line: 0, scope: !1494, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 116, column: 11, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 114, column: 5)
!1523 = !DILocation(line: 428, column: 15, scope: !1507, inlinedAt: !1521)
!1524 = !DILocation(line: 430, column: 7, scope: !1525, inlinedAt: !1521)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 430, column: 7)
!1526 = distinct !DILexicalBlock(scope: !1507, file: !2, line: 429, column: 5)
!1527 = !DILocation(line: 433, column: 12, scope: !1506, inlinedAt: !1521)
!1528 = !DILocation(line: 433, column: 20, scope: !1506, inlinedAt: !1521)
!1529 = !DILocation(line: 433, column: 12, scope: !1507, inlinedAt: !1521)
!1530 = !DILocation(line: 435, column: 7, scope: !1531, inlinedAt: !1521)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !2, line: 435, column: 7)
!1532 = distinct !DILexicalBlock(scope: !1506, file: !2, line: 434, column: 5)
!1533 = !DILocation(line: 438, column: 20, scope: !1505, inlinedAt: !1521)
!1534 = !DILocation(line: 438, column: 27, scope: !1505, inlinedAt: !1521)
!1535 = !DILocation(line: 440, column: 7, scope: !1536, inlinedAt: !1521)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !2, line: 440, column: 7)
!1537 = distinct !DILexicalBlock(scope: !1505, file: !2, line: 439, column: 5)
!1538 = !DILocation(line: 444, column: 24, scope: !1504, inlinedAt: !1521)
!1539 = !DILocation(line: 0, scope: !1504, inlinedAt: !1521)
!1540 = !DILocation(line: 446, column: 31, scope: !1504, inlinedAt: !1521)
!1541 = !DILocation(line: 449, column: 36, scope: !1504, inlinedAt: !1521)
!1542 = !DILocation(line: 452, column: 29, scope: !1504, inlinedAt: !1521)
!1543 = !DILocation(line: 466, column: 23, scope: !1504, inlinedAt: !1521)
!1544 = !DILocation(line: 468, column: 29, scope: !1504, inlinedAt: !1521)
!1545 = !DILocation(line: 471, column: 30, scope: !1504, inlinedAt: !1521)
!1546 = !DILocation(line: 474, column: 16, scope: !1547, inlinedAt: !1521)
!1547 = distinct !DILexicalBlock(scope: !1504, file: !2, line: 474, column: 11)
!1548 = !DILocation(line: 474, column: 11, scope: !1504, inlinedAt: !1521)
!1549 = !DILocation(line: 477, column: 7, scope: !1504, inlinedAt: !1521)
!1550 = !DILocation(line: 477, column: 23, scope: !1504, inlinedAt: !1521)
!1551 = !DILocation(line: 479, column: 31, scope: !1504, inlinedAt: !1521)
!1552 = !DILocation(line: 479, column: 7, scope: !1504, inlinedAt: !1521)
!1553 = !DILocation(line: 479, column: 29, scope: !1504, inlinedAt: !1521)
!1554 = !DILocation(line: 482, column: 32, scope: !1504, inlinedAt: !1521)
!1555 = !DILocation(line: 482, column: 7, scope: !1504, inlinedAt: !1521)
!1556 = !DILocation(line: 482, column: 30, scope: !1504, inlinedAt: !1521)
!1557 = !DILocation(line: 488, column: 21, scope: !1558, inlinedAt: !1521)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 488, column: 7)
!1559 = distinct !DILexicalBlock(scope: !1504, file: !2, line: 488, column: 7)
!1560 = !DILocation(line: 488, column: 7, scope: !1559, inlinedAt: !1521)
!1561 = !DILocation(line: 511, column: 7, scope: !1562, inlinedAt: !1521)
!1562 = distinct !DILexicalBlock(scope: !1504, file: !2, line: 511, column: 7)
!1563 = !DILocation(line: 577, column: 22, scope: !1504, inlinedAt: !1521)
!1564 = !DILocation(line: 490, column: 13, scope: !1565, inlinedAt: !1521)
!1565 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 489, column: 9)
!1566 = !DILocation(line: 491, column: 20, scope: !1565, inlinedAt: !1521)
!1567 = !DILocation(line: 491, column: 23, scope: !1565, inlinedAt: !1521)
!1568 = !DILocation(line: 491, column: 18, scope: !1565, inlinedAt: !1521)
!1569 = !DILocation(line: 491, column: 28, scope: !1565, inlinedAt: !1521)
!1570 = !DILocation(line: 491, column: 32, scope: !1565, inlinedAt: !1521)
!1571 = !DILocation(line: 491, column: 43, scope: !1565, inlinedAt: !1521)
!1572 = !DILocation(line: 491, column: 40, scope: !1565, inlinedAt: !1521)
!1573 = !DILocation(line: 491, column: 48, scope: !1565, inlinedAt: !1521)
!1574 = !DILocation(line: 491, column: 38, scope: !1565, inlinedAt: !1521)
!1575 = !DILocation(line: 491, column: 57, scope: !1565, inlinedAt: !1521)
!1576 = !DILocation(line: 491, column: 55, scope: !1565, inlinedAt: !1521)
!1577 = !DILocation(line: 492, column: 11, scope: !1565, inlinedAt: !1521)
!1578 = !DILocation(line: 492, column: 27, scope: !1565, inlinedAt: !1521)
!1579 = !DILocation(line: 494, column: 35, scope: !1565, inlinedAt: !1521)
!1580 = !DILocation(line: 494, column: 57, scope: !1565, inlinedAt: !1521)
!1581 = !DILocation(line: 494, column: 53, scope: !1565, inlinedAt: !1521)
!1582 = !DILocation(line: 494, column: 46, scope: !1565, inlinedAt: !1521)
!1583 = !DILocation(line: 494, column: 64, scope: !1565, inlinedAt: !1521)
!1584 = !DILocation(line: 494, column: 11, scope: !1565, inlinedAt: !1521)
!1585 = !DILocation(line: 494, column: 33, scope: !1565, inlinedAt: !1521)
!1586 = !DILocation(line: 497, column: 53, scope: !1565, inlinedAt: !1521)
!1587 = !DILocation(line: 497, column: 48, scope: !1565, inlinedAt: !1521)
!1588 = !DILocation(line: 497, column: 60, scope: !1565, inlinedAt: !1521)
!1589 = !DILocation(line: 498, column: 41, scope: !1565, inlinedAt: !1521)
!1590 = !DILocation(line: 497, column: 66, scope: !1565, inlinedAt: !1521)
!1591 = !DILocation(line: 497, column: 11, scope: !1565, inlinedAt: !1521)
!1592 = !DILocation(line: 497, column: 34, scope: !1565, inlinedAt: !1521)
!1593 = !DILocation(line: 488, column: 30, scope: !1558, inlinedAt: !1521)
!1594 = distinct !{!1594, !1560, !1595, !209}
!1595 = !DILocation(line: 502, column: 9, scope: !1559, inlinedAt: !1521)
!1596 = !DILocation(line: 511, column: 21, scope: !1597, inlinedAt: !1521)
!1597 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 511, column: 7)
!1598 = distinct !{!1598, !1561, !1599, !209}
!1599 = !DILocation(line: 571, column: 9, scope: !1562, inlinedAt: !1521)
!1600 = !DILocation(line: 520, column: 22, scope: !1601, inlinedAt: !1521)
!1601 = distinct !DILexicalBlock(scope: !1597, file: !2, line: 512, column: 9)
!1602 = !DILocation(line: 520, column: 17, scope: !1601, inlinedAt: !1521)
!1603 = !DILocation(line: 521, column: 18, scope: !1601, inlinedAt: !1521)
!1604 = !DILocation(line: 522, column: 30, scope: !1601, inlinedAt: !1521)
!1605 = !DILocation(line: 522, column: 15, scope: !1601, inlinedAt: !1521)
!1606 = !DILocation(line: 523, column: 11, scope: !1601, inlinedAt: !1521)
!1607 = !DILocation(line: 523, column: 31, scope: !1601, inlinedAt: !1521)
!1608 = !DILocation(line: 525, column: 39, scope: !1601, inlinedAt: !1521)
!1609 = !DILocation(line: 525, column: 41, scope: !1601, inlinedAt: !1521)
!1610 = !DILocation(line: 525, column: 48, scope: !1601, inlinedAt: !1521)
!1611 = !DILocation(line: 525, column: 11, scope: !1601, inlinedAt: !1521)
!1612 = !DILocation(line: 525, column: 37, scope: !1601, inlinedAt: !1521)
!1613 = !DILocation(line: 529, column: 24, scope: !1601, inlinedAt: !1521)
!1614 = !DILocation(line: 529, column: 33, scope: !1601, inlinedAt: !1521)
!1615 = !DILocation(line: 529, column: 28, scope: !1601, inlinedAt: !1521)
!1616 = !DILocation(line: 529, column: 15, scope: !1601, inlinedAt: !1521)
!1617 = !DILocation(line: 529, column: 43, scope: !1601, inlinedAt: !1521)
!1618 = !DILocation(line: 529, column: 41, scope: !1601, inlinedAt: !1521)
!1619 = !DILocation(line: 530, column: 18, scope: !1601, inlinedAt: !1521)
!1620 = !DILocation(line: 529, column: 63, scope: !1601, inlinedAt: !1521)
!1621 = !DILocation(line: 528, column: 11, scope: !1601, inlinedAt: !1521)
!1622 = !DILocation(line: 528, column: 38, scope: !1601, inlinedAt: !1521)
!1623 = !DILocation(line: 541, column: 25, scope: !1601, inlinedAt: !1521)
!1624 = !DILocation(line: 542, column: 19, scope: !1601, inlinedAt: !1521)
!1625 = !DILocation(line: 542, column: 29, scope: !1601, inlinedAt: !1521)
!1626 = !DILocation(line: 542, column: 32, scope: !1601, inlinedAt: !1521)
!1627 = !DILocation(line: 542, column: 27, scope: !1601, inlinedAt: !1521)
!1628 = !DILocation(line: 542, column: 25, scope: !1601, inlinedAt: !1521)
!1629 = !DILocation(line: 543, column: 11, scope: !1601, inlinedAt: !1521)
!1630 = !DILocation(line: 543, column: 27, scope: !1601, inlinedAt: !1521)
!1631 = !DILocation(line: 545, column: 54, scope: !1601, inlinedAt: !1521)
!1632 = !DILocation(line: 545, column: 62, scope: !1601, inlinedAt: !1521)
!1633 = !DILocation(line: 545, column: 70, scope: !1601, inlinedAt: !1521)
!1634 = !DILocation(line: 545, column: 74, scope: !1601, inlinedAt: !1521)
!1635 = !DILocation(line: 545, column: 60, scope: !1601, inlinedAt: !1521)
!1636 = !DILocation(line: 545, column: 41, scope: !1601, inlinedAt: !1521)
!1637 = !DILocation(line: 545, column: 11, scope: !1601, inlinedAt: !1521)
!1638 = !DILocation(line: 545, column: 33, scope: !1601, inlinedAt: !1521)
!1639 = !DILocation(line: 549, column: 16, scope: !1601, inlinedAt: !1521)
!1640 = !DILocation(line: 549, column: 14, scope: !1601, inlinedAt: !1521)
!1641 = !DILocation(line: 549, column: 20, scope: !1601, inlinedAt: !1521)
!1642 = !DILocation(line: 549, column: 45, scope: !1601, inlinedAt: !1521)
!1643 = !DILocation(line: 549, column: 40, scope: !1601, inlinedAt: !1521)
!1644 = !DILocation(line: 549, column: 28, scope: !1601, inlinedAt: !1521)
!1645 = !DILocation(line: 549, column: 55, scope: !1601, inlinedAt: !1521)
!1646 = !DILocation(line: 549, column: 53, scope: !1601, inlinedAt: !1521)
!1647 = !DILocation(line: 550, column: 18, scope: !1601, inlinedAt: !1521)
!1648 = !DILocation(line: 549, column: 71, scope: !1601, inlinedAt: !1521)
!1649 = !DILocation(line: 548, column: 11, scope: !1601, inlinedAt: !1521)
!1650 = !DILocation(line: 548, column: 34, scope: !1601, inlinedAt: !1521)
!1651 = !DILocation(line: 554, column: 22, scope: !1652, inlinedAt: !1521)
!1652 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 554, column: 11)
!1653 = !DILocation(line: 554, column: 29, scope: !1654, inlinedAt: !1521)
!1654 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 554, column: 11)
!1655 = !DILocation(line: 554, column: 11, scope: !1652, inlinedAt: !1521)
!1656 = !DILocation(line: 556, column: 17, scope: !1657, inlinedAt: !1521)
!1657 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 555, column: 13)
!1658 = !DILocation(line: 557, column: 24, scope: !1657, inlinedAt: !1521)
!1659 = !DILocation(line: 557, column: 27, scope: !1657, inlinedAt: !1521)
!1660 = !DILocation(line: 557, column: 22, scope: !1657, inlinedAt: !1521)
!1661 = !DILocation(line: 557, column: 32, scope: !1657, inlinedAt: !1521)
!1662 = !DILocation(line: 557, column: 36, scope: !1657, inlinedAt: !1521)
!1663 = !DILocation(line: 557, column: 47, scope: !1657, inlinedAt: !1521)
!1664 = !DILocation(line: 557, column: 51, scope: !1657, inlinedAt: !1521)
!1665 = !DILocation(line: 557, column: 44, scope: !1657, inlinedAt: !1521)
!1666 = !DILocation(line: 557, column: 56, scope: !1657, inlinedAt: !1521)
!1667 = !DILocation(line: 557, column: 42, scope: !1657, inlinedAt: !1521)
!1668 = !DILocation(line: 558, column: 33, scope: !1657, inlinedAt: !1521)
!1669 = !DILocation(line: 558, column: 21, scope: !1657, inlinedAt: !1521)
!1670 = !DILocation(line: 557, column: 63, scope: !1657, inlinedAt: !1521)
!1671 = !DILocation(line: 559, column: 15, scope: !1657, inlinedAt: !1521)
!1672 = !DILocation(line: 559, column: 31, scope: !1657, inlinedAt: !1521)
!1673 = !DILocation(line: 561, column: 48, scope: !1657, inlinedAt: !1521)
!1674 = !DILocation(line: 561, column: 56, scope: !1657, inlinedAt: !1521)
!1675 = !DILocation(line: 561, column: 64, scope: !1657, inlinedAt: !1521)
!1676 = !DILocation(line: 561, column: 66, scope: !1657, inlinedAt: !1521)
!1677 = !DILocation(line: 561, column: 70, scope: !1657, inlinedAt: !1521)
!1678 = !DILocation(line: 561, column: 62, scope: !1657, inlinedAt: !1521)
!1679 = !DILocation(line: 561, column: 45, scope: !1657, inlinedAt: !1521)
!1680 = !DILocation(line: 561, column: 15, scope: !1657, inlinedAt: !1521)
!1681 = !DILocation(line: 561, column: 37, scope: !1657, inlinedAt: !1521)
!1682 = !DILocation(line: 565, column: 41, scope: !1657, inlinedAt: !1521)
!1683 = !DILocation(line: 565, column: 36, scope: !1657, inlinedAt: !1521)
!1684 = !DILocation(line: 565, column: 32, scope: !1657, inlinedAt: !1521)
!1685 = !DILocation(line: 565, column: 51, scope: !1657, inlinedAt: !1521)
!1686 = !DILocation(line: 565, column: 49, scope: !1657, inlinedAt: !1521)
!1687 = !DILocation(line: 566, column: 22, scope: !1657, inlinedAt: !1521)
!1688 = !DILocation(line: 565, column: 67, scope: !1657, inlinedAt: !1521)
!1689 = !DILocation(line: 564, column: 15, scope: !1657, inlinedAt: !1521)
!1690 = !DILocation(line: 564, column: 38, scope: !1657, inlinedAt: !1521)
!1691 = !DILocation(line: 554, column: 38, scope: !1654, inlinedAt: !1521)
!1692 = distinct !{!1692, !1655, !1693, !209}
!1693 = !DILocation(line: 570, column: 13, scope: !1652, inlinedAt: !1521)
!1694 = !DILocation(line: 575, column: 18, scope: !1504, inlinedAt: !1521)
!1695 = !DILocation(line: 576, column: 14, scope: !1504, inlinedAt: !1521)
!1696 = !DILocation(line: 575, column: 13, scope: !1504, inlinedAt: !1521)
!1697 = !DILocation(line: 577, column: 26, scope: !1504, inlinedAt: !1521)
!1698 = !DILocation(line: 577, column: 11, scope: !1504, inlinedAt: !1521)
!1699 = !DILocation(line: 578, column: 7, scope: !1504, inlinedAt: !1521)
!1700 = !DILocation(line: 578, column: 27, scope: !1504, inlinedAt: !1521)
!1701 = !DILocation(line: 580, column: 35, scope: !1504, inlinedAt: !1521)
!1702 = !DILocation(line: 580, column: 40, scope: !1504, inlinedAt: !1521)
!1703 = !DILocation(line: 580, column: 44, scope: !1504, inlinedAt: !1521)
!1704 = !DILocation(line: 580, column: 50, scope: !1504, inlinedAt: !1521)
!1705 = !DILocation(line: 580, column: 7, scope: !1504, inlinedAt: !1521)
!1706 = !DILocation(line: 580, column: 33, scope: !1504, inlinedAt: !1521)
!1707 = !DILocation(line: 584, column: 23, scope: !1504, inlinedAt: !1521)
!1708 = !DILocation(line: 584, column: 38, scope: !1504, inlinedAt: !1521)
!1709 = !DILocation(line: 584, column: 30, scope: !1504, inlinedAt: !1521)
!1710 = !DILocation(line: 584, column: 14, scope: !1504, inlinedAt: !1521)
!1711 = !DILocation(line: 584, column: 48, scope: !1504, inlinedAt: !1521)
!1712 = !DILocation(line: 584, column: 46, scope: !1504, inlinedAt: !1521)
!1713 = !DILocation(line: 585, column: 14, scope: !1504, inlinedAt: !1521)
!1714 = !DILocation(line: 584, column: 68, scope: !1504, inlinedAt: !1521)
!1715 = !DILocation(line: 583, column: 7, scope: !1504, inlinedAt: !1521)
!1716 = !DILocation(line: 583, column: 34, scope: !1504, inlinedAt: !1521)
!1717 = !DILocation(line: 588, column: 7, scope: !1504, inlinedAt: !1521)
!1718 = !DILocalVariable(name: "lmax", arg: 1, scope: !1719, file: !2, line: 218, type: !85)
!1719 = distinct !DISubprogram(name: "legendre_deriv2_array_schmidt_e", scope: !2, file: !2, line: 217, type: !1495, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1720)
!1720 = !{!1718, !1721, !1722, !1723, !1724, !1725, !1726, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746}
!1721 = !DILocalVariable(name: "x", arg: 2, scope: !1719, file: !2, line: 218, type: !89)
!1722 = !DILocalVariable(name: "csphase", arg: 3, scope: !1719, file: !2, line: 218, type: !89)
!1723 = !DILocalVariable(name: "result_array", arg: 4, scope: !1719, file: !2, line: 218, type: !90)
!1724 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !1719, file: !2, line: 218, type: !90)
!1725 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !1719, file: !2, line: 218, type: !90)
!1726 = !DILocalVariable(name: "eps", scope: !1727, file: !2, line: 236, type: !89)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 235, column: 5)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 230, column: 12)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 225, column: 12)
!1730 = distinct !DILexicalBlock(scope: !1719, file: !2, line: 220, column: 7)
!1731 = !DILocalVariable(name: "u", scope: !1727, file: !2, line: 237, type: !89)
!1732 = !DILocalVariable(name: "uinv", scope: !1727, file: !2, line: 239, type: !89)
!1733 = !DILocalVariable(name: "uinv2", scope: !1727, file: !2, line: 242, type: !89)
!1734 = !DILocalVariable(name: "xbyu", scope: !1727, file: !2, line: 245, type: !89)
!1735 = !DILocalVariable(name: "l", scope: !1727, file: !2, line: 247, type: !86)
!1736 = !DILocalVariable(name: "m", scope: !1727, file: !2, line: 247, type: !86)
!1737 = !DILocalVariable(name: "k", scope: !1727, file: !2, line: 248, type: !86)
!1738 = !DILocalVariable(name: "idxmm", scope: !1727, file: !2, line: 248, type: !86)
!1739 = !DILocalVariable(name: "plm", scope: !1727, file: !2, line: 249, type: !70)
!1740 = !DILocalVariable(name: "pmm", scope: !1727, file: !2, line: 250, type: !70)
!1741 = !DILocalVariable(name: "rescalem", scope: !1727, file: !2, line: 251, type: !70)
!1742 = !DILocalVariable(name: "pm1", scope: !1727, file: !2, line: 252, type: !70)
!1743 = !DILocalVariable(name: "pm2", scope: !1727, file: !2, line: 253, type: !70)
!1744 = !DILocalVariable(name: "nlm", scope: !1727, file: !2, line: 254, type: !86)
!1745 = !DILocalVariable(name: "sqrts", scope: !1727, file: !2, line: 255, type: !90)
!1746 = !DILocalVariable(name: "linv", scope: !1747, file: !2, line: 288, type: !70)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 287, column: 9)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 286, column: 7)
!1749 = distinct !DILexicalBlock(scope: !1727, file: !2, line: 286, column: 7)
!1750 = !DILocation(line: 0, scope: !1719, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 121, column: 11, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 119, column: 5)
!1753 = !DILocation(line: 220, column: 15, scope: !1730, inlinedAt: !1751)
!1754 = !DILocation(line: 222, column: 7, scope: !1755, inlinedAt: !1751)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 222, column: 7)
!1756 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 221, column: 5)
!1757 = !DILocation(line: 225, column: 12, scope: !1729, inlinedAt: !1751)
!1758 = !DILocation(line: 225, column: 20, scope: !1729, inlinedAt: !1751)
!1759 = !DILocation(line: 225, column: 12, scope: !1730, inlinedAt: !1751)
!1760 = !DILocation(line: 227, column: 7, scope: !1761, inlinedAt: !1751)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 227, column: 7)
!1762 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 226, column: 5)
!1763 = !DILocation(line: 230, column: 20, scope: !1728, inlinedAt: !1751)
!1764 = !DILocation(line: 230, column: 27, scope: !1728, inlinedAt: !1751)
!1765 = !DILocation(line: 232, column: 7, scope: !1766, inlinedAt: !1751)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !2, line: 232, column: 7)
!1767 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 231, column: 5)
!1768 = !DILocation(line: 0, scope: !1727, inlinedAt: !1751)
!1769 = !DILocation(line: 237, column: 24, scope: !1727, inlinedAt: !1751)
!1770 = !DILocation(line: 239, column: 31, scope: !1727, inlinedAt: !1751)
!1771 = !DILocation(line: 0, scope: !122, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 254, column: 20, scope: !1727, inlinedAt: !1751)
!1773 = !DILocation(line: 255, column: 25, scope: !1727, inlinedAt: !1751)
!1774 = !DILocation(line: 0, scope: !307, inlinedAt: !1775)
!1775 = distinct !DILocation(line: 258, column: 7, scope: !1727, inlinedAt: !1751)
!1776 = !DILocation(line: 112, column: 3, scope: !316, inlinedAt: !1775)
!1777 = !DILocation(line: 113, column: 21, scope: !318, inlinedAt: !1775)
!1778 = !DILocation(line: 113, column: 16, scope: !318, inlinedAt: !1775)
!1779 = !DILocation(line: 113, column: 5, scope: !318, inlinedAt: !1775)
!1780 = !DILocation(line: 113, column: 14, scope: !318, inlinedAt: !1775)
!1781 = !DILocation(line: 112, column: 34, scope: !318, inlinedAt: !1775)
!1782 = distinct !{!1782, !1776, !1783, !209}
!1783 = !DILocation(line: 113, column: 31, scope: !316, inlinedAt: !1775)
!1784 = distinct !{!1784, !326}
!1785 = !DILocation(line: 242, column: 36, scope: !1727, inlinedAt: !1751)
!1786 = !DILocation(line: 245, column: 29, scope: !1727, inlinedAt: !1751)
!1787 = !DILocation(line: 264, column: 23, scope: !1727, inlinedAt: !1751)
!1788 = !DILocation(line: 266, column: 29, scope: !1727, inlinedAt: !1751)
!1789 = !DILocation(line: 269, column: 30, scope: !1727, inlinedAt: !1751)
!1790 = !DILocation(line: 272, column: 16, scope: !1791, inlinedAt: !1751)
!1791 = distinct !DILexicalBlock(scope: !1727, file: !2, line: 272, column: 11)
!1792 = !DILocation(line: 272, column: 11, scope: !1727, inlinedAt: !1751)
!1793 = !DILocation(line: 275, column: 7, scope: !1727, inlinedAt: !1751)
!1794 = !DILocation(line: 275, column: 23, scope: !1727, inlinedAt: !1751)
!1795 = !DILocation(line: 277, column: 31, scope: !1727, inlinedAt: !1751)
!1796 = !DILocation(line: 277, column: 7, scope: !1727, inlinedAt: !1751)
!1797 = !DILocation(line: 277, column: 29, scope: !1727, inlinedAt: !1751)
!1798 = !DILocation(line: 280, column: 32, scope: !1727, inlinedAt: !1751)
!1799 = !DILocation(line: 280, column: 7, scope: !1727, inlinedAt: !1751)
!1800 = !DILocation(line: 280, column: 30, scope: !1727, inlinedAt: !1751)
!1801 = !DILocation(line: 286, column: 21, scope: !1748, inlinedAt: !1751)
!1802 = !DILocation(line: 286, column: 7, scope: !1749, inlinedAt: !1751)
!1803 = !DILocation(line: 321, column: 7, scope: !1804, inlinedAt: !1751)
!1804 = distinct !DILexicalBlock(scope: !1727, file: !2, line: 321, column: 7)
!1805 = !DILocation(line: 288, column: 31, scope: !1747, inlinedAt: !1751)
!1806 = !DILocation(line: 288, column: 29, scope: !1747, inlinedAt: !1751)
!1807 = !DILocation(line: 0, scope: !1747, inlinedAt: !1751)
!1808 = !DILocation(line: 290, column: 13, scope: !1747, inlinedAt: !1751)
!1809 = !DILocation(line: 292, column: 22, scope: !1747, inlinedAt: !1751)
!1810 = !DILocation(line: 292, column: 30, scope: !1747, inlinedAt: !1751)
!1811 = !DILocation(line: 292, column: 34, scope: !1747, inlinedAt: !1751)
!1812 = !DILocation(line: 292, column: 47, scope: !1747, inlinedAt: !1751)
!1813 = !DILocation(line: 292, column: 55, scope: !1747, inlinedAt: !1751)
!1814 = !DILocation(line: 292, column: 40, scope: !1747, inlinedAt: !1751)
!1815 = !DILocation(line: 293, column: 11, scope: !1747, inlinedAt: !1751)
!1816 = !DILocation(line: 293, column: 27, scope: !1747, inlinedAt: !1751)
!1817 = !DILocation(line: 295, column: 40, scope: !1747, inlinedAt: !1751)
!1818 = !DILocation(line: 295, column: 49, scope: !1747, inlinedAt: !1751)
!1819 = !DILocation(line: 295, column: 55, scope: !1747, inlinedAt: !1751)
!1820 = !DILocation(line: 295, column: 44, scope: !1747, inlinedAt: !1751)
!1821 = !DILocation(line: 295, column: 11, scope: !1747, inlinedAt: !1751)
!1822 = !DILocation(line: 295, column: 33, scope: !1747, inlinedAt: !1751)
!1823 = !DILocation(line: 298, column: 36, scope: !1747, inlinedAt: !1751)
!1824 = !DILocation(line: 298, column: 53, scope: !1747, inlinedAt: !1751)
!1825 = !DILocation(line: 298, column: 48, scope: !1747, inlinedAt: !1751)
!1826 = !DILocation(line: 298, column: 60, scope: !1747, inlinedAt: !1751)
!1827 = !DILocation(line: 299, column: 41, scope: !1747, inlinedAt: !1751)
!1828 = !DILocation(line: 298, column: 66, scope: !1747, inlinedAt: !1751)
!1829 = !DILocation(line: 298, column: 11, scope: !1747, inlinedAt: !1751)
!1830 = !DILocation(line: 298, column: 34, scope: !1747, inlinedAt: !1751)
!1831 = !DILocation(line: 286, column: 30, scope: !1748, inlinedAt: !1751)
!1832 = distinct !{!1832, !1802, !1833, !209}
!1833 = !DILocation(line: 303, column: 9, scope: !1749, inlinedAt: !1751)
!1834 = !DILocation(line: 321, column: 21, scope: !1835, inlinedAt: !1751)
!1835 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 321, column: 7)
!1836 = distinct !{!1836, !1803, !1837, !209}
!1837 = !DILocation(line: 387, column: 9, scope: !1804, inlinedAt: !1751)
!1838 = !DILocation(line: 324, column: 20, scope: !1839, inlinedAt: !1751)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 322, column: 9)
!1840 = !DILocation(line: 332, column: 22, scope: !1839, inlinedAt: !1751)
!1841 = !DILocation(line: 332, column: 17, scope: !1839, inlinedAt: !1751)
!1842 = !DILocation(line: 333, column: 36, scope: !1839, inlinedAt: !1751)
!1843 = !DILocation(line: 333, column: 28, scope: !1839, inlinedAt: !1751)
!1844 = !DILocation(line: 333, column: 26, scope: !1839, inlinedAt: !1751)
!1845 = !DILocation(line: 333, column: 47, scope: !1839, inlinedAt: !1751)
!1846 = !DILocation(line: 333, column: 45, scope: !1839, inlinedAt: !1751)
!1847 = !DILocation(line: 333, column: 15, scope: !1839, inlinedAt: !1751)
!1848 = !DILocation(line: 334, column: 37, scope: !1839, inlinedAt: !1751)
!1849 = !DILocation(line: 334, column: 11, scope: !1839, inlinedAt: !1751)
!1850 = !DILocation(line: 334, column: 31, scope: !1839, inlinedAt: !1751)
!1851 = !DILocation(line: 336, column: 39, scope: !1839, inlinedAt: !1751)
!1852 = !DILocation(line: 336, column: 41, scope: !1839, inlinedAt: !1751)
!1853 = !DILocation(line: 336, column: 48, scope: !1839, inlinedAt: !1751)
!1854 = !DILocation(line: 336, column: 11, scope: !1839, inlinedAt: !1751)
!1855 = !DILocation(line: 336, column: 37, scope: !1839, inlinedAt: !1751)
!1856 = !DILocation(line: 340, column: 24, scope: !1839, inlinedAt: !1751)
!1857 = !DILocation(line: 340, column: 33, scope: !1839, inlinedAt: !1751)
!1858 = !DILocation(line: 340, column: 28, scope: !1839, inlinedAt: !1751)
!1859 = !DILocation(line: 340, column: 15, scope: !1839, inlinedAt: !1751)
!1860 = !DILocation(line: 340, column: 43, scope: !1839, inlinedAt: !1751)
!1861 = !DILocation(line: 340, column: 41, scope: !1839, inlinedAt: !1751)
!1862 = !DILocation(line: 341, column: 18, scope: !1839, inlinedAt: !1751)
!1863 = !DILocation(line: 340, column: 63, scope: !1839, inlinedAt: !1751)
!1864 = !DILocation(line: 339, column: 11, scope: !1839, inlinedAt: !1751)
!1865 = !DILocation(line: 339, column: 38, scope: !1839, inlinedAt: !1751)
!1866 = !DILocation(line: 351, column: 25, scope: !1839, inlinedAt: !1751)
!1867 = !DILocation(line: 352, column: 33, scope: !1839, inlinedAt: !1751)
!1868 = !DILocation(line: 352, column: 21, scope: !1839, inlinedAt: !1751)
!1869 = !DILocation(line: 352, column: 19, scope: !1839, inlinedAt: !1751)
!1870 = !DILocation(line: 352, column: 38, scope: !1839, inlinedAt: !1751)
!1871 = !DILocation(line: 353, column: 33, scope: !1839, inlinedAt: !1751)
!1872 = !DILocation(line: 353, column: 11, scope: !1839, inlinedAt: !1751)
!1873 = !DILocation(line: 353, column: 27, scope: !1839, inlinedAt: !1751)
!1874 = !DILocation(line: 356, column: 31, scope: !1839, inlinedAt: !1751)
!1875 = !DILocation(line: 356, column: 35, scope: !1839, inlinedAt: !1751)
!1876 = !DILocation(line: 357, column: 21, scope: !1839, inlinedAt: !1751)
!1877 = !DILocation(line: 357, column: 40, scope: !1839, inlinedAt: !1751)
!1878 = !DILocation(line: 357, column: 38, scope: !1839, inlinedAt: !1751)
!1879 = !DILocation(line: 356, column: 53, scope: !1839, inlinedAt: !1751)
!1880 = !DILocation(line: 356, column: 18, scope: !1839, inlinedAt: !1751)
!1881 = !DILocation(line: 355, column: 11, scope: !1839, inlinedAt: !1751)
!1882 = !DILocation(line: 355, column: 33, scope: !1839, inlinedAt: !1751)
!1883 = !DILocation(line: 361, column: 16, scope: !1839, inlinedAt: !1751)
!1884 = !DILocation(line: 361, column: 14, scope: !1839, inlinedAt: !1751)
!1885 = !DILocation(line: 361, column: 20, scope: !1839, inlinedAt: !1751)
!1886 = !DILocation(line: 361, column: 45, scope: !1839, inlinedAt: !1751)
!1887 = !DILocation(line: 361, column: 40, scope: !1839, inlinedAt: !1751)
!1888 = !DILocation(line: 361, column: 28, scope: !1839, inlinedAt: !1751)
!1889 = !DILocation(line: 361, column: 55, scope: !1839, inlinedAt: !1751)
!1890 = !DILocation(line: 361, column: 53, scope: !1839, inlinedAt: !1751)
!1891 = !DILocation(line: 362, column: 18, scope: !1839, inlinedAt: !1751)
!1892 = !DILocation(line: 361, column: 71, scope: !1839, inlinedAt: !1751)
!1893 = !DILocation(line: 360, column: 11, scope: !1839, inlinedAt: !1751)
!1894 = !DILocation(line: 360, column: 34, scope: !1839, inlinedAt: !1751)
!1895 = !DILocation(line: 366, column: 22, scope: !1896, inlinedAt: !1751)
!1896 = distinct !DILexicalBlock(scope: !1839, file: !2, line: 366, column: 11)
!1897 = !DILocation(line: 366, column: 16, scope: !1896, inlinedAt: !1751)
!1898 = !DILocation(line: 366, column: 29, scope: !1899, inlinedAt: !1751)
!1899 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 366, column: 11)
!1900 = !DILocation(line: 366, column: 11, scope: !1896, inlinedAt: !1751)
!1901 = !DILocation(line: 368, column: 17, scope: !1902, inlinedAt: !1751)
!1902 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 367, column: 13)
!1903 = !DILocation(line: 370, column: 19, scope: !1902, inlinedAt: !1751)
!1904 = !DILocation(line: 370, column: 22, scope: !1902, inlinedAt: !1751)
!1905 = !DILocation(line: 370, column: 17, scope: !1902, inlinedAt: !1751)
!1906 = !DILocation(line: 370, column: 29, scope: !1902, inlinedAt: !1751)
!1907 = !DILocation(line: 370, column: 27, scope: !1902, inlinedAt: !1751)
!1908 = !DILocation(line: 370, column: 52, scope: !1902, inlinedAt: !1751)
!1909 = !DILocation(line: 370, column: 44, scope: !1902, inlinedAt: !1751)
!1910 = !DILocation(line: 370, column: 42, scope: !1902, inlinedAt: !1751)
!1911 = !DILocation(line: 370, column: 57, scope: !1902, inlinedAt: !1751)
!1912 = !DILocation(line: 370, column: 61, scope: !1902, inlinedAt: !1751)
!1913 = !DILocation(line: 371, column: 17, scope: !1902, inlinedAt: !1751)
!1914 = !DILocation(line: 371, column: 36, scope: !1902, inlinedAt: !1751)
!1915 = !DILocation(line: 371, column: 34, scope: !1902, inlinedAt: !1751)
!1916 = !DILocation(line: 371, column: 53, scope: !1902, inlinedAt: !1751)
!1917 = !DILocation(line: 372, column: 30, scope: !1902, inlinedAt: !1751)
!1918 = !DILocation(line: 372, column: 45, scope: !1902, inlinedAt: !1751)
!1919 = !DILocation(line: 370, column: 67, scope: !1902, inlinedAt: !1751)
!1920 = !DILocation(line: 373, column: 37, scope: !1902, inlinedAt: !1751)
!1921 = !DILocation(line: 373, column: 15, scope: !1902, inlinedAt: !1751)
!1922 = !DILocation(line: 373, column: 31, scope: !1902, inlinedAt: !1751)
!1923 = !DILocation(line: 376, column: 25, scope: !1902, inlinedAt: !1751)
!1924 = !DILocation(line: 376, column: 27, scope: !1902, inlinedAt: !1751)
!1925 = !DILocation(line: 376, column: 31, scope: !1902, inlinedAt: !1751)
!1926 = !DILocation(line: 377, column: 25, scope: !1902, inlinedAt: !1751)
!1927 = !DILocation(line: 377, column: 40, scope: !1902, inlinedAt: !1751)
!1928 = !DILocation(line: 377, column: 38, scope: !1902, inlinedAt: !1751)
!1929 = !DILocation(line: 377, column: 55, scope: !1902, inlinedAt: !1751)
!1930 = !DILocation(line: 377, column: 53, scope: !1902, inlinedAt: !1751)
!1931 = !DILocation(line: 376, column: 49, scope: !1902, inlinedAt: !1751)
!1932 = !DILocation(line: 376, column: 22, scope: !1902, inlinedAt: !1751)
!1933 = !DILocation(line: 375, column: 15, scope: !1902, inlinedAt: !1751)
!1934 = !DILocation(line: 375, column: 37, scope: !1902, inlinedAt: !1751)
!1935 = !DILocation(line: 381, column: 41, scope: !1902, inlinedAt: !1751)
!1936 = !DILocation(line: 381, column: 36, scope: !1902, inlinedAt: !1751)
!1937 = !DILocation(line: 381, column: 32, scope: !1902, inlinedAt: !1751)
!1938 = !DILocation(line: 381, column: 51, scope: !1902, inlinedAt: !1751)
!1939 = !DILocation(line: 381, column: 49, scope: !1902, inlinedAt: !1751)
!1940 = !DILocation(line: 382, column: 22, scope: !1902, inlinedAt: !1751)
!1941 = !DILocation(line: 381, column: 67, scope: !1902, inlinedAt: !1751)
!1942 = !DILocation(line: 380, column: 15, scope: !1902, inlinedAt: !1751)
!1943 = !DILocation(line: 380, column: 38, scope: !1902, inlinedAt: !1751)
!1944 = !DILocation(line: 366, column: 38, scope: !1899, inlinedAt: !1751)
!1945 = distinct !{!1945, !1900, !1946, !209}
!1946 = !DILocation(line: 386, column: 13, scope: !1896, inlinedAt: !1751)
!1947 = !DILocation(line: 392, column: 18, scope: !1727, inlinedAt: !1751)
!1948 = !DILocation(line: 391, column: 16, scope: !1727, inlinedAt: !1751)
!1949 = !DILocation(line: 392, column: 13, scope: !1727, inlinedAt: !1751)
!1950 = !DILocation(line: 393, column: 24, scope: !1727, inlinedAt: !1751)
!1951 = !DILocation(line: 393, column: 22, scope: !1727, inlinedAt: !1751)
!1952 = !DILocation(line: 393, column: 46, scope: !1727, inlinedAt: !1751)
!1953 = !DILocation(line: 393, column: 44, scope: !1727, inlinedAt: !1751)
!1954 = !DILocation(line: 393, column: 11, scope: !1727, inlinedAt: !1751)
!1955 = !DILocation(line: 394, column: 33, scope: !1727, inlinedAt: !1751)
!1956 = !DILocation(line: 394, column: 7, scope: !1727, inlinedAt: !1751)
!1957 = !DILocation(line: 394, column: 27, scope: !1727, inlinedAt: !1751)
!1958 = !DILocation(line: 396, column: 35, scope: !1727, inlinedAt: !1751)
!1959 = !DILocation(line: 396, column: 40, scope: !1727, inlinedAt: !1751)
!1960 = !DILocation(line: 396, column: 47, scope: !1727, inlinedAt: !1751)
!1961 = !DILocation(line: 396, column: 7, scope: !1727, inlinedAt: !1751)
!1962 = !DILocation(line: 396, column: 33, scope: !1727, inlinedAt: !1751)
!1963 = !DILocation(line: 400, column: 23, scope: !1727, inlinedAt: !1751)
!1964 = !DILocation(line: 400, column: 38, scope: !1727, inlinedAt: !1751)
!1965 = !DILocation(line: 400, column: 30, scope: !1727, inlinedAt: !1751)
!1966 = !DILocation(line: 400, column: 14, scope: !1727, inlinedAt: !1751)
!1967 = !DILocation(line: 400, column: 48, scope: !1727, inlinedAt: !1751)
!1968 = !DILocation(line: 400, column: 46, scope: !1727, inlinedAt: !1751)
!1969 = !DILocation(line: 401, column: 14, scope: !1727, inlinedAt: !1751)
!1970 = !DILocation(line: 400, column: 68, scope: !1727, inlinedAt: !1751)
!1971 = !DILocation(line: 399, column: 7, scope: !1727, inlinedAt: !1751)
!1972 = !DILocation(line: 399, column: 34, scope: !1727, inlinedAt: !1751)
!1973 = !DILocation(line: 404, column: 7, scope: !1727, inlinedAt: !1751)
!1974 = !DILocation(line: 126, column: 17, scope: !1468)
!1975 = !DILocation(line: 126, column: 3, scope: !1469)
!1976 = !DILocation(line: 129, column: 19, scope: !1467)
!1977 = !DILocation(line: 0, scope: !1467)
!1978 = !DILocation(line: 130, column: 20, scope: !1467)
!1979 = !DILocation(line: 132, column: 48, scope: !1467)
!1980 = !DILocation(line: 132, column: 37, scope: !1467)
!1981 = !DILocation(line: 132, column: 54, scope: !1467)
!1982 = !DILocation(line: 132, column: 30, scope: !1467)
!1983 = !DILocation(line: 135, column: 29, scope: !1467)
!1984 = !DILocation(line: 126, column: 24, scope: !1468)
!1985 = distinct !{!1985, !1975, !1986, !209}
!1986 = !DILocation(line: 137, column: 5, scope: !1469)
!1987 = !DILocation(line: 141, column: 39, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 141, column: 7)
!1989 = !DILocation(line: 154, column: 5, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 151, column: 5)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !2, line: 150, column: 12)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !2, line: 145, column: 12)
!1993 = !DILocation(line: 164, column: 23, scope: !1472)
!1994 = !DILocation(line: 0, scope: !1472)
!1995 = !DILocation(line: 166, column: 5, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 166, column: 5)
!1997 = !DILocation(line: 169, column: 11, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !2, line: 167, column: 7)
!1999 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 166, column: 5)
!2000 = !DILocation(line: 169, column: 27, scope: !1998)
!2001 = !DILocation(line: 0, scope: !434, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 168, column: 22, scope: !1998)
!2003 = !DILocation(line: 95, column: 18, scope: !434, inlinedAt: !2002)
!2004 = !DILocation(line: 95, column: 13, scope: !434, inlinedAt: !2002)
!2005 = !DILocation(line: 95, column: 23, scope: !434, inlinedAt: !2002)
!2006 = !DILocation(line: 168, column: 9, scope: !1998)
!2007 = !DILocation(line: 168, column: 57, scope: !1998)
!2008 = !DILocation(line: 172, column: 11, scope: !1998)
!2009 = !DILocation(line: 172, column: 27, scope: !1998)
!2010 = !DILocation(line: 0, scope: !434, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 171, column: 28, scope: !1998)
!2012 = !DILocation(line: 171, column: 9, scope: !1998)
!2013 = !DILocation(line: 171, column: 63, scope: !1998)
!2014 = !DILocation(line: 176, column: 11, scope: !1998)
!2015 = !DILocation(line: 176, column: 27, scope: !1998)
!2016 = !DILocation(line: 0, scope: !434, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 175, column: 29, scope: !1998)
!2018 = !DILocation(line: 175, column: 9, scope: !1998)
!2019 = !DILocation(line: 175, column: 64, scope: !1998)
!2020 = !DILocation(line: 179, column: 23, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !2, line: 179, column: 9)
!2022 = distinct !DILexicalBlock(scope: !1998, file: !2, line: 179, column: 9)
!2023 = !DILocation(line: 179, column: 9, scope: !2022)
!2024 = !DILocation(line: 182, column: 15, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !2, line: 180, column: 11)
!2026 = !DILocation(line: 182, column: 31, scope: !2025)
!2027 = !DILocation(line: 0, scope: !434, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 181, column: 26, scope: !2025)
!2029 = !DILocation(line: 95, column: 27, scope: !434, inlinedAt: !2028)
!2030 = !DILocation(line: 181, column: 13, scope: !2025)
!2031 = !DILocation(line: 181, column: 61, scope: !2025)
!2032 = !DILocation(line: 185, column: 15, scope: !2025)
!2033 = !DILocation(line: 185, column: 31, scope: !2025)
!2034 = !DILocation(line: 0, scope: !434, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 184, column: 32, scope: !2025)
!2036 = !DILocation(line: 184, column: 13, scope: !2025)
!2037 = !DILocation(line: 184, column: 67, scope: !2025)
!2038 = !DILocation(line: 189, column: 15, scope: !2025)
!2039 = !DILocation(line: 189, column: 31, scope: !2025)
!2040 = !DILocation(line: 0, scope: !434, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 188, column: 33, scope: !2025)
!2042 = !DILocation(line: 188, column: 13, scope: !2025)
!2043 = !DILocation(line: 188, column: 68, scope: !2025)
!2044 = !DILocation(line: 179, column: 29, scope: !2021)
!2045 = distinct !{!2045, !2023, !2046, !209}
!2046 = !DILocation(line: 191, column: 11, scope: !2022)
!2047 = !DILocation(line: 193, column: 18, scope: !1998)
!2048 = !DILocation(line: 166, column: 19, scope: !1999)
!2049 = distinct !{!2049, !1995, !2050, !209}
!2050 = !DILocation(line: 194, column: 7, scope: !1996)
!2051 = !DILocation(line: 198, column: 1, scope: !1447)
!2052 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv2_alt_array", scope: !2, file: !2, line: 74, type: !1434, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2053)
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2060}
!2054 = !DILocalVariable(name: "norm", arg: 1, scope: !2052, file: !2, line: 75, type: !83)
!2055 = !DILocalVariable(name: "lmax", arg: 2, scope: !2052, file: !2, line: 75, type: !85)
!2056 = !DILocalVariable(name: "x", arg: 3, scope: !2052, file: !2, line: 75, type: !89)
!2057 = !DILocalVariable(name: "result_array", arg: 4, scope: !2052, file: !2, line: 76, type: !90)
!2058 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !2052, file: !2, line: 76, type: !90)
!2059 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !2052, file: !2, line: 76, type: !90)
!2060 = !DILocalVariable(name: "s", scope: !2052, file: !2, line: 78, type: !32)
!2061 = !DILocation(line: 0, scope: !2052)
!2062 = !DILocation(line: 78, column: 11, scope: !2052)
!2063 = !DILocation(line: 79, column: 3, scope: !2052)
!2064 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv2_alt_array_e", scope: !2, file: !2, line: 95, type: !1448, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2065)
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2079, !2080, !2081}
!2066 = !DILocalVariable(name: "norm", arg: 1, scope: !2064, file: !2, line: 96, type: !83)
!2067 = !DILocalVariable(name: "lmax", arg: 2, scope: !2064, file: !2, line: 96, type: !85)
!2068 = !DILocalVariable(name: "x", arg: 3, scope: !2064, file: !2, line: 96, type: !89)
!2069 = !DILocalVariable(name: "csphase", arg: 4, scope: !2064, file: !2, line: 97, type: !89)
!2070 = !DILocalVariable(name: "result_array", arg: 5, scope: !2064, file: !2, line: 97, type: !90)
!2071 = !DILocalVariable(name: "result_deriv_array", arg: 6, scope: !2064, file: !2, line: 97, type: !90)
!2072 = !DILocalVariable(name: "result_deriv2_array", arg: 7, scope: !2064, file: !2, line: 97, type: !90)
!2073 = !DILocalVariable(name: "s", scope: !2064, file: !2, line: 99, type: !32)
!2074 = !DILocalVariable(name: "nlm", scope: !2064, file: !2, line: 100, type: !85)
!2075 = !DILocalVariable(name: "fac1", scope: !2064, file: !2, line: 111, type: !70)
!2076 = !DILocalVariable(name: "fac2", scope: !2064, file: !2, line: 111, type: !70)
!2077 = !DILocalVariable(name: "l", scope: !2078, file: !2, line: 162, type: !86)
!2078 = distinct !DILexicalBlock(scope: !2064, file: !2, line: 161, column: 3)
!2079 = !DILocalVariable(name: "m", scope: !2078, file: !2, line: 162, type: !86)
!2080 = !DILocalVariable(name: "twoellp1", scope: !2078, file: !2, line: 163, type: !86)
!2081 = !DILocalVariable(name: "sqrts", scope: !2078, file: !2, line: 164, type: !90)
!2082 = !DILocation(line: 0, scope: !2064)
!2083 = !DILocation(line: 0, scope: !122, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 100, column: 22, scope: !2064)
!2085 = !DILocation(line: 68, column: 17, scope: !122, inlinedAt: !2084)
!2086 = !DILocation(line: 68, column: 30, scope: !122, inlinedAt: !2084)
!2087 = !DILocation(line: 68, column: 22, scope: !122, inlinedAt: !2084)
!2088 = !DILocation(line: 68, column: 35, scope: !122, inlinedAt: !2084)
!2089 = !DILocation(line: 113, column: 12, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2064, file: !2, line: 113, column: 7)
!2091 = !DILocation(line: 0, scope: !2090)
!2092 = !DILocation(line: 113, column: 7, scope: !2064)
!2093 = !DILocalVariable(name: "lmax", arg: 1, scope: !2094, file: !2, line: 426, type: !85)
!2094 = distinct !DISubprogram(name: "legendre_deriv2_alt_array_none_e", scope: !2, file: !2, line: 425, type: !1495, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2095)
!2095 = !{!2093, !2096, !2097, !2098, !2099, !2100, !2101, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117}
!2096 = !DILocalVariable(name: "x", arg: 2, scope: !2094, file: !2, line: 426, type: !89)
!2097 = !DILocalVariable(name: "csphase", arg: 3, scope: !2094, file: !2, line: 426, type: !89)
!2098 = !DILocalVariable(name: "result_array", arg: 4, scope: !2094, file: !2, line: 426, type: !90)
!2099 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !2094, file: !2, line: 426, type: !90)
!2100 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !2094, file: !2, line: 426, type: !90)
!2101 = !DILocalVariable(name: "u", scope: !2102, file: !2, line: 444, type: !89)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !2, line: 443, column: 5)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !2, line: 438, column: 12)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 433, column: 12)
!2105 = distinct !DILexicalBlock(scope: !2094, file: !2, line: 428, column: 7)
!2106 = !DILocalVariable(name: "uinv", scope: !2102, file: !2, line: 446, type: !89)
!2107 = !DILocalVariable(name: "uinv2", scope: !2102, file: !2, line: 449, type: !89)
!2108 = !DILocalVariable(name: "xbyu", scope: !2102, file: !2, line: 452, type: !89)
!2109 = !DILocalVariable(name: "l", scope: !2102, file: !2, line: 454, type: !86)
!2110 = !DILocalVariable(name: "m", scope: !2102, file: !2, line: 454, type: !86)
!2111 = !DILocalVariable(name: "k", scope: !2102, file: !2, line: 455, type: !86)
!2112 = !DILocalVariable(name: "idxmm", scope: !2102, file: !2, line: 455, type: !86)
!2113 = !DILocalVariable(name: "plm", scope: !2102, file: !2, line: 456, type: !70)
!2114 = !DILocalVariable(name: "pmm", scope: !2102, file: !2, line: 456, type: !70)
!2115 = !DILocalVariable(name: "pm1", scope: !2102, file: !2, line: 457, type: !70)
!2116 = !DILocalVariable(name: "pm2", scope: !2102, file: !2, line: 458, type: !70)
!2117 = !DILocalVariable(name: "twomm1", scope: !2102, file: !2, line: 459, type: !70)
!2118 = !DILocation(line: 0, scope: !2094, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 116, column: 11, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2090, file: !2, line: 114, column: 5)
!2121 = !DILocation(line: 428, column: 15, scope: !2105, inlinedAt: !2119)
!2122 = !DILocation(line: 430, column: 7, scope: !2123, inlinedAt: !2119)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 430, column: 7)
!2124 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 429, column: 5)
!2125 = !DILocation(line: 433, column: 12, scope: !2104, inlinedAt: !2119)
!2126 = !DILocation(line: 433, column: 20, scope: !2104, inlinedAt: !2119)
!2127 = !DILocation(line: 433, column: 12, scope: !2105, inlinedAt: !2119)
!2128 = !DILocation(line: 435, column: 7, scope: !2129, inlinedAt: !2119)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !2, line: 435, column: 7)
!2130 = distinct !DILexicalBlock(scope: !2104, file: !2, line: 434, column: 5)
!2131 = !DILocation(line: 438, column: 20, scope: !2103, inlinedAt: !2119)
!2132 = !DILocation(line: 438, column: 27, scope: !2103, inlinedAt: !2119)
!2133 = !DILocation(line: 440, column: 7, scope: !2134, inlinedAt: !2119)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !2, line: 440, column: 7)
!2135 = distinct !DILexicalBlock(scope: !2103, file: !2, line: 439, column: 5)
!2136 = !DILocation(line: 444, column: 34, scope: !2102, inlinedAt: !2119)
!2137 = !DILocation(line: 444, column: 46, scope: !2102, inlinedAt: !2119)
!2138 = !DILocation(line: 444, column: 39, scope: !2102, inlinedAt: !2119)
!2139 = !DILocation(line: 444, column: 24, scope: !2102, inlinedAt: !2119)
!2140 = !DILocation(line: 0, scope: !2102, inlinedAt: !2119)
!2141 = !DILocation(line: 446, column: 31, scope: !2102, inlinedAt: !2119)
!2142 = !DILocation(line: 449, column: 36, scope: !2102, inlinedAt: !2119)
!2143 = !DILocation(line: 452, column: 29, scope: !2102, inlinedAt: !2119)
!2144 = !DILocation(line: 466, column: 23, scope: !2102, inlinedAt: !2119)
!2145 = !DILocation(line: 468, column: 29, scope: !2102, inlinedAt: !2119)
!2146 = !DILocation(line: 471, column: 30, scope: !2102, inlinedAt: !2119)
!2147 = !DILocation(line: 474, column: 16, scope: !2148, inlinedAt: !2119)
!2148 = distinct !DILexicalBlock(scope: !2102, file: !2, line: 474, column: 11)
!2149 = !DILocation(line: 474, column: 11, scope: !2102, inlinedAt: !2119)
!2150 = !DILocation(line: 477, column: 7, scope: !2102, inlinedAt: !2119)
!2151 = !DILocation(line: 477, column: 23, scope: !2102, inlinedAt: !2119)
!2152 = !DILocation(line: 479, column: 31, scope: !2102, inlinedAt: !2119)
!2153 = !DILocation(line: 479, column: 7, scope: !2102, inlinedAt: !2119)
!2154 = !DILocation(line: 479, column: 29, scope: !2102, inlinedAt: !2119)
!2155 = !DILocation(line: 482, column: 32, scope: !2102, inlinedAt: !2119)
!2156 = !DILocation(line: 482, column: 7, scope: !2102, inlinedAt: !2119)
!2157 = !DILocation(line: 482, column: 30, scope: !2102, inlinedAt: !2119)
!2158 = !DILocation(line: 488, column: 21, scope: !2159, inlinedAt: !2119)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !2, line: 488, column: 7)
!2160 = distinct !DILexicalBlock(scope: !2102, file: !2, line: 488, column: 7)
!2161 = !DILocation(line: 488, column: 7, scope: !2160, inlinedAt: !2119)
!2162 = !DILocation(line: 511, column: 7, scope: !2163, inlinedAt: !2119)
!2163 = distinct !DILexicalBlock(scope: !2102, file: !2, line: 511, column: 7)
!2164 = !DILocation(line: 577, column: 22, scope: !2102, inlinedAt: !2119)
!2165 = !DILocation(line: 490, column: 13, scope: !2166, inlinedAt: !2119)
!2166 = distinct !DILexicalBlock(scope: !2159, file: !2, line: 489, column: 9)
!2167 = !DILocation(line: 491, column: 20, scope: !2166, inlinedAt: !2119)
!2168 = !DILocation(line: 491, column: 23, scope: !2166, inlinedAt: !2119)
!2169 = !DILocation(line: 491, column: 18, scope: !2166, inlinedAt: !2119)
!2170 = !DILocation(line: 491, column: 28, scope: !2166, inlinedAt: !2119)
!2171 = !DILocation(line: 491, column: 32, scope: !2166, inlinedAt: !2119)
!2172 = !DILocation(line: 491, column: 43, scope: !2166, inlinedAt: !2119)
!2173 = !DILocation(line: 491, column: 40, scope: !2166, inlinedAt: !2119)
!2174 = !DILocation(line: 491, column: 48, scope: !2166, inlinedAt: !2119)
!2175 = !DILocation(line: 491, column: 38, scope: !2166, inlinedAt: !2119)
!2176 = !DILocation(line: 491, column: 57, scope: !2166, inlinedAt: !2119)
!2177 = !DILocation(line: 491, column: 55, scope: !2166, inlinedAt: !2119)
!2178 = !DILocation(line: 492, column: 11, scope: !2166, inlinedAt: !2119)
!2179 = !DILocation(line: 492, column: 27, scope: !2166, inlinedAt: !2119)
!2180 = !DILocation(line: 494, column: 35, scope: !2166, inlinedAt: !2119)
!2181 = !DILocation(line: 494, column: 57, scope: !2166, inlinedAt: !2119)
!2182 = !DILocation(line: 494, column: 53, scope: !2166, inlinedAt: !2119)
!2183 = !DILocation(line: 494, column: 46, scope: !2166, inlinedAt: !2119)
!2184 = !DILocation(line: 494, column: 64, scope: !2166, inlinedAt: !2119)
!2185 = !DILocation(line: 494, column: 11, scope: !2166, inlinedAt: !2119)
!2186 = !DILocation(line: 494, column: 33, scope: !2166, inlinedAt: !2119)
!2187 = !DILocation(line: 497, column: 53, scope: !2166, inlinedAt: !2119)
!2188 = !DILocation(line: 497, column: 48, scope: !2166, inlinedAt: !2119)
!2189 = !DILocation(line: 497, column: 60, scope: !2166, inlinedAt: !2119)
!2190 = !DILocation(line: 498, column: 41, scope: !2166, inlinedAt: !2119)
!2191 = !DILocation(line: 497, column: 66, scope: !2166, inlinedAt: !2119)
!2192 = !DILocation(line: 497, column: 11, scope: !2166, inlinedAt: !2119)
!2193 = !DILocation(line: 497, column: 34, scope: !2166, inlinedAt: !2119)
!2194 = !DILocation(line: 488, column: 30, scope: !2159, inlinedAt: !2119)
!2195 = distinct !{!2195, !2161, !2196, !209}
!2196 = !DILocation(line: 502, column: 9, scope: !2160, inlinedAt: !2119)
!2197 = !DILocation(line: 511, column: 21, scope: !2198, inlinedAt: !2119)
!2198 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 511, column: 7)
!2199 = distinct !{!2199, !2162, !2200, !209}
!2200 = !DILocation(line: 571, column: 9, scope: !2163, inlinedAt: !2119)
!2201 = !DILocation(line: 520, column: 22, scope: !2202, inlinedAt: !2119)
!2202 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 512, column: 9)
!2203 = !DILocation(line: 520, column: 17, scope: !2202, inlinedAt: !2119)
!2204 = !DILocation(line: 521, column: 18, scope: !2202, inlinedAt: !2119)
!2205 = !DILocation(line: 522, column: 30, scope: !2202, inlinedAt: !2119)
!2206 = !DILocation(line: 522, column: 15, scope: !2202, inlinedAt: !2119)
!2207 = !DILocation(line: 523, column: 11, scope: !2202, inlinedAt: !2119)
!2208 = !DILocation(line: 523, column: 31, scope: !2202, inlinedAt: !2119)
!2209 = !DILocation(line: 525, column: 39, scope: !2202, inlinedAt: !2119)
!2210 = !DILocation(line: 525, column: 41, scope: !2202, inlinedAt: !2119)
!2211 = !DILocation(line: 525, column: 48, scope: !2202, inlinedAt: !2119)
!2212 = !DILocation(line: 525, column: 11, scope: !2202, inlinedAt: !2119)
!2213 = !DILocation(line: 525, column: 37, scope: !2202, inlinedAt: !2119)
!2214 = !DILocation(line: 529, column: 24, scope: !2202, inlinedAt: !2119)
!2215 = !DILocation(line: 529, column: 33, scope: !2202, inlinedAt: !2119)
!2216 = !DILocation(line: 529, column: 28, scope: !2202, inlinedAt: !2119)
!2217 = !DILocation(line: 529, column: 15, scope: !2202, inlinedAt: !2119)
!2218 = !DILocation(line: 529, column: 43, scope: !2202, inlinedAt: !2119)
!2219 = !DILocation(line: 529, column: 41, scope: !2202, inlinedAt: !2119)
!2220 = !DILocation(line: 530, column: 18, scope: !2202, inlinedAt: !2119)
!2221 = !DILocation(line: 529, column: 63, scope: !2202, inlinedAt: !2119)
!2222 = !DILocation(line: 528, column: 11, scope: !2202, inlinedAt: !2119)
!2223 = !DILocation(line: 528, column: 38, scope: !2202, inlinedAt: !2119)
!2224 = !DILocation(line: 541, column: 25, scope: !2202, inlinedAt: !2119)
!2225 = !DILocation(line: 542, column: 19, scope: !2202, inlinedAt: !2119)
!2226 = !DILocation(line: 542, column: 29, scope: !2202, inlinedAt: !2119)
!2227 = !DILocation(line: 542, column: 32, scope: !2202, inlinedAt: !2119)
!2228 = !DILocation(line: 542, column: 27, scope: !2202, inlinedAt: !2119)
!2229 = !DILocation(line: 542, column: 25, scope: !2202, inlinedAt: !2119)
!2230 = !DILocation(line: 543, column: 11, scope: !2202, inlinedAt: !2119)
!2231 = !DILocation(line: 543, column: 27, scope: !2202, inlinedAt: !2119)
!2232 = !DILocation(line: 545, column: 54, scope: !2202, inlinedAt: !2119)
!2233 = !DILocation(line: 545, column: 62, scope: !2202, inlinedAt: !2119)
!2234 = !DILocation(line: 545, column: 70, scope: !2202, inlinedAt: !2119)
!2235 = !DILocation(line: 545, column: 74, scope: !2202, inlinedAt: !2119)
!2236 = !DILocation(line: 545, column: 60, scope: !2202, inlinedAt: !2119)
!2237 = !DILocation(line: 545, column: 41, scope: !2202, inlinedAt: !2119)
!2238 = !DILocation(line: 545, column: 11, scope: !2202, inlinedAt: !2119)
!2239 = !DILocation(line: 545, column: 33, scope: !2202, inlinedAt: !2119)
!2240 = !DILocation(line: 549, column: 16, scope: !2202, inlinedAt: !2119)
!2241 = !DILocation(line: 549, column: 14, scope: !2202, inlinedAt: !2119)
!2242 = !DILocation(line: 549, column: 20, scope: !2202, inlinedAt: !2119)
!2243 = !DILocation(line: 549, column: 45, scope: !2202, inlinedAt: !2119)
!2244 = !DILocation(line: 549, column: 40, scope: !2202, inlinedAt: !2119)
!2245 = !DILocation(line: 549, column: 28, scope: !2202, inlinedAt: !2119)
!2246 = !DILocation(line: 549, column: 55, scope: !2202, inlinedAt: !2119)
!2247 = !DILocation(line: 549, column: 53, scope: !2202, inlinedAt: !2119)
!2248 = !DILocation(line: 550, column: 18, scope: !2202, inlinedAt: !2119)
!2249 = !DILocation(line: 549, column: 71, scope: !2202, inlinedAt: !2119)
!2250 = !DILocation(line: 548, column: 11, scope: !2202, inlinedAt: !2119)
!2251 = !DILocation(line: 548, column: 34, scope: !2202, inlinedAt: !2119)
!2252 = !DILocation(line: 554, column: 22, scope: !2253, inlinedAt: !2119)
!2253 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 554, column: 11)
!2254 = !DILocation(line: 554, column: 29, scope: !2255, inlinedAt: !2119)
!2255 = distinct !DILexicalBlock(scope: !2253, file: !2, line: 554, column: 11)
!2256 = !DILocation(line: 554, column: 11, scope: !2253, inlinedAt: !2119)
!2257 = !DILocation(line: 556, column: 17, scope: !2258, inlinedAt: !2119)
!2258 = distinct !DILexicalBlock(scope: !2255, file: !2, line: 555, column: 13)
!2259 = !DILocation(line: 557, column: 24, scope: !2258, inlinedAt: !2119)
!2260 = !DILocation(line: 557, column: 27, scope: !2258, inlinedAt: !2119)
!2261 = !DILocation(line: 557, column: 22, scope: !2258, inlinedAt: !2119)
!2262 = !DILocation(line: 557, column: 32, scope: !2258, inlinedAt: !2119)
!2263 = !DILocation(line: 557, column: 36, scope: !2258, inlinedAt: !2119)
!2264 = !DILocation(line: 557, column: 47, scope: !2258, inlinedAt: !2119)
!2265 = !DILocation(line: 557, column: 51, scope: !2258, inlinedAt: !2119)
!2266 = !DILocation(line: 557, column: 44, scope: !2258, inlinedAt: !2119)
!2267 = !DILocation(line: 557, column: 56, scope: !2258, inlinedAt: !2119)
!2268 = !DILocation(line: 557, column: 42, scope: !2258, inlinedAt: !2119)
!2269 = !DILocation(line: 558, column: 33, scope: !2258, inlinedAt: !2119)
!2270 = !DILocation(line: 558, column: 21, scope: !2258, inlinedAt: !2119)
!2271 = !DILocation(line: 557, column: 63, scope: !2258, inlinedAt: !2119)
!2272 = !DILocation(line: 559, column: 15, scope: !2258, inlinedAt: !2119)
!2273 = !DILocation(line: 559, column: 31, scope: !2258, inlinedAt: !2119)
!2274 = !DILocation(line: 561, column: 48, scope: !2258, inlinedAt: !2119)
!2275 = !DILocation(line: 561, column: 56, scope: !2258, inlinedAt: !2119)
!2276 = !DILocation(line: 561, column: 64, scope: !2258, inlinedAt: !2119)
!2277 = !DILocation(line: 561, column: 66, scope: !2258, inlinedAt: !2119)
!2278 = !DILocation(line: 561, column: 70, scope: !2258, inlinedAt: !2119)
!2279 = !DILocation(line: 561, column: 62, scope: !2258, inlinedAt: !2119)
!2280 = !DILocation(line: 561, column: 45, scope: !2258, inlinedAt: !2119)
!2281 = !DILocation(line: 561, column: 15, scope: !2258, inlinedAt: !2119)
!2282 = !DILocation(line: 561, column: 37, scope: !2258, inlinedAt: !2119)
!2283 = !DILocation(line: 565, column: 41, scope: !2258, inlinedAt: !2119)
!2284 = !DILocation(line: 565, column: 36, scope: !2258, inlinedAt: !2119)
!2285 = !DILocation(line: 565, column: 32, scope: !2258, inlinedAt: !2119)
!2286 = !DILocation(line: 565, column: 51, scope: !2258, inlinedAt: !2119)
!2287 = !DILocation(line: 565, column: 49, scope: !2258, inlinedAt: !2119)
!2288 = !DILocation(line: 566, column: 22, scope: !2258, inlinedAt: !2119)
!2289 = !DILocation(line: 565, column: 67, scope: !2258, inlinedAt: !2119)
!2290 = !DILocation(line: 564, column: 15, scope: !2258, inlinedAt: !2119)
!2291 = !DILocation(line: 564, column: 38, scope: !2258, inlinedAt: !2119)
!2292 = !DILocation(line: 554, column: 38, scope: !2255, inlinedAt: !2119)
!2293 = distinct !{!2293, !2256, !2294, !209}
!2294 = !DILocation(line: 570, column: 13, scope: !2253, inlinedAt: !2119)
!2295 = !DILocation(line: 575, column: 18, scope: !2102, inlinedAt: !2119)
!2296 = !DILocation(line: 576, column: 14, scope: !2102, inlinedAt: !2119)
!2297 = !DILocation(line: 575, column: 13, scope: !2102, inlinedAt: !2119)
!2298 = !DILocation(line: 577, column: 26, scope: !2102, inlinedAt: !2119)
!2299 = !DILocation(line: 577, column: 11, scope: !2102, inlinedAt: !2119)
!2300 = !DILocation(line: 578, column: 7, scope: !2102, inlinedAt: !2119)
!2301 = !DILocation(line: 578, column: 27, scope: !2102, inlinedAt: !2119)
!2302 = !DILocation(line: 580, column: 35, scope: !2102, inlinedAt: !2119)
!2303 = !DILocation(line: 580, column: 40, scope: !2102, inlinedAt: !2119)
!2304 = !DILocation(line: 580, column: 44, scope: !2102, inlinedAt: !2119)
!2305 = !DILocation(line: 580, column: 50, scope: !2102, inlinedAt: !2119)
!2306 = !DILocation(line: 580, column: 7, scope: !2102, inlinedAt: !2119)
!2307 = !DILocation(line: 580, column: 33, scope: !2102, inlinedAt: !2119)
!2308 = !DILocation(line: 584, column: 23, scope: !2102, inlinedAt: !2119)
!2309 = !DILocation(line: 584, column: 38, scope: !2102, inlinedAt: !2119)
!2310 = !DILocation(line: 584, column: 30, scope: !2102, inlinedAt: !2119)
!2311 = !DILocation(line: 584, column: 14, scope: !2102, inlinedAt: !2119)
!2312 = !DILocation(line: 584, column: 48, scope: !2102, inlinedAt: !2119)
!2313 = !DILocation(line: 584, column: 46, scope: !2102, inlinedAt: !2119)
!2314 = !DILocation(line: 585, column: 14, scope: !2102, inlinedAt: !2119)
!2315 = !DILocation(line: 584, column: 68, scope: !2102, inlinedAt: !2119)
!2316 = !DILocation(line: 583, column: 7, scope: !2102, inlinedAt: !2119)
!2317 = !DILocation(line: 583, column: 34, scope: !2102, inlinedAt: !2119)
!2318 = !DILocation(line: 588, column: 7, scope: !2102, inlinedAt: !2119)
!2319 = !DILocalVariable(name: "lmax", arg: 1, scope: !2320, file: !2, line: 218, type: !85)
!2320 = distinct !DISubprogram(name: "legendre_deriv2_alt_array_schmidt_e", scope: !2, file: !2, line: 217, type: !1495, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2321)
!2321 = !{!2319, !2322, !2323, !2324, !2325, !2326, !2327, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347}
!2322 = !DILocalVariable(name: "x", arg: 2, scope: !2320, file: !2, line: 218, type: !89)
!2323 = !DILocalVariable(name: "csphase", arg: 3, scope: !2320, file: !2, line: 218, type: !89)
!2324 = !DILocalVariable(name: "result_array", arg: 4, scope: !2320, file: !2, line: 218, type: !90)
!2325 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !2320, file: !2, line: 218, type: !90)
!2326 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !2320, file: !2, line: 218, type: !90)
!2327 = !DILocalVariable(name: "eps", scope: !2328, file: !2, line: 236, type: !89)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 235, column: 5)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 230, column: 12)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 225, column: 12)
!2331 = distinct !DILexicalBlock(scope: !2320, file: !2, line: 220, column: 7)
!2332 = !DILocalVariable(name: "u", scope: !2328, file: !2, line: 237, type: !89)
!2333 = !DILocalVariable(name: "uinv", scope: !2328, file: !2, line: 239, type: !89)
!2334 = !DILocalVariable(name: "uinv2", scope: !2328, file: !2, line: 242, type: !89)
!2335 = !DILocalVariable(name: "xbyu", scope: !2328, file: !2, line: 245, type: !89)
!2336 = !DILocalVariable(name: "l", scope: !2328, file: !2, line: 247, type: !86)
!2337 = !DILocalVariable(name: "m", scope: !2328, file: !2, line: 247, type: !86)
!2338 = !DILocalVariable(name: "k", scope: !2328, file: !2, line: 248, type: !86)
!2339 = !DILocalVariable(name: "idxmm", scope: !2328, file: !2, line: 248, type: !86)
!2340 = !DILocalVariable(name: "plm", scope: !2328, file: !2, line: 249, type: !70)
!2341 = !DILocalVariable(name: "pmm", scope: !2328, file: !2, line: 250, type: !70)
!2342 = !DILocalVariable(name: "rescalem", scope: !2328, file: !2, line: 251, type: !70)
!2343 = !DILocalVariable(name: "pm1", scope: !2328, file: !2, line: 252, type: !70)
!2344 = !DILocalVariable(name: "pm2", scope: !2328, file: !2, line: 253, type: !70)
!2345 = !DILocalVariable(name: "nlm", scope: !2328, file: !2, line: 254, type: !86)
!2346 = !DILocalVariable(name: "sqrts", scope: !2328, file: !2, line: 255, type: !90)
!2347 = !DILocalVariable(name: "linv", scope: !2348, file: !2, line: 288, type: !70)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !2, line: 287, column: 9)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !2, line: 286, column: 7)
!2350 = distinct !DILexicalBlock(scope: !2328, file: !2, line: 286, column: 7)
!2351 = !DILocation(line: 0, scope: !2320, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 121, column: 11, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2090, file: !2, line: 119, column: 5)
!2354 = !DILocation(line: 220, column: 15, scope: !2331, inlinedAt: !2352)
!2355 = !DILocation(line: 222, column: 7, scope: !2356, inlinedAt: !2352)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !2, line: 222, column: 7)
!2357 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 221, column: 5)
!2358 = !DILocation(line: 225, column: 12, scope: !2330, inlinedAt: !2352)
!2359 = !DILocation(line: 225, column: 20, scope: !2330, inlinedAt: !2352)
!2360 = !DILocation(line: 225, column: 12, scope: !2331, inlinedAt: !2352)
!2361 = !DILocation(line: 227, column: 7, scope: !2362, inlinedAt: !2352)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !2, line: 227, column: 7)
!2363 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 226, column: 5)
!2364 = !DILocation(line: 230, column: 20, scope: !2329, inlinedAt: !2352)
!2365 = !DILocation(line: 230, column: 27, scope: !2329, inlinedAt: !2352)
!2366 = !DILocation(line: 232, column: 7, scope: !2367, inlinedAt: !2352)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !2, line: 232, column: 7)
!2368 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 231, column: 5)
!2369 = !DILocation(line: 0, scope: !2328, inlinedAt: !2352)
!2370 = !DILocation(line: 237, column: 34, scope: !2328, inlinedAt: !2352)
!2371 = !DILocation(line: 237, column: 46, scope: !2328, inlinedAt: !2352)
!2372 = !DILocation(line: 237, column: 39, scope: !2328, inlinedAt: !2352)
!2373 = !DILocation(line: 237, column: 24, scope: !2328, inlinedAt: !2352)
!2374 = !DILocation(line: 239, column: 31, scope: !2328, inlinedAt: !2352)
!2375 = !DILocation(line: 0, scope: !122, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 254, column: 20, scope: !2328, inlinedAt: !2352)
!2377 = !DILocation(line: 255, column: 25, scope: !2328, inlinedAt: !2352)
!2378 = !DILocation(line: 0, scope: !307, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 258, column: 7, scope: !2328, inlinedAt: !2352)
!2380 = !DILocation(line: 112, column: 3, scope: !316, inlinedAt: !2379)
!2381 = !DILocation(line: 113, column: 21, scope: !318, inlinedAt: !2379)
!2382 = !DILocation(line: 113, column: 16, scope: !318, inlinedAt: !2379)
!2383 = !DILocation(line: 113, column: 5, scope: !318, inlinedAt: !2379)
!2384 = !DILocation(line: 113, column: 14, scope: !318, inlinedAt: !2379)
!2385 = !DILocation(line: 112, column: 34, scope: !318, inlinedAt: !2379)
!2386 = distinct !{!2386, !2380, !2387, !209}
!2387 = !DILocation(line: 113, column: 31, scope: !316, inlinedAt: !2379)
!2388 = distinct !{!2388, !326}
!2389 = !DILocation(line: 242, column: 36, scope: !2328, inlinedAt: !2352)
!2390 = !DILocation(line: 245, column: 29, scope: !2328, inlinedAt: !2352)
!2391 = !DILocation(line: 264, column: 23, scope: !2328, inlinedAt: !2352)
!2392 = !DILocation(line: 266, column: 29, scope: !2328, inlinedAt: !2352)
!2393 = !DILocation(line: 269, column: 30, scope: !2328, inlinedAt: !2352)
!2394 = !DILocation(line: 272, column: 16, scope: !2395, inlinedAt: !2352)
!2395 = distinct !DILexicalBlock(scope: !2328, file: !2, line: 272, column: 11)
!2396 = !DILocation(line: 272, column: 11, scope: !2328, inlinedAt: !2352)
!2397 = !DILocation(line: 275, column: 7, scope: !2328, inlinedAt: !2352)
!2398 = !DILocation(line: 275, column: 23, scope: !2328, inlinedAt: !2352)
!2399 = !DILocation(line: 277, column: 31, scope: !2328, inlinedAt: !2352)
!2400 = !DILocation(line: 277, column: 7, scope: !2328, inlinedAt: !2352)
!2401 = !DILocation(line: 277, column: 29, scope: !2328, inlinedAt: !2352)
!2402 = !DILocation(line: 280, column: 32, scope: !2328, inlinedAt: !2352)
!2403 = !DILocation(line: 280, column: 7, scope: !2328, inlinedAt: !2352)
!2404 = !DILocation(line: 280, column: 30, scope: !2328, inlinedAt: !2352)
!2405 = !DILocation(line: 286, column: 21, scope: !2349, inlinedAt: !2352)
!2406 = !DILocation(line: 286, column: 7, scope: !2350, inlinedAt: !2352)
!2407 = !DILocation(line: 321, column: 7, scope: !2408, inlinedAt: !2352)
!2408 = distinct !DILexicalBlock(scope: !2328, file: !2, line: 321, column: 7)
!2409 = !DILocation(line: 288, column: 31, scope: !2348, inlinedAt: !2352)
!2410 = !DILocation(line: 288, column: 29, scope: !2348, inlinedAt: !2352)
!2411 = !DILocation(line: 0, scope: !2348, inlinedAt: !2352)
!2412 = !DILocation(line: 290, column: 13, scope: !2348, inlinedAt: !2352)
!2413 = !DILocation(line: 292, column: 22, scope: !2348, inlinedAt: !2352)
!2414 = !DILocation(line: 292, column: 30, scope: !2348, inlinedAt: !2352)
!2415 = !DILocation(line: 292, column: 34, scope: !2348, inlinedAt: !2352)
!2416 = !DILocation(line: 292, column: 47, scope: !2348, inlinedAt: !2352)
!2417 = !DILocation(line: 292, column: 55, scope: !2348, inlinedAt: !2352)
!2418 = !DILocation(line: 292, column: 40, scope: !2348, inlinedAt: !2352)
!2419 = !DILocation(line: 293, column: 11, scope: !2348, inlinedAt: !2352)
!2420 = !DILocation(line: 293, column: 27, scope: !2348, inlinedAt: !2352)
!2421 = !DILocation(line: 295, column: 40, scope: !2348, inlinedAt: !2352)
!2422 = !DILocation(line: 295, column: 49, scope: !2348, inlinedAt: !2352)
!2423 = !DILocation(line: 295, column: 55, scope: !2348, inlinedAt: !2352)
!2424 = !DILocation(line: 295, column: 44, scope: !2348, inlinedAt: !2352)
!2425 = !DILocation(line: 295, column: 11, scope: !2348, inlinedAt: !2352)
!2426 = !DILocation(line: 295, column: 33, scope: !2348, inlinedAt: !2352)
!2427 = !DILocation(line: 298, column: 36, scope: !2348, inlinedAt: !2352)
!2428 = !DILocation(line: 298, column: 53, scope: !2348, inlinedAt: !2352)
!2429 = !DILocation(line: 298, column: 48, scope: !2348, inlinedAt: !2352)
!2430 = !DILocation(line: 298, column: 60, scope: !2348, inlinedAt: !2352)
!2431 = !DILocation(line: 299, column: 41, scope: !2348, inlinedAt: !2352)
!2432 = !DILocation(line: 298, column: 66, scope: !2348, inlinedAt: !2352)
!2433 = !DILocation(line: 298, column: 11, scope: !2348, inlinedAt: !2352)
!2434 = !DILocation(line: 298, column: 34, scope: !2348, inlinedAt: !2352)
!2435 = !DILocation(line: 286, column: 30, scope: !2349, inlinedAt: !2352)
!2436 = distinct !{!2436, !2406, !2437, !209}
!2437 = !DILocation(line: 303, column: 9, scope: !2350, inlinedAt: !2352)
!2438 = !DILocation(line: 321, column: 21, scope: !2439, inlinedAt: !2352)
!2439 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 321, column: 7)
!2440 = distinct !{!2440, !2407, !2441, !209}
!2441 = !DILocation(line: 387, column: 9, scope: !2408, inlinedAt: !2352)
!2442 = !DILocation(line: 324, column: 20, scope: !2443, inlinedAt: !2352)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !2, line: 322, column: 9)
!2444 = !DILocation(line: 332, column: 22, scope: !2443, inlinedAt: !2352)
!2445 = !DILocation(line: 332, column: 17, scope: !2443, inlinedAt: !2352)
!2446 = !DILocation(line: 333, column: 36, scope: !2443, inlinedAt: !2352)
!2447 = !DILocation(line: 333, column: 28, scope: !2443, inlinedAt: !2352)
!2448 = !DILocation(line: 333, column: 26, scope: !2443, inlinedAt: !2352)
!2449 = !DILocation(line: 333, column: 47, scope: !2443, inlinedAt: !2352)
!2450 = !DILocation(line: 333, column: 45, scope: !2443, inlinedAt: !2352)
!2451 = !DILocation(line: 333, column: 15, scope: !2443, inlinedAt: !2352)
!2452 = !DILocation(line: 334, column: 37, scope: !2443, inlinedAt: !2352)
!2453 = !DILocation(line: 334, column: 11, scope: !2443, inlinedAt: !2352)
!2454 = !DILocation(line: 334, column: 31, scope: !2443, inlinedAt: !2352)
!2455 = !DILocation(line: 336, column: 39, scope: !2443, inlinedAt: !2352)
!2456 = !DILocation(line: 336, column: 41, scope: !2443, inlinedAt: !2352)
!2457 = !DILocation(line: 336, column: 48, scope: !2443, inlinedAt: !2352)
!2458 = !DILocation(line: 336, column: 11, scope: !2443, inlinedAt: !2352)
!2459 = !DILocation(line: 336, column: 37, scope: !2443, inlinedAt: !2352)
!2460 = !DILocation(line: 340, column: 24, scope: !2443, inlinedAt: !2352)
!2461 = !DILocation(line: 340, column: 33, scope: !2443, inlinedAt: !2352)
!2462 = !DILocation(line: 340, column: 28, scope: !2443, inlinedAt: !2352)
!2463 = !DILocation(line: 340, column: 15, scope: !2443, inlinedAt: !2352)
!2464 = !DILocation(line: 340, column: 43, scope: !2443, inlinedAt: !2352)
!2465 = !DILocation(line: 340, column: 41, scope: !2443, inlinedAt: !2352)
!2466 = !DILocation(line: 341, column: 18, scope: !2443, inlinedAt: !2352)
!2467 = !DILocation(line: 340, column: 63, scope: !2443, inlinedAt: !2352)
!2468 = !DILocation(line: 339, column: 11, scope: !2443, inlinedAt: !2352)
!2469 = !DILocation(line: 339, column: 38, scope: !2443, inlinedAt: !2352)
!2470 = !DILocation(line: 351, column: 25, scope: !2443, inlinedAt: !2352)
!2471 = !DILocation(line: 352, column: 33, scope: !2443, inlinedAt: !2352)
!2472 = !DILocation(line: 352, column: 21, scope: !2443, inlinedAt: !2352)
!2473 = !DILocation(line: 352, column: 19, scope: !2443, inlinedAt: !2352)
!2474 = !DILocation(line: 352, column: 38, scope: !2443, inlinedAt: !2352)
!2475 = !DILocation(line: 353, column: 33, scope: !2443, inlinedAt: !2352)
!2476 = !DILocation(line: 353, column: 11, scope: !2443, inlinedAt: !2352)
!2477 = !DILocation(line: 353, column: 27, scope: !2443, inlinedAt: !2352)
!2478 = !DILocation(line: 356, column: 31, scope: !2443, inlinedAt: !2352)
!2479 = !DILocation(line: 356, column: 35, scope: !2443, inlinedAt: !2352)
!2480 = !DILocation(line: 357, column: 21, scope: !2443, inlinedAt: !2352)
!2481 = !DILocation(line: 357, column: 40, scope: !2443, inlinedAt: !2352)
!2482 = !DILocation(line: 357, column: 38, scope: !2443, inlinedAt: !2352)
!2483 = !DILocation(line: 356, column: 53, scope: !2443, inlinedAt: !2352)
!2484 = !DILocation(line: 356, column: 18, scope: !2443, inlinedAt: !2352)
!2485 = !DILocation(line: 355, column: 11, scope: !2443, inlinedAt: !2352)
!2486 = !DILocation(line: 355, column: 33, scope: !2443, inlinedAt: !2352)
!2487 = !DILocation(line: 361, column: 16, scope: !2443, inlinedAt: !2352)
!2488 = !DILocation(line: 361, column: 14, scope: !2443, inlinedAt: !2352)
!2489 = !DILocation(line: 361, column: 20, scope: !2443, inlinedAt: !2352)
!2490 = !DILocation(line: 361, column: 45, scope: !2443, inlinedAt: !2352)
!2491 = !DILocation(line: 361, column: 40, scope: !2443, inlinedAt: !2352)
!2492 = !DILocation(line: 361, column: 28, scope: !2443, inlinedAt: !2352)
!2493 = !DILocation(line: 361, column: 55, scope: !2443, inlinedAt: !2352)
!2494 = !DILocation(line: 361, column: 53, scope: !2443, inlinedAt: !2352)
!2495 = !DILocation(line: 362, column: 18, scope: !2443, inlinedAt: !2352)
!2496 = !DILocation(line: 361, column: 71, scope: !2443, inlinedAt: !2352)
!2497 = !DILocation(line: 360, column: 11, scope: !2443, inlinedAt: !2352)
!2498 = !DILocation(line: 360, column: 34, scope: !2443, inlinedAt: !2352)
!2499 = !DILocation(line: 366, column: 22, scope: !2500, inlinedAt: !2352)
!2500 = distinct !DILexicalBlock(scope: !2443, file: !2, line: 366, column: 11)
!2501 = !DILocation(line: 366, column: 16, scope: !2500, inlinedAt: !2352)
!2502 = !DILocation(line: 366, column: 29, scope: !2503, inlinedAt: !2352)
!2503 = distinct !DILexicalBlock(scope: !2500, file: !2, line: 366, column: 11)
!2504 = !DILocation(line: 366, column: 11, scope: !2500, inlinedAt: !2352)
!2505 = !DILocation(line: 368, column: 17, scope: !2506, inlinedAt: !2352)
!2506 = distinct !DILexicalBlock(scope: !2503, file: !2, line: 367, column: 13)
!2507 = !DILocation(line: 370, column: 19, scope: !2506, inlinedAt: !2352)
!2508 = !DILocation(line: 370, column: 22, scope: !2506, inlinedAt: !2352)
!2509 = !DILocation(line: 370, column: 17, scope: !2506, inlinedAt: !2352)
!2510 = !DILocation(line: 370, column: 29, scope: !2506, inlinedAt: !2352)
!2511 = !DILocation(line: 370, column: 27, scope: !2506, inlinedAt: !2352)
!2512 = !DILocation(line: 370, column: 52, scope: !2506, inlinedAt: !2352)
!2513 = !DILocation(line: 370, column: 44, scope: !2506, inlinedAt: !2352)
!2514 = !DILocation(line: 370, column: 42, scope: !2506, inlinedAt: !2352)
!2515 = !DILocation(line: 370, column: 57, scope: !2506, inlinedAt: !2352)
!2516 = !DILocation(line: 370, column: 61, scope: !2506, inlinedAt: !2352)
!2517 = !DILocation(line: 371, column: 17, scope: !2506, inlinedAt: !2352)
!2518 = !DILocation(line: 371, column: 36, scope: !2506, inlinedAt: !2352)
!2519 = !DILocation(line: 371, column: 34, scope: !2506, inlinedAt: !2352)
!2520 = !DILocation(line: 371, column: 53, scope: !2506, inlinedAt: !2352)
!2521 = !DILocation(line: 372, column: 30, scope: !2506, inlinedAt: !2352)
!2522 = !DILocation(line: 372, column: 45, scope: !2506, inlinedAt: !2352)
!2523 = !DILocation(line: 370, column: 67, scope: !2506, inlinedAt: !2352)
!2524 = !DILocation(line: 373, column: 37, scope: !2506, inlinedAt: !2352)
!2525 = !DILocation(line: 373, column: 15, scope: !2506, inlinedAt: !2352)
!2526 = !DILocation(line: 373, column: 31, scope: !2506, inlinedAt: !2352)
!2527 = !DILocation(line: 376, column: 25, scope: !2506, inlinedAt: !2352)
!2528 = !DILocation(line: 376, column: 27, scope: !2506, inlinedAt: !2352)
!2529 = !DILocation(line: 376, column: 31, scope: !2506, inlinedAt: !2352)
!2530 = !DILocation(line: 377, column: 25, scope: !2506, inlinedAt: !2352)
!2531 = !DILocation(line: 377, column: 40, scope: !2506, inlinedAt: !2352)
!2532 = !DILocation(line: 377, column: 38, scope: !2506, inlinedAt: !2352)
!2533 = !DILocation(line: 377, column: 55, scope: !2506, inlinedAt: !2352)
!2534 = !DILocation(line: 377, column: 53, scope: !2506, inlinedAt: !2352)
!2535 = !DILocation(line: 376, column: 49, scope: !2506, inlinedAt: !2352)
!2536 = !DILocation(line: 376, column: 22, scope: !2506, inlinedAt: !2352)
!2537 = !DILocation(line: 375, column: 15, scope: !2506, inlinedAt: !2352)
!2538 = !DILocation(line: 375, column: 37, scope: !2506, inlinedAt: !2352)
!2539 = !DILocation(line: 381, column: 41, scope: !2506, inlinedAt: !2352)
!2540 = !DILocation(line: 381, column: 36, scope: !2506, inlinedAt: !2352)
!2541 = !DILocation(line: 381, column: 32, scope: !2506, inlinedAt: !2352)
!2542 = !DILocation(line: 381, column: 51, scope: !2506, inlinedAt: !2352)
!2543 = !DILocation(line: 381, column: 49, scope: !2506, inlinedAt: !2352)
!2544 = !DILocation(line: 382, column: 22, scope: !2506, inlinedAt: !2352)
!2545 = !DILocation(line: 381, column: 67, scope: !2506, inlinedAt: !2352)
!2546 = !DILocation(line: 380, column: 15, scope: !2506, inlinedAt: !2352)
!2547 = !DILocation(line: 380, column: 38, scope: !2506, inlinedAt: !2352)
!2548 = !DILocation(line: 366, column: 38, scope: !2503, inlinedAt: !2352)
!2549 = distinct !{!2549, !2504, !2550, !209}
!2550 = !DILocation(line: 386, column: 13, scope: !2500, inlinedAt: !2352)
!2551 = !DILocation(line: 392, column: 18, scope: !2328, inlinedAt: !2352)
!2552 = !DILocation(line: 391, column: 16, scope: !2328, inlinedAt: !2352)
!2553 = !DILocation(line: 392, column: 13, scope: !2328, inlinedAt: !2352)
!2554 = !DILocation(line: 393, column: 24, scope: !2328, inlinedAt: !2352)
!2555 = !DILocation(line: 393, column: 22, scope: !2328, inlinedAt: !2352)
!2556 = !DILocation(line: 393, column: 46, scope: !2328, inlinedAt: !2352)
!2557 = !DILocation(line: 393, column: 44, scope: !2328, inlinedAt: !2352)
!2558 = !DILocation(line: 393, column: 11, scope: !2328, inlinedAt: !2352)
!2559 = !DILocation(line: 394, column: 33, scope: !2328, inlinedAt: !2352)
!2560 = !DILocation(line: 394, column: 7, scope: !2328, inlinedAt: !2352)
!2561 = !DILocation(line: 394, column: 27, scope: !2328, inlinedAt: !2352)
!2562 = !DILocation(line: 396, column: 35, scope: !2328, inlinedAt: !2352)
!2563 = !DILocation(line: 396, column: 40, scope: !2328, inlinedAt: !2352)
!2564 = !DILocation(line: 396, column: 47, scope: !2328, inlinedAt: !2352)
!2565 = !DILocation(line: 396, column: 7, scope: !2328, inlinedAt: !2352)
!2566 = !DILocation(line: 396, column: 33, scope: !2328, inlinedAt: !2352)
!2567 = !DILocation(line: 400, column: 23, scope: !2328, inlinedAt: !2352)
!2568 = !DILocation(line: 400, column: 38, scope: !2328, inlinedAt: !2352)
!2569 = !DILocation(line: 400, column: 30, scope: !2328, inlinedAt: !2352)
!2570 = !DILocation(line: 400, column: 14, scope: !2328, inlinedAt: !2352)
!2571 = !DILocation(line: 400, column: 48, scope: !2328, inlinedAt: !2352)
!2572 = !DILocation(line: 400, column: 46, scope: !2328, inlinedAt: !2352)
!2573 = !DILocation(line: 401, column: 14, scope: !2328, inlinedAt: !2352)
!2574 = !DILocation(line: 400, column: 68, scope: !2328, inlinedAt: !2352)
!2575 = !DILocation(line: 399, column: 7, scope: !2328, inlinedAt: !2352)
!2576 = !DILocation(line: 399, column: 34, scope: !2328, inlinedAt: !2352)
!2577 = !DILocation(line: 404, column: 7, scope: !2328, inlinedAt: !2352)
!2578 = !DILocation(line: 141, column: 39, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2064, file: !2, line: 141, column: 7)
!2580 = !DILocation(line: 154, column: 5, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !2, line: 151, column: 5)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !2, line: 150, column: 12)
!2583 = distinct !DILexicalBlock(scope: !2579, file: !2, line: 145, column: 12)
!2584 = !DILocation(line: 164, column: 23, scope: !2078)
!2585 = !DILocation(line: 0, scope: !2078)
!2586 = !DILocation(line: 166, column: 5, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2078, file: !2, line: 166, column: 5)
!2588 = !DILocation(line: 169, column: 11, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 167, column: 7)
!2590 = distinct !DILexicalBlock(scope: !2587, file: !2, line: 166, column: 5)
!2591 = !DILocation(line: 169, column: 27, scope: !2589)
!2592 = !DILocation(line: 0, scope: !434, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 168, column: 22, scope: !2589)
!2594 = !DILocation(line: 95, column: 18, scope: !434, inlinedAt: !2593)
!2595 = !DILocation(line: 95, column: 13, scope: !434, inlinedAt: !2593)
!2596 = !DILocation(line: 95, column: 23, scope: !434, inlinedAt: !2593)
!2597 = !DILocation(line: 168, column: 9, scope: !2589)
!2598 = !DILocation(line: 168, column: 57, scope: !2589)
!2599 = !DILocation(line: 172, column: 11, scope: !2589)
!2600 = !DILocation(line: 172, column: 27, scope: !2589)
!2601 = !DILocation(line: 0, scope: !434, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 171, column: 28, scope: !2589)
!2603 = !DILocation(line: 171, column: 9, scope: !2589)
!2604 = !DILocation(line: 171, column: 63, scope: !2589)
!2605 = !DILocation(line: 176, column: 11, scope: !2589)
!2606 = !DILocation(line: 176, column: 27, scope: !2589)
!2607 = !DILocation(line: 0, scope: !434, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 175, column: 29, scope: !2589)
!2609 = !DILocation(line: 175, column: 9, scope: !2589)
!2610 = !DILocation(line: 175, column: 64, scope: !2589)
!2611 = !DILocation(line: 179, column: 23, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !2, line: 179, column: 9)
!2613 = distinct !DILexicalBlock(scope: !2589, file: !2, line: 179, column: 9)
!2614 = !DILocation(line: 179, column: 9, scope: !2613)
!2615 = !DILocation(line: 182, column: 15, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2612, file: !2, line: 180, column: 11)
!2617 = !DILocation(line: 182, column: 31, scope: !2616)
!2618 = !DILocation(line: 0, scope: !434, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 181, column: 26, scope: !2616)
!2620 = !DILocation(line: 95, column: 27, scope: !434, inlinedAt: !2619)
!2621 = !DILocation(line: 181, column: 13, scope: !2616)
!2622 = !DILocation(line: 181, column: 61, scope: !2616)
!2623 = !DILocation(line: 185, column: 15, scope: !2616)
!2624 = !DILocation(line: 185, column: 31, scope: !2616)
!2625 = !DILocation(line: 0, scope: !434, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 184, column: 32, scope: !2616)
!2627 = !DILocation(line: 184, column: 13, scope: !2616)
!2628 = !DILocation(line: 184, column: 67, scope: !2616)
!2629 = !DILocation(line: 189, column: 15, scope: !2616)
!2630 = !DILocation(line: 189, column: 31, scope: !2616)
!2631 = !DILocation(line: 0, scope: !434, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 188, column: 33, scope: !2616)
!2633 = !DILocation(line: 188, column: 13, scope: !2616)
!2634 = !DILocation(line: 188, column: 68, scope: !2616)
!2635 = !DILocation(line: 179, column: 29, scope: !2612)
!2636 = distinct !{!2636, !2614, !2637, !209}
!2637 = !DILocation(line: 191, column: 11, scope: !2613)
!2638 = !DILocation(line: 193, column: 18, scope: !2589)
!2639 = !DILocation(line: 166, column: 19, scope: !2590)
!2640 = distinct !{!2640, !2586, !2641, !209}
!2641 = !DILocation(line: 194, column: 7, scope: !2587)
!2642 = !DILocation(line: 198, column: 1, scope: !2064)
!2643 = distinct !DISubprogram(name: "gsl_sf_legendre_array_n", scope: !20, file: !20, line: 78, type: !123, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2644)
!2644 = !{!2645, !2646, !2647}
!2645 = !DILocalVariable(name: "lmax", arg: 1, scope: !2643, file: !20, line: 78, type: !85)
!2646 = !DILocalVariable(name: "nlm", scope: !2643, file: !20, line: 80, type: !86)
!2647 = !DILocalVariable(name: "nsqrt", scope: !2643, file: !20, line: 81, type: !86)
!2648 = !DILocation(line: 0, scope: !2643)
!2649 = !DILocation(line: 0, scope: !122, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 80, column: 16, scope: !2643)
!2651 = !DILocation(line: 68, column: 17, scope: !122, inlinedAt: !2650)
!2652 = !DILocation(line: 68, column: 30, scope: !122, inlinedAt: !2650)
!2653 = !DILocation(line: 68, column: 22, scope: !122, inlinedAt: !2650)
!2654 = !DILocation(line: 68, column: 35, scope: !122, inlinedAt: !2650)
!2655 = !DILocation(line: 81, column: 20, scope: !2643)
!2656 = !DILocation(line: 81, column: 27, scope: !2643)
!2657 = !DILocation(line: 83, column: 15, scope: !2643)
!2658 = !DILocation(line: 83, column: 3, scope: !2643)
!2659 = !DISubprogram(name: "gsl_error", scope: !31, file: !31, line: 77, type: !2660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{null, !2662, !2662, !32, !32}
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
