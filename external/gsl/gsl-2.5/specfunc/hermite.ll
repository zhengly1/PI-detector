; ModuleID = 'hermite.c'
source_filename = "hermite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str.1 = private unnamed_addr constant [10 x i8] c"hermite.c\00", align 1, !dbg !0
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !7
@.str.3 = private unnamed_addr constant [44 x i8] c"gsl_sf_hermite_prob_der_e(m, n, x, &result)\00", align 1, !dbg !12
@.str.4 = private unnamed_addr constant [37 x i8] c"gsl_sf_hermite_phys_e(n, x, &result)\00", align 1, !dbg !17
@.str.5 = private unnamed_addr constant [44 x i8] c"gsl_sf_hermite_phys_der_e(m, n, x, &result)\00", align 1, !dbg !22
@.str.6 = private unnamed_addr constant [37 x i8] c"gsl_sf_hermite_func_e(n, x, &result)\00", align 1, !dbg !24
@.str.7 = private unnamed_addr constant [47 x i8] c"gsl_sf_hermite_prob_series_e(n, x, a, &result)\00", align 1, !dbg !26
@.str.8 = private unnamed_addr constant [47 x i8] c"gsl_sf_hermite_phys_series_e(n, x, a, &result)\00", align 1, !dbg !31
@.str.9 = private unnamed_addr constant [47 x i8] c"gsl_sf_hermite_func_series_e(n, x, a, &result)\00", align 1, !dbg !33
@.str.10 = private unnamed_addr constant [44 x i8] c"gsl_sf_hermite_func_der_e(m, n, x, &result)\00", align 1, !dbg !35
@He_zero_tab = internal unnamed_addr constant [99 x double] [double 0x3FFBB67AE8584CAA, double 0x3FE7BE2AD58CB0FE, double 0x4002ACE15C98AA9F, double 0x3FF5B0A513C97441, double 0x4006DB131839E414, double 0x3FE3BC0F75835B10, double 0x3FFE3A107C35822D, double 0x400A98144804BADE, double 0x3FF27871CA8BBF03, double 0x4002EF1F8ED4D737, double 0x400E00E689EA0325, double 0x3FE140244DF60424, double 0x3FFA2F2E9768A3F1, double 0x40066B7DB50DDBEC, double 0x401094042D748EE4, double 0x3FF05F4154B6BCCF, double 0x40009D6279197ADA, double 0x4009A4B7F60758F1, double 0x40120D0D4069D86C, double 0x3FDF092FC71C448C, double 0x3FF774B0FB0B3E2F, double 0x4003DFE63A13936D, double 0x400CA793120F33DB, double 0x40137017060F4280, double 0x3FEDB94B79C0A3AC, double 0x3FFE043D4C1B73C5, double 0x4006EBC5B10FD019, double 0x400F7D44EB09D821, double 0x4014C0836499312E, double 0x3FDC711949E60908, double 0x3FF5722D43422C04, double 0x40021362191C2F29, double 0x4009CA2860F2E400, double 0x4011165983DC4E75, double 0x401600EC605CCC6D, double 0x3FEB69EB1CFA3C79, double 0x3FFB9B504D83FB17, double 0x4004F72C4E06C593, double 0x400C81EF20936598, double 0x40125D978E145995, double 0x4017335F0B51521F, double 0x3FDA67E1CEE3A09D, double 0x3FF3E20DD06E9147, double 0x4000B4EE170C819C, double 0x4007B44C85BA11F6, double 0x400F186BE95F3408, double 0x401396767EB4C3DA, double 0x40185981E3653268, double 0x3FE992771FB7948C, double 0x3FF9B5159E0A1DE3, double 0x400375A1706CBE4D, double 0x400A500A723520F6, double 0x4010C8EAAC9C7E65, double 0x4014C2A7E4F75539, double 0x401974AEC15FE3BD, double 0x3FD8C0AF8CED8267, double 0x3FF29F0B43504447, double 0x3FFF3B4FBE349533, double 0x400614FB5B04289A, double 0x400CCE96D4A6C430, double 0x4011F8C9465ADA5A, double 0x4015E38F22AD8822, double 0x401A8604EF376E7A, double 0x3FE80F1836B86907, double 0x3FF8287B663C367E, double 0x40023F871ECB6A1D, double 0x40089722F93492FC, double 0x400F3355A79CEE0E, double 0x40131D3762917467, double 0x4016FA53BE2C1436, double 0x401B8E761CE5F5F1, double 0x3FD7602FBBBA22C9, double 0x3FF193072DC46A64, double 0x3FFD6FBD122B7928, double 0x4004C44473FDD49D, double 0x400AFF75DE6E4411, double 0x4010C088602756AA, double 0x4014375ED47E5577, double 0x401807EE8B4FDE66, double 0x401C8ECFDF981A51, double 0x3FE6C96693043F6B, double 0x3FF6DCADCA1C6179, double 0x40013E783B5259F8, double 0x40072F3581F62134, double 0x400D50B99F71C617, double 0x4011DD0DB6C15D13, double 0x4015483AB02758AD, double 0x40190D3356DE8734, double 0x401D87C2CBB1629D, double 0x3FD634A926E31CC3, double 0x3FF0AFE77649F856, double 0x3FFBEC88746540B2, double 0x4003AB57D3CECDFD, double 0x4009831A333C7332, double 0x400F8D3EC11C84FE, double 0x4012F03616D7EB60, double 0x401650A0E7D0F317, double 0x401A0AD8256821F2, double 0x401E79E7DC649AAE], align 16, !dbg !37
@.str.11 = private unnamed_addr constant [42 x i8] c"gsl_sf_hermite_prob_zero_e(n, s, &result)\00", align 1, !dbg !83
@H_zero_tab = internal unnamed_addr constant [99 x double] [double 0x3FF3988E1409212E, double 0x3FE0C9E9CFFC872C, double 0x3FFA692F8FC3F25F, double 0x3FEEACA0294B9956, double 0x40002955A30462E7, double 0x3FDBE8B13BB03840, double 0x3FF55FA347547DCC, double 0x4002CE09FAFDF99F, double 0x3FEA1F07C42002B9, double 0x3FFAC6DE129B94C7, double 0x40053737840EE7A8, double 0x3FD8655E1E2678C3, double 0x3FF283DD8DE18830, double 0x3FFFB4DDB71E7F48, double 0x400771F208238266, double 0x3FE727547750FD4C, double 0x3FF77F31BBD9E6AE, double 0x400221F5006280AD, double 0x40098727719B47A9, double 0x3FD5F218688B9252, double 0x3FF095F53CCA0192, double 0x3FFC1B6050729327, double 0x40044308D2F2FC3A, double 0x400B7D40FDFA1503, double 0x3FE504957F2EAC63, double 0x3FF53993EBE2ECEF, double 0x400035243BBAF112, double 0x4006442D998EBDFF, double 0x400D59073E426C38, double 0x3FD41C83AAC617E1, double 0x3FEE544851FCF567, double 0x3FF9901BAAB5E16F, double 0x40023C6E354E051A, double 0x40082A43BE9FD8FD, double 0x400F1E2816564D1D, double 0x3FE3626AEE4468D9, double 0x3FF385586E17A337, double 0x3FFDA654357988A1, double 0x4004286B2EE46AD7, double 0x4009F90E20C81366, double 0x401067C50AF5C522, double 0x3FD2ABF55CC5FB77, double 0x3FEC1E6C6063F861, double 0x3FF7A07E124D1B48, double 0x4000C2EF70B356C0, double 0x4005FCDE382E9B10, double 0x400BB3857A78B715, double 0x401137C15DB5FE28, double 0x3FE2150CCE818169, double 0x3FF22D87892F4F13, double 0x3FFB8516EF3C9EE3, double 0x40029B19A23AE455, double 0x4007BCC203A904D3, double 0x400D5C0EF0FDB88D, double 0x4011FFFD9060CA7E, double 0x3FD180B6A54F4F93, double 0x3FEA559E4708B514, double 0x3FF61589FA5E2491, double 0x3FFF3A860B5B5FAA, double 0x40045E9F3CA7AD2F, double 0x40096A7E8960FC8E, double 0x400EF4A11A67997E, double 0x4012C144C7CF336D, double 0x3FE103233647B67C, double 0x3FF11516D48AF275, double 0x3FF9CE89B9C80DFE, double 0x4001635573325FA1, double 0x40060FE600E88EF7, double 0x400B080D8C56DC62, double 0x40103F6EF30BEC9F, double 0x40137C41EA196EF3, double 0x3FD087757585D312, double 0x3FE8DA962333B0E0, double 0x3FF4D09263D77B83, double 0x3FFD5E5663313FF1, double 0x40031723FA139065, double 0x4007B0E6B08AF24D, double 0x400C97143CC4D6D4, double 0x4010FE129CA21CD8, double 0x4014318655B1AD5A, double 0x3FE01CD651590794, double 0x3FF02A780ABA7756, double 0x3FF86300BB3D1BCD, double 0x400064D3983DE067, double 0x4004BAA45A35D326, double 0x400943463DC41F1F, double 0x400E18F5AEB0E1E9, double 0x4011B6D14DD6815B, double 0x4014E18EE6EC5F5A, double 0x3FCF67530743D203, double 0x3FE7996281385F71, double 0x3FF3BEC6B39E4F51, double 0x3FFBD10CEB867454, double 0x40020A2FCF426DED, double 0x40064F798CFEAF13, double 0x400AC867F9B566B1, double 0x400F8EE072F5DE17, double 0x40126A2BBB67F55E, double 0x40158CC7CA59B160], align 16, !dbg !92
@.str.12 = private unnamed_addr constant [42 x i8] c"gsl_sf_hermite_phys_zero_e(n, s, &result)\00", align 1, !dbg !88
@.str.13 = private unnamed_addr constant [42 x i8] c"gsl_sf_hermite_func_zero_e(n, s, &result)\00", align 1, !dbg !90

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_prob_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !106 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !122
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !119, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata double %1, metadata !120, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !121, metadata !DIExpression()), !dbg !123
  %5 = fcmp oeq double %1, 0.000000e+00, !dbg !124
  %6 = icmp slt i32 %0, 100001
  %7 = or i1 %6, %5, !dbg !126
  br i1 %7, label %11, label %8, !dbg !126

8:                                                ; preds = %3
  call void @llvm.dbg.assign(metadata i1 undef, metadata !127, metadata !DIExpression(), metadata !122, metadata ptr %4, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i32 %0, metadata !133, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double %1, metadata !134, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata ptr %2, metadata !135, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double 0xC002B471A873ADF9, metadata !136, metadata !DIExpression()), !dbg !147
  %9 = tail call double @llvm.fabs.f64(double %1), !dbg !148
  %10 = fmul double %9, 0x3FE6A09E667F3BCD, !dbg !149
  call void @llvm.dbg.value(metadata double %10, metadata !137, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 1, metadata !139, metadata !DIExpression()), !dbg !147
  br label %18, !dbg !150

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @gsl_sf_hermite_prob_iter_e(i32 noundef %0, double noundef %1, ptr noundef %2), !dbg !152, !range !153
  %13 = icmp eq i32 %12, 0, !dbg !154
  br i1 %13, label %179, label %14, !dbg !155

14:                                               ; preds = %11
  call void @llvm.dbg.assign(metadata i1 undef, metadata !127, metadata !DIExpression(), metadata !122, metadata ptr %4, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i32 %0, metadata !133, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double %1, metadata !134, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata ptr %2, metadata !135, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double 0xC002B471A873ADF9, metadata !136, metadata !DIExpression()), !dbg !147
  %15 = tail call double @llvm.fabs.f64(double %1), !dbg !148
  %16 = fmul double %15, 0x3FE6A09E667F3BCD, !dbg !149
  call void @llvm.dbg.value(metadata double %16, metadata !137, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 1, metadata !139, metadata !DIExpression()), !dbg !147
  %17 = icmp slt i32 %0, 1, !dbg !156
  br i1 %17, label %62, label %18, !dbg !150

18:                                               ; preds = %8, %14
  %19 = phi double [ %10, %8 ], [ %16, %14 ]
  %20 = add i32 %0, -1, !dbg !150
  %21 = and i32 %0, 3, !dbg !150
  %22 = icmp ult i32 %20, 3, !dbg !150
  br i1 %22, label %47, label %23, !dbg !150

23:                                               ; preds = %18
  %24 = and i32 %0, -4, !dbg !150
  br label %25, !dbg !150

25:                                               ; preds = %25, %23
  %26 = phi double [ 1.000000e+00, %23 ], [ %43, %25 ]
  %27 = phi i32 [ 1, %23 ], [ %44, %25 ]
  %28 = phi i32 [ 0, %23 ], [ %45, %25 ]
  call void @llvm.dbg.value(metadata double %26, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %27, metadata !139, metadata !DIExpression()), !dbg !147
  %29 = sitofp i32 %27 to double, !dbg !158
  %30 = tail call double @sqrt(double noundef %29) #7, !dbg !160
  %31 = fmul double %26, %30, !dbg !161
  call void @llvm.dbg.value(metadata double %31, metadata !138, metadata !DIExpression()), !dbg !147
  %32 = add nuw nsw i32 %27, 1, !dbg !162
  call void @llvm.dbg.value(metadata i32 %32, metadata !139, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double %31, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %32, metadata !139, metadata !DIExpression()), !dbg !147
  %33 = sitofp i32 %32 to double, !dbg !158
  %34 = tail call double @sqrt(double noundef %33) #7, !dbg !160
  %35 = fmul double %31, %34, !dbg !161
  call void @llvm.dbg.value(metadata double %35, metadata !138, metadata !DIExpression()), !dbg !147
  %36 = add nuw nsw i32 %27, 2, !dbg !162
  call void @llvm.dbg.value(metadata i32 %36, metadata !139, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double %35, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %36, metadata !139, metadata !DIExpression()), !dbg !147
  %37 = sitofp i32 %36 to double, !dbg !158
  %38 = tail call double @sqrt(double noundef %37) #7, !dbg !160
  %39 = fmul double %35, %38, !dbg !161
  call void @llvm.dbg.value(metadata double %39, metadata !138, metadata !DIExpression()), !dbg !147
  %40 = add nuw i32 %27, 3, !dbg !162
  call void @llvm.dbg.value(metadata i32 %40, metadata !139, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double %39, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %40, metadata !139, metadata !DIExpression()), !dbg !147
  %41 = sitofp i32 %40 to double, !dbg !158
  %42 = tail call double @sqrt(double noundef %41) #7, !dbg !160
  %43 = fmul double %39, %42, !dbg !161
  call void @llvm.dbg.value(metadata double %43, metadata !138, metadata !DIExpression()), !dbg !147
  %44 = add nuw i32 %27, 4, !dbg !162
  call void @llvm.dbg.value(metadata i32 %44, metadata !139, metadata !DIExpression()), !dbg !147
  %45 = add i32 %28, 4, !dbg !150
  %46 = icmp eq i32 %45, %24, !dbg !150
  br i1 %46, label %47, label %25, !dbg !150, !llvm.loop !163

47:                                               ; preds = %25, %18
  %48 = phi double [ undef, %18 ], [ %43, %25 ]
  %49 = phi double [ 1.000000e+00, %18 ], [ %43, %25 ]
  %50 = phi i32 [ 1, %18 ], [ %44, %25 ]
  %51 = icmp eq i32 %21, 0, !dbg !150
  br i1 %51, label %62, label %52, !dbg !150

52:                                               ; preds = %47, %52
  %53 = phi double [ %58, %52 ], [ %49, %47 ]
  %54 = phi i32 [ %59, %52 ], [ %50, %47 ]
  %55 = phi i32 [ %60, %52 ], [ 0, %47 ]
  call void @llvm.dbg.value(metadata double %53, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %54, metadata !139, metadata !DIExpression()), !dbg !147
  %56 = sitofp i32 %54 to double, !dbg !158
  %57 = tail call double @sqrt(double noundef %56) #7, !dbg !160
  %58 = fmul double %53, %57, !dbg !161
  call void @llvm.dbg.value(metadata double %58, metadata !138, metadata !DIExpression()), !dbg !147
  %59 = add nuw i32 %54, 1, !dbg !162
  call void @llvm.dbg.value(metadata i32 %59, metadata !139, metadata !DIExpression()), !dbg !147
  %60 = add i32 %55, 1, !dbg !150
  %61 = icmp eq i32 %60, %21, !dbg !150
  br i1 %61, label %62, label %52, !dbg !150, !llvm.loop !166

62:                                               ; preds = %47, %52, %14
  %63 = phi double [ %16, %14 ], [ %19, %52 ], [ %19, %47 ]
  %64 = phi double [ 1.000000e+00, %14 ], [ %48, %47 ], [ %58, %52 ], !dbg !147
  %65 = shl nsw i32 %0, 1, !dbg !168
  %66 = or disjoint i32 %65, 1, !dbg !169
  %67 = sitofp i32 %66 to double, !dbg !169
  %68 = tail call double @sqrt(double noundef %67) #7, !dbg !170
  %69 = sitofp i32 %0 to double, !dbg !171
  %70 = tail call double @pow(double noundef %69, double noundef 0x3FC5555555555555) #7, !dbg !172
  %71 = fdiv double 0x3FFA73E1E5E90639, %70, !dbg !173
  %72 = fsub double %68, %71, !dbg !174
  %73 = fcmp olt double %63, %72, !dbg !175
  %74 = tail call double @sqrt(double noundef %67) #7, !dbg !176
  br i1 %73, label %75, label %107, !dbg !177

75:                                               ; preds = %62
  %76 = fdiv double %63, %74, !dbg !178
  %77 = tail call double @acos(double noundef %76) #7, !dbg !179
  call void @llvm.dbg.value(metadata double %77, metadata !140, metadata !DIExpression()), !dbg !180
  %78 = and i32 %0, 1, !dbg !181
  %79 = icmp ne i32 %78, 0, !dbg !181
  %80 = fcmp olt double %1, 0.000000e+00, !dbg !182
  %81 = and i1 %79, %80, !dbg !182
  %82 = fneg double %64, !dbg !183
  %83 = select i1 %81, double %82, double %64, !dbg !183
  %84 = fdiv double 2.000000e+00, %69, !dbg !184
  %85 = tail call double @pow(double noundef %84, double noundef 2.500000e-01) #7, !dbg !185
  %86 = fmul double %83, %85, !dbg !186
  %87 = tail call double @sin(double noundef %77) #7, !dbg !187
  %88 = fmul double %87, 0x3FFC5BF891B4EF6B, !dbg !188
  %89 = tail call double @sqrt(double noundef %88) #7, !dbg !189
  %90 = fdiv double %86, %89, !dbg !190
  %91 = fmul double %69, 5.000000e-01, !dbg !191
  %92 = fadd double %91, 2.500000e-01, !dbg !192
  %93 = fmul double %77, 2.000000e+00, !dbg !193
  %94 = tail call double @sin(double noundef %93) #7, !dbg !194
  %95 = fsub double %94, %93, !dbg !195
  %96 = fmul double %92, %95, !dbg !196
  %97 = fadd double %96, 0x4002D97C7F3321D2, !dbg !197
  %98 = tail call double @sin(double noundef %97) #7, !dbg !198
  %99 = fmul double %90, %98, !dbg !199
  %100 = fmul double %63, 5.000000e-01, !dbg !200
  %101 = fmul double %63, %100, !dbg !201
  %102 = tail call double @exp(double noundef %101) #7, !dbg !202
  %103 = fmul double %99, %102, !dbg !203
  store double %103, ptr %2, align 8, !dbg !204, !tbaa !205
  %104 = tail call double @llvm.fabs.f64(double %103), !dbg !210
  %105 = fmul double %104, 0x3CC0000000000000, !dbg !211
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !212
  store double %105, ptr %106, align 8, !dbg !213, !tbaa !214
  br label %179

107:                                              ; preds = %62
  %108 = tail call double @pow(double noundef %69, double noundef 0x3FC5555555555555) #7, !dbg !215
  %109 = fdiv double 0x3FFA73E1E5E90639, %108, !dbg !216
  %110 = fadd double %74, %109, !dbg !217
  %111 = fcmp ogt double %63, %110, !dbg !218
  br i1 %111, label %112, label %144, !dbg !219

112:                                              ; preds = %107
  %113 = tail call double @sqrt(double noundef %67) #7, !dbg !220
  %114 = fdiv double %63, %113, !dbg !221
  %115 = tail call double @acosh(double noundef %114) #7, !dbg !222
  call void @llvm.dbg.value(metadata double %115, metadata !142, metadata !DIExpression()), !dbg !223
  %116 = and i32 %0, 1, !dbg !224
  %117 = icmp ne i32 %116, 0, !dbg !224
  %118 = fcmp olt double %1, 0.000000e+00, !dbg !225
  %119 = and i1 %117, %118, !dbg !225
  %120 = fneg double %64, !dbg !226
  %121 = select i1 %119, double %120, double %64, !dbg !226
  %122 = tail call double @pow(double noundef %69, double noundef -2.500000e-01) #7, !dbg !227
  %123 = fmul double %121, %122, !dbg !228
  %124 = fdiv double %123, 0x3FF6A09E667F3BCD, !dbg !229
  %125 = tail call double @sinh(double noundef %115) #7, !dbg !230
  %126 = fmul double %125, 0x40040D931FF62706, !dbg !231
  %127 = tail call double @sqrt(double noundef %126) #7, !dbg !232
  %128 = fdiv double %124, %127, !dbg !233
  %129 = fmul double %69, 5.000000e-01, !dbg !234
  %130 = fadd double %129, 2.500000e-01, !dbg !235
  %131 = fmul double %115, 2.000000e+00, !dbg !236
  %132 = tail call double @sinh(double noundef %131) #7, !dbg !237
  %133 = fsub double %131, %132, !dbg !238
  %134 = fmul double %130, %133, !dbg !239
  %135 = tail call double @exp(double noundef %134) #7, !dbg !240
  %136 = fmul double %128, %135, !dbg !241
  %137 = fmul double %63, 5.000000e-01, !dbg !242
  %138 = fmul double %63, %137, !dbg !243
  %139 = tail call double @exp(double noundef %138) #7, !dbg !244
  %140 = fmul double %136, %139, !dbg !245
  store double %140, ptr %2, align 8, !dbg !246, !tbaa !205
  %141 = tail call double @llvm.fabs.f64(double %140), !dbg !247
  %142 = fmul double %141, 0x3CC0000000000000, !dbg !248
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !249
  store double %142, ptr %143, align 8, !dbg !250, !tbaa !214
  br label %179

144:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !251
  %145 = tail call double @sqrt(double noundef %67) #7, !dbg !252
  %146 = fsub double %63, %145, !dbg !253
  %147 = fmul double %146, 0x3FF6A09E667F3BCD, !dbg !254
  %148 = tail call double @pow(double noundef %69, double noundef 0x3FC5555555555555) #7, !dbg !255
  %149 = fmul double %148, %147, !dbg !256
  %150 = call i32 @gsl_sf_airy_Ai_e(double noundef %149, i32 noundef 0, ptr noundef nonnull %4) #7, !dbg !257
  %151 = and i32 %0, 1, !dbg !258
  %152 = icmp ne i32 %151, 0, !dbg !258
  %153 = fcmp olt double %1, 0.000000e+00, !dbg !259
  %154 = and i1 %152, %153, !dbg !259
  %155 = fneg double %64, !dbg !260
  %156 = select i1 %154, double %155, double %64, !dbg !260
  %157 = fmul double %156, 0x3FF954ECA30F7937, !dbg !261
  %158 = call double @pow(double noundef %69, double noundef 0xBFB5555555555555) #7, !dbg !262
  %159 = fmul double %157, %158, !dbg !263
  %160 = load double, ptr %4, align 8, !dbg !264, !tbaa !205
  %161 = fmul double %159, %160, !dbg !265
  %162 = fmul double %63, 5.000000e-01, !dbg !266
  %163 = fmul double %63, %162, !dbg !267
  %164 = call double @exp(double noundef %163) #7, !dbg !268
  %165 = fmul double %161, %164, !dbg !269
  store double %165, ptr %2, align 8, !dbg !270, !tbaa !205
  %166 = fmul double %64, 0x3FF954ECA30F7937, !dbg !271
  %167 = call double @pow(double noundef %69, double noundef 0xBFB5555555555555) #7, !dbg !272
  %168 = fmul double %166, %167, !dbg !273
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !274
  %170 = load double, ptr %169, align 8, !dbg !274, !tbaa !214
  %171 = fmul double %168, %170, !dbg !275
  %172 = call double @exp(double noundef %163) #7, !dbg !276
  %173 = fmul double %171, %172, !dbg !277
  %174 = load double, ptr %2, align 8, !dbg !278, !tbaa !205
  %175 = call double @llvm.fabs.f64(double %174), !dbg !279
  %176 = fmul double %175, 0x3CB0000000000000, !dbg !280
  %177 = fadd double %173, %176, !dbg !281
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !282
  store double %177, ptr %178, align 8, !dbg !283, !tbaa !214
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !284
  br label %179

179:                                              ; preds = %144, %112, %75, %11
  ret i32 0, !dbg !285
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gsl_sf_hermite_prob_iter_e(i32 noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !286 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !288, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata double %1, metadata !289, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !290, metadata !DIExpression()), !dbg !304
  %4 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !305
  %5 = icmp slt i32 %0, 0, !dbg !306
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !307
  br i1 %5, label %6, label %7, !dbg !308

6:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !309, !tbaa !205
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !309, !tbaa !214
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 54, i32 noundef 1) #7, !dbg !312
  br label %134, !dbg !312

7:                                                ; preds = %3
  switch i32 %0, label %10 [
    i32 0, label %8
    i32 1, label %9
  ], !dbg !314

8:                                                ; preds = %7
  store double 1.000000e+00, ptr %2, align 8, !dbg !315, !tbaa !205
  store double 0.000000e+00, ptr %4, align 8, !dbg !317, !tbaa !214
  br label %134, !dbg !318

9:                                                ; preds = %7
  store double %1, ptr %2, align 8, !dbg !319, !tbaa !205
  store double 0.000000e+00, ptr %4, align 8, !dbg !321, !tbaa !214
  br label %134, !dbg !322

10:                                               ; preds = %7
  %11 = fcmp oeq double %1, 0.000000e+00, !dbg !323
  br i1 %11, label %12, label %38, !dbg !324

12:                                               ; preds = %10
  %13 = and i32 %0, 1, !dbg !325
  %14 = icmp eq i32 %13, 0, !dbg !325
  br i1 %14, label %15, label %134, !dbg !328

15:                                               ; preds = %12
  %16 = icmp ult i32 %0, 301, !dbg !329
  br i1 %16, label %17, label %34, !dbg !332

17:                                               ; preds = %15
  %18 = icmp ult i32 %0, 297, !dbg !333
  br i1 %18, label %19, label %27, !dbg !336

19:                                               ; preds = %17
  %20 = add nsw i32 %0, -1, !dbg !337
  %21 = tail call i32 @gsl_sf_doublefact_e(i32 noundef %20, ptr noundef nonnull %2) #7, !dbg !339
  %22 = and i32 %0, 2, !dbg !340
  %23 = icmp eq i32 %22, 0, !dbg !340
  br i1 %23, label %134, label %24, !dbg !340

24:                                               ; preds = %19
  %25 = load double, ptr %2, align 8, !dbg !341, !tbaa !205
  %26 = fneg double %25, !dbg !342
  store double %26, ptr %2, align 8, !dbg !343, !tbaa !205
  br label %134, !dbg !340

27:                                               ; preds = %17
  %28 = icmp eq i32 %0, 298, !dbg !344
  br i1 %28, label %29, label %30, !dbg !346

29:                                               ; preds = %27
  store double 0xFF124E0324B880C1, ptr %2, align 8, !dbg !347, !tbaa !205
  store double 0x7BE24E0324B880C1, ptr %4, align 8, !dbg !349, !tbaa !214
  br label %134, !dbg !350

30:                                               ; preds = %27
  %31 = and i32 %0, 2, !dbg !351
  %32 = icmp eq i32 %31, 0, !dbg !351
  %33 = select i1 %32, double 0x7F95611DABE37E61, double 0xFF95611DABE37E61, !dbg !353
  store double %33, ptr %2, align 8, !dbg !354, !tbaa !205
  store double 0x7C65611DABE37E61, ptr %4, align 8, !dbg !355, !tbaa !214
  br label %134

34:                                               ; preds = %15
  %35 = and i32 %0, 2, !dbg !356
  %36 = icmp eq i32 %35, 0, !dbg !356
  %37 = select i1 %36, double 0x7FF0000000000000, double 0xFFF0000000000000, !dbg !358
  store double %37, ptr %2, align 8, !dbg !359, !tbaa !205
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !360, !tbaa !214
  br label %134

38:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !291, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %1, metadata !297, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %1, metadata !298, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !299, metadata !DIExpression()), !dbg !361
  %39 = tail call double @llvm.fabs.f64(double %1), !dbg !362
  %40 = fmul double %39, 0x3CB0000000000000, !dbg !363
  tail call void @llvm.dbg.value(metadata double %40, metadata !300, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %40, metadata !301, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata i32 0, metadata !303, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata i32 1, metadata !302, metadata !DIExpression()), !dbg !361
  br label %41, !dbg !364

41:                                               ; preds = %38, %116
  %42 = phi i32 [ %96, %116 ], [ 0, %38 ]
  %43 = phi i32 [ %117, %116 ], [ 1, %38 ]
  %44 = phi double [ %95, %116 ], [ %40, %38 ]
  %45 = phi double [ %94, %116 ], [ 0x3CB0000000000000, %38 ]
  %46 = phi double [ %93, %116 ], [ %1, %38 ]
  %47 = phi double [ %92, %116 ], [ 1.000000e+00, %38 ]
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !303, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !302, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %44, metadata !301, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %45, metadata !299, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %46, metadata !298, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %47, metadata !291, metadata !DIExpression()), !dbg !361
  %48 = tail call i32 @gsl_isnan(double noundef %46) #7, !dbg !366
  %49 = icmp eq i32 %48, 1, !dbg !370
  br i1 %49, label %119, label %50, !dbg !371

50:                                               ; preds = %41
  %51 = fmul double %46, %1, !dbg !372
  %52 = sitofp i32 %43 to double, !dbg !373
  %53 = fmul double %47, %52, !dbg !374
  %54 = fsub double %51, %53, !dbg !375
  tail call void @llvm.dbg.value(metadata double %54, metadata !298, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %46, metadata !291, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %54, metadata !297, metadata !DIExpression()), !dbg !361
  %55 = fmul double %39, %44, !dbg !376
  %56 = fmul double %45, %52, !dbg !377
  %57 = fadd double %55, %56, !dbg !378
  tail call void @llvm.dbg.value(metadata double %57, metadata !301, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %44, metadata !299, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %57, metadata !300, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !303, metadata !DIExpression()), !dbg !361
  %58 = tail call double @llvm.fabs.f64(double %46), !dbg !379
  %59 = tail call double @llvm.fabs.f64(double %54), !dbg !379
  %60 = fcmp olt double %58, %59, !dbg !379
  %61 = select i1 %60, double %58, double %59, !dbg !379
  %62 = fcmp ogt double %61, 0x2010000000000000, !dbg !380
  br i1 %62, label %63, label %85, !dbg !381

63:                                               ; preds = %50, %74
  %64 = phi double [ %81, %74 ], [ %59, %50 ]
  %65 = phi double [ %80, %74 ], [ %58, %50 ]
  %66 = phi i32 [ %79, %74 ], [ %42, %50 ]
  %67 = phi double [ %78, %74 ], [ %57, %50 ]
  %68 = phi double [ %77, %74 ], [ %44, %50 ]
  %69 = phi double [ %76, %74 ], [ %54, %50 ]
  %70 = phi double [ %75, %74 ], [ %46, %50 ]
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !303, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %67, metadata !301, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %68, metadata !299, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %69, metadata !298, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %70, metadata !291, metadata !DIExpression()), !dbg !361
  %71 = fcmp ogt double %65, %64, !dbg !382
  %72 = select i1 %71, double %65, double %64, !dbg !382
  %73 = fcmp ogt double %72, 0x5FEFFFFFFFFFFFFF, !dbg !383
  br i1 %73, label %74, label %85, !dbg !384

74:                                               ; preds = %63
  %75 = fmul double %70, 5.000000e-01, !dbg !385
  tail call void @llvm.dbg.value(metadata double %75, metadata !291, metadata !DIExpression()), !dbg !361
  %76 = fmul double %69, 5.000000e-01, !dbg !387
  tail call void @llvm.dbg.value(metadata double %76, metadata !297, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %76, metadata !298, metadata !DIExpression()), !dbg !361
  %77 = fmul double %68, 5.000000e-01, !dbg !388
  tail call void @llvm.dbg.value(metadata double %77, metadata !299, metadata !DIExpression()), !dbg !361
  %78 = fmul double %67, 5.000000e-01, !dbg !389
  tail call void @llvm.dbg.value(metadata double %78, metadata !300, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %78, metadata !301, metadata !DIExpression()), !dbg !361
  %79 = add nsw i32 %66, 1, !dbg !390
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !303, metadata !DIExpression()), !dbg !361
  %80 = tail call double @llvm.fabs.f64(double %75), !dbg !379
  %81 = tail call double @llvm.fabs.f64(double %76), !dbg !379
  %82 = fcmp olt double %80, %81, !dbg !379
  %83 = select i1 %82, double %80, double %81, !dbg !379
  %84 = fcmp ogt double %83, 0x2010000000000000, !dbg !380
  br i1 %84, label %63, label %85, !dbg !381, !llvm.loop !391

85:                                               ; preds = %63, %74, %50
  %86 = phi double [ %46, %50 ], [ %70, %63 ], [ %75, %74 ]
  %87 = phi double [ %54, %50 ], [ %69, %63 ], [ %76, %74 ]
  %88 = phi double [ %44, %50 ], [ %68, %63 ], [ %77, %74 ]
  %89 = phi double [ %57, %50 ], [ %67, %63 ], [ %78, %74 ]
  %90 = phi i32 [ %42, %50 ], [ %66, %63 ], [ %79, %74 ]
  br label %91, !dbg !393

91:                                               ; preds = %85, %110
  %92 = phi double [ %111, %110 ], [ %86, %85 ], !dbg !394
  %93 = phi double [ %112, %110 ], [ %87, %85 ], !dbg !394
  %94 = phi double [ %113, %110 ], [ %88, %85 ], !dbg !394
  %95 = phi double [ %114, %110 ], [ %89, %85 ], !dbg !394
  %96 = phi i32 [ %115, %110 ], [ %90, %85 ], !dbg !361
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !303, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %95, metadata !301, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %95, metadata !300, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %94, metadata !299, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %93, metadata !298, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %93, metadata !297, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %92, metadata !291, metadata !DIExpression()), !dbg !361
  %97 = tail call double @llvm.fabs.f64(double %92), !dbg !395
  %98 = fcmp olt double %97, 0x2000000000000000, !dbg !396
  %99 = fcmp une double %92, 0.000000e+00
  %100 = select i1 %98, i1 %99, i1 false, !dbg !397
  %101 = tail call double @llvm.fabs.f64(double %93), !dbg !398
  br i1 %100, label %106, label %102, !dbg !397

102:                                              ; preds = %91
  %103 = fcmp olt double %101, 0x2000000000000000, !dbg !399
  %104 = fcmp une double %93, 0.000000e+00
  %105 = select i1 %103, i1 %104, i1 false, !dbg !400
  br i1 %105, label %106, label %116, !dbg !400

106:                                              ; preds = %91, %102
  %107 = fcmp ogt double %97, %101, !dbg !401
  %108 = select i1 %107, double %97, double %101, !dbg !401
  %109 = fcmp olt double %108, 0x5FDFFFFFFFFFFFFF, !dbg !402
  br i1 %109, label %110, label %116, !dbg !393

110:                                              ; preds = %106
  %111 = fmul double %92, 2.000000e+00, !dbg !403
  tail call void @llvm.dbg.value(metadata double %111, metadata !291, metadata !DIExpression()), !dbg !361
  %112 = fmul double %93, 2.000000e+00, !dbg !405
  tail call void @llvm.dbg.value(metadata double %112, metadata !297, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %112, metadata !298, metadata !DIExpression()), !dbg !361
  %113 = fmul double %94, 2.000000e+00, !dbg !406
  tail call void @llvm.dbg.value(metadata double %113, metadata !299, metadata !DIExpression()), !dbg !361
  %114 = fmul double %95, 2.000000e+00, !dbg !407
  tail call void @llvm.dbg.value(metadata double %114, metadata !300, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %114, metadata !301, metadata !DIExpression()), !dbg !361
  %115 = add nsw i32 %96, -1, !dbg !408
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !303, metadata !DIExpression()), !dbg !361
  br label %91, !dbg !393, !llvm.loop !409

116:                                              ; preds = %106, %102
  %117 = add nuw nsw i32 %43, 1, !dbg !411
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !303, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !302, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %95, metadata !301, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %95, metadata !300, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %94, metadata !299, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %93, metadata !298, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %93, metadata !297, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %92, metadata !291, metadata !DIExpression()), !dbg !361
  %118 = icmp eq i32 %117, %0, !dbg !412
  br i1 %118, label %119, label %41, !dbg !364, !llvm.loop !413

119:                                              ; preds = %116, %41
  %120 = phi double [ %93, %116 ], [ %46, %41 ]
  %121 = phi double [ %95, %116 ], [ %44, %41 ]
  %122 = phi i32 [ %96, %116 ], [ %42, %41 ]
  %123 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %122) #7, !dbg !415
  %124 = fmul double %120, %123, !dbg !416
  store double %124, ptr %2, align 8, !dbg !417, !tbaa !205
  %125 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %122) #7, !dbg !418
  %126 = fmul double %121, %125, !dbg !419
  %127 = load double, ptr %2, align 8, !dbg !420, !tbaa !205
  %128 = tail call double @llvm.fabs.f64(double %127), !dbg !421
  %129 = fmul double %128, 0x3CB0000000000000, !dbg !422
  %130 = fadd double %126, %129, !dbg !423
  store double %130, ptr %4, align 8, !dbg !424, !tbaa !214
  %131 = tail call i32 @gsl_isnan(double noundef %127) #7, !dbg !425
  %132 = icmp eq i32 %131, 1, !dbg !427
  %133 = select i1 %132, i32 2, i32 0, !dbg !428
  br label %134

134:                                              ; preds = %12, %34, %29, %30, %24, %19, %6, %8, %9, %119
  %135 = phi i32 [ 1, %6 ], [ 0, %8 ], [ 0, %9 ], [ %133, %119 ], [ 0, %19 ], [ 0, %24 ], [ 0, %30 ], [ 0, %29 ], [ 0, %34 ], [ 0, %12 ], !dbg !429
  ret i32 %135, !dbg !430
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_prob(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !431 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !439
  call void @llvm.dbg.assign(metadata i1 undef, metadata !437, metadata !DIExpression(), metadata !439, metadata ptr %3, metadata !DIExpression()), !dbg !440
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !435, metadata !DIExpression()), !dbg !440
  tail call void @llvm.dbg.value(metadata double %1, metadata !436, metadata !DIExpression()), !dbg !440
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !441
  %4 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !441
  tail call void @llvm.dbg.value(metadata i32 0, metadata !438, metadata !DIExpression()), !dbg !440
  %5 = load double, ptr %3, align 8, !dbg !441, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !442
  ret double %5, !dbg !442
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !443 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_prob_der_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !448 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !461
  call void @llvm.dbg.assign(metadata i1 undef, metadata !460, metadata !DIExpression(), metadata !461, metadata ptr %5, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !452, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !453, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata double %2, metadata !454, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !455, metadata !DIExpression()), !dbg !463
  %6 = or i32 %1, %0, !dbg !464
  %7 = icmp sgt i32 %6, -1, !dbg !464
  br i1 %7, label %10, label %8, !dbg !464

8:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !465, !tbaa !205
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !465
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !465, !tbaa !214
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 248, i32 noundef 1) #7, !dbg !468
  br label %28, !dbg !468

10:                                               ; preds = %4
  %11 = icmp slt i32 %1, %0, !dbg !470
  br i1 %11, label %12, label %13, !dbg !471

12:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !472
  br label %28, !dbg !474

13:                                               ; preds = %10
  %14 = tail call double @gsl_sf_choose(i32 noundef %1, i32 noundef %0) #7, !dbg !475
  %15 = tail call double @gsl_sf_fact(i32 noundef %0) #7, !dbg !476
  %16 = fmul double %14, %15, !dbg !477
  tail call void @llvm.dbg.value(metadata double %16, metadata !456, metadata !DIExpression()), !dbg !462
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !478
  %17 = sub nsw i32 %1, %0, !dbg !479
  %18 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %17, double noundef %2, ptr noundef nonnull %5), !dbg !480
  %19 = load double, ptr %5, align 8, !dbg !481, !tbaa !205
  %20 = fmul double %16, %19, !dbg !482
  store double %20, ptr %3, align 8, !dbg !483, !tbaa !205
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !484
  %22 = load double, ptr %21, align 8, !dbg !484, !tbaa !214
  %23 = fmul double %16, %22, !dbg !485
  %24 = call double @llvm.fabs.f64(double %20), !dbg !486
  %25 = fmul double %24, 0x3CB0000000000000, !dbg !487
  %26 = fadd double %23, %25, !dbg !488
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !489
  store double %26, ptr %27, align 8, !dbg !490, !tbaa !214
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !491
  br label %28

28:                                               ; preds = %8, %12, %13
  %29 = phi i32 [ 1, %8 ], [ 0, %12 ], [ 0, %13 ], !dbg !492
  ret i32 %29, !dbg !493
}

declare !dbg !494 double @gsl_sf_choose(i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !499 double @gsl_sf_fact(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_prob_der(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !503 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !512
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !507, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !508, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %2, metadata !509, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.assign(metadata i1 undef, metadata !460, metadata !DIExpression(), metadata !512, metadata ptr %4, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %0, metadata !452, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata i32 %1, metadata !453, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata double %2, metadata !454, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata ptr undef, metadata !455, metadata !DIExpression()), !dbg !516
  %5 = or i32 %1, %0, !dbg !517
  %6 = icmp sgt i32 %5, -1, !dbg !517
  br i1 %6, label %7, label %17, !dbg !517

7:                                                ; preds = %3
  %8 = icmp slt i32 %1, %0, !dbg !518
  br i1 %8, label %18, label %9, !dbg !519

9:                                                ; preds = %7
  %10 = tail call double @gsl_sf_choose(i32 noundef %1, i32 noundef %0) #7, !dbg !520
  %11 = tail call double @gsl_sf_fact(i32 noundef %0) #7, !dbg !521
  %12 = fmul double %10, %11, !dbg !522
  call void @llvm.dbg.value(metadata double %12, metadata !456, metadata !DIExpression()), !dbg !514
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !523
  %13 = sub nsw i32 %1, %0, !dbg !524
  %14 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %13, double noundef %2, ptr noundef nonnull %4), !dbg !525
  %15 = load double, ptr %4, align 8, !dbg !526, !tbaa !205
  %16 = fmul double %12, %15, !dbg !527
  tail call void @llvm.dbg.value(metadata double %16, metadata !510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !513
  tail call void @llvm.dbg.value(metadata double poison, metadata !510, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !513
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !528
  br label %18

17:                                               ; preds = %3
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !513
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !510, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !513
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 248, i32 noundef 1) #7, !dbg !529
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !513
  tail call void @llvm.dbg.value(metadata i32 1, metadata !511, metadata !DIExpression()), !dbg !513
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 268, i32 noundef 1) #7, !dbg !530
  br label %18, !dbg !530

18:                                               ; preds = %7, %9, %17
  %19 = phi double [ 0x7FF8000000000000, %17 ], [ 0.000000e+00, %7 ], [ %16, %9 ]
  ret double %19, !dbg !534
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_phys_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !535 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !573
  call void @llvm.dbg.assign(metadata i1 undef, metadata !571, metadata !DIExpression(), metadata !573, metadata ptr %4, metadata !DIExpression()), !dbg !574
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !537, metadata !DIExpression()), !dbg !575
  tail call void @llvm.dbg.value(metadata double %1, metadata !538, metadata !DIExpression()), !dbg !575
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !539, metadata !DIExpression()), !dbg !575
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !576
  %6 = icmp slt i32 %0, 0, !dbg !577
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !578
  br i1 %6, label %7, label %8, !dbg !579

7:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !580, !tbaa !205
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !580, !tbaa !214
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 280, i32 noundef 1) #7, !dbg !583
  br label %316, !dbg !583

8:                                                ; preds = %3
  switch i32 %0, label %12 [
    i32 0, label %9
    i32 1, label %10
  ], !dbg !585

9:                                                ; preds = %8
  store double 1.000000e+00, ptr %2, align 8, !dbg !586, !tbaa !205
  store double 0.000000e+00, ptr %5, align 8, !dbg !588, !tbaa !214
  br label %316, !dbg !589

10:                                               ; preds = %8
  %11 = fmul double %1, 2.000000e+00, !dbg !590
  store double %11, ptr %2, align 8, !dbg !592, !tbaa !205
  store double 0.000000e+00, ptr %5, align 8, !dbg !593, !tbaa !214
  br label %316, !dbg !594

12:                                               ; preds = %8
  %13 = fcmp oeq double %1, 0.000000e+00, !dbg !595
  br i1 %13, label %14, label %36, !dbg !596

14:                                               ; preds = %12
  %15 = and i32 %0, 1, !dbg !597
  %16 = icmp eq i32 %15, 0, !dbg !597
  br i1 %16, label %17, label %316, !dbg !598

17:                                               ; preds = %14
  %18 = icmp ult i32 %0, 269, !dbg !599
  br i1 %18, label %19, label %32, !dbg !600

19:                                               ; preds = %17
  %20 = lshr exact i32 %0, 1
  %21 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %20) #7, !dbg !601
  tail call void @llvm.dbg.value(metadata double %21, metadata !540, metadata !DIExpression()), !dbg !602
  %22 = add nsw i32 %0, -1, !dbg !603
  %23 = tail call i32 @gsl_sf_doublefact_e(i32 noundef %22, ptr noundef nonnull %2) #7, !dbg !604
  %24 = load double, ptr %2, align 8, !dbg !605, !tbaa !205
  %25 = fmul double %21, %24, !dbg !605
  store double %25, ptr %2, align 8, !dbg !605, !tbaa !205
  %26 = load double, ptr %5, align 8, !dbg !606, !tbaa !214
  %27 = fmul double %21, %26, !dbg !606
  store double %27, ptr %5, align 8, !dbg !606, !tbaa !214
  %28 = and i32 %0, 2, !dbg !607
  %29 = icmp eq i32 %28, 0, !dbg !607
  br i1 %29, label %316, label %30, !dbg !607

30:                                               ; preds = %19
  %31 = fneg double %25, !dbg !608
  store double %31, ptr %2, align 8, !dbg !609, !tbaa !205
  br label %316, !dbg !607

32:                                               ; preds = %17
  %33 = and i32 %0, 2, !dbg !610
  %34 = icmp eq i32 %33, 0, !dbg !610
  %35 = select i1 %34, double 0x7FF0000000000000, double 0xFFF0000000000000, !dbg !612
  store double %35, ptr %2, align 8, !dbg !613, !tbaa !205
  store double 0x7FF0000000000000, ptr %5, align 8, !dbg !614, !tbaa !214
  br label %316

36:                                               ; preds = %12
  %37 = icmp ult i32 %0, 100001, !dbg !615
  br i1 %37, label %40, label %38, !dbg !616

38:                                               ; preds = %36
  %39 = tail call double @llvm.fabs.f64(double %1), !dbg !617
  tail call void @llvm.dbg.value(metadata double 0xC002B471A873ADF9, metadata !560, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata double %39, metadata !562, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !563, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata i32 1, metadata !564, metadata !DIExpression()), !dbg !618
  br label %141, !dbg !619

40:                                               ; preds = %36
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !550, metadata !DIExpression()), !dbg !621
  %41 = fmul double %1, 2.000000e+00, !dbg !622
  tail call void @llvm.dbg.value(metadata double %41, metadata !553, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %41, metadata !554, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !555, metadata !DIExpression()), !dbg !621
  %42 = tail call double @llvm.fabs.f64(double %1), !dbg !623
  %43 = fmul double %42, 2.000000e+00, !dbg !624
  %44 = fmul double %43, 0x3CB0000000000000, !dbg !625
  tail call void @llvm.dbg.value(metadata double %44, metadata !556, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %44, metadata !557, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata i32 0, metadata !559, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata i32 1, metadata !558, metadata !DIExpression()), !dbg !621
  br label %45, !dbg !626

45:                                               ; preds = %40, %122
  %46 = phi double [ %102, %122 ], [ 1.000000e+00, %40 ]
  %47 = phi double [ %101, %122 ], [ %41, %40 ]
  %48 = phi i32 [ %100, %122 ], [ 0, %40 ]
  %49 = phi i32 [ %123, %122 ], [ 1, %40 ]
  %50 = phi double [ %99, %122 ], [ %44, %40 ]
  %51 = phi double [ %98, %122 ], [ 0x3CB0000000000000, %40 ]
  tail call void @llvm.dbg.value(metadata double %46, metadata !550, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %47, metadata !553, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !559, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !558, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %50, metadata !557, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %51, metadata !555, metadata !DIExpression()), !dbg !621
  %52 = tail call i32 @gsl_isnan(double noundef %47) #7, !dbg !628
  %53 = icmp eq i32 %52, 1, !dbg !632
  br i1 %53, label %125, label %54, !dbg !633

54:                                               ; preds = %45
  %55 = fmul double %41, %47, !dbg !634
  %56 = sitofp i32 %49 to double, !dbg !635
  %57 = fmul double %56, 2.000000e+00, !dbg !636
  %58 = fmul double %57, %46, !dbg !637
  %59 = fsub double %55, %58, !dbg !638
  tail call void @llvm.dbg.value(metadata double %59, metadata !554, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %47, metadata !550, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %59, metadata !553, metadata !DIExpression()), !dbg !621
  %60 = fmul double %42, %50, !dbg !639
  %61 = fmul double %51, %56, !dbg !640
  %62 = fadd double %60, %61, !dbg !641
  %63 = fmul double %62, 2.000000e+00, !dbg !642
  tail call void @llvm.dbg.value(metadata double %63, metadata !557, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %50, metadata !555, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %63, metadata !556, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !559, metadata !DIExpression()), !dbg !621
  %64 = tail call double @llvm.fabs.f64(double %47), !dbg !643
  %65 = tail call double @llvm.fabs.f64(double %59), !dbg !643
  %66 = fcmp olt double %64, %65, !dbg !643
  %67 = select i1 %66, double %64, double %65, !dbg !643
  %68 = fcmp ogt double %67, 0x2010000000000000, !dbg !644
  br i1 %68, label %69, label %91, !dbg !645

69:                                               ; preds = %54, %80
  %70 = phi double [ %87, %80 ], [ %65, %54 ]
  %71 = phi double [ %86, %80 ], [ %64, %54 ]
  %72 = phi double [ %81, %80 ], [ %47, %54 ]
  %73 = phi double [ %82, %80 ], [ %59, %54 ]
  %74 = phi i32 [ %85, %80 ], [ %48, %54 ]
  %75 = phi double [ %84, %80 ], [ %63, %54 ]
  %76 = phi double [ %83, %80 ], [ %50, %54 ]
  tail call void @llvm.dbg.value(metadata double %72, metadata !550, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %73, metadata !553, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !559, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %75, metadata !557, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %76, metadata !555, metadata !DIExpression()), !dbg !621
  %77 = fcmp ogt double %71, %70, !dbg !646
  %78 = select i1 %77, double %71, double %70, !dbg !646
  %79 = fcmp ogt double %78, 0x5FEFFFFFFFFFFFFF, !dbg !647
  br i1 %79, label %80, label %91, !dbg !648

80:                                               ; preds = %69
  %81 = fmul double %72, 5.000000e-01, !dbg !649
  tail call void @llvm.dbg.value(metadata double %81, metadata !550, metadata !DIExpression()), !dbg !621
  %82 = fmul double %73, 5.000000e-01, !dbg !651
  tail call void @llvm.dbg.value(metadata double %82, metadata !553, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %82, metadata !554, metadata !DIExpression()), !dbg !621
  %83 = fmul double %76, 5.000000e-01, !dbg !652
  tail call void @llvm.dbg.value(metadata double %83, metadata !555, metadata !DIExpression()), !dbg !621
  %84 = fmul double %75, 5.000000e-01, !dbg !653
  tail call void @llvm.dbg.value(metadata double %84, metadata !556, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %84, metadata !557, metadata !DIExpression()), !dbg !621
  %85 = add nsw i32 %74, 1, !dbg !654
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !559, metadata !DIExpression()), !dbg !621
  %86 = tail call double @llvm.fabs.f64(double %81), !dbg !643
  %87 = tail call double @llvm.fabs.f64(double %82), !dbg !643
  %88 = fcmp olt double %86, %87, !dbg !643
  %89 = select i1 %88, double %86, double %87, !dbg !643
  %90 = fcmp ogt double %89, 0x2010000000000000, !dbg !644
  br i1 %90, label %69, label %91, !dbg !645, !llvm.loop !655

91:                                               ; preds = %69, %80, %54
  %92 = phi double [ %50, %54 ], [ %76, %69 ], [ %83, %80 ]
  %93 = phi double [ %63, %54 ], [ %75, %69 ], [ %84, %80 ]
  %94 = phi i32 [ %48, %54 ], [ %74, %69 ], [ %85, %80 ]
  %95 = phi double [ %59, %54 ], [ %73, %69 ], [ %82, %80 ]
  %96 = phi double [ %47, %54 ], [ %72, %69 ], [ %81, %80 ]
  br label %97, !dbg !657

97:                                               ; preds = %91, %116
  %98 = phi double [ %119, %116 ], [ %92, %91 ], !dbg !658
  %99 = phi double [ %120, %116 ], [ %93, %91 ], !dbg !658
  %100 = phi i32 [ %121, %116 ], [ %94, %91 ], !dbg !621
  %101 = phi double [ %118, %116 ], [ %95, %91 ], !dbg !658
  %102 = phi double [ %117, %116 ], [ %96, %91 ], !dbg !658
  tail call void @llvm.dbg.value(metadata double %102, metadata !550, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %101, metadata !553, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %101, metadata !554, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !559, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %99, metadata !557, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %99, metadata !556, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %98, metadata !555, metadata !DIExpression()), !dbg !621
  %103 = tail call double @llvm.fabs.f64(double %102), !dbg !659
  %104 = fcmp olt double %103, 0x2000000000000000, !dbg !660
  %105 = fcmp une double %102, 0.000000e+00
  %106 = select i1 %104, i1 %105, i1 false, !dbg !661
  %107 = tail call double @llvm.fabs.f64(double %101), !dbg !662
  br i1 %106, label %112, label %108, !dbg !661

108:                                              ; preds = %97
  %109 = fcmp olt double %107, 0x2000000000000000, !dbg !663
  %110 = fcmp une double %101, 0.000000e+00
  %111 = select i1 %109, i1 %110, i1 false, !dbg !664
  br i1 %111, label %112, label %122, !dbg !664

112:                                              ; preds = %97, %108
  %113 = fcmp ogt double %103, %107, !dbg !665
  %114 = select i1 %113, double %103, double %107, !dbg !665
  %115 = fcmp olt double %114, 0x5FDFFFFFFFFFFFFF, !dbg !666
  br i1 %115, label %116, label %122, !dbg !657

116:                                              ; preds = %112
  %117 = fmul double %102, 2.000000e+00, !dbg !667
  tail call void @llvm.dbg.value(metadata double %117, metadata !550, metadata !DIExpression()), !dbg !621
  %118 = fmul double %101, 2.000000e+00, !dbg !669
  tail call void @llvm.dbg.value(metadata double %118, metadata !553, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %118, metadata !554, metadata !DIExpression()), !dbg !621
  %119 = fmul double %98, 2.000000e+00, !dbg !670
  tail call void @llvm.dbg.value(metadata double %119, metadata !555, metadata !DIExpression()), !dbg !621
  %120 = fmul double %99, 2.000000e+00, !dbg !671
  tail call void @llvm.dbg.value(metadata double %120, metadata !556, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %120, metadata !557, metadata !DIExpression()), !dbg !621
  %121 = add nsw i32 %100, -1, !dbg !672
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !559, metadata !DIExpression()), !dbg !621
  br label %97, !dbg !657, !llvm.loop !673

122:                                              ; preds = %112, %108
  %123 = add nuw nsw i32 %49, 1, !dbg !675
  tail call void @llvm.dbg.value(metadata double %102, metadata !550, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %101, metadata !553, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %101, metadata !554, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !559, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata i32 %123, metadata !558, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %99, metadata !557, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %99, metadata !556, metadata !DIExpression()), !dbg !621
  tail call void @llvm.dbg.value(metadata double %98, metadata !555, metadata !DIExpression()), !dbg !621
  %124 = icmp eq i32 %123, %0, !dbg !676
  br i1 %124, label %125, label %45, !dbg !626, !llvm.loop !677

125:                                              ; preds = %122, %45
  %126 = phi double [ %99, %122 ], [ %50, %45 ]
  %127 = phi i32 [ %100, %122 ], [ %48, %45 ]
  %128 = phi double [ %101, %122 ], [ %47, %45 ]
  %129 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %127) #7, !dbg !679
  %130 = fmul double %128, %129, !dbg !680
  store double %130, ptr %2, align 8, !dbg !681, !tbaa !205
  %131 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %127) #7, !dbg !682
  %132 = fmul double %126, %131, !dbg !683
  %133 = load double, ptr %2, align 8, !dbg !684, !tbaa !205
  %134 = tail call double @llvm.fabs.f64(double %133), !dbg !685
  %135 = fmul double %134, 0x3CB0000000000000, !dbg !686
  %136 = fadd double %132, %135, !dbg !687
  store double %136, ptr %5, align 8, !dbg !688, !tbaa !214
  %137 = tail call i32 @gsl_isnan(double noundef %133) #7, !dbg !689
  %138 = icmp eq i32 %137, 1, !dbg !691
  br i1 %138, label %139, label %316

139:                                              ; preds = %125
  tail call void @llvm.dbg.value(metadata double 0xC002B471A873ADF9, metadata !560, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata double %42, metadata !562, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !563, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata i32 1, metadata !564, metadata !DIExpression()), !dbg !618
  %140 = icmp eq i32 %0, 0, !dbg !692
  br i1 %140, label %185, label %141, !dbg !619

141:                                              ; preds = %38, %139
  %142 = phi double [ %39, %38 ], [ %42, %139 ]
  %143 = tail call i32 @llvm.smax.i32(i32 %0, i32 1), !dbg !619
  %144 = and i32 %143, 3, !dbg !619
  %145 = icmp slt i32 %0, 4, !dbg !619
  br i1 %145, label %170, label %146, !dbg !619

146:                                              ; preds = %141
  %147 = and i32 %143, 2147483644, !dbg !619
  br label %148, !dbg !619

148:                                              ; preds = %148, %146
  %149 = phi i32 [ 1, %146 ], [ %167, %148 ]
  %150 = phi double [ 1.000000e+00, %146 ], [ %166, %148 ]
  %151 = phi i32 [ 0, %146 ], [ %168, %148 ]
  tail call void @llvm.dbg.value(metadata i32 %149, metadata !564, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata double %150, metadata !563, metadata !DIExpression()), !dbg !618
  %152 = sitofp i32 %149 to double, !dbg !694
  %153 = tail call double @sqrt(double noundef %152) #7, !dbg !696
  %154 = fmul double %150, %153, !dbg !697
  tail call void @llvm.dbg.value(metadata double %154, metadata !563, metadata !DIExpression()), !dbg !618
  %155 = add nuw nsw i32 %149, 1, !dbg !698
  tail call void @llvm.dbg.value(metadata i32 %155, metadata !564, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata i32 %155, metadata !564, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata double %154, metadata !563, metadata !DIExpression()), !dbg !618
  %156 = sitofp i32 %155 to double, !dbg !694
  %157 = tail call double @sqrt(double noundef %156) #7, !dbg !696
  %158 = fmul double %154, %157, !dbg !697
  tail call void @llvm.dbg.value(metadata double %158, metadata !563, metadata !DIExpression()), !dbg !618
  %159 = add nuw nsw i32 %149, 2, !dbg !698
  tail call void @llvm.dbg.value(metadata i32 %159, metadata !564, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata i32 %159, metadata !564, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata double %158, metadata !563, metadata !DIExpression()), !dbg !618
  %160 = sitofp i32 %159 to double, !dbg !694
  %161 = tail call double @sqrt(double noundef %160) #7, !dbg !696
  %162 = fmul double %158, %161, !dbg !697
  tail call void @llvm.dbg.value(metadata double %162, metadata !563, metadata !DIExpression()), !dbg !618
  %163 = add nuw i32 %149, 3, !dbg !698
  tail call void @llvm.dbg.value(metadata i32 %163, metadata !564, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata i32 %163, metadata !564, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata double %162, metadata !563, metadata !DIExpression()), !dbg !618
  %164 = sitofp i32 %163 to double, !dbg !694
  %165 = tail call double @sqrt(double noundef %164) #7, !dbg !696
  %166 = fmul double %162, %165, !dbg !697
  tail call void @llvm.dbg.value(metadata double %166, metadata !563, metadata !DIExpression()), !dbg !618
  %167 = add nuw i32 %149, 4, !dbg !698
  tail call void @llvm.dbg.value(metadata i32 %167, metadata !564, metadata !DIExpression()), !dbg !618
  %168 = add i32 %151, 4, !dbg !619
  %169 = icmp eq i32 %168, %147, !dbg !619
  br i1 %169, label %170, label %148, !dbg !619, !llvm.loop !699

170:                                              ; preds = %148, %141
  %171 = phi double [ undef, %141 ], [ %166, %148 ]
  %172 = phi i32 [ 1, %141 ], [ %167, %148 ]
  %173 = phi double [ 1.000000e+00, %141 ], [ %166, %148 ]
  %174 = icmp eq i32 %144, 0, !dbg !619
  br i1 %174, label %185, label %175, !dbg !619

175:                                              ; preds = %170, %175
  %176 = phi i32 [ %182, %175 ], [ %172, %170 ]
  %177 = phi double [ %181, %175 ], [ %173, %170 ]
  %178 = phi i32 [ %183, %175 ], [ 0, %170 ]
  tail call void @llvm.dbg.value(metadata i32 %176, metadata !564, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata double %177, metadata !563, metadata !DIExpression()), !dbg !618
  %179 = sitofp i32 %176 to double, !dbg !694
  %180 = tail call double @sqrt(double noundef %179) #7, !dbg !696
  %181 = fmul double %177, %180, !dbg !697
  tail call void @llvm.dbg.value(metadata double %181, metadata !563, metadata !DIExpression()), !dbg !618
  %182 = add nuw i32 %176, 1, !dbg !698
  tail call void @llvm.dbg.value(metadata i32 %182, metadata !564, metadata !DIExpression()), !dbg !618
  %183 = add i32 %178, 1, !dbg !619
  %184 = icmp eq i32 %183, %144, !dbg !619
  br i1 %184, label %185, label %175, !dbg !619, !llvm.loop !701

185:                                              ; preds = %170, %175, %139
  %186 = phi double [ %42, %139 ], [ %142, %175 ], [ %142, %170 ]
  %187 = phi double [ 1.000000e+00, %139 ], [ %171, %170 ], [ %181, %175 ], !dbg !618
  %188 = shl nuw nsw i32 %0, 1, !dbg !702
  %189 = or disjoint i32 %188, 1, !dbg !703
  %190 = sitofp i32 %189 to double, !dbg !703
  %191 = tail call double @sqrt(double noundef %190) #7, !dbg !704
  %192 = sitofp i32 %0 to double, !dbg !705
  %193 = tail call double @pow(double noundef %192, double noundef 0x3FC5555555555555) #7, !dbg !706
  %194 = fdiv double 0x3FFA73E1E5E90639, %193, !dbg !707
  %195 = fsub double %191, %194, !dbg !708
  %196 = fcmp olt double %186, %195, !dbg !709
  %197 = tail call double @sqrt(double noundef %190) #7, !dbg !710
  br i1 %196, label %198, label %234, !dbg !711

198:                                              ; preds = %185
  %199 = fdiv double %186, %197, !dbg !712
  %200 = tail call double @acos(double noundef %199) #7, !dbg !713
  tail call void @llvm.dbg.value(metadata double %200, metadata !565, metadata !DIExpression()), !dbg !714
  %201 = and i32 %0, 1, !dbg !715
  %202 = icmp ne i32 %201, 0, !dbg !715
  %203 = fcmp olt double %1, 0.000000e+00, !dbg !716
  %204 = and i1 %202, %203, !dbg !716
  %205 = fneg double %187, !dbg !717
  %206 = select i1 %204, double %205, double %187, !dbg !717
  %207 = select i1 %202, double 0x3FF6A09E667F3BCD, double 1.000000e+00, !dbg !718
  %208 = fmul double %207, %206, !dbg !719
  %209 = lshr i32 %0, 1
  %210 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %209) #7, !dbg !720
  %211 = fmul double %208, %210, !dbg !721
  %212 = fdiv double 2.000000e+00, %192, !dbg !722
  %213 = tail call double @pow(double noundef %212, double noundef 2.500000e-01) #7, !dbg !723
  %214 = fmul double %211, %213, !dbg !724
  %215 = tail call double @sin(double noundef %200) #7, !dbg !725
  %216 = fmul double %215, 0x3FFC5BF891B4EF6B, !dbg !726
  %217 = tail call double @sqrt(double noundef %216) #7, !dbg !727
  %218 = fdiv double %214, %217, !dbg !728
  %219 = fmul double %192, 5.000000e-01, !dbg !729
  %220 = fadd double %219, 2.500000e-01, !dbg !730
  %221 = fmul double %200, 2.000000e+00, !dbg !731
  %222 = tail call double @sin(double noundef %221) #7, !dbg !732
  %223 = fsub double %222, %221, !dbg !733
  %224 = fmul double %220, %223, !dbg !734
  %225 = fadd double %224, 0x4002D97C7F3321D2, !dbg !735
  %226 = tail call double @sin(double noundef %225) #7, !dbg !736
  %227 = fmul double %218, %226, !dbg !737
  %228 = fmul double %186, 5.000000e-01, !dbg !738
  %229 = fmul double %186, %228, !dbg !739
  %230 = tail call double @exp(double noundef %229) #7, !dbg !740
  %231 = fmul double %227, %230, !dbg !741
  store double %231, ptr %2, align 8, !dbg !742, !tbaa !205
  %232 = tail call double @llvm.fabs.f64(double %231), !dbg !743
  %233 = fmul double %232, 0x3CC0000000000000, !dbg !744
  store double %233, ptr %5, align 8, !dbg !745, !tbaa !214
  br label %316

234:                                              ; preds = %185
  %235 = tail call double @pow(double noundef %192, double noundef 0x3FC5555555555555) #7, !dbg !746
  %236 = fdiv double 0x3FFA73E1E5E90639, %235, !dbg !747
  %237 = fadd double %197, %236, !dbg !748
  %238 = fcmp ogt double %186, %237, !dbg !749
  br i1 %238, label %239, label %274, !dbg !750

239:                                              ; preds = %234
  %240 = tail call double @sqrt(double noundef %190) #7, !dbg !751
  %241 = fdiv double %186, %240, !dbg !752
  %242 = tail call double @acosh(double noundef %241) #7, !dbg !753
  tail call void @llvm.dbg.value(metadata double %242, metadata !568, metadata !DIExpression()), !dbg !754
  %243 = and i32 %0, 1, !dbg !755
  %244 = icmp ne i32 %243, 0, !dbg !755
  %245 = fcmp olt double %1, 0.000000e+00, !dbg !756
  %246 = and i1 %244, %245, !dbg !756
  %247 = fneg double %187, !dbg !757
  %248 = select i1 %246, double %247, double %187, !dbg !757
  %249 = select i1 %244, double 1.000000e+00, double 0x3FE6A09E667F3BCD, !dbg !758
  %250 = fmul double %249, %248, !dbg !759
  %251 = lshr i32 %0, 1
  %252 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %251) #7, !dbg !760
  %253 = fmul double %250, %252, !dbg !761
  %254 = tail call double @pow(double noundef %192, double noundef -2.500000e-01) #7, !dbg !762
  %255 = fmul double %253, %254, !dbg !763
  %256 = tail call double @sinh(double noundef %242) #7, !dbg !764
  %257 = fmul double %256, 0x40040D931FF62706, !dbg !765
  %258 = tail call double @sqrt(double noundef %257) #7, !dbg !766
  %259 = fdiv double %255, %258, !dbg !767
  %260 = fmul double %192, 5.000000e-01, !dbg !768
  %261 = fadd double %260, 2.500000e-01, !dbg !769
  %262 = fmul double %242, 2.000000e+00, !dbg !770
  %263 = tail call double @sinh(double noundef %262) #7, !dbg !771
  %264 = fsub double %262, %263, !dbg !772
  %265 = fmul double %261, %264, !dbg !773
  %266 = tail call double @exp(double noundef %265) #7, !dbg !774
  %267 = fmul double %259, %266, !dbg !775
  %268 = fmul double %186, 5.000000e-01, !dbg !776
  %269 = fmul double %186, %268, !dbg !777
  %270 = tail call double @exp(double noundef %269) #7, !dbg !778
  %271 = fmul double %267, %270, !dbg !779
  store double %271, ptr %2, align 8, !dbg !780, !tbaa !205
  %272 = tail call double @llvm.fabs.f64(double %271), !dbg !781
  %273 = fmul double %272, 0x3CC0000000000000, !dbg !782
  store double %273, ptr %5, align 8, !dbg !783, !tbaa !214
  br label %316

274:                                              ; preds = %234
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !784
  %275 = tail call double @sqrt(double noundef %190) #7, !dbg !785
  %276 = fsub double %186, %275, !dbg !786
  %277 = fmul double %276, 0x3FF6A09E667F3BCD, !dbg !787
  %278 = tail call double @pow(double noundef %192, double noundef 0x3FC5555555555555) #7, !dbg !788
  %279 = fmul double %278, %277, !dbg !789
  %280 = call i32 @gsl_sf_airy_Ai_e(double noundef %279, i32 noundef 0, ptr noundef nonnull %4) #7, !dbg !790
  %281 = and i32 %0, 1, !dbg !791
  %282 = icmp ne i32 %281, 0, !dbg !791
  %283 = fcmp olt double %1, 0.000000e+00, !dbg !792
  %284 = and i1 %282, %283, !dbg !792
  %285 = fneg double %187, !dbg !793
  %286 = select i1 %284, double %285, double %187, !dbg !793
  %287 = select i1 %282, double 0x3FF6A09E667F3BCD, double 1.000000e+00, !dbg !794
  %288 = fmul double %287, %286, !dbg !795
  %289 = fmul double %288, 0x3FF954ECA30F7937, !dbg !796
  %290 = lshr i32 %0, 1
  %291 = call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %290) #7, !dbg !797
  %292 = fmul double %289, %291, !dbg !798
  %293 = call double @pow(double noundef %192, double noundef 0xBFB5555555555555) #7, !dbg !799
  %294 = fmul double %292, %293, !dbg !800
  %295 = load double, ptr %4, align 8, !dbg !801, !tbaa !205
  %296 = fmul double %294, %295, !dbg !802
  %297 = fmul double %186, 5.000000e-01, !dbg !803
  %298 = fmul double %186, %297, !dbg !804
  %299 = call double @exp(double noundef %298) #7, !dbg !805
  %300 = fmul double %296, %299, !dbg !806
  store double %300, ptr %2, align 8, !dbg !807, !tbaa !205
  %301 = fmul double %287, %187, !dbg !808
  %302 = call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %290) #7, !dbg !809
  %303 = fmul double %301, %302, !dbg !810
  %304 = fmul double %303, 0x3FF954ECA30F7937, !dbg !811
  %305 = call double @pow(double noundef %192, double noundef 0xBFB5555555555555) #7, !dbg !812
  %306 = fmul double %305, %304, !dbg !813
  %307 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !814
  %308 = load double, ptr %307, align 8, !dbg !814, !tbaa !214
  %309 = fmul double %308, %306, !dbg !815
  %310 = call double @exp(double noundef %298) #7, !dbg !816
  %311 = fmul double %310, %309, !dbg !817
  %312 = load double, ptr %2, align 8, !dbg !818, !tbaa !205
  %313 = call double @llvm.fabs.f64(double %312), !dbg !819
  %314 = fmul double %313, 0x3CB0000000000000, !dbg !820
  %315 = fadd double %311, %314, !dbg !821
  store double %315, ptr %5, align 8, !dbg !822, !tbaa !214
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !823
  br label %316

316:                                              ; preds = %14, %125, %198, %239, %274, %32, %19, %30, %10, %9, %7
  %317 = phi i32 [ 1, %7 ], [ 0, %9 ], [ 0, %10 ], [ 0, %125 ], [ 0, %30 ], [ 0, %19 ], [ 0, %32 ], [ 0, %274 ], [ 0, %239 ], [ 0, %198 ], [ 0, %14 ], !dbg !575
  ret i32 %317, !dbg !824
}

declare !dbg !825 double @gsl_sf_pow_int(double noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !829 i32 @gsl_sf_doublefact_e(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !832 i32 @gsl_isnan(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !836 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !840 double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !843 double @acos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !844 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !845 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !846 double @acosh(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !847 double @sinh(double noundef) local_unnamed_addr #4

declare !dbg !848 i32 @gsl_sf_airy_Ai_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_phys(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !855 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !861
  call void @llvm.dbg.assign(metadata i1 undef, metadata !859, metadata !DIExpression(), metadata !861, metadata ptr %3, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !857, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double %1, metadata !858, metadata !DIExpression()), !dbg !862
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !863
  %4 = call i32 @gsl_sf_hermite_phys_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !863, !range !864
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !860, metadata !DIExpression()), !dbg !862
  %5 = icmp eq i32 %4, 0, !dbg !865
  br i1 %5, label %7, label %6, !dbg !863

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, i32 noundef 1) #7, !dbg !867
  br label %7, !dbg !867

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !863, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !870
  ret double %8, !dbg !870
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_phys_der_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !871 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !882
  call void @llvm.dbg.assign(metadata i1 undef, metadata !881, metadata !DIExpression(), metadata !882, metadata ptr %5, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !873, metadata !DIExpression()), !dbg !884
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !874, metadata !DIExpression()), !dbg !884
  tail call void @llvm.dbg.value(metadata double %2, metadata !875, metadata !DIExpression()), !dbg !884
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !876, metadata !DIExpression()), !dbg !884
  %6 = or i32 %1, %0, !dbg !885
  %7 = icmp sgt i32 %6, -1, !dbg !885
  br i1 %7, label %10, label %8, !dbg !885

8:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !886, !tbaa !205
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !886
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !886, !tbaa !214
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 1) #7, !dbg !889
  br label %30, !dbg !889

10:                                               ; preds = %4
  %11 = icmp slt i32 %1, %0, !dbg !891
  br i1 %11, label %12, label %13, !dbg !892

12:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !893
  br label %30, !dbg !895

13:                                               ; preds = %10
  %14 = tail call double @gsl_sf_choose(i32 noundef %1, i32 noundef %0) #7, !dbg !896
  %15 = tail call double @gsl_sf_fact(i32 noundef %0) #7, !dbg !897
  %16 = fmul double %14, %15, !dbg !898
  %17 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %0) #7, !dbg !899
  %18 = fmul double %16, %17, !dbg !900
  tail call void @llvm.dbg.value(metadata double %18, metadata !877, metadata !DIExpression()), !dbg !883
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !901
  %19 = sub nsw i32 %1, %0, !dbg !902
  %20 = call i32 @gsl_sf_hermite_phys_e(i32 noundef %19, double noundef %2, ptr noundef nonnull %5), !dbg !903, !range !864
  %21 = load double, ptr %5, align 8, !dbg !904, !tbaa !205
  %22 = fmul double %18, %21, !dbg !905
  store double %22, ptr %3, align 8, !dbg !906, !tbaa !205
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !907
  %24 = load double, ptr %23, align 8, !dbg !907, !tbaa !214
  %25 = fmul double %18, %24, !dbg !908
  %26 = call double @llvm.fabs.f64(double %22), !dbg !909
  %27 = fmul double %26, 0x3CB0000000000000, !dbg !910
  %28 = fadd double %25, %27, !dbg !911
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !912
  store double %28, ptr %29, align 8, !dbg !913, !tbaa !214
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !914
  br label %30

30:                                               ; preds = %8, %12, %13
  %31 = phi i32 [ 1, %8 ], [ 0, %12 ], [ 0, %13 ], !dbg !915
  ret i32 %31, !dbg !916
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_phys_der(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !917 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !924
  call void @llvm.dbg.assign(metadata i1 undef, metadata !922, metadata !DIExpression(), metadata !924, metadata ptr %4, metadata !DIExpression()), !dbg !925
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !919, metadata !DIExpression()), !dbg !925
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !920, metadata !DIExpression()), !dbg !925
  tail call void @llvm.dbg.value(metadata double %2, metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !926
  %5 = call i32 @gsl_sf_hermite_phys_der_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !926, !range !864
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !923, metadata !DIExpression()), !dbg !925
  %6 = icmp eq i32 %5, 0, !dbg !927
  br i1 %6, label %8, label %7, !dbg !926

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 460, i32 noundef 1) #7, !dbg !929
  br label %8, !dbg !929

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !926, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !932
  ret double %9, !dbg !932
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_func_e(i32 noundef %0, double noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !933 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !972
  call void @llvm.dbg.assign(metadata i1 undef, metadata !950, metadata !DIExpression(), metadata !972, metadata ptr %4, metadata !DIExpression()), !dbg !973
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !974
  call void @llvm.dbg.assign(metadata i1 undef, metadata !970, metadata !DIExpression(), metadata !974, metadata ptr %5, metadata !DIExpression()), !dbg !975
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !935, metadata !DIExpression()), !dbg !976
  tail call void @llvm.dbg.value(metadata double %1, metadata !936, metadata !DIExpression()), !dbg !976
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !937, metadata !DIExpression()), !dbg !976
  %6 = icmp slt i32 %0, 0, !dbg !977
  br i1 %6, label %7, label %9, !dbg !978

7:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !979, !tbaa !205
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !979
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !979, !tbaa !214
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 478, i32 noundef 1) #7, !dbg !982
  br label %281, !dbg !982

9:                                                ; preds = %3
  %10 = icmp eq i32 %0, 0, !dbg !984
  %11 = fcmp une double %1, 0.000000e+00
  %12 = and i1 %10, %11, !dbg !985
  br i1 %12, label %13, label %21, !dbg !985

13:                                               ; preds = %9
  %14 = fmul double %1, -5.000000e-01, !dbg !986
  %15 = fmul double %14, %1, !dbg !988
  %16 = tail call double @exp(double noundef %15) #7, !dbg !989
  %17 = fdiv double %16, 0x3FF54D264F787EB7, !dbg !990
  store double %17, ptr %2, align 8, !dbg !991, !tbaa !205
  %18 = tail call double @llvm.fabs.f64(double %17), !dbg !992
  %19 = fmul double %18, 0x3CB0000000000000, !dbg !993
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !994
  store double %19, ptr %20, align 8, !dbg !995, !tbaa !214
  br label %281, !dbg !996

21:                                               ; preds = %9
  %22 = icmp eq i32 %0, 1, !dbg !997
  %23 = and i1 %22, %11, !dbg !998
  br i1 %23, label %24, label %34, !dbg !998

24:                                               ; preds = %21
  %25 = fmul double %1, 0x3FF6A09E667F3BCD, !dbg !999
  %26 = fmul double %1, -5.000000e-01, !dbg !1001
  %27 = fmul double %26, %1, !dbg !1002
  %28 = tail call double @exp(double noundef %27) #7, !dbg !1003
  %29 = fmul double %25, %28, !dbg !1004
  %30 = fdiv double %29, 0x3FF54D264F787EB7, !dbg !1005
  store double %30, ptr %2, align 8, !dbg !1006, !tbaa !205
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !1007
  %32 = fmul double %31, 0x3CB0000000000000, !dbg !1008
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1009
  store double %32, ptr %33, align 8, !dbg !1010, !tbaa !214
  br label %281, !dbg !1011

34:                                               ; preds = %21
  %35 = fcmp oeq double %1, 0.000000e+00, !dbg !1012
  br i1 %35, label %36, label %61, !dbg !1013

36:                                               ; preds = %34
  %37 = and i32 %0, 1, !dbg !1014
  %38 = icmp eq i32 %37, 0, !dbg !1014
  br i1 %38, label %40, label %39, !dbg !1015

39:                                               ; preds = %36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1016
  br label %281, !dbg !1018

40:                                               ; preds = %36
  %41 = and i32 %0, 2, !dbg !1019
  %42 = icmp eq i32 %41, 0, !dbg !1019
  %43 = select i1 %42, double 1.000000e+00, double -1.000000e+00, !dbg !1019
  tail call void @llvm.dbg.value(metadata double %43, metadata !938, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata i32 1, metadata !946, metadata !DIExpression()), !dbg !1020
  %44 = icmp ugt i32 %0, 1, !dbg !1021
  br i1 %44, label %45, label %55, !dbg !1024

45:                                               ; preds = %40, %45
  %46 = phi double [ %52, %45 ], [ %43, %40 ]
  %47 = phi i32 [ %53, %45 ], [ 1, %40 ]
  tail call void @llvm.dbg.value(metadata double %46, metadata !938, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !946, metadata !DIExpression()), !dbg !1020
  %48 = sitofp i32 %47 to double, !dbg !1025
  %49 = fadd double %48, 1.000000e+00, !dbg !1027
  %50 = fdiv double %48, %49, !dbg !1028
  %51 = tail call double @sqrt(double noundef %50) #7, !dbg !1029
  %52 = fmul double %46, %51, !dbg !1030
  tail call void @llvm.dbg.value(metadata double %52, metadata !938, metadata !DIExpression()), !dbg !1020
  %53 = add nuw nsw i32 %47, 2, !dbg !1031
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !946, metadata !DIExpression()), !dbg !1020
  %54 = icmp slt i32 %53, %0, !dbg !1021
  br i1 %54, label %45, label %55, !dbg !1024, !llvm.loop !1032

55:                                               ; preds = %45, %40
  %56 = phi double [ %43, %40 ], [ %52, %45 ], !dbg !1020
  %57 = fdiv double %56, 0x3FF54D264F787EB7, !dbg !1034
  store double %57, ptr %2, align 8, !dbg !1035, !tbaa !205
  %58 = tail call double @llvm.fabs.f64(double %57), !dbg !1036
  %59 = fmul double %58, 0x3CB0000000000000, !dbg !1037
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1038
  store double %59, ptr %60, align 8, !dbg !1039, !tbaa !214
  br label %281

61:                                               ; preds = %34
  %62 = icmp ult i32 %0, 100001, !dbg !1040
  br i1 %62, label %63, label %92, !dbg !1041

63:                                               ; preds = %61
  %64 = fmul double %1, -5.000000e-01, !dbg !1042
  %65 = fmul double %64, %1, !dbg !1043
  %66 = tail call double @exp(double noundef %65) #7, !dbg !1044
  %67 = tail call double @gsl_sf_fact(i32 noundef %0) #7, !dbg !1045
  %68 = fmul double %67, 0x3FFC5BF891B4EF6B, !dbg !1046
  %69 = tail call double @sqrt(double noundef %68) #7, !dbg !1047
  %70 = fdiv double %66, %69, !dbg !1048
  tail call void @llvm.dbg.value(metadata double %70, metadata !947, metadata !DIExpression()), !dbg !973
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1049
  %71 = fmul double %1, 0x3FF6A09E667F3BCD, !dbg !1050
  %72 = call fastcc i32 @gsl_sf_hermite_prob_iter_e(i32 noundef %0, double noundef %71, ptr noundef nonnull %4), !dbg !1051, !range !153
  %73 = load double, ptr %4, align 8, !dbg !1052, !tbaa !205
  %74 = fmul double %70, %73, !dbg !1053
  store double %74, ptr %2, align 8, !dbg !1054, !tbaa !205
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1055
  %76 = load double, ptr %75, align 8, !dbg !1055, !tbaa !214
  %77 = fmul double %70, %76, !dbg !1056
  %78 = call double @llvm.fabs.f64(double %74), !dbg !1057
  %79 = fmul double %78, 0x3CB0000000000000, !dbg !1058
  %80 = fadd double %77, %79, !dbg !1059
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1060
  store double %80, ptr %81, align 8, !dbg !1061, !tbaa !214
  %82 = call i32 @gsl_isnan(double noundef %74) #7, !dbg !1062
  %83 = icmp ne i32 %82, 1, !dbg !1064
  %84 = fcmp ogt double %70, 0x10000000000000
  %85 = select i1 %83, i1 %84, i1 false, !dbg !1065
  br i1 %85, label %86, label %90, !dbg !1065

86:                                               ; preds = %63
  %87 = load double, ptr %4, align 8, !dbg !1066, !tbaa !205
  %88 = call i32 @gsl_finite(double noundef %87) #7, !dbg !1067
  %89 = icmp eq i32 %88, 1, !dbg !1068
  br i1 %89, label %91, label %90, !dbg !1069

90:                                               ; preds = %63, %86
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1070
  br label %92

91:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1070
  br label %281

92:                                               ; preds = %90, %61
  %93 = fneg double %1, !dbg !1071
  %94 = fmul double %93, %1, !dbg !1072
  %95 = fmul double %94, 5.000000e-01, !dbg !1073
  %96 = sitofp i32 %0 to double, !dbg !1074
  %97 = fdiv double %95, %96, !dbg !1075
  %98 = call double @exp(double noundef %97) #7, !dbg !1076
  tail call void @llvm.dbg.value(metadata double %98, metadata !951, metadata !DIExpression()), !dbg !1077
  %99 = fdiv double %98, 0x3FF54D264F787EB7, !dbg !1078
  tail call void @llvm.dbg.value(metadata double %99, metadata !953, metadata !DIExpression()), !dbg !1077
  %100 = fmul double %99, 0x3FF6A09E667F3BCD, !dbg !1079
  %101 = fmul double %100, %1, !dbg !1080
  tail call void @llvm.dbg.value(metadata double poison, metadata !957, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !958, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata i32 0, metadata !960, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata i32 1, metadata !959, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !956, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %101, metadata !955, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %101, metadata !954, metadata !DIExpression()), !dbg !1077
  %102 = icmp ugt i32 %0, 1, !dbg !1081
  br i1 %102, label %103, label %176, !dbg !1084

103:                                              ; preds = %92
  tail call void @llvm.dbg.value(metadata double poison, metadata !957, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !958, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !956, metadata !DIExpression()), !dbg !1077
  %104 = fmul double %1, 0x3FF6A09E667F3BCD
  br label %105, !dbg !1084

105:                                              ; preds = %103, %173
  %106 = phi i32 [ 0, %103 ], [ %155, %173 ]
  %107 = phi i32 [ 1, %103 ], [ %174, %173 ]
  %108 = phi double [ %101, %103 ], [ %154, %173 ]
  %109 = phi double [ %99, %103 ], [ %153, %173 ]
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !960, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !959, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !957, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !956, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %108, metadata !955, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %109, metadata !953, metadata !DIExpression()), !dbg !1077
  %110 = call i32 @gsl_isnan(double noundef %108) #7, !dbg !1085
  %111 = icmp eq i32 %110, 1, !dbg !1088
  br i1 %111, label %176, label %112, !dbg !1089

112:                                              ; preds = %105
  %113 = fmul double %104, %108, !dbg !1090
  %114 = sitofp i32 %107 to double, !dbg !1091
  %115 = call double @sqrt(double noundef %114) #7, !dbg !1092
  %116 = fmul double %109, %115, !dbg !1093
  %117 = fsub double %113, %116, !dbg !1094
  %118 = fmul double %98, %117, !dbg !1095
  %119 = fadd double %114, 1.000000e+00, !dbg !1096
  %120 = call double @sqrt(double noundef %119) #7, !dbg !1097
  %121 = fdiv double %118, %120, !dbg !1098
  tail call void @llvm.dbg.value(metadata double %121, metadata !955, metadata !DIExpression()), !dbg !1077
  %122 = fmul double %98, %108, !dbg !1099
  tail call void @llvm.dbg.value(metadata double %122, metadata !953, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %121, metadata !954, metadata !DIExpression()), !dbg !1077
  %123 = call double @sqrt(double noundef %114) #7, !dbg !1100
  %124 = call double @sqrt(double noundef %119) #7, !dbg !1101
  tail call void @llvm.dbg.value(metadata double poison, metadata !958, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !956, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !957, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !960, metadata !DIExpression()), !dbg !1077
  %125 = call double @llvm.fabs.f64(double %122), !dbg !1102
  %126 = call double @llvm.fabs.f64(double %121), !dbg !1102
  %127 = fcmp olt double %125, %126, !dbg !1102
  %128 = select i1 %127, double %125, double %126, !dbg !1102
  %129 = fcmp ogt double %128, 0x2010000000000000, !dbg !1103
  br i1 %129, label %130, label %148, !dbg !1104

130:                                              ; preds = %112, %139
  %131 = phi double [ %144, %139 ], [ %126, %112 ]
  %132 = phi double [ %143, %139 ], [ %125, %112 ]
  %133 = phi i32 [ %142, %139 ], [ %106, %112 ]
  %134 = phi double [ %141, %139 ], [ %121, %112 ]
  %135 = phi double [ %140, %139 ], [ %122, %112 ]
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !960, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !957, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !956, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %134, metadata !955, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %135, metadata !953, metadata !DIExpression()), !dbg !1077
  %136 = fcmp ogt double %132, %131, !dbg !1105
  %137 = select i1 %136, double %132, double %131, !dbg !1105
  %138 = fcmp ogt double %137, 0x5FEFFFFFFFFFFFFF, !dbg !1106
  br i1 %138, label %139, label %148, !dbg !1107

139:                                              ; preds = %130
  %140 = fmul double %135, 5.000000e-01, !dbg !1108
  tail call void @llvm.dbg.value(metadata double %140, metadata !953, metadata !DIExpression()), !dbg !1077
  %141 = fmul double %134, 5.000000e-01, !dbg !1110
  tail call void @llvm.dbg.value(metadata double %141, metadata !954, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %141, metadata !955, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !956, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !957, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !958, metadata !DIExpression()), !dbg !1077
  %142 = add nsw i32 %133, 1, !dbg !1111
  tail call void @llvm.dbg.value(metadata i32 %142, metadata !960, metadata !DIExpression()), !dbg !1077
  %143 = call double @llvm.fabs.f64(double %140), !dbg !1102
  %144 = call double @llvm.fabs.f64(double %141), !dbg !1102
  %145 = fcmp olt double %143, %144, !dbg !1102
  %146 = select i1 %145, double %143, double %144, !dbg !1102
  %147 = fcmp ogt double %146, 0x2010000000000000, !dbg !1103
  br i1 %147, label %130, label %148, !dbg !1104, !llvm.loop !1112

148:                                              ; preds = %130, %139, %112
  %149 = phi double [ %122, %112 ], [ %135, %130 ], [ %140, %139 ]
  %150 = phi double [ %121, %112 ], [ %134, %130 ], [ %141, %139 ]
  %151 = phi i32 [ %106, %112 ], [ %133, %130 ], [ %142, %139 ]
  br label %152, !dbg !1114

152:                                              ; preds = %148, %169
  %153 = phi double [ %170, %169 ], [ %149, %148 ], !dbg !1115
  %154 = phi double [ %171, %169 ], [ %150, %148 ], !dbg !1115
  %155 = phi i32 [ %172, %169 ], [ %151, %148 ], !dbg !1077
  tail call void @llvm.dbg.value(metadata i32 %155, metadata !960, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !957, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !956, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %154, metadata !955, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %154, metadata !954, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %153, metadata !953, metadata !DIExpression()), !dbg !1077
  %156 = call double @llvm.fabs.f64(double %153), !dbg !1116
  %157 = fcmp olt double %156, 0x2000000000000000, !dbg !1117
  %158 = fcmp une double %153, 0.000000e+00
  %159 = select i1 %157, i1 %158, i1 false, !dbg !1118
  %160 = call double @llvm.fabs.f64(double %154), !dbg !1119
  br i1 %159, label %165, label %161, !dbg !1118

161:                                              ; preds = %152
  %162 = fcmp olt double %160, 0x2000000000000000, !dbg !1120
  %163 = fcmp une double %154, 0.000000e+00
  %164 = select i1 %162, i1 %163, i1 false, !dbg !1121
  br i1 %164, label %165, label %173, !dbg !1121

165:                                              ; preds = %152, %161
  %166 = fcmp ogt double %156, %160, !dbg !1122
  %167 = select i1 %166, double %156, double %160, !dbg !1122
  %168 = fcmp olt double %167, 0x5FDFFFFFFFFFFFFF, !dbg !1123
  br i1 %168, label %169, label %173, !dbg !1114

169:                                              ; preds = %165
  %170 = fmul double %153, 2.000000e+00, !dbg !1124
  tail call void @llvm.dbg.value(metadata double %170, metadata !953, metadata !DIExpression()), !dbg !1077
  %171 = fmul double %154, 2.000000e+00, !dbg !1126
  tail call void @llvm.dbg.value(metadata double %171, metadata !954, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %171, metadata !955, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !956, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !957, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !958, metadata !DIExpression()), !dbg !1077
  %172 = add nsw i32 %155, -1, !dbg !1127
  tail call void @llvm.dbg.value(metadata i32 %172, metadata !960, metadata !DIExpression()), !dbg !1077
  br label %152, !dbg !1114, !llvm.loop !1128

173:                                              ; preds = %165, %161
  %174 = add nuw nsw i32 %107, 1, !dbg !1130
  tail call void @llvm.dbg.value(metadata i32 %155, metadata !960, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !959, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !957, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double poison, metadata !956, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %154, metadata !955, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %154, metadata !954, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %153, metadata !953, metadata !DIExpression()), !dbg !1077
  %175 = icmp eq i32 %174, %0, !dbg !1081
  br i1 %175, label %176, label %105, !dbg !1084, !llvm.loop !1131

176:                                              ; preds = %173, %105, %92
  %177 = phi double [ %101, %92 ], [ %108, %105 ], [ %154, %173 ], !dbg !1077
  %178 = phi i32 [ 0, %92 ], [ %106, %105 ], [ %155, %173 ], !dbg !1133
  %179 = call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %178) #7, !dbg !1134
  %180 = fmul double %177, %179, !dbg !1135
  store double %180, ptr %2, align 8, !dbg !1136, !tbaa !205
  %181 = call double @llvm.fabs.f64(double %180), !dbg !1137
  %182 = fmul double %181, %96, !dbg !1138
  %183 = fmul double %182, 0x3CB0000000000000, !dbg !1139
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1140
  store double %183, ptr %184, align 8, !dbg !1141, !tbaa !214
  %185 = call i32 @gsl_isnan(double noundef %180) #7, !dbg !1142
  %186 = icmp eq i32 %185, 1, !dbg !1144
  br i1 %186, label %187, label %281, !dbg !1145

187:                                              ; preds = %176
  tail call void @llvm.dbg.value(metadata double 0xC002B471A873ADF9, metadata !961, metadata !DIExpression()), !dbg !1146
  %188 = call double @llvm.fabs.f64(double %1), !dbg !1147
  tail call void @llvm.dbg.value(metadata double %188, metadata !963, metadata !DIExpression()), !dbg !1146
  %189 = shl nuw nsw i32 %0, 1, !dbg !1148
  %190 = or disjoint i32 %189, 1, !dbg !1149
  %191 = sitofp i32 %190 to double, !dbg !1149
  %192 = call double @sqrt(double noundef %191) #7, !dbg !1150
  %193 = call double @pow(double noundef %96, double noundef 0x3FC5555555555555) #7, !dbg !1151
  %194 = fdiv double 0x3FFA73E1E5E90639, %193, !dbg !1152
  %195 = fsub double %192, %194, !dbg !1153
  %196 = fcmp olt double %188, %195, !dbg !1154
  %197 = call double @sqrt(double noundef %191) #7, !dbg !1155
  br i1 %196, label %198, label %224, !dbg !1156

198:                                              ; preds = %187
  %199 = fdiv double %188, %197, !dbg !1157
  %200 = call double @acos(double noundef %199) #7, !dbg !1158
  tail call void @llvm.dbg.value(metadata double %200, metadata !964, metadata !DIExpression()), !dbg !1159
  %201 = and i32 %0, 1, !dbg !1160
  %202 = icmp ne i32 %201, 0, !dbg !1160
  %203 = fcmp olt double %1, 0.000000e+00, !dbg !1161
  %204 = and i1 %202, %203, !dbg !1161
  %205 = fdiv double 2.000000e+00, %96, !dbg !1162
  %206 = call double @pow(double noundef %205, double noundef 2.500000e-01) #7, !dbg !1163
  %207 = fneg double %206, !dbg !1164
  %208 = select i1 %204, double %207, double %206, !dbg !1164
  %209 = fdiv double %208, 0x3FFC5BF891B4EF6B, !dbg !1165
  %210 = call double @sin(double noundef %200) #7, !dbg !1166
  %211 = call double @sqrt(double noundef %210) #7, !dbg !1167
  %212 = fdiv double %209, %211, !dbg !1168
  %213 = fmul double %96, 5.000000e-01, !dbg !1169
  %214 = fadd double %213, 2.500000e-01, !dbg !1170
  %215 = fmul double %200, 2.000000e+00, !dbg !1171
  %216 = call double @sin(double noundef %215) #7, !dbg !1172
  %217 = fsub double %216, %215, !dbg !1173
  %218 = fmul double %214, %217, !dbg !1174
  %219 = fadd double %218, 0x4002D97C7F3321D2, !dbg !1175
  %220 = call double @sin(double noundef %219) #7, !dbg !1176
  %221 = fmul double %212, %220, !dbg !1177
  store double %221, ptr %2, align 8, !dbg !1178, !tbaa !205
  %222 = call double @llvm.fabs.f64(double %221), !dbg !1179
  %223 = fmul double %222, 0x3CC0000000000000, !dbg !1180
  store double %223, ptr %184, align 8, !dbg !1181, !tbaa !214
  br label %281

224:                                              ; preds = %187
  %225 = call double @pow(double noundef %96, double noundef 0x3FC5555555555555) #7, !dbg !1182
  %226 = fdiv double 0x3FFA73E1E5E90639, %225, !dbg !1183
  %227 = fadd double %197, %226, !dbg !1184
  %228 = fcmp ogt double %188, %227, !dbg !1185
  br i1 %228, label %229, label %256, !dbg !1186

229:                                              ; preds = %224
  %230 = call double @sqrt(double noundef %191) #7, !dbg !1187
  %231 = fdiv double %188, %230, !dbg !1188
  %232 = call double @acosh(double noundef %231) #7, !dbg !1189
  tail call void @llvm.dbg.value(metadata double %232, metadata !967, metadata !DIExpression()), !dbg !1190
  %233 = and i32 %0, 1, !dbg !1191
  %234 = icmp ne i32 %233, 0, !dbg !1191
  %235 = fcmp olt double %1, 0.000000e+00, !dbg !1192
  %236 = and i1 %234, %235, !dbg !1192
  %237 = call double @pow(double noundef %96, double noundef -2.500000e-01) #7, !dbg !1193
  %238 = fneg double %237, !dbg !1194
  %239 = select i1 %236, double %238, double %237, !dbg !1194
  %240 = fmul double %239, 5.000000e-01, !dbg !1195
  %241 = fdiv double %240, 0x3FFC5BF891B4EF6B, !dbg !1196
  %242 = call double @sinh(double noundef %232) #7, !dbg !1197
  %243 = fdiv double %242, 0x3FF6A09E667F3BCD, !dbg !1198
  %244 = call double @sqrt(double noundef %243) #7, !dbg !1199
  %245 = fdiv double %241, %244, !dbg !1200
  %246 = fmul double %96, 5.000000e-01, !dbg !1201
  %247 = fadd double %246, 2.500000e-01, !dbg !1202
  %248 = fmul double %232, 2.000000e+00, !dbg !1203
  %249 = call double @sinh(double noundef %248) #7, !dbg !1204
  %250 = fsub double %248, %249, !dbg !1205
  %251 = fmul double %247, %250, !dbg !1206
  %252 = call double @exp(double noundef %251) #7, !dbg !1207
  %253 = fmul double %245, %252, !dbg !1208
  store double %253, ptr %2, align 8, !dbg !1209, !tbaa !205
  %254 = call double @llvm.fabs.f64(double %253), !dbg !1210
  %255 = fmul double %254, 0x3CC0000000000000, !dbg !1211
  store double %255, ptr %184, align 8, !dbg !1212, !tbaa !214
  br label %281

256:                                              ; preds = %224
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1213
  %257 = call double @sqrt(double noundef %191) #7, !dbg !1214
  %258 = fsub double %188, %257, !dbg !1215
  %259 = fmul double %258, 0x3FF6A09E667F3BCD, !dbg !1216
  %260 = call double @pow(double noundef %96, double noundef 0x3FC5555555555555) #7, !dbg !1217
  %261 = fmul double %260, %259, !dbg !1218
  %262 = call i32 @gsl_sf_airy_Ai_e(double noundef %261, i32 noundef 0, ptr noundef nonnull %5) #7, !dbg !1219
  %263 = and i32 %0, 1, !dbg !1220
  %264 = icmp ne i32 %263, 0, !dbg !1220
  %265 = fcmp olt double %1, 0.000000e+00, !dbg !1221
  %266 = and i1 %264, %265, !dbg !1221
  %267 = select i1 %266, double 0xBFF306FE0A31B715, double 0x3FF306FE0A31B715, !dbg !1222
  %268 = call double @pow(double noundef %96, double noundef 0xBFB5555555555555) #7, !dbg !1223
  %269 = fmul double %267, %268, !dbg !1224
  %270 = load double, ptr %5, align 8, !dbg !1225, !tbaa !205
  %271 = fmul double %269, %270, !dbg !1226
  store double %271, ptr %2, align 8, !dbg !1227, !tbaa !205
  %272 = call double @pow(double noundef %96, double noundef 0xBFB5555555555555) #7, !dbg !1228
  %273 = fmul double %272, 0x3FF306FE0A31B715, !dbg !1229
  %274 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1230
  %275 = load double, ptr %274, align 8, !dbg !1230, !tbaa !214
  %276 = fmul double %273, %275, !dbg !1231
  %277 = load double, ptr %2, align 8, !dbg !1232, !tbaa !205
  %278 = call double @llvm.fabs.f64(double %277), !dbg !1233
  %279 = fmul double %278, 0x3CB0000000000000, !dbg !1234
  %280 = fadd double %276, %279, !dbg !1235
  store double %280, ptr %184, align 8, !dbg !1236, !tbaa !214
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1237
  br label %281

281:                                              ; preds = %91, %176, %256, %229, %198, %55, %39, %24, %13, %7
  %282 = phi i32 [ 1, %7 ], [ 0, %13 ], [ 0, %24 ], [ 0, %39 ], [ 0, %55 ], [ 0, %91 ], [ 0, %198 ], [ 0, %229 ], [ 0, %256 ], [ 0, %176 ], !dbg !976
  ret i32 %282, !dbg !1238
}

declare !dbg !1239 i32 @gsl_finite(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_func(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1240 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1246
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1244, metadata !DIExpression(), metadata !1246, metadata ptr %3, metadata !DIExpression()), !dbg !1247
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1242, metadata !DIExpression()), !dbg !1247
  tail call void @llvm.dbg.value(metadata double %1, metadata !1243, metadata !DIExpression()), !dbg !1247
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1248
  %4 = call i32 @gsl_sf_hermite_func_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1248, !range !864
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1245, metadata !DIExpression()), !dbg !1247
  %5 = icmp eq i32 %4, 0, !dbg !1249
  br i1 %5, label %7, label %6, !dbg !1248

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 605, i32 noundef 1) #7, !dbg !1251
  br label %7, !dbg !1251

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1248, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1254
  ret double %8, !dbg !1254
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_prob_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1255 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1260, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata double %1, metadata !1261, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1262, metadata !DIExpression()), !dbg !1272
  %4 = icmp slt i32 %0, 0, !dbg !1273
  br i1 %4, label %5, label %6, !dbg !1274

5:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 614, i32 noundef 1) #7, !dbg !1275
  br label %76, !dbg !1275

6:                                                ; preds = %3
  store double 1.000000e+00, ptr %2, align 8, !dbg !1278, !tbaa !1279
  switch i32 %0, label %9 [
    i32 0, label %76
    i32 1, label %7
  ], !dbg !1280

7:                                                ; preds = %6
  %8 = getelementptr inbounds double, ptr %2, i64 1, !dbg !1281
  store double %1, ptr %8, align 8, !dbg !1283, !tbaa !1279
  br label %76, !dbg !1284

9:                                                ; preds = %6
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1263, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %1, metadata !1268, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %1, metadata !1269, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1270, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1271, metadata !DIExpression()), !dbg !1285
  %10 = getelementptr inbounds double, ptr %2, i64 1, !dbg !1286
  store double %1, ptr %10, align 8, !dbg !1287, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1270, metadata !DIExpression()), !dbg !1285
  %11 = zext nneg i32 %0 to i64, !dbg !1288
  br label %12, !dbg !1291

12:                                               ; preds = %9, %70
  %13 = phi i64 [ 1, %9 ], [ %73, %70 ]
  %14 = phi i32 [ 0, %9 ], [ %52, %70 ]
  %15 = phi double [ %1, %9 ], [ %51, %70 ]
  %16 = phi double [ 1.000000e+00, %9 ], [ %50, %70 ]
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1271, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !1270, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %15, metadata !1268, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %16, metadata !1263, metadata !DIExpression()), !dbg !1285
  %17 = fmul double %15, %1, !dbg !1292
  %18 = trunc i64 %13 to i32, !dbg !1294
  %19 = sitofp i32 %18 to double, !dbg !1294
  %20 = fmul double %16, %19, !dbg !1295
  %21 = fsub double %17, %20, !dbg !1296
  tail call void @llvm.dbg.value(metadata double %21, metadata !1269, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %15, metadata !1263, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %21, metadata !1268, metadata !DIExpression()), !dbg !1285
  %22 = tail call double @llvm.fabs.f64(double %15), !dbg !1297
  %23 = tail call double @llvm.fabs.f64(double %21), !dbg !1297
  %24 = fcmp olt double %22, %23, !dbg !1297
  %25 = select i1 %24, double %22, double %23, !dbg !1297
  %26 = fcmp ogt double %25, 0x2010000000000000, !dbg !1298
  br i1 %26, label %27, label %45, !dbg !1299

27:                                               ; preds = %12, %36
  %28 = phi double [ %41, %36 ], [ %23, %12 ]
  %29 = phi double [ %40, %36 ], [ %22, %12 ]
  %30 = phi i32 [ %39, %36 ], [ %14, %12 ]
  %31 = phi double [ %38, %36 ], [ %21, %12 ]
  %32 = phi double [ %37, %36 ], [ %15, %12 ]
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !1271, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %31, metadata !1269, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %32, metadata !1263, metadata !DIExpression()), !dbg !1285
  %33 = fcmp ogt double %29, %28, !dbg !1300
  %34 = select i1 %33, double %29, double %28, !dbg !1300
  %35 = fcmp ogt double %34, 0x5FEFFFFFFFFFFFFF, !dbg !1301
  br i1 %35, label %36, label %45, !dbg !1302

36:                                               ; preds = %27
  %37 = fmul double %32, 5.000000e-01, !dbg !1303
  tail call void @llvm.dbg.value(metadata double %37, metadata !1263, metadata !DIExpression()), !dbg !1285
  %38 = fmul double %31, 5.000000e-01, !dbg !1305
  tail call void @llvm.dbg.value(metadata double %38, metadata !1268, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %38, metadata !1269, metadata !DIExpression()), !dbg !1285
  %39 = add nsw i32 %30, 1, !dbg !1306
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !1271, metadata !DIExpression()), !dbg !1285
  %40 = tail call double @llvm.fabs.f64(double %37), !dbg !1297
  %41 = tail call double @llvm.fabs.f64(double %38), !dbg !1297
  %42 = fcmp olt double %40, %41, !dbg !1297
  %43 = select i1 %42, double %40, double %41, !dbg !1297
  %44 = fcmp ogt double %43, 0x2010000000000000, !dbg !1298
  br i1 %44, label %27, label %45, !dbg !1299, !llvm.loop !1307

45:                                               ; preds = %27, %36, %12
  %46 = phi double [ %15, %12 ], [ %32, %27 ], [ %37, %36 ]
  %47 = phi double [ %21, %12 ], [ %31, %27 ], [ %38, %36 ]
  %48 = phi i32 [ %14, %12 ], [ %30, %27 ], [ %39, %36 ]
  br label %49, !dbg !1309

49:                                               ; preds = %45, %66
  %50 = phi double [ %67, %66 ], [ %46, %45 ], !dbg !1310
  %51 = phi double [ %68, %66 ], [ %47, %45 ], !dbg !1310
  %52 = phi i32 [ %69, %66 ], [ %48, %45 ], !dbg !1285
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !1271, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %51, metadata !1269, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %51, metadata !1268, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %50, metadata !1263, metadata !DIExpression()), !dbg !1285
  %53 = tail call double @llvm.fabs.f64(double %50), !dbg !1311
  %54 = fcmp olt double %53, 0x2000000000000000, !dbg !1312
  %55 = fcmp une double %50, 0.000000e+00
  %56 = select i1 %54, i1 %55, i1 false, !dbg !1313
  %57 = tail call double @llvm.fabs.f64(double %51), !dbg !1314
  br i1 %56, label %62, label %58, !dbg !1313

58:                                               ; preds = %49
  %59 = fcmp olt double %57, 0x2000000000000000, !dbg !1315
  %60 = fcmp une double %51, 0.000000e+00
  %61 = select i1 %59, i1 %60, i1 false, !dbg !1316
  br i1 %61, label %62, label %70, !dbg !1316

62:                                               ; preds = %49, %58
  %63 = fcmp ogt double %53, %57, !dbg !1317
  %64 = select i1 %63, double %53, double %57, !dbg !1317
  %65 = fcmp olt double %64, 0x5FDFFFFFFFFFFFFF, !dbg !1318
  br i1 %65, label %66, label %70, !dbg !1309

66:                                               ; preds = %62
  %67 = fmul double %50, 2.000000e+00, !dbg !1319
  tail call void @llvm.dbg.value(metadata double %67, metadata !1263, metadata !DIExpression()), !dbg !1285
  %68 = fmul double %51, 2.000000e+00, !dbg !1321
  tail call void @llvm.dbg.value(metadata double %68, metadata !1268, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %68, metadata !1269, metadata !DIExpression()), !dbg !1285
  %69 = add nsw i32 %52, -1, !dbg !1322
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !1271, metadata !DIExpression()), !dbg !1285
  br label %49, !dbg !1309, !llvm.loop !1323

70:                                               ; preds = %58, %62
  %71 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %52) #7, !dbg !1325
  %72 = fmul double %51, %71, !dbg !1326
  %73 = add nuw nsw i64 %13, 1, !dbg !1327
  %74 = getelementptr inbounds double, ptr %2, i64 %73, !dbg !1328
  store double %72, ptr %74, align 8, !dbg !1329, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !1271, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !1270, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %51, metadata !1268, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %50, metadata !1263, metadata !DIExpression()), !dbg !1285
  %75 = icmp eq i64 %73, %11, !dbg !1288
  br i1 %75, label %76, label %12, !dbg !1291, !llvm.loop !1330

76:                                               ; preds = %70, %6, %5, %7
  %77 = phi i32 [ 1, %5 ], [ 0, %7 ], [ %0, %6 ], [ 0, %70 ], !dbg !1332
  ret i32 %77, !dbg !1333
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_prob_array_der(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !1334 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1338, metadata !DIExpression()), !dbg !1359
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1339, metadata !DIExpression()), !dbg !1359
  tail call void @llvm.dbg.value(metadata double %2, metadata !1340, metadata !DIExpression()), !dbg !1359
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1341, metadata !DIExpression()), !dbg !1359
  %5 = or i32 %1, %0, !dbg !1360
  %6 = icmp sgt i32 %5, -1, !dbg !1360
  br i1 %6, label %8, label %7, !dbg !1360

7:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 670, i32 noundef 1) #7, !dbg !1361
  br label %133, !dbg !1361

8:                                                ; preds = %4
  %9 = icmp eq i32 %0, 0, !dbg !1364
  br i1 %9, label %10, label %12, !dbg !1365

10:                                               ; preds = %8
  %11 = tail call i32 @gsl_sf_hermite_prob_array(i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !1366, !range !864
  br label %133, !dbg !1368

12:                                               ; preds = %8
  %13 = icmp slt i32 %1, %0, !dbg !1369
  br i1 %13, label %14, label %20, !dbg !1370

14:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1342, metadata !DIExpression()), !dbg !1371
  %15 = icmp slt i32 %1, 0, !dbg !1372
  br i1 %15, label %133, label %16, !dbg !1375

16:                                               ; preds = %14
  %17 = add nuw nsw i32 %1, 1, !dbg !1375
  %18 = zext nneg i32 %17 to i64, !dbg !1375
  %19 = shl nuw nsw i64 %18, 3, !dbg !1375
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, i8 0, i64 %19, i1 false), !dbg !1376, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1342, metadata !DIExpression()), !dbg !1371
  br label %133, !dbg !1378

20:                                               ; preds = %12
  %21 = icmp eq i32 %1, %0, !dbg !1379
  br i1 %21, label %22, label %30, !dbg !1380

22:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1347, metadata !DIExpression()), !dbg !1381
  %23 = icmp sgt i32 %1, 0, !dbg !1382
  %24 = zext nneg i32 %1 to i64
  br i1 %23, label %25, label %27, !dbg !1385

25:                                               ; preds = %22
  %26 = shl nuw nsw i64 %24, 3, !dbg !1385
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %26, i1 false), !dbg !1386, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1347, metadata !DIExpression()), !dbg !1381
  br label %27, !dbg !1388

27:                                               ; preds = %22, %25
  %28 = tail call double @gsl_sf_fact(i32 noundef %1) #7, !dbg !1388
  %29 = getelementptr inbounds double, ptr %3, i64 %24, !dbg !1389
  store double %28, ptr %29, align 8, !dbg !1390, !tbaa !1279
  br label %133

30:                                               ; preds = %20
  %31 = add nuw nsw i32 %0, 1, !dbg !1391
  %32 = icmp eq i32 %31, %1, !dbg !1392
  br i1 %32, label %33, label %48, !dbg !1393

33:                                               ; preds = %30
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1350, metadata !DIExpression()), !dbg !1394
  %34 = icmp sgt i32 %0, 0, !dbg !1395
  br i1 %34, label %35, label %38, !dbg !1398

35:                                               ; preds = %33
  %36 = zext nneg i32 %0 to i64, !dbg !1398
  %37 = shl nuw nsw i64 %36, 3, !dbg !1398
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %37, i1 false), !dbg !1399, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1350, metadata !DIExpression()), !dbg !1394
  br label %38, !dbg !1401

38:                                               ; preds = %35, %33
  %39 = tail call double @gsl_sf_fact(i32 noundef %0) #7, !dbg !1401
  %40 = sext i32 %1 to i64, !dbg !1402
  %41 = getelementptr double, ptr %3, i64 %40, !dbg !1402
  %42 = getelementptr double, ptr %41, i64 -1, !dbg !1402
  store double %39, ptr %42, align 8, !dbg !1403, !tbaa !1279
  %43 = sitofp i32 %1 to double, !dbg !1404
  %44 = fmul double %39, %43, !dbg !1405
  %45 = fmul double %44, %2, !dbg !1406
  %46 = zext nneg i32 %1 to i64
  %47 = getelementptr inbounds double, ptr %3, i64 %46, !dbg !1407
  store double %45, ptr %47, align 8, !dbg !1408, !tbaa !1279
  br label %133

48:                                               ; preds = %30
  %49 = tail call double @gsl_sf_fact(i32 noundef %0) #7, !dbg !1409
  tail call void @llvm.dbg.value(metadata double %49, metadata !1353, metadata !DIExpression()), !dbg !1410
  %50 = sitofp i32 %31 to double, !dbg !1411
  %51 = fmul double %49, %50, !dbg !1412
  %52 = fmul double %51, %2, !dbg !1413
  tail call void @llvm.dbg.value(metadata double %52, metadata !1355, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %52, metadata !1356, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1358, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1357, metadata !DIExpression()), !dbg !1410
  %53 = icmp sgt i32 %0, 0, !dbg !1414
  %54 = zext nneg i32 %0 to i64
  br i1 %53, label %55, label %57, !dbg !1417

55:                                               ; preds = %48
  %56 = shl nuw nsw i64 %54, 3, !dbg !1417
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %56, i1 false), !dbg !1418, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1357, metadata !DIExpression()), !dbg !1410
  br label %57

57:                                               ; preds = %48, %55
  %58 = getelementptr inbounds double, ptr %3, i64 %54, !dbg !1420
  store double %49, ptr %58, align 8, !dbg !1421, !tbaa !1279
  %59 = sext i32 %31 to i64, !dbg !1422
  %60 = getelementptr inbounds double, ptr %3, i64 %59, !dbg !1422
  store double %52, ptr %60, align 8, !dbg !1423, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1357, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1358, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %52, metadata !1355, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %49, metadata !1353, metadata !DIExpression()), !dbg !1410
  %61 = icmp slt i32 %31, %1, !dbg !1424
  br i1 %61, label %62, label %133, !dbg !1427

62:                                               ; preds = %57, %128
  %63 = phi i64 [ %72, %128 ], [ %59, %57 ]
  %64 = phi i32 [ %110, %128 ], [ 0, %57 ]
  %65 = phi double [ %109, %128 ], [ %52, %57 ]
  %66 = phi double [ %108, %128 ], [ %49, %57 ]
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !1358, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !1357, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %65, metadata !1355, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %66, metadata !1353, metadata !DIExpression()), !dbg !1410
  %67 = fmul double %65, %2, !dbg !1428
  %68 = trunc i64 %63 to i32, !dbg !1430
  %69 = sitofp i32 %68 to double, !dbg !1430
  %70 = fmul double %66, %69, !dbg !1431
  %71 = fsub double %67, %70, !dbg !1432
  %72 = add nsw i64 %63, 1, !dbg !1433
  %73 = trunc i64 %72 to i32, !dbg !1434
  %74 = sitofp i32 %73 to double, !dbg !1434
  %75 = fmul double %71, %74, !dbg !1435
  %76 = sub i32 %68, %0, !dbg !1436
  %77 = add i32 %76, 1, !dbg !1436
  %78 = sitofp i32 %77 to double, !dbg !1437
  %79 = fdiv double %75, %78, !dbg !1438
  tail call void @llvm.dbg.value(metadata double %79, metadata !1356, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %65, metadata !1353, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %79, metadata !1355, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !1358, metadata !DIExpression()), !dbg !1410
  %80 = tail call double @llvm.fabs.f64(double %65), !dbg !1439
  %81 = tail call double @llvm.fabs.f64(double %79), !dbg !1439
  %82 = fcmp olt double %80, %81, !dbg !1439
  %83 = select i1 %82, double %80, double %81, !dbg !1439
  %84 = fcmp ogt double %83, 0x2010000000000000, !dbg !1440
  br i1 %84, label %85, label %103, !dbg !1441

85:                                               ; preds = %62, %94
  %86 = phi double [ %99, %94 ], [ %81, %62 ]
  %87 = phi double [ %98, %94 ], [ %80, %62 ]
  %88 = phi i32 [ %97, %94 ], [ %64, %62 ]
  %89 = phi double [ %96, %94 ], [ %79, %62 ]
  %90 = phi double [ %95, %94 ], [ %65, %62 ]
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !1358, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %89, metadata !1356, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %90, metadata !1353, metadata !DIExpression()), !dbg !1410
  %91 = fcmp ogt double %87, %86, !dbg !1442
  %92 = select i1 %91, double %87, double %86, !dbg !1442
  %93 = fcmp ogt double %92, 0x5FEFFFFFFFFFFFFF, !dbg !1443
  br i1 %93, label %94, label %103, !dbg !1444

94:                                               ; preds = %85
  %95 = fmul double %90, 5.000000e-01, !dbg !1445
  tail call void @llvm.dbg.value(metadata double %95, metadata !1353, metadata !DIExpression()), !dbg !1410
  %96 = fmul double %89, 5.000000e-01, !dbg !1447
  tail call void @llvm.dbg.value(metadata double %96, metadata !1355, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %96, metadata !1356, metadata !DIExpression()), !dbg !1410
  %97 = add nsw i32 %88, 1, !dbg !1448
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !1358, metadata !DIExpression()), !dbg !1410
  %98 = tail call double @llvm.fabs.f64(double %95), !dbg !1439
  %99 = tail call double @llvm.fabs.f64(double %96), !dbg !1439
  %100 = fcmp olt double %98, %99, !dbg !1439
  %101 = select i1 %100, double %98, double %99, !dbg !1439
  %102 = fcmp ogt double %101, 0x2010000000000000, !dbg !1440
  br i1 %102, label %85, label %103, !dbg !1441, !llvm.loop !1449

103:                                              ; preds = %85, %94, %62
  %104 = phi double [ %65, %62 ], [ %90, %85 ], [ %95, %94 ]
  %105 = phi double [ %79, %62 ], [ %89, %85 ], [ %96, %94 ]
  %106 = phi i32 [ %64, %62 ], [ %88, %85 ], [ %97, %94 ]
  br label %107, !dbg !1451

107:                                              ; preds = %103, %124
  %108 = phi double [ %125, %124 ], [ %104, %103 ], !dbg !1452
  %109 = phi double [ %126, %124 ], [ %105, %103 ], !dbg !1452
  %110 = phi i32 [ %127, %124 ], [ %106, %103 ], !dbg !1410
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !1358, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %109, metadata !1356, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %109, metadata !1355, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %108, metadata !1353, metadata !DIExpression()), !dbg !1410
  %111 = tail call double @llvm.fabs.f64(double %108), !dbg !1453
  %112 = fcmp olt double %111, 0x2000000000000000, !dbg !1454
  %113 = fcmp une double %108, 0.000000e+00
  %114 = select i1 %112, i1 %113, i1 false, !dbg !1455
  %115 = tail call double @llvm.fabs.f64(double %109), !dbg !1456
  br i1 %114, label %120, label %116, !dbg !1455

116:                                              ; preds = %107
  %117 = fcmp olt double %115, 0x2000000000000000, !dbg !1457
  %118 = fcmp une double %109, 0.000000e+00
  %119 = select i1 %117, i1 %118, i1 false, !dbg !1458
  br i1 %119, label %120, label %128, !dbg !1458

120:                                              ; preds = %107, %116
  %121 = fcmp ogt double %111, %115, !dbg !1459
  %122 = select i1 %121, double %111, double %115, !dbg !1459
  %123 = fcmp olt double %122, 0x5FDFFFFFFFFFFFFF, !dbg !1460
  br i1 %123, label %124, label %128, !dbg !1451

124:                                              ; preds = %120
  %125 = fmul double %108, 2.000000e+00, !dbg !1461
  tail call void @llvm.dbg.value(metadata double %125, metadata !1353, metadata !DIExpression()), !dbg !1410
  %126 = fmul double %109, 2.000000e+00, !dbg !1463
  tail call void @llvm.dbg.value(metadata double %126, metadata !1355, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %126, metadata !1356, metadata !DIExpression()), !dbg !1410
  %127 = add nsw i32 %110, -1, !dbg !1464
  tail call void @llvm.dbg.value(metadata i32 %127, metadata !1358, metadata !DIExpression()), !dbg !1410
  br label %107, !dbg !1451, !llvm.loop !1465

128:                                              ; preds = %116, %120
  %129 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %110) #7, !dbg !1467
  %130 = fmul double %109, %129, !dbg !1468
  %131 = getelementptr inbounds double, ptr %3, i64 %72, !dbg !1469
  store double %130, ptr %131, align 8, !dbg !1470, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !1358, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !1357, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %109, metadata !1355, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %108, metadata !1353, metadata !DIExpression()), !dbg !1410
  %132 = icmp eq i32 %73, %1, !dbg !1424
  br i1 %132, label %133, label %62, !dbg !1427, !llvm.loop !1471

133:                                              ; preds = %128, %16, %57, %14, %7, %10, %27, %38
  %134 = phi i32 [ 1, %7 ], [ 0, %10 ], [ 0, %27 ], [ 0, %38 ], [ 0, %14 ], [ 0, %57 ], [ 0, %16 ], [ 0, %128 ], !dbg !1473
  ret i32 %134, !dbg !1378
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_prob_der_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !1474 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1496
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1497
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1498
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1499
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1500
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1476, metadata !DIExpression()), !dbg !1501
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1477, metadata !DIExpression()), !dbg !1501
  tail call void @llvm.dbg.value(metadata double %2, metadata !1478, metadata !DIExpression()), !dbg !1501
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1479, metadata !DIExpression()), !dbg !1501
  %10 = or i32 %1, %0, !dbg !1502
  %11 = icmp sgt i32 %10, -1, !dbg !1502
  br i1 %11, label %13, label %12, !dbg !1502

12:                                               ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 748, i32 noundef 1) #7, !dbg !1503
  br label %182, !dbg !1503

13:                                               ; preds = %4
  %14 = icmp eq i32 %1, 0, !dbg !1506
  br i1 %14, label %15, label %21, !dbg !1507

15:                                               ; preds = %13
  store double 1.000000e+00, ptr %3, align 8, !dbg !1508, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1480, metadata !DIExpression()), !dbg !1509
  %16 = icmp slt i32 %0, 1, !dbg !1510
  br i1 %16, label %182, label %17, !dbg !1513

17:                                               ; preds = %15
  %18 = getelementptr i8, ptr %3, i64 8, !dbg !1513
  %19 = zext nneg i32 %0 to i64, !dbg !1513
  %20 = shl nuw nsw i64 %19, 3, !dbg !1513
  tail call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 %20, i1 false), !dbg !1514, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1480, metadata !DIExpression()), !dbg !1509
  br label %182, !dbg !1516

21:                                               ; preds = %13
  %22 = icmp eq i32 %1, 1, !dbg !1517
  %23 = icmp sgt i32 %0, 0
  %24 = and i1 %23, %22, !dbg !1518
  br i1 %24, label %25, label %33, !dbg !1518

25:                                               ; preds = %21
  store double %2, ptr %3, align 8, !dbg !1519, !tbaa !1279
  %26 = getelementptr inbounds double, ptr %3, i64 1, !dbg !1520
  store double 1.000000e+00, ptr %26, align 8, !dbg !1521, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1484, metadata !DIExpression()), !dbg !1522
  %27 = icmp ult i32 %0, 2, !dbg !1523
  br i1 %27, label %182, label %28, !dbg !1526

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %3, i64 16, !dbg !1526
  %30 = add nsw i32 %0, -1, !dbg !1526
  %31 = zext nneg i32 %30 to i64, !dbg !1526
  %32 = shl nuw nsw i64 %31, 3, !dbg !1526
  tail call void @llvm.memset.p0.i64(ptr align 8 %29, i8 0, i64 %32, i1 false), !dbg !1527, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1484, metadata !DIExpression()), !dbg !1522
  br label %182, !dbg !1516

33:                                               ; preds = %21
  switch i32 %0, label %46 [
    i32 0, label %34
    i32 1, label %37
  ], !dbg !1529

34:                                               ; preds = %33
  call void @llvm.dbg.assign(metadata i1 undef, metadata !437, metadata !DIExpression(), metadata !1500, metadata ptr %9, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i32 %1, metadata !435, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata double %2, metadata !436, metadata !DIExpression()), !dbg !1530
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !1533
  %35 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %1, double noundef %2, ptr noundef nonnull %9), !dbg !1533
  call void @llvm.dbg.value(metadata i32 0, metadata !438, metadata !DIExpression()), !dbg !1530
  %36 = load double, ptr %9, align 8, !dbg !1533, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !1534
  store double %36, ptr %3, align 8, !dbg !1535, !tbaa !1279
  br label %182, !dbg !1536

37:                                               ; preds = %33
  call void @llvm.dbg.assign(metadata i1 undef, metadata !437, metadata !DIExpression(), metadata !1499, metadata ptr %8, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %1, metadata !435, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata double %2, metadata !436, metadata !DIExpression()), !dbg !1537
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !1540
  %38 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %1, double noundef %2, ptr noundef nonnull %8), !dbg !1540
  call void @llvm.dbg.value(metadata i32 0, metadata !438, metadata !DIExpression()), !dbg !1537
  %39 = load double, ptr %8, align 8, !dbg !1540, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !1541
  store double %39, ptr %3, align 8, !dbg !1542, !tbaa !1279
  %40 = sitofp i32 %1 to double, !dbg !1543
  %41 = add nsw i32 %1, -1, !dbg !1544
  call void @llvm.dbg.assign(metadata i1 undef, metadata !437, metadata !DIExpression(), metadata !1498, metadata ptr %7, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i32 %41, metadata !435, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata double %2, metadata !436, metadata !DIExpression()), !dbg !1545
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !1547
  %42 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %41, double noundef %2, ptr noundef nonnull %7), !dbg !1547
  call void @llvm.dbg.value(metadata i32 0, metadata !438, metadata !DIExpression()), !dbg !1545
  %43 = load double, ptr %7, align 8, !dbg !1547, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !1548
  %44 = fmul double %43, %40, !dbg !1549
  %45 = getelementptr inbounds double, ptr %3, i64 1, !dbg !1550
  store double %44, ptr %45, align 8, !dbg !1551, !tbaa !1279
  br label %182, !dbg !1552

46:                                               ; preds = %33
  %47 = sub nsw i32 %1, %0, !dbg !1553
  call void @llvm.dbg.value(metadata i32 0, metadata !1554, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i32 %47, metadata !1560, metadata !DIExpression()), !dbg !1561
  %48 = tail call i32 @llvm.smax.i32(i32 %47, i32 0), !dbg !1563
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !1487, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.assign(metadata i1 undef, metadata !437, metadata !DIExpression(), metadata !1497, metadata ptr %6, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i32 %48, metadata !435, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata double %2, metadata !436, metadata !DIExpression()), !dbg !1565
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1567
  %49 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %48, double noundef %2, ptr noundef nonnull %6), !dbg !1567
  call void @llvm.dbg.value(metadata i32 0, metadata !438, metadata !DIExpression()), !dbg !1565
  %50 = load double, ptr %6, align 8, !dbg !1567, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1568
  tail call void @llvm.dbg.value(metadata double %50, metadata !1491, metadata !DIExpression()), !dbg !1564
  %51 = add nuw nsw i32 %48, 1, !dbg !1569
  call void @llvm.dbg.assign(metadata i1 undef, metadata !437, metadata !DIExpression(), metadata !1496, metadata ptr %5, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i32 %51, metadata !435, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata double %2, metadata !436, metadata !DIExpression()), !dbg !1570
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1572
  %52 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %51, double noundef %2, ptr noundef nonnull %5), !dbg !1572
  call void @llvm.dbg.value(metadata i32 0, metadata !438, metadata !DIExpression()), !dbg !1570
  %53 = load double, ptr %5, align 8, !dbg !1572, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1573
  tail call void @llvm.dbg.value(metadata double %53, metadata !1492, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %53, metadata !1493, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1494, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1495, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1494, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1564
  %54 = icmp slt i32 %1, %0, !dbg !1574
  br i1 %54, label %55, label %65, !dbg !1577

55:                                               ; preds = %46
  %56 = sext i32 %1 to i64, !dbg !1577
  %57 = shl nsw i64 %56, 3, !dbg !1577
  %58 = getelementptr i8, ptr %3, i64 %57, !dbg !1577
  %59 = getelementptr i8, ptr %58, i64 8, !dbg !1577
  %60 = xor i32 %1, -1, !dbg !1577
  %61 = add i32 %60, %0, !dbg !1577
  %62 = zext i32 %61 to i64, !dbg !1577
  %63 = shl nuw nsw i64 %62, 3, !dbg !1577
  %64 = add nuw nsw i64 %63, 8, !dbg !1577
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %59, i8 0, i64 %64, i1 false), !dbg !1578, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1494, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1564
  br label %65, !dbg !1580

65:                                               ; preds = %55, %46
  call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 %0, metadata !1584, metadata !DIExpression()), !dbg !1586
  %66 = call i32 @llvm.smin.i32(i32 %1, i32 %0), !dbg !1580
  %67 = sext i32 %66 to i64, !dbg !1587
  %68 = getelementptr inbounds double, ptr %3, i64 %67, !dbg !1587
  store double %50, ptr %68, align 8, !dbg !1588, !tbaa !1279
  call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 %0, metadata !1584, metadata !DIExpression()), !dbg !1589
  %69 = getelementptr double, ptr %68, i64 -1, !dbg !1591
  store double %53, ptr %69, align 8, !dbg !1592, !tbaa !1279
  call void @llvm.dbg.value(metadata i32 %0, metadata !1583, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 %1, metadata !1584, metadata !DIExpression()), !dbg !1593
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !1494, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1564
  %70 = getelementptr double, ptr %3, i64 -2, !dbg !1596
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1495, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !1494, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %53, metadata !1492, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %50, metadata !1491, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !1487, metadata !DIExpression()), !dbg !1564
  %71 = icmp sgt i32 %66, 1, !dbg !1597
  br i1 %71, label %72, label %74, !dbg !1599

72:                                               ; preds = %65
  %73 = zext nneg i32 %66 to i64, !dbg !1599
  br label %83, !dbg !1599

74:                                               ; preds = %143, %65
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1494, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1493, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %0, metadata !1584, metadata !DIExpression()), !dbg !1600
  %75 = icmp slt i32 %66, 1, !dbg !1604
  br i1 %75, label %182, label %76, !dbg !1605

76:                                               ; preds = %74
  %77 = add i32 %1, 1
  %78 = zext nneg i32 %66 to i64, !dbg !1605
  %79 = and i64 %78, 1, !dbg !1605
  %80 = icmp eq i32 %66, 1, !dbg !1605
  br i1 %80, label %170, label %81, !dbg !1605

81:                                               ; preds = %76
  %82 = and i64 %78, 2147483646, !dbg !1605
  br label %148, !dbg !1605

83:                                               ; preds = %72, %143
  %84 = phi i64 [ %73, %72 ], [ %89, %143 ]
  %85 = phi i32 [ 0, %72 ], [ %125, %143 ]
  %86 = phi double [ %53, %72 ], [ %124, %143 ]
  %87 = phi double [ %50, %72 ], [ %123, %143 ]
  %88 = phi i32 [ %48, %72 ], [ %90, %143 ]
  %89 = add nsw i64 %84, -1, !dbg !1606
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !1495, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %86, metadata !1492, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %87, metadata !1491, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !1487, metadata !DIExpression()), !dbg !1564
  %90 = add nuw nsw i32 %88, 1, !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !1487, metadata !DIExpression()), !dbg !1564
  %91 = fmul double %86, %2, !dbg !1609
  %92 = sitofp i32 %90 to double, !dbg !1610
  %93 = fmul double %87, %92, !dbg !1611
  %94 = fsub double %91, %93, !dbg !1612
  tail call void @llvm.dbg.value(metadata double %94, metadata !1493, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %86, metadata !1491, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %94, metadata !1492, metadata !DIExpression()), !dbg !1564
  %95 = call double @llvm.fabs.f64(double %86), !dbg !1613
  %96 = call double @llvm.fabs.f64(double %94), !dbg !1613
  %97 = fcmp olt double %95, %96, !dbg !1613
  %98 = select i1 %97, double %95, double %96, !dbg !1613
  %99 = fcmp ogt double %98, 0x2010000000000000, !dbg !1614
  br i1 %99, label %100, label %118, !dbg !1615

100:                                              ; preds = %83, %109
  %101 = phi double [ %114, %109 ], [ %96, %83 ]
  %102 = phi double [ %113, %109 ], [ %95, %83 ]
  %103 = phi i32 [ %112, %109 ], [ %85, %83 ]
  %104 = phi double [ %111, %109 ], [ %94, %83 ]
  %105 = phi double [ %110, %109 ], [ %86, %83 ]
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !1495, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %104, metadata !1493, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %105, metadata !1491, metadata !DIExpression()), !dbg !1564
  %106 = fcmp ogt double %102, %101, !dbg !1616
  %107 = select i1 %106, double %102, double %101, !dbg !1616
  %108 = fcmp ogt double %107, 0x5FEFFFFFFFFFFFFF, !dbg !1617
  br i1 %108, label %109, label %118, !dbg !1618

109:                                              ; preds = %100
  %110 = fmul double %105, 5.000000e-01, !dbg !1619
  tail call void @llvm.dbg.value(metadata double %110, metadata !1491, metadata !DIExpression()), !dbg !1564
  %111 = fmul double %104, 5.000000e-01, !dbg !1621
  tail call void @llvm.dbg.value(metadata double %111, metadata !1492, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %111, metadata !1493, metadata !DIExpression()), !dbg !1564
  %112 = add nsw i32 %103, 1, !dbg !1622
  tail call void @llvm.dbg.value(metadata i32 %112, metadata !1495, metadata !DIExpression()), !dbg !1564
  %113 = call double @llvm.fabs.f64(double %110), !dbg !1613
  %114 = call double @llvm.fabs.f64(double %111), !dbg !1613
  %115 = fcmp olt double %113, %114, !dbg !1613
  %116 = select i1 %115, double %113, double %114, !dbg !1613
  %117 = fcmp ogt double %116, 0x2010000000000000, !dbg !1614
  br i1 %117, label %100, label %118, !dbg !1615, !llvm.loop !1623

118:                                              ; preds = %100, %109, %83
  %119 = phi double [ %86, %83 ], [ %105, %100 ], [ %110, %109 ]
  %120 = phi double [ %94, %83 ], [ %104, %100 ], [ %111, %109 ]
  %121 = phi i32 [ %85, %83 ], [ %103, %100 ], [ %112, %109 ]
  br label %122, !dbg !1625

122:                                              ; preds = %118, %139
  %123 = phi double [ %140, %139 ], [ %119, %118 ], !dbg !1626
  %124 = phi double [ %141, %139 ], [ %120, %118 ], !dbg !1626
  %125 = phi i32 [ %142, %139 ], [ %121, %118 ], !dbg !1564
  tail call void @llvm.dbg.value(metadata i32 %125, metadata !1495, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %124, metadata !1493, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %124, metadata !1492, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %123, metadata !1491, metadata !DIExpression()), !dbg !1564
  %126 = call double @llvm.fabs.f64(double %123), !dbg !1627
  %127 = fcmp olt double %126, 0x2000000000000000, !dbg !1628
  %128 = fcmp une double %123, 0.000000e+00
  %129 = select i1 %127, i1 %128, i1 false, !dbg !1629
  %130 = call double @llvm.fabs.f64(double %124), !dbg !1630
  br i1 %129, label %135, label %131, !dbg !1629

131:                                              ; preds = %122
  %132 = fcmp olt double %130, 0x2000000000000000, !dbg !1631
  %133 = fcmp une double %124, 0.000000e+00
  %134 = select i1 %132, i1 %133, i1 false, !dbg !1632
  br i1 %134, label %135, label %143, !dbg !1632

135:                                              ; preds = %122, %131
  %136 = fcmp ogt double %126, %130, !dbg !1633
  %137 = select i1 %136, double %126, double %130, !dbg !1633
  %138 = fcmp olt double %137, 0x5FDFFFFFFFFFFFFF, !dbg !1634
  br i1 %138, label %139, label %143, !dbg !1625

139:                                              ; preds = %135
  %140 = fmul double %123, 2.000000e+00, !dbg !1635
  tail call void @llvm.dbg.value(metadata double %140, metadata !1491, metadata !DIExpression()), !dbg !1564
  %141 = fmul double %124, 2.000000e+00, !dbg !1637
  tail call void @llvm.dbg.value(metadata double %141, metadata !1492, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %141, metadata !1493, metadata !DIExpression()), !dbg !1564
  %142 = add nsw i32 %125, -1, !dbg !1638
  tail call void @llvm.dbg.value(metadata i32 %142, metadata !1495, metadata !DIExpression()), !dbg !1564
  br label %122, !dbg !1625, !llvm.loop !1639

143:                                              ; preds = %131, %135
  %144 = call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %125) #7, !dbg !1641
  %145 = fmul double %124, %144, !dbg !1642
  %146 = getelementptr double, ptr %70, i64 %84, !dbg !1643
  store double %145, ptr %146, align 8, !dbg !1644, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 %125, metadata !1495, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1494, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %124, metadata !1492, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %123, metadata !1491, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !1487, metadata !DIExpression()), !dbg !1564
  %147 = icmp sgt i64 %84, 2, !dbg !1597
  br i1 %147, label %83, label %74, !dbg !1599, !llvm.loop !1645

148:                                              ; preds = %148, %81
  %149 = phi i64 [ 1, %81 ], [ %167, %148 ]
  %150 = phi double [ 1.000000e+00, %81 ], [ %163, %148 ]
  %151 = phi i64 [ 0, %81 ], [ %168, %148 ]
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !1494, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %150, metadata !1493, metadata !DIExpression()), !dbg !1564
  %152 = trunc i64 %149 to i32, !dbg !1647
  %153 = sub i32 %77, %152, !dbg !1647
  %154 = sitofp i32 %153 to double, !dbg !1649
  %155 = fmul double %150, %154, !dbg !1650
  tail call void @llvm.dbg.value(metadata double %155, metadata !1493, metadata !DIExpression()), !dbg !1564
  %156 = getelementptr inbounds double, ptr %3, i64 %149, !dbg !1651
  %157 = load double, ptr %156, align 8, !dbg !1651, !tbaa !1279
  %158 = fmul double %155, %157, !dbg !1652
  store double %158, ptr %156, align 8, !dbg !1653, !tbaa !1279
  %159 = add nuw nsw i64 %149, 1, !dbg !1654
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1494, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %0, metadata !1584, metadata !DIExpression()), !dbg !1600
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1494, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %155, metadata !1493, metadata !DIExpression()), !dbg !1564
  %160 = trunc i64 %159 to i32, !dbg !1647
  %161 = sub i32 %77, %160, !dbg !1647
  %162 = sitofp i32 %161 to double, !dbg !1649
  %163 = fmul double %155, %162, !dbg !1650
  tail call void @llvm.dbg.value(metadata double %163, metadata !1493, metadata !DIExpression()), !dbg !1564
  %164 = getelementptr inbounds double, ptr %3, i64 %159, !dbg !1651
  %165 = load double, ptr %164, align 8, !dbg !1651, !tbaa !1279
  %166 = fmul double %163, %165, !dbg !1652
  store double %166, ptr %164, align 8, !dbg !1653, !tbaa !1279
  %167 = add nuw nsw i64 %149, 2, !dbg !1654
  tail call void @llvm.dbg.value(metadata i64 %167, metadata !1494, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %0, metadata !1584, metadata !DIExpression()), !dbg !1600
  %168 = add i64 %151, 2, !dbg !1605
  %169 = icmp eq i64 %168, %82, !dbg !1605
  br i1 %169, label %170, label %148, !dbg !1605, !llvm.loop !1655

170:                                              ; preds = %148, %76
  %171 = phi i64 [ 1, %76 ], [ %167, %148 ]
  %172 = phi double [ 1.000000e+00, %76 ], [ %163, %148 ]
  %173 = icmp eq i64 %79, 0, !dbg !1605
  br i1 %173, label %182, label %174, !dbg !1605

174:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1494, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %172, metadata !1493, metadata !DIExpression()), !dbg !1564
  %175 = trunc i64 %171 to i32, !dbg !1647
  %176 = sub i32 %77, %175, !dbg !1647
  %177 = sitofp i32 %176 to double, !dbg !1649
  %178 = fmul double %172, %177, !dbg !1650
  tail call void @llvm.dbg.value(metadata double %178, metadata !1493, metadata !DIExpression()), !dbg !1564
  %179 = getelementptr inbounds double, ptr %3, i64 %171, !dbg !1651
  %180 = load double, ptr %179, align 8, !dbg !1651, !tbaa !1279
  %181 = fmul double %178, %180, !dbg !1652
  store double %181, ptr %179, align 8, !dbg !1653, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1494, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1564
  call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %0, metadata !1584, metadata !DIExpression()), !dbg !1600
  br label %182, !dbg !1516

182:                                              ; preds = %174, %170, %28, %17, %74, %25, %15, %12, %34, %37
  %183 = phi i32 [ 1, %12 ], [ 0, %34 ], [ 0, %37 ], [ 0, %15 ], [ 0, %25 ], [ 0, %74 ], [ 0, %17 ], [ 0, %28 ], [ 0, %170 ], [ 0, %174 ], !dbg !1657
  ret i32 %183, !dbg !1516
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_prob_series_e(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !1658 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1663, metadata !DIExpression()), !dbg !1678
  tail call void @llvm.dbg.value(metadata double %1, metadata !1664, metadata !DIExpression()), !dbg !1678
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1665, metadata !DIExpression()), !dbg !1678
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1666, metadata !DIExpression()), !dbg !1678
  %5 = icmp slt i32 %0, 0, !dbg !1679
  br i1 %5, label %6, label %8, !dbg !1680

6:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1681, !tbaa !205
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1681
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !1681, !tbaa !214
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 833, i32 noundef 1) #7, !dbg !1684
  br label %57, !dbg !1684

8:                                                ; preds = %4
  switch i32 %0, label %9 [
    i32 0, label %12
    i32 1, label %15
  ], !dbg !1686

9:                                                ; preds = %8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1677, metadata !DIExpression()), !dbg !1687
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1675, metadata !DIExpression()), !dbg !1687
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1674, metadata !DIExpression()), !dbg !1687
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1672, metadata !DIExpression()), !dbg !1687
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1667, metadata !DIExpression()), !dbg !1687
  %10 = tail call double @llvm.fabs.f64(double %1)
  %11 = zext nneg i32 %0 to i64, !dbg !1688
  br label %29, !dbg !1688

12:                                               ; preds = %8
  %13 = load double, ptr %2, align 8, !dbg !1690, !tbaa !1279
  store double %13, ptr %3, align 8, !dbg !1692, !tbaa !205
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1693
  store double 0.000000e+00, ptr %14, align 8, !dbg !1694, !tbaa !214
  br label %57, !dbg !1695

15:                                               ; preds = %8
  %16 = load double, ptr %2, align 8, !dbg !1696, !tbaa !1279
  %17 = getelementptr inbounds double, ptr %2, i64 1, !dbg !1698
  %18 = load double, ptr %17, align 8, !dbg !1698, !tbaa !1279
  %19 = fmul double %18, %1, !dbg !1699
  %20 = fadd double %16, %19, !dbg !1700
  store double %20, ptr %3, align 8, !dbg !1701, !tbaa !205
  %21 = load double, ptr %2, align 8, !dbg !1702, !tbaa !1279
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !1703
  %23 = load double, ptr %17, align 8, !dbg !1704, !tbaa !1279
  %24 = fmul double %23, %1, !dbg !1705
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !1706
  %26 = fadd double %22, %25, !dbg !1707
  %27 = fmul double %26, 0x3CC0000000000000, !dbg !1708
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1709
  store double %27, ptr %28, align 8, !dbg !1710, !tbaa !214
  br label %57, !dbg !1711

29:                                               ; preds = %9, %29
  %30 = phi i64 [ %11, %9 ], [ %50, %29 ]
  %31 = phi double [ 0.000000e+00, %9 ], [ %32, %29 ]
  %32 = phi double [ 0.000000e+00, %9 ], [ %49, %29 ]
  %33 = phi double [ 0.000000e+00, %9 ], [ %34, %29 ]
  %34 = phi double [ 0.000000e+00, %9 ], [ %43, %29 ]
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1677, metadata !DIExpression()), !dbg !1687
  tail call void @llvm.dbg.value(metadata double %31, metadata !1675, metadata !DIExpression()), !dbg !1687
  tail call void @llvm.dbg.value(metadata double %32, metadata !1674, metadata !DIExpression()), !dbg !1687
  tail call void @llvm.dbg.value(metadata double %33, metadata !1672, metadata !DIExpression()), !dbg !1687
  tail call void @llvm.dbg.value(metadata double %34, metadata !1667, metadata !DIExpression()), !dbg !1687
  tail call void @llvm.dbg.value(metadata double %34, metadata !1673, metadata !DIExpression()), !dbg !1687
  %35 = getelementptr inbounds double, ptr %2, i64 %30, !dbg !1712
  %36 = load double, ptr %35, align 8, !dbg !1712, !tbaa !1279
  %37 = fmul double %34, %1, !dbg !1715
  %38 = fadd double %37, %36, !dbg !1716
  %39 = trunc i64 %30 to i32, !dbg !1717
  %40 = add i32 %39, 1, !dbg !1717
  %41 = sitofp i32 %40 to double, !dbg !1717
  %42 = fmul double %33, %41, !dbg !1718
  %43 = fsub double %38, %42, !dbg !1719
  tail call void @llvm.dbg.value(metadata double %43, metadata !1667, metadata !DIExpression()), !dbg !1687
  tail call void @llvm.dbg.value(metadata double %34, metadata !1672, metadata !DIExpression()), !dbg !1687
  tail call void @llvm.dbg.value(metadata double %32, metadata !1676, metadata !DIExpression()), !dbg !1687
  %44 = tail call double @llvm.fabs.f64(double %36), !dbg !1720
  %45 = fmul double %44, 0x3CB0000000000000, !dbg !1721
  %46 = fmul double %10, %32, !dbg !1722
  %47 = fadd double %46, %45, !dbg !1723
  %48 = fmul double %31, %41, !dbg !1724
  %49 = fadd double %48, %47, !dbg !1725
  tail call void @llvm.dbg.value(metadata double %49, metadata !1674, metadata !DIExpression()), !dbg !1687
  tail call void @llvm.dbg.value(metadata double %32, metadata !1675, metadata !DIExpression()), !dbg !1687
  %50 = add nsw i64 %30, -1, !dbg !1726
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1677, metadata !DIExpression()), !dbg !1687
  %51 = icmp eq i64 %30, 0, !dbg !1727
  br i1 %51, label %52, label %29, !dbg !1688, !llvm.loop !1728

52:                                               ; preds = %29
  store double %43, ptr %3, align 8, !dbg !1730, !tbaa !205
  %53 = tail call double @llvm.fabs.f64(double %43), !dbg !1731
  %54 = fmul double %53, 0x3CB0000000000000, !dbg !1732
  %55 = fadd double %49, %54, !dbg !1733
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1734
  store double %55, ptr %56, align 8, !dbg !1735, !tbaa !214
  br label %57

57:                                               ; preds = %6, %12, %15, %52
  %58 = phi i32 [ 1, %6 ], [ 0, %12 ], [ 0, %15 ], [ 0, %52 ], !dbg !1736
  ret i32 %58, !dbg !1737
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_prob_series(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !1738 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1742, metadata !DIExpression()), !dbg !1747
  tail call void @llvm.dbg.value(metadata double %1, metadata !1743, metadata !DIExpression()), !dbg !1747
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1744, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %0, metadata !1663, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata double %1, metadata !1664, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %2, metadata !1665, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr undef, metadata !1666, metadata !DIExpression()), !dbg !1748
  %4 = icmp slt i32 %0, 0, !dbg !1750
  br i1 %4, label %58, label %5, !dbg !1751

5:                                                ; preds = %3
  switch i32 %0, label %6 [
    i32 0, label %25
    i32 1, label %27
  ], !dbg !1752

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 %0, metadata !1677, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1675, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1674, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1672, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1667, metadata !DIExpression()), !dbg !1753
  %7 = zext nneg i32 %0 to i64, !dbg !1754
  %8 = and i64 %7, 1, !dbg !1754
  %9 = icmp eq i64 %8, 0, !dbg !1754
  br i1 %9, label %10, label %20, !dbg !1754

10:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !1677, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1675, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1674, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1672, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1667, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1673, metadata !DIExpression()), !dbg !1753
  %11 = getelementptr inbounds double, ptr %2, i64 %7, !dbg !1755
  %12 = load double, ptr %11, align 8, !dbg !1755, !tbaa !1279
  %13 = fmul double %1, 0.000000e+00, !dbg !1756
  %14 = fadd double %13, %12, !dbg !1757
  %15 = add nuw i32 %0, 1, !dbg !1758
  %16 = sitofp i32 %15 to double, !dbg !1758
  %17 = fmul double %16, 0.000000e+00, !dbg !1759
  %18 = fsub double %14, %17, !dbg !1760
  call void @llvm.dbg.value(metadata double %18, metadata !1667, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1672, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1676, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1674, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1675, metadata !DIExpression()), !dbg !1753
  %19 = add nsw i64 %7, -1, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %19, metadata !1677, metadata !DIExpression()), !dbg !1753
  br label %20, !dbg !1754

20:                                               ; preds = %10, %6
  %21 = phi double [ undef, %6 ], [ %18, %10 ]
  %22 = phi i64 [ %7, %6 ], [ %19, %10 ]
  %23 = phi double [ 0.000000e+00, %6 ], [ %18, %10 ]
  %24 = icmp eq i32 %0, 0, !dbg !1754
  br i1 %24, label %59, label %33, !dbg !1754

25:                                               ; preds = %5
  %26 = load double, ptr %2, align 8, !dbg !1762, !tbaa !1279
  tail call void @llvm.dbg.value(metadata double %26, metadata !1745, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1747
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1747
  br label %59, !dbg !1763

27:                                               ; preds = %5
  %28 = load double, ptr %2, align 8, !dbg !1764, !tbaa !1279
  %29 = getelementptr inbounds double, ptr %2, i64 1, !dbg !1765
  %30 = load double, ptr %29, align 8, !dbg !1765, !tbaa !1279
  %31 = fmul double %30, %1, !dbg !1766
  %32 = fadd double %28, %31, !dbg !1767
  tail call void @llvm.dbg.value(metadata double %32, metadata !1745, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1747
  tail call void @llvm.dbg.value(metadata double poison, metadata !1745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1747
  br label %59, !dbg !1768

33:                                               ; preds = %20, %33
  %34 = phi i64 [ %56, %33 ], [ %22, %20 ]
  %35 = phi double [ %45, %33 ], [ 0.000000e+00, %20 ]
  %36 = phi double [ %55, %33 ], [ %23, %20 ]
  call void @llvm.dbg.value(metadata i64 %34, metadata !1677, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1675, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1674, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double %35, metadata !1672, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double %36, metadata !1667, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double %36, metadata !1673, metadata !DIExpression()), !dbg !1753
  %37 = getelementptr inbounds double, ptr %2, i64 %34, !dbg !1755
  %38 = load double, ptr %37, align 8, !dbg !1755, !tbaa !1279
  %39 = fmul double %36, %1, !dbg !1756
  %40 = fadd double %39, %38, !dbg !1757
  %41 = trunc i64 %34 to i32, !dbg !1758
  %42 = add i32 %41, 1, !dbg !1758
  %43 = sitofp i32 %42 to double, !dbg !1758
  %44 = fmul double %35, %43, !dbg !1759
  %45 = fsub double %40, %44, !dbg !1760
  call void @llvm.dbg.value(metadata double %45, metadata !1667, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double %36, metadata !1672, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1676, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1674, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1675, metadata !DIExpression()), !dbg !1753
  %46 = add nsw i64 %34, -1, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %46, metadata !1677, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %46, metadata !1677, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1675, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1674, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double %36, metadata !1672, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double %45, metadata !1667, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double %45, metadata !1673, metadata !DIExpression()), !dbg !1753
  %47 = getelementptr inbounds double, ptr %2, i64 %46, !dbg !1755
  %48 = load double, ptr %47, align 8, !dbg !1755, !tbaa !1279
  %49 = fmul double %45, %1, !dbg !1756
  %50 = fadd double %49, %48, !dbg !1757
  %51 = trunc i64 %46 to i32, !dbg !1758
  %52 = add i32 %51, 1, !dbg !1758
  %53 = sitofp i32 %52 to double, !dbg !1758
  %54 = fmul double %36, %53, !dbg !1759
  %55 = fsub double %50, %54, !dbg !1760
  call void @llvm.dbg.value(metadata double %55, metadata !1667, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double %45, metadata !1672, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1676, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1674, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata double poison, metadata !1675, metadata !DIExpression()), !dbg !1753
  %56 = add nsw i64 %34, -2, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %56, metadata !1677, metadata !DIExpression()), !dbg !1753
  %57 = icmp eq i64 %46, 0, !dbg !1769
  br i1 %57, label %59, label %33, !dbg !1754, !llvm.loop !1770

58:                                               ; preds = %3
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1745, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1747
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1747
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 833, i32 noundef 1) #7, !dbg !1772
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1745, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1747
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1746, metadata !DIExpression()), !dbg !1747
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 877, i32 noundef 1) #7, !dbg !1773
  br label %59, !dbg !1773

59:                                               ; preds = %20, %33, %27, %25, %58
  %60 = phi double [ 0x7FF8000000000000, %58 ], [ %26, %25 ], [ %32, %27 ], [ %21, %20 ], [ %55, %33 ]
  ret double %60, !dbg !1777
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_phys_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1778 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1780, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata double %1, metadata !1781, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1782, metadata !DIExpression()), !dbg !1792
  %4 = icmp slt i32 %0, 0, !dbg !1793
  br i1 %4, label %5, label %6, !dbg !1794

5:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 886, i32 noundef 1) #7, !dbg !1795
  br label %80, !dbg !1795

6:                                                ; preds = %3
  switch i32 %0, label %11 [
    i32 0, label %7
    i32 1, label %8
  ], !dbg !1798

7:                                                ; preds = %6
  store double 1.000000e+00, ptr %2, align 8, !dbg !1799, !tbaa !1279
  br label %80, !dbg !1801

8:                                                ; preds = %6
  store double 1.000000e+00, ptr %2, align 8, !dbg !1802, !tbaa !1279
  %9 = fmul double %1, 2.000000e+00, !dbg !1804
  %10 = getelementptr inbounds double, ptr %2, i64 1, !dbg !1805
  store double %9, ptr %10, align 8, !dbg !1806, !tbaa !1279
  br label %80, !dbg !1807

11:                                               ; preds = %6
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1783, metadata !DIExpression()), !dbg !1808
  %12 = fmul double %1, 2.000000e+00, !dbg !1809
  tail call void @llvm.dbg.value(metadata double %12, metadata !1788, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata double %12, metadata !1789, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1790, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1791, metadata !DIExpression()), !dbg !1808
  store double 1.000000e+00, ptr %2, align 8, !dbg !1810, !tbaa !1279
  %13 = getelementptr inbounds double, ptr %2, i64 1, !dbg !1811
  store double %12, ptr %13, align 8, !dbg !1812, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1790, metadata !DIExpression()), !dbg !1808
  %14 = zext nneg i32 %0 to i64, !dbg !1813
  br label %15, !dbg !1816

15:                                               ; preds = %11, %74
  %16 = phi i64 [ 1, %11 ], [ %77, %74 ]
  %17 = phi i32 [ 0, %11 ], [ %56, %74 ]
  %18 = phi double [ %12, %11 ], [ %55, %74 ]
  %19 = phi double [ 1.000000e+00, %11 ], [ %54, %74 ]
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1791, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !1790, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata double %18, metadata !1788, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata double %19, metadata !1783, metadata !DIExpression()), !dbg !1808
  %20 = fmul double %12, %18, !dbg !1817
  %21 = trunc i64 %16 to i32, !dbg !1819
  %22 = sitofp i32 %21 to double, !dbg !1819
  %23 = fmul double %22, 2.000000e+00, !dbg !1820
  %24 = fmul double %19, %23, !dbg !1821
  %25 = fsub double %20, %24, !dbg !1822
  tail call void @llvm.dbg.value(metadata double %25, metadata !1789, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata double %18, metadata !1783, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata double %25, metadata !1788, metadata !DIExpression()), !dbg !1808
  %26 = tail call double @llvm.fabs.f64(double %18), !dbg !1823
  %27 = tail call double @llvm.fabs.f64(double %25), !dbg !1823
  %28 = fcmp olt double %26, %27, !dbg !1823
  %29 = select i1 %28, double %26, double %27, !dbg !1823
  %30 = fcmp ogt double %29, 0x2010000000000000, !dbg !1824
  br i1 %30, label %31, label %49, !dbg !1825

31:                                               ; preds = %15, %40
  %32 = phi double [ %45, %40 ], [ %27, %15 ]
  %33 = phi double [ %44, %40 ], [ %26, %15 ]
  %34 = phi i32 [ %43, %40 ], [ %17, %15 ]
  %35 = phi double [ %42, %40 ], [ %25, %15 ]
  %36 = phi double [ %41, %40 ], [ %18, %15 ]
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !1791, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata double %35, metadata !1789, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata double %36, metadata !1783, metadata !DIExpression()), !dbg !1808
  %37 = fcmp ogt double %33, %32, !dbg !1826
  %38 = select i1 %37, double %33, double %32, !dbg !1826
  %39 = fcmp ogt double %38, 0x5FEFFFFFFFFFFFFF, !dbg !1827
  br i1 %39, label %40, label %49, !dbg !1828

40:                                               ; preds = %31
  %41 = fmul double %36, 5.000000e-01, !dbg !1829
  tail call void @llvm.dbg.value(metadata double %41, metadata !1783, metadata !DIExpression()), !dbg !1808
  %42 = fmul double %35, 5.000000e-01, !dbg !1831
  tail call void @llvm.dbg.value(metadata double %42, metadata !1788, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata double %42, metadata !1789, metadata !DIExpression()), !dbg !1808
  %43 = add nsw i32 %34, 1, !dbg !1832
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !1791, metadata !DIExpression()), !dbg !1808
  %44 = tail call double @llvm.fabs.f64(double %41), !dbg !1823
  %45 = tail call double @llvm.fabs.f64(double %42), !dbg !1823
  %46 = fcmp olt double %44, %45, !dbg !1823
  %47 = select i1 %46, double %44, double %45, !dbg !1823
  %48 = fcmp ogt double %47, 0x2010000000000000, !dbg !1824
  br i1 %48, label %31, label %49, !dbg !1825, !llvm.loop !1833

49:                                               ; preds = %31, %40, %15
  %50 = phi double [ %18, %15 ], [ %36, %31 ], [ %41, %40 ]
  %51 = phi double [ %25, %15 ], [ %35, %31 ], [ %42, %40 ]
  %52 = phi i32 [ %17, %15 ], [ %34, %31 ], [ %43, %40 ]
  br label %53, !dbg !1835

53:                                               ; preds = %49, %70
  %54 = phi double [ %71, %70 ], [ %50, %49 ], !dbg !1836
  %55 = phi double [ %72, %70 ], [ %51, %49 ], !dbg !1836
  %56 = phi i32 [ %73, %70 ], [ %52, %49 ], !dbg !1808
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !1791, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata double %55, metadata !1789, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata double %55, metadata !1788, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata double %54, metadata !1783, metadata !DIExpression()), !dbg !1808
  %57 = tail call double @llvm.fabs.f64(double %54), !dbg !1837
  %58 = fcmp olt double %57, 0x2000000000000000, !dbg !1838
  %59 = fcmp une double %54, 0.000000e+00
  %60 = select i1 %58, i1 %59, i1 false, !dbg !1839
  %61 = tail call double @llvm.fabs.f64(double %55), !dbg !1840
  br i1 %60, label %66, label %62, !dbg !1839

62:                                               ; preds = %53
  %63 = fcmp olt double %61, 0x2000000000000000, !dbg !1841
  %64 = fcmp une double %55, 0.000000e+00
  %65 = select i1 %63, i1 %64, i1 false, !dbg !1842
  br i1 %65, label %66, label %74, !dbg !1842

66:                                               ; preds = %53, %62
  %67 = fcmp ogt double %57, %61, !dbg !1843
  %68 = select i1 %67, double %57, double %61, !dbg !1843
  %69 = fcmp olt double %68, 0x5FDFFFFFFFFFFFFF, !dbg !1844
  br i1 %69, label %70, label %74, !dbg !1835

70:                                               ; preds = %66
  %71 = fmul double %54, 2.000000e+00, !dbg !1845
  tail call void @llvm.dbg.value(metadata double %71, metadata !1783, metadata !DIExpression()), !dbg !1808
  %72 = fmul double %55, 2.000000e+00, !dbg !1847
  tail call void @llvm.dbg.value(metadata double %72, metadata !1788, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata double %72, metadata !1789, metadata !DIExpression()), !dbg !1808
  %73 = add nsw i32 %56, -1, !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !1791, metadata !DIExpression()), !dbg !1808
  br label %53, !dbg !1835, !llvm.loop !1849

74:                                               ; preds = %62, %66
  %75 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %56) #7, !dbg !1851
  %76 = fmul double %55, %75, !dbg !1852
  %77 = add nuw nsw i64 %16, 1, !dbg !1853
  %78 = getelementptr inbounds double, ptr %2, i64 %77, !dbg !1854
  store double %76, ptr %78, align 8, !dbg !1855, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !1791, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !1790, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata double %55, metadata !1788, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata double %54, metadata !1783, metadata !DIExpression()), !dbg !1808
  %79 = icmp eq i64 %77, %14, !dbg !1813
  br i1 %79, label %80, label %15, !dbg !1816, !llvm.loop !1856

80:                                               ; preds = %74, %5, %7, %8
  %81 = phi i32 [ 1, %5 ], [ 0, %7 ], [ 0, %8 ], [ 0, %74 ], !dbg !1858
  ret i32 %81, !dbg !1859
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_phys_array_der(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !1860 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1862, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1863, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata double %2, metadata !1864, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1865, metadata !DIExpression()), !dbg !1883
  %5 = or i32 %1, %0, !dbg !1884
  %6 = icmp sgt i32 %5, -1, !dbg !1884
  br i1 %6, label %8, label %7, !dbg !1884

7:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 941, i32 noundef 1) #7, !dbg !1885
  br label %142, !dbg !1885

8:                                                ; preds = %4
  %9 = icmp eq i32 %0, 0, !dbg !1888
  br i1 %9, label %10, label %12, !dbg !1889

10:                                               ; preds = %8
  %11 = tail call i32 @gsl_sf_hermite_phys_array(i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !1890, !range !864
  br label %142, !dbg !1892

12:                                               ; preds = %8
  %13 = icmp slt i32 %1, %0, !dbg !1893
  br i1 %13, label %14, label %20, !dbg !1894

14:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !1895
  %15 = icmp slt i32 %1, 0, !dbg !1896
  br i1 %15, label %142, label %16, !dbg !1899

16:                                               ; preds = %14
  %17 = add nuw nsw i32 %1, 1, !dbg !1899
  %18 = zext nneg i32 %17 to i64, !dbg !1899
  %19 = shl nuw nsw i64 %18, 3, !dbg !1899
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, i8 0, i64 %19, i1 false), !dbg !1900, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1866, metadata !DIExpression()), !dbg !1895
  br label %142, !dbg !1902

20:                                               ; preds = %12
  %21 = icmp eq i32 %1, %0, !dbg !1903
  br i1 %21, label %22, label %32, !dbg !1904

22:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1871, metadata !DIExpression()), !dbg !1905
  %23 = icmp sgt i32 %1, 0, !dbg !1906
  %24 = zext nneg i32 %1 to i64
  br i1 %23, label %25, label %27, !dbg !1909

25:                                               ; preds = %22
  %26 = shl nuw nsw i64 %24, 3, !dbg !1909
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %26, i1 false), !dbg !1910, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1871, metadata !DIExpression()), !dbg !1905
  br label %27, !dbg !1912

27:                                               ; preds = %22, %25
  %28 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %1) #7, !dbg !1912
  %29 = tail call double @gsl_sf_fact(i32 noundef %1) #7, !dbg !1913
  %30 = fmul double %28, %29, !dbg !1914
  %31 = getelementptr inbounds double, ptr %3, i64 %24, !dbg !1915
  store double %30, ptr %31, align 8, !dbg !1916, !tbaa !1279
  br label %142

32:                                               ; preds = %20
  %33 = add nuw nsw i32 %0, 1, !dbg !1917
  %34 = icmp eq i32 %33, %1, !dbg !1918
  br i1 %34, label %35, label %53, !dbg !1919

35:                                               ; preds = %32
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1874, metadata !DIExpression()), !dbg !1920
  %36 = icmp sgt i32 %0, 0, !dbg !1921
  br i1 %36, label %37, label %40, !dbg !1924

37:                                               ; preds = %35
  %38 = zext nneg i32 %0 to i64, !dbg !1924
  %39 = shl nuw nsw i64 %38, 3, !dbg !1924
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %39, i1 false), !dbg !1925, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1874, metadata !DIExpression()), !dbg !1920
  br label %40, !dbg !1927

40:                                               ; preds = %37, %35
  %41 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %0) #7, !dbg !1927
  %42 = tail call double @gsl_sf_fact(i32 noundef %0) #7, !dbg !1928
  %43 = fmul double %41, %42, !dbg !1929
  %44 = sext i32 %1 to i64, !dbg !1930
  %45 = getelementptr double, ptr %3, i64 %44, !dbg !1930
  %46 = getelementptr double, ptr %45, i64 -1, !dbg !1930
  store double %43, ptr %46, align 8, !dbg !1931, !tbaa !1279
  %47 = fmul double %43, 2.000000e+00, !dbg !1932
  %48 = sitofp i32 %1 to double, !dbg !1933
  %49 = fmul double %47, %48, !dbg !1934
  %50 = fmul double %49, %2, !dbg !1935
  %51 = zext nneg i32 %1 to i64
  %52 = getelementptr inbounds double, ptr %3, i64 %51, !dbg !1936
  store double %50, ptr %52, align 8, !dbg !1937, !tbaa !1279
  br label %142

53:                                               ; preds = %32
  %54 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %0) #7, !dbg !1938
  %55 = tail call double @gsl_sf_fact(i32 noundef %0) #7, !dbg !1939
  %56 = fmul double %54, %55, !dbg !1940
  tail call void @llvm.dbg.value(metadata double %56, metadata !1877, metadata !DIExpression()), !dbg !1941
  %57 = fmul double %56, 2.000000e+00, !dbg !1942
  %58 = sitofp i32 %33 to double, !dbg !1943
  %59 = fmul double %57, %58, !dbg !1944
  %60 = fmul double %59, %2, !dbg !1945
  tail call void @llvm.dbg.value(metadata double %60, metadata !1879, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %60, metadata !1880, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1882, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1881, metadata !DIExpression()), !dbg !1941
  %61 = icmp sgt i32 %0, 0, !dbg !1946
  %62 = zext nneg i32 %0 to i64
  br i1 %61, label %63, label %65, !dbg !1949

63:                                               ; preds = %53
  %64 = shl nuw nsw i64 %62, 3, !dbg !1949
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %64, i1 false), !dbg !1950, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1881, metadata !DIExpression()), !dbg !1941
  br label %65

65:                                               ; preds = %53, %63
  %66 = getelementptr inbounds double, ptr %3, i64 %62, !dbg !1952
  store double %56, ptr %66, align 8, !dbg !1953, !tbaa !1279
  %67 = sext i32 %33 to i64, !dbg !1954
  %68 = getelementptr inbounds double, ptr %3, i64 %67, !dbg !1954
  store double %60, ptr %68, align 8, !dbg !1955, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !1881, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1882, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %60, metadata !1879, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %56, metadata !1877, metadata !DIExpression()), !dbg !1941
  %69 = icmp slt i32 %33, %1, !dbg !1956
  br i1 %69, label %70, label %142, !dbg !1959

70:                                               ; preds = %65, %137
  %71 = phi i64 [ %81, %137 ], [ %67, %65 ]
  %72 = phi i32 [ %119, %137 ], [ 0, %65 ]
  %73 = phi double [ %118, %137 ], [ %60, %65 ]
  %74 = phi double [ %117, %137 ], [ %56, %65 ]
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !1882, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !1881, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %73, metadata !1879, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %74, metadata !1877, metadata !DIExpression()), !dbg !1941
  %75 = fmul double %73, %2, !dbg !1960
  %76 = trunc i64 %71 to i32, !dbg !1962
  %77 = sitofp i32 %76 to double, !dbg !1962
  %78 = fmul double %74, %77, !dbg !1963
  %79 = fsub double %75, %78, !dbg !1964
  %80 = fmul double %79, 2.000000e+00, !dbg !1965
  %81 = add nsw i64 %71, 1, !dbg !1966
  %82 = trunc i64 %81 to i32, !dbg !1967
  %83 = sitofp i32 %82 to double, !dbg !1967
  %84 = fmul double %80, %83, !dbg !1968
  %85 = sub i32 %76, %0, !dbg !1969
  %86 = add i32 %85, 1, !dbg !1969
  %87 = sitofp i32 %86 to double, !dbg !1970
  %88 = fdiv double %84, %87, !dbg !1971
  tail call void @llvm.dbg.value(metadata double %88, metadata !1880, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %73, metadata !1877, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %88, metadata !1879, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !1882, metadata !DIExpression()), !dbg !1941
  %89 = tail call double @llvm.fabs.f64(double %73), !dbg !1972
  %90 = tail call double @llvm.fabs.f64(double %88), !dbg !1972
  %91 = fcmp olt double %89, %90, !dbg !1972
  %92 = select i1 %91, double %89, double %90, !dbg !1972
  %93 = fcmp ogt double %92, 0x2010000000000000, !dbg !1973
  br i1 %93, label %94, label %112, !dbg !1974

94:                                               ; preds = %70, %103
  %95 = phi double [ %108, %103 ], [ %90, %70 ]
  %96 = phi double [ %107, %103 ], [ %89, %70 ]
  %97 = phi i32 [ %106, %103 ], [ %72, %70 ]
  %98 = phi double [ %105, %103 ], [ %88, %70 ]
  %99 = phi double [ %104, %103 ], [ %73, %70 ]
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !1882, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %98, metadata !1880, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %99, metadata !1877, metadata !DIExpression()), !dbg !1941
  %100 = fcmp ogt double %96, %95, !dbg !1975
  %101 = select i1 %100, double %96, double %95, !dbg !1975
  %102 = fcmp ogt double %101, 0x5FEFFFFFFFFFFFFF, !dbg !1976
  br i1 %102, label %103, label %112, !dbg !1977

103:                                              ; preds = %94
  %104 = fmul double %99, 5.000000e-01, !dbg !1978
  tail call void @llvm.dbg.value(metadata double %104, metadata !1877, metadata !DIExpression()), !dbg !1941
  %105 = fmul double %98, 5.000000e-01, !dbg !1980
  tail call void @llvm.dbg.value(metadata double %105, metadata !1879, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %105, metadata !1880, metadata !DIExpression()), !dbg !1941
  %106 = add nsw i32 %97, 1, !dbg !1981
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !1882, metadata !DIExpression()), !dbg !1941
  %107 = tail call double @llvm.fabs.f64(double %104), !dbg !1972
  %108 = tail call double @llvm.fabs.f64(double %105), !dbg !1972
  %109 = fcmp olt double %107, %108, !dbg !1972
  %110 = select i1 %109, double %107, double %108, !dbg !1972
  %111 = fcmp ogt double %110, 0x2010000000000000, !dbg !1973
  br i1 %111, label %94, label %112, !dbg !1974, !llvm.loop !1982

112:                                              ; preds = %94, %103, %70
  %113 = phi double [ %73, %70 ], [ %99, %94 ], [ %104, %103 ]
  %114 = phi double [ %88, %70 ], [ %98, %94 ], [ %105, %103 ]
  %115 = phi i32 [ %72, %70 ], [ %97, %94 ], [ %106, %103 ]
  br label %116, !dbg !1984

116:                                              ; preds = %112, %133
  %117 = phi double [ %134, %133 ], [ %113, %112 ], !dbg !1985
  %118 = phi double [ %135, %133 ], [ %114, %112 ], !dbg !1985
  %119 = phi i32 [ %136, %133 ], [ %115, %112 ], !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !1882, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %118, metadata !1880, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %118, metadata !1879, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %117, metadata !1877, metadata !DIExpression()), !dbg !1941
  %120 = tail call double @llvm.fabs.f64(double %117), !dbg !1986
  %121 = fcmp olt double %120, 0x2000000000000000, !dbg !1987
  %122 = fcmp une double %117, 0.000000e+00
  %123 = select i1 %121, i1 %122, i1 false, !dbg !1988
  %124 = tail call double @llvm.fabs.f64(double %118), !dbg !1989
  br i1 %123, label %129, label %125, !dbg !1988

125:                                              ; preds = %116
  %126 = fcmp olt double %124, 0x2000000000000000, !dbg !1990
  %127 = fcmp une double %118, 0.000000e+00
  %128 = select i1 %126, i1 %127, i1 false, !dbg !1991
  br i1 %128, label %129, label %137, !dbg !1991

129:                                              ; preds = %116, %125
  %130 = fcmp ogt double %120, %124, !dbg !1992
  %131 = select i1 %130, double %120, double %124, !dbg !1992
  %132 = fcmp olt double %131, 0x5FDFFFFFFFFFFFFF, !dbg !1993
  br i1 %132, label %133, label %137, !dbg !1984

133:                                              ; preds = %129
  %134 = fmul double %117, 2.000000e+00, !dbg !1994
  tail call void @llvm.dbg.value(metadata double %134, metadata !1877, metadata !DIExpression()), !dbg !1941
  %135 = fmul double %118, 2.000000e+00, !dbg !1996
  tail call void @llvm.dbg.value(metadata double %135, metadata !1879, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %135, metadata !1880, metadata !DIExpression()), !dbg !1941
  %136 = add nsw i32 %119, -1, !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 %136, metadata !1882, metadata !DIExpression()), !dbg !1941
  br label %116, !dbg !1984, !llvm.loop !1998

137:                                              ; preds = %125, %129
  %138 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %119) #7, !dbg !2000
  %139 = fmul double %118, %138, !dbg !2001
  %140 = getelementptr inbounds double, ptr %3, i64 %81, !dbg !2002
  store double %139, ptr %140, align 8, !dbg !2003, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !1882, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !1881, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %118, metadata !1879, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata double %117, metadata !1877, metadata !DIExpression()), !dbg !1941
  %141 = icmp eq i32 %82, %1, !dbg !1956
  br i1 %141, label %142, label %70, !dbg !1959, !llvm.loop !2004

142:                                              ; preds = %137, %16, %65, %14, %7, %10, %27, %40
  %143 = phi i32 [ 1, %7 ], [ 0, %10 ], [ 0, %27 ], [ 0, %40 ], [ 0, %14 ], [ 0, %65 ], [ 0, %16 ], [ 0, %137 ], !dbg !2006
  ret i32 %143, !dbg !1902
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_phys_der_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !2007 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2029
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2030
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2031
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2032
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2033
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2009, metadata !DIExpression()), !dbg !2034
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2010, metadata !DIExpression()), !dbg !2034
  tail call void @llvm.dbg.value(metadata double %2, metadata !2011, metadata !DIExpression()), !dbg !2034
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2012, metadata !DIExpression()), !dbg !2034
  %10 = or i32 %1, %0, !dbg !2035
  %11 = icmp sgt i32 %10, -1, !dbg !2035
  br i1 %11, label %13, label %12, !dbg !2035

12:                                               ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1019, i32 noundef 1) #7, !dbg !2036
  br label %204, !dbg !2036

13:                                               ; preds = %4
  %14 = icmp eq i32 %1, 0, !dbg !2039
  br i1 %14, label %15, label %21, !dbg !2040

15:                                               ; preds = %13
  store double 1.000000e+00, ptr %3, align 8, !dbg !2041, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2013, metadata !DIExpression()), !dbg !2042
  %16 = icmp slt i32 %0, 1, !dbg !2043
  br i1 %16, label %204, label %17, !dbg !2046

17:                                               ; preds = %15
  %18 = getelementptr i8, ptr %3, i64 8, !dbg !2046
  %19 = zext nneg i32 %0 to i64, !dbg !2046
  %20 = shl nuw nsw i64 %19, 3, !dbg !2046
  tail call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 %20, i1 false), !dbg !2047, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !2013, metadata !DIExpression()), !dbg !2042
  br label %204, !dbg !2049

21:                                               ; preds = %13
  %22 = icmp eq i32 %1, 1, !dbg !2050
  %23 = icmp sgt i32 %0, 0
  %24 = and i1 %23, %22, !dbg !2051
  br i1 %24, label %25, label %34, !dbg !2051

25:                                               ; preds = %21
  %26 = fmul double %2, 2.000000e+00, !dbg !2052
  store double %26, ptr %3, align 8, !dbg !2053, !tbaa !1279
  %27 = getelementptr inbounds double, ptr %3, i64 1, !dbg !2054
  store double 1.000000e+00, ptr %27, align 8, !dbg !2055, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2017, metadata !DIExpression()), !dbg !2056
  %28 = icmp ult i32 %0, 2, !dbg !2057
  br i1 %28, label %204, label %29, !dbg !2060

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %3, i64 16, !dbg !2060
  %31 = add nsw i32 %0, -1, !dbg !2060
  %32 = zext nneg i32 %31 to i64, !dbg !2060
  %33 = shl nuw nsw i64 %32, 3, !dbg !2060
  tail call void @llvm.memset.p0.i64(ptr align 8 %30, i8 0, i64 %33, i1 false), !dbg !2061, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !2017, metadata !DIExpression()), !dbg !2056
  br label %204, !dbg !2049

34:                                               ; preds = %21
  switch i32 %0, label %57 [
    i32 0, label %35
    i32 1, label %41
  ], !dbg !2063

35:                                               ; preds = %34
  call void @llvm.dbg.assign(metadata i1 undef, metadata !859, metadata !DIExpression(), metadata !2033, metadata ptr %9, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i32 %1, metadata !857, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata double %2, metadata !858, metadata !DIExpression()), !dbg !2064
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !2067
  %36 = call i32 @gsl_sf_hermite_phys_e(i32 noundef %1, double noundef %2, ptr noundef nonnull %9), !dbg !2067, !range !864
  call void @llvm.dbg.value(metadata i32 %36, metadata !860, metadata !DIExpression()), !dbg !2064
  %37 = icmp eq i32 %36, 0, !dbg !2068
  br i1 %37, label %39, label %38, !dbg !2067

38:                                               ; preds = %35
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, i32 noundef 1) #7, !dbg !2069
  br label %39, !dbg !2069

39:                                               ; preds = %35, %38
  %40 = load double, ptr %9, align 8, !dbg !2067, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !2070
  store double %40, ptr %3, align 8, !dbg !2071, !tbaa !1279
  br label %204, !dbg !2072

41:                                               ; preds = %34
  call void @llvm.dbg.assign(metadata i1 undef, metadata !859, metadata !DIExpression(), metadata !2032, metadata ptr %8, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 %1, metadata !857, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata double %2, metadata !858, metadata !DIExpression()), !dbg !2073
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !2076
  %42 = call i32 @gsl_sf_hermite_phys_e(i32 noundef %1, double noundef %2, ptr noundef nonnull %8), !dbg !2076, !range !864
  call void @llvm.dbg.value(metadata i32 %42, metadata !860, metadata !DIExpression()), !dbg !2073
  %43 = icmp eq i32 %42, 0, !dbg !2077
  br i1 %43, label %45, label %44, !dbg !2076

44:                                               ; preds = %41
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, i32 noundef 1) #7, !dbg !2078
  br label %45, !dbg !2078

45:                                               ; preds = %41, %44
  %46 = load double, ptr %8, align 8, !dbg !2076, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !2079
  store double %46, ptr %3, align 8, !dbg !2080, !tbaa !1279
  %47 = shl nuw nsw i32 %1, 1, !dbg !2081
  %48 = sitofp i32 %47 to double, !dbg !2082
  %49 = add nsw i32 %1, -1, !dbg !2083
  call void @llvm.dbg.assign(metadata i1 undef, metadata !859, metadata !DIExpression(), metadata !2031, metadata ptr %7, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %49, metadata !857, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata double %2, metadata !858, metadata !DIExpression()), !dbg !2084
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !2086
  %50 = call i32 @gsl_sf_hermite_phys_e(i32 noundef %49, double noundef %2, ptr noundef nonnull %7), !dbg !2086, !range !864
  call void @llvm.dbg.value(metadata i32 %50, metadata !860, metadata !DIExpression()), !dbg !2084
  %51 = icmp eq i32 %50, 0, !dbg !2087
  br i1 %51, label %53, label %52, !dbg !2086

52:                                               ; preds = %45
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, i32 noundef 1) #7, !dbg !2088
  br label %53, !dbg !2088

53:                                               ; preds = %45, %52
  %54 = load double, ptr %7, align 8, !dbg !2086, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !2089
  %55 = fmul double %54, %48, !dbg !2090
  %56 = getelementptr inbounds double, ptr %3, i64 1, !dbg !2091
  store double %55, ptr %56, align 8, !dbg !2092, !tbaa !1279
  br label %204, !dbg !2093

57:                                               ; preds = %34
  %58 = sub nsw i32 %1, %0, !dbg !2094
  call void @llvm.dbg.value(metadata i32 0, metadata !1554, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i32 %58, metadata !1560, metadata !DIExpression()), !dbg !2095
  %59 = tail call i32 @llvm.smax.i32(i32 %58, i32 0), !dbg !2097
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !2020, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.assign(metadata i1 undef, metadata !859, metadata !DIExpression(), metadata !2030, metadata ptr %6, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i32 %59, metadata !857, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata double %2, metadata !858, metadata !DIExpression()), !dbg !2099
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !2101
  %60 = call i32 @gsl_sf_hermite_phys_e(i32 noundef %59, double noundef %2, ptr noundef nonnull %6), !dbg !2101, !range !864
  call void @llvm.dbg.value(metadata i32 %60, metadata !860, metadata !DIExpression()), !dbg !2099
  %61 = icmp eq i32 %60, 0, !dbg !2102
  br i1 %61, label %63, label %62, !dbg !2101

62:                                               ; preds = %57
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, i32 noundef 1) #7, !dbg !2103
  br label %63, !dbg !2103

63:                                               ; preds = %57, %62
  %64 = load double, ptr %6, align 8, !dbg !2101, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !2104
  tail call void @llvm.dbg.value(metadata double %64, metadata !2024, metadata !DIExpression()), !dbg !2098
  %65 = add nuw nsw i32 %59, 1, !dbg !2105
  call void @llvm.dbg.assign(metadata i1 undef, metadata !859, metadata !DIExpression(), metadata !2029, metadata ptr %5, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 %65, metadata !857, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata double %2, metadata !858, metadata !DIExpression()), !dbg !2106
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !2108
  %66 = call i32 @gsl_sf_hermite_phys_e(i32 noundef %65, double noundef %2, ptr noundef nonnull %5), !dbg !2108, !range !864
  call void @llvm.dbg.value(metadata i32 %66, metadata !860, metadata !DIExpression()), !dbg !2106
  %67 = icmp eq i32 %66, 0, !dbg !2109
  br i1 %67, label %69, label %68, !dbg !2108

68:                                               ; preds = %63
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, i32 noundef 1) #7, !dbg !2110
  br label %69, !dbg !2110

69:                                               ; preds = %63, %68
  %70 = load double, ptr %5, align 8, !dbg !2108, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !2111
  tail call void @llvm.dbg.value(metadata double %70, metadata !2025, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %70, metadata !2026, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2027, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2028, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2027, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2098
  %71 = icmp slt i32 %1, %0, !dbg !2112
  br i1 %71, label %72, label %82, !dbg !2115

72:                                               ; preds = %69
  %73 = sext i32 %1 to i64, !dbg !2115
  %74 = shl nsw i64 %73, 3, !dbg !2115
  %75 = getelementptr i8, ptr %3, i64 %74, !dbg !2115
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2115
  %77 = xor i32 %1, -1, !dbg !2115
  %78 = add i32 %77, %0, !dbg !2115
  %79 = zext i32 %78 to i64, !dbg !2115
  %80 = shl nuw nsw i64 %79, 3, !dbg !2115
  %81 = add nuw nsw i64 %80, 8, !dbg !2115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %76, i8 0, i64 %81, i1 false), !dbg !2116, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !2027, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2098
  br label %82, !dbg !2118

82:                                               ; preds = %72, %69
  call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 %0, metadata !1584, metadata !DIExpression()), !dbg !2120
  %83 = call i32 @llvm.smin.i32(i32 %1, i32 %0), !dbg !2118
  %84 = sext i32 %83 to i64, !dbg !2121
  %85 = getelementptr inbounds double, ptr %3, i64 %84, !dbg !2121
  store double %64, ptr %85, align 8, !dbg !2122, !tbaa !1279
  call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i32 %0, metadata !1584, metadata !DIExpression()), !dbg !2123
  %86 = getelementptr double, ptr %85, i64 -1, !dbg !2125
  store double %70, ptr %86, align 8, !dbg !2126, !tbaa !1279
  call void @llvm.dbg.value(metadata i32 %0, metadata !1583, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i32 %1, metadata !1584, metadata !DIExpression()), !dbg !2127
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !2027, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2098
  %87 = getelementptr double, ptr %3, i64 -2, !dbg !2130
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2028, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !2027, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %70, metadata !2025, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %64, metadata !2024, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !2020, metadata !DIExpression()), !dbg !2098
  %88 = icmp sgt i32 %83, 1, !dbg !2131
  br i1 %88, label %89, label %92, !dbg !2133

89:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !2027, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2098
  %90 = fmul double %2, 2.000000e+00
  %91 = zext nneg i32 %83 to i64, !dbg !2133
  br label %101, !dbg !2133

92:                                               ; preds = %162, %82
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2027, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2026, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %0, metadata !1584, metadata !DIExpression()), !dbg !2134
  %93 = icmp slt i32 %83, 1, !dbg !2138
  br i1 %93, label %204, label %94, !dbg !2139

94:                                               ; preds = %92
  %95 = add i32 %1, 1
  %96 = zext nneg i32 %83 to i64, !dbg !2139
  %97 = and i64 %96, 1, !dbg !2139
  %98 = icmp eq i32 %83, 1, !dbg !2139
  br i1 %98, label %191, label %99, !dbg !2139

99:                                               ; preds = %94
  %100 = and i64 %96, 2147483646, !dbg !2139
  br label %167, !dbg !2139

101:                                              ; preds = %89, %162
  %102 = phi i64 [ %91, %89 ], [ %107, %162 ]
  %103 = phi i32 [ 0, %89 ], [ %144, %162 ]
  %104 = phi double [ %70, %89 ], [ %143, %162 ]
  %105 = phi double [ %64, %89 ], [ %142, %162 ]
  %106 = phi i32 [ %59, %89 ], [ %108, %162 ]
  %107 = add nsw i64 %102, -1, !dbg !2140
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !2028, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %104, metadata !2025, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %105, metadata !2024, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !2020, metadata !DIExpression()), !dbg !2098
  %108 = add nuw nsw i32 %106, 1, !dbg !2141
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !2020, metadata !DIExpression()), !dbg !2098
  %109 = fmul double %90, %104, !dbg !2143
  %110 = shl nuw nsw i32 %108, 1, !dbg !2144
  %111 = sitofp i32 %110 to double, !dbg !2145
  %112 = fmul double %105, %111, !dbg !2146
  %113 = fsub double %109, %112, !dbg !2147
  tail call void @llvm.dbg.value(metadata double %113, metadata !2026, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %104, metadata !2024, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %113, metadata !2025, metadata !DIExpression()), !dbg !2098
  %114 = call double @llvm.fabs.f64(double %104), !dbg !2148
  %115 = call double @llvm.fabs.f64(double %113), !dbg !2148
  %116 = fcmp olt double %114, %115, !dbg !2148
  %117 = select i1 %116, double %114, double %115, !dbg !2148
  %118 = fcmp ogt double %117, 0x2010000000000000, !dbg !2149
  br i1 %118, label %119, label %137, !dbg !2150

119:                                              ; preds = %101, %128
  %120 = phi double [ %133, %128 ], [ %115, %101 ]
  %121 = phi double [ %132, %128 ], [ %114, %101 ]
  %122 = phi i32 [ %131, %128 ], [ %103, %101 ]
  %123 = phi double [ %130, %128 ], [ %113, %101 ]
  %124 = phi double [ %129, %128 ], [ %104, %101 ]
  tail call void @llvm.dbg.value(metadata i32 %122, metadata !2028, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %123, metadata !2026, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %124, metadata !2024, metadata !DIExpression()), !dbg !2098
  %125 = fcmp ogt double %121, %120, !dbg !2151
  %126 = select i1 %125, double %121, double %120, !dbg !2151
  %127 = fcmp ogt double %126, 0x5FEFFFFFFFFFFFFF, !dbg !2152
  br i1 %127, label %128, label %137, !dbg !2153

128:                                              ; preds = %119
  %129 = fmul double %124, 5.000000e-01, !dbg !2154
  tail call void @llvm.dbg.value(metadata double %129, metadata !2024, metadata !DIExpression()), !dbg !2098
  %130 = fmul double %123, 5.000000e-01, !dbg !2156
  tail call void @llvm.dbg.value(metadata double %130, metadata !2025, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %130, metadata !2026, metadata !DIExpression()), !dbg !2098
  %131 = add nsw i32 %122, 1, !dbg !2157
  tail call void @llvm.dbg.value(metadata i32 %131, metadata !2028, metadata !DIExpression()), !dbg !2098
  %132 = call double @llvm.fabs.f64(double %129), !dbg !2148
  %133 = call double @llvm.fabs.f64(double %130), !dbg !2148
  %134 = fcmp olt double %132, %133, !dbg !2148
  %135 = select i1 %134, double %132, double %133, !dbg !2148
  %136 = fcmp ogt double %135, 0x2010000000000000, !dbg !2149
  br i1 %136, label %119, label %137, !dbg !2150, !llvm.loop !2158

137:                                              ; preds = %119, %128, %101
  %138 = phi double [ %104, %101 ], [ %124, %119 ], [ %129, %128 ]
  %139 = phi double [ %113, %101 ], [ %123, %119 ], [ %130, %128 ]
  %140 = phi i32 [ %103, %101 ], [ %122, %119 ], [ %131, %128 ]
  br label %141, !dbg !2160

141:                                              ; preds = %137, %158
  %142 = phi double [ %159, %158 ], [ %138, %137 ], !dbg !2161
  %143 = phi double [ %160, %158 ], [ %139, %137 ], !dbg !2161
  %144 = phi i32 [ %161, %158 ], [ %140, %137 ], !dbg !2098
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !2028, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %143, metadata !2026, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %143, metadata !2025, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %142, metadata !2024, metadata !DIExpression()), !dbg !2098
  %145 = call double @llvm.fabs.f64(double %142), !dbg !2162
  %146 = fcmp olt double %145, 0x2000000000000000, !dbg !2163
  %147 = fcmp une double %142, 0.000000e+00
  %148 = select i1 %146, i1 %147, i1 false, !dbg !2164
  %149 = call double @llvm.fabs.f64(double %143), !dbg !2165
  br i1 %148, label %154, label %150, !dbg !2164

150:                                              ; preds = %141
  %151 = fcmp olt double %149, 0x2000000000000000, !dbg !2166
  %152 = fcmp une double %143, 0.000000e+00
  %153 = select i1 %151, i1 %152, i1 false, !dbg !2167
  br i1 %153, label %154, label %162, !dbg !2167

154:                                              ; preds = %141, %150
  %155 = fcmp ogt double %145, %149, !dbg !2168
  %156 = select i1 %155, double %145, double %149, !dbg !2168
  %157 = fcmp olt double %156, 0x5FDFFFFFFFFFFFFF, !dbg !2169
  br i1 %157, label %158, label %162, !dbg !2160

158:                                              ; preds = %154
  %159 = fmul double %142, 2.000000e+00, !dbg !2170
  tail call void @llvm.dbg.value(metadata double %159, metadata !2024, metadata !DIExpression()), !dbg !2098
  %160 = fmul double %143, 2.000000e+00, !dbg !2172
  tail call void @llvm.dbg.value(metadata double %160, metadata !2025, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %160, metadata !2026, metadata !DIExpression()), !dbg !2098
  %161 = add nsw i32 %144, -1, !dbg !2173
  tail call void @llvm.dbg.value(metadata i32 %161, metadata !2028, metadata !DIExpression()), !dbg !2098
  br label %141, !dbg !2160, !llvm.loop !2174

162:                                              ; preds = %150, %154
  %163 = call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %144) #7, !dbg !2176
  %164 = fmul double %143, %163, !dbg !2177
  %165 = getelementptr double, ptr %87, i64 %102, !dbg !2178
  store double %164, ptr %165, align 8, !dbg !2179, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !2028, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2027, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %143, metadata !2025, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %142, metadata !2024, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !2020, metadata !DIExpression()), !dbg !2098
  %166 = icmp sgt i64 %102, 2, !dbg !2131
  br i1 %166, label %101, label %92, !dbg !2133, !llvm.loop !2180

167:                                              ; preds = %167, %99
  %168 = phi i64 [ 1, %99 ], [ %188, %167 ]
  %169 = phi double [ 1.000000e+00, %99 ], [ %184, %167 ]
  %170 = phi i64 [ 0, %99 ], [ %189, %167 ]
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !2027, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %169, metadata !2026, metadata !DIExpression()), !dbg !2098
  %171 = trunc i64 %168 to i32, !dbg !2182
  %172 = sub i32 %95, %171, !dbg !2182
  %173 = sitofp i32 %172 to double, !dbg !2184
  %174 = fmul double %169, %173, !dbg !2185
  %175 = fmul double %174, 2.000000e+00, !dbg !2186
  tail call void @llvm.dbg.value(metadata double %175, metadata !2026, metadata !DIExpression()), !dbg !2098
  %176 = getelementptr inbounds double, ptr %3, i64 %168, !dbg !2187
  %177 = load double, ptr %176, align 8, !dbg !2187, !tbaa !1279
  %178 = fmul double %175, %177, !dbg !2188
  store double %178, ptr %176, align 8, !dbg !2189, !tbaa !1279
  %179 = add nuw nsw i64 %168, 1, !dbg !2190
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !2027, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %0, metadata !1584, metadata !DIExpression()), !dbg !2134
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !2027, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %175, metadata !2026, metadata !DIExpression()), !dbg !2098
  %180 = trunc i64 %179 to i32, !dbg !2182
  %181 = sub i32 %95, %180, !dbg !2182
  %182 = sitofp i32 %181 to double, !dbg !2184
  %183 = fmul double %175, %182, !dbg !2185
  %184 = fmul double %183, 2.000000e+00, !dbg !2186
  tail call void @llvm.dbg.value(metadata double %184, metadata !2026, metadata !DIExpression()), !dbg !2098
  %185 = getelementptr inbounds double, ptr %3, i64 %179, !dbg !2187
  %186 = load double, ptr %185, align 8, !dbg !2187, !tbaa !1279
  %187 = fmul double %184, %186, !dbg !2188
  store double %187, ptr %185, align 8, !dbg !2189, !tbaa !1279
  %188 = add nuw nsw i64 %168, 2, !dbg !2190
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !2027, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %0, metadata !1584, metadata !DIExpression()), !dbg !2134
  %189 = add i64 %170, 2, !dbg !2139
  %190 = icmp eq i64 %189, %100, !dbg !2139
  br i1 %190, label %191, label %167, !dbg !2139, !llvm.loop !2191

191:                                              ; preds = %167, %94
  %192 = phi i64 [ 1, %94 ], [ %188, %167 ]
  %193 = phi double [ 1.000000e+00, %94 ], [ %184, %167 ]
  %194 = icmp eq i64 %97, 0, !dbg !2139
  br i1 %194, label %204, label %195, !dbg !2139

195:                                              ; preds = %191
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2027, metadata !DIExpression()), !dbg !2098
  tail call void @llvm.dbg.value(metadata double %193, metadata !2026, metadata !DIExpression()), !dbg !2098
  %196 = trunc i64 %192 to i32, !dbg !2182
  %197 = sub i32 %95, %196, !dbg !2182
  %198 = sitofp i32 %197 to double, !dbg !2184
  %199 = fmul double %193, %198, !dbg !2185
  %200 = fmul double %199, 2.000000e+00, !dbg !2186
  tail call void @llvm.dbg.value(metadata double %200, metadata !2026, metadata !DIExpression()), !dbg !2098
  %201 = getelementptr inbounds double, ptr %3, i64 %192, !dbg !2187
  %202 = load double, ptr %201, align 8, !dbg !2187, !tbaa !1279
  %203 = fmul double %200, %202, !dbg !2188
  store double %203, ptr %201, align 8, !dbg !2189, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2027, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %0, metadata !1584, metadata !DIExpression()), !dbg !2134
  br label %204, !dbg !2049

204:                                              ; preds = %195, %191, %29, %17, %92, %25, %15, %12, %39, %53
  %205 = phi i32 [ 1, %12 ], [ 0, %39 ], [ 0, %53 ], [ 0, %15 ], [ 0, %25 ], [ 0, %92 ], [ 0, %17 ], [ 0, %29 ], [ 0, %191 ], [ 0, %195 ], !dbg !2193
  ret i32 %205, !dbg !2049
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_phys_series_e(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !2194 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2196, metadata !DIExpression()), !dbg !2211
  tail call void @llvm.dbg.value(metadata double %1, metadata !2197, metadata !DIExpression()), !dbg !2211
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2198, metadata !DIExpression()), !dbg !2211
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2199, metadata !DIExpression()), !dbg !2211
  %5 = icmp slt i32 %0, 0, !dbg !2212
  br i1 %5, label %6, label %8, !dbg !2213

6:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !2214, !tbaa !205
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2214
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !2214, !tbaa !214
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1104, i32 noundef 1) #7, !dbg !2217
  br label %61, !dbg !2217

8:                                                ; preds = %4
  switch i32 %0, label %9 [
    i32 0, label %13
    i32 1, label %16
  ], !dbg !2219

9:                                                ; preds = %8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2210, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2208, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2207, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2205, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2200, metadata !DIExpression()), !dbg !2220
  %10 = fmul double %1, 2.000000e+00
  %11 = tail call double @llvm.fabs.f64(double %10)
  %12 = zext nneg i32 %0 to i64, !dbg !2221
  br label %32, !dbg !2221

13:                                               ; preds = %8
  %14 = load double, ptr %2, align 8, !dbg !2223, !tbaa !1279
  store double %14, ptr %3, align 8, !dbg !2225, !tbaa !205
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2226
  store double 0.000000e+00, ptr %15, align 8, !dbg !2227, !tbaa !214
  br label %61, !dbg !2228

16:                                               ; preds = %8
  %17 = load double, ptr %2, align 8, !dbg !2229, !tbaa !1279
  %18 = getelementptr inbounds double, ptr %2, i64 1, !dbg !2231
  %19 = load double, ptr %18, align 8, !dbg !2231, !tbaa !1279
  %20 = fmul double %19, 2.000000e+00, !dbg !2232
  %21 = fmul double %20, %1, !dbg !2233
  %22 = fadd double %17, %21, !dbg !2234
  store double %22, ptr %3, align 8, !dbg !2235, !tbaa !205
  %23 = load double, ptr %2, align 8, !dbg !2236, !tbaa !1279
  %24 = tail call double @llvm.fabs.f64(double %23), !dbg !2237
  %25 = load double, ptr %18, align 8, !dbg !2238, !tbaa !1279
  %26 = fmul double %25, 2.000000e+00, !dbg !2239
  %27 = fmul double %26, %1, !dbg !2240
  %28 = tail call double @llvm.fabs.f64(double %27), !dbg !2241
  %29 = fadd double %24, %28, !dbg !2242
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !2243
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2244
  store double %30, ptr %31, align 8, !dbg !2245, !tbaa !214
  br label %61, !dbg !2246

32:                                               ; preds = %9, %32
  %33 = phi i64 [ %12, %9 ], [ %54, %32 ]
  %34 = phi double [ 0.000000e+00, %9 ], [ %35, %32 ]
  %35 = phi double [ 0.000000e+00, %9 ], [ %53, %32 ]
  %36 = phi double [ 0.000000e+00, %9 ], [ %37, %32 ]
  %37 = phi double [ 0.000000e+00, %9 ], [ %47, %32 ]
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2210, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata double %34, metadata !2208, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata double %35, metadata !2207, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata double %36, metadata !2205, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata double %37, metadata !2200, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata double %37, metadata !2206, metadata !DIExpression()), !dbg !2220
  %38 = getelementptr inbounds double, ptr %2, i64 %33, !dbg !2247
  %39 = load double, ptr %38, align 8, !dbg !2247, !tbaa !1279
  %40 = fmul double %10, %37, !dbg !2250
  %41 = fadd double %40, %39, !dbg !2251
  %42 = trunc i64 %33 to i32, !dbg !2252
  %43 = add i32 %42, 1, !dbg !2252
  %44 = sitofp i32 %43 to double, !dbg !2252
  %45 = fmul double %44, 2.000000e+00, !dbg !2253
  %46 = fmul double %36, %45, !dbg !2254
  %47 = fsub double %41, %46, !dbg !2255
  tail call void @llvm.dbg.value(metadata double %47, metadata !2200, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata double %37, metadata !2205, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata double %35, metadata !2209, metadata !DIExpression()), !dbg !2220
  %48 = tail call double @llvm.fabs.f64(double %39), !dbg !2256
  %49 = fmul double %48, 0x3CB0000000000000, !dbg !2257
  %50 = fmul double %11, %35, !dbg !2258
  %51 = fadd double %50, %49, !dbg !2259
  %52 = fmul double %34, %45, !dbg !2260
  %53 = fadd double %52, %51, !dbg !2261
  tail call void @llvm.dbg.value(metadata double %53, metadata !2207, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata double %35, metadata !2208, metadata !DIExpression()), !dbg !2220
  %54 = add nsw i64 %33, -1, !dbg !2262
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !2210, metadata !DIExpression()), !dbg !2220
  %55 = icmp eq i64 %33, 0, !dbg !2263
  br i1 %55, label %56, label %32, !dbg !2221, !llvm.loop !2264

56:                                               ; preds = %32
  store double %47, ptr %3, align 8, !dbg !2266, !tbaa !205
  %57 = tail call double @llvm.fabs.f64(double %47), !dbg !2267
  %58 = fmul double %57, 0x3CB0000000000000, !dbg !2268
  %59 = fadd double %53, %58, !dbg !2269
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2270
  store double %59, ptr %60, align 8, !dbg !2271, !tbaa !214
  br label %61

61:                                               ; preds = %6, %13, %16, %56
  %62 = phi i32 [ 1, %6 ], [ 0, %13 ], [ 0, %16 ], [ 0, %56 ], !dbg !2272
  ret i32 %62, !dbg !2273
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_phys_series(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !2274 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2276, metadata !DIExpression()), !dbg !2281
  tail call void @llvm.dbg.value(metadata double %1, metadata !2277, metadata !DIExpression()), !dbg !2281
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2278, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 %0, metadata !2196, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata double %1, metadata !2197, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata ptr %2, metadata !2198, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata ptr undef, metadata !2199, metadata !DIExpression()), !dbg !2282
  %4 = icmp slt i32 %0, 0, !dbg !2284
  br i1 %4, label %63, label %5, !dbg !2285

5:                                                ; preds = %3
  switch i32 %0, label %6 [
    i32 0, label %27
    i32 1, label %29
  ], !dbg !2286

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 %0, metadata !2210, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2208, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2207, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2205, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2200, metadata !DIExpression()), !dbg !2287
  %7 = fmul double %1, 2.000000e+00
  %8 = zext nneg i32 %0 to i64, !dbg !2288
  %9 = and i64 %8, 1, !dbg !2288
  %10 = icmp eq i64 %9, 0, !dbg !2288
  br i1 %10, label %11, label %22, !dbg !2288

11:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %8, metadata !2210, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2208, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2207, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2205, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2200, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2206, metadata !DIExpression()), !dbg !2287
  %12 = getelementptr inbounds double, ptr %2, i64 %8, !dbg !2289
  %13 = load double, ptr %12, align 8, !dbg !2289, !tbaa !1279
  %14 = fmul double %7, 0.000000e+00, !dbg !2290
  %15 = fadd double %14, %13, !dbg !2291
  %16 = add nuw i32 %0, 1, !dbg !2292
  %17 = sitofp i32 %16 to double, !dbg !2292
  %18 = fmul double %17, 2.000000e+00, !dbg !2293
  %19 = fmul double %18, 0.000000e+00, !dbg !2294
  %20 = fsub double %15, %19, !dbg !2295
  call void @llvm.dbg.value(metadata double %20, metadata !2200, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2205, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2209, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2207, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2208, metadata !DIExpression()), !dbg !2287
  %21 = add nsw i64 %8, -1, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %21, metadata !2210, metadata !DIExpression()), !dbg !2287
  br label %22, !dbg !2288

22:                                               ; preds = %11, %6
  %23 = phi double [ undef, %6 ], [ %20, %11 ]
  %24 = phi i64 [ %8, %6 ], [ %21, %11 ]
  %25 = phi double [ 0.000000e+00, %6 ], [ %20, %11 ]
  %26 = icmp eq i32 %0, 0, !dbg !2288
  br i1 %26, label %64, label %36, !dbg !2288

27:                                               ; preds = %5
  %28 = load double, ptr %2, align 8, !dbg !2297, !tbaa !1279
  tail call void @llvm.dbg.value(metadata double %28, metadata !2279, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2281
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2279, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2281
  br label %64, !dbg !2298

29:                                               ; preds = %5
  %30 = load double, ptr %2, align 8, !dbg !2299, !tbaa !1279
  %31 = getelementptr inbounds double, ptr %2, i64 1, !dbg !2300
  %32 = load double, ptr %31, align 8, !dbg !2300, !tbaa !1279
  %33 = fmul double %32, 2.000000e+00, !dbg !2301
  %34 = fmul double %33, %1, !dbg !2302
  %35 = fadd double %30, %34, !dbg !2303
  tail call void @llvm.dbg.value(metadata double %35, metadata !2279, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2281
  tail call void @llvm.dbg.value(metadata double poison, metadata !2279, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2281
  br label %64, !dbg !2304

36:                                               ; preds = %22, %36
  %37 = phi i64 [ %61, %36 ], [ %24, %22 ]
  %38 = phi double [ %49, %36 ], [ 0.000000e+00, %22 ]
  %39 = phi double [ %60, %36 ], [ %25, %22 ]
  call void @llvm.dbg.value(metadata i64 %37, metadata !2210, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2208, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2207, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double %38, metadata !2205, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double %39, metadata !2200, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double %39, metadata !2206, metadata !DIExpression()), !dbg !2287
  %40 = getelementptr inbounds double, ptr %2, i64 %37, !dbg !2289
  %41 = load double, ptr %40, align 8, !dbg !2289, !tbaa !1279
  %42 = fmul double %7, %39, !dbg !2290
  %43 = fadd double %42, %41, !dbg !2291
  %44 = trunc i64 %37 to i32, !dbg !2292
  %45 = add i32 %44, 1, !dbg !2292
  %46 = sitofp i32 %45 to double, !dbg !2292
  %47 = fmul double %46, 2.000000e+00, !dbg !2293
  %48 = fmul double %38, %47, !dbg !2294
  %49 = fsub double %43, %48, !dbg !2295
  call void @llvm.dbg.value(metadata double %49, metadata !2200, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double %39, metadata !2205, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2209, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2207, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2208, metadata !DIExpression()), !dbg !2287
  %50 = add nsw i64 %37, -1, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %50, metadata !2210, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i64 %50, metadata !2210, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2208, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2207, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double %39, metadata !2205, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double %49, metadata !2200, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double %49, metadata !2206, metadata !DIExpression()), !dbg !2287
  %51 = getelementptr inbounds double, ptr %2, i64 %50, !dbg !2289
  %52 = load double, ptr %51, align 8, !dbg !2289, !tbaa !1279
  %53 = fmul double %7, %49, !dbg !2290
  %54 = fadd double %53, %52, !dbg !2291
  %55 = trunc i64 %50 to i32, !dbg !2292
  %56 = add i32 %55, 1, !dbg !2292
  %57 = sitofp i32 %56 to double, !dbg !2292
  %58 = fmul double %57, 2.000000e+00, !dbg !2293
  %59 = fmul double %39, %58, !dbg !2294
  %60 = fsub double %54, %59, !dbg !2295
  call void @llvm.dbg.value(metadata double %60, metadata !2200, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double %49, metadata !2205, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2209, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2207, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata double poison, metadata !2208, metadata !DIExpression()), !dbg !2287
  %61 = add nsw i64 %37, -2, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %61, metadata !2210, metadata !DIExpression()), !dbg !2287
  %62 = icmp eq i64 %50, 0, !dbg !2305
  br i1 %62, label %64, label %36, !dbg !2288, !llvm.loop !2306

63:                                               ; preds = %3
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !2279, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2281
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !2279, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2281
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1104, i32 noundef 1) #7, !dbg !2308
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !2279, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2281
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2280, metadata !DIExpression()), !dbg !2281
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1148, i32 noundef 1) #7, !dbg !2309
  br label %64, !dbg !2309

64:                                               ; preds = %22, %36, %29, %27, %63
  %65 = phi double [ 0x7FF8000000000000, %63 ], [ %28, %27 ], [ %35, %29 ], [ %23, %22 ], [ %60, %36 ]
  ret double %65, !dbg !2313
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_func_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !2314 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2316, metadata !DIExpression()), !dbg !2328
  tail call void @llvm.dbg.value(metadata double %1, metadata !2317, metadata !DIExpression()), !dbg !2328
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2318, metadata !DIExpression()), !dbg !2328
  %4 = icmp slt i32 %0, 0, !dbg !2329
  br i1 %4, label %5, label %6, !dbg !2330

5:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1158, i32 noundef 1) #7, !dbg !2331
  br label %90, !dbg !2331

6:                                                ; preds = %3
  %7 = fmul double %1, -5.000000e-01, !dbg !2334
  %8 = fmul double %7, %1, !dbg !2334
  %9 = tail call double @exp(double noundef %8) #7, !dbg !2334
  %10 = fdiv double %9, 0x3FF54D264F787EB7, !dbg !2334
  switch i32 %0, label %16 [
    i32 0, label %11
    i32 1, label %12
  ], !dbg !2335

11:                                               ; preds = %6
  store double %10, ptr %2, align 8, !dbg !2336, !tbaa !1279
  br label %90, !dbg !2338

12:                                               ; preds = %6
  store double %10, ptr %2, align 8, !dbg !2339, !tbaa !1279
  %13 = fmul double %10, 0x3FF6A09E667F3BCD, !dbg !2341
  %14 = fmul double %13, %1, !dbg !2342
  %15 = getelementptr inbounds double, ptr %2, i64 1, !dbg !2343
  store double %14, ptr %15, align 8, !dbg !2344, !tbaa !1279
  br label %90, !dbg !2345

16:                                               ; preds = %6
  tail call void @llvm.dbg.value(metadata double %10, metadata !2319, metadata !DIExpression()), !dbg !2346
  %17 = fmul double %10, 0x3FF6A09E667F3BCD, !dbg !2347
  %18 = fmul double %17, %1, !dbg !2348
  tail call void @llvm.dbg.value(metadata double %18, metadata !2324, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata double %18, metadata !2325, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2326, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2327, metadata !DIExpression()), !dbg !2346
  store double %10, ptr %2, align 8, !dbg !2349, !tbaa !1279
  %19 = getelementptr inbounds double, ptr %2, i64 1, !dbg !2350
  store double %18, ptr %19, align 8, !dbg !2351, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2326, metadata !DIExpression()), !dbg !2346
  %20 = fmul double %1, 0x3FF6A09E667F3BCD
  %21 = zext nneg i32 %0 to i64, !dbg !2352
  br label %22, !dbg !2355

22:                                               ; preds = %16, %84
  %23 = phi i64 [ 1, %16 ], [ %87, %84 ]
  %24 = phi i32 [ 0, %16 ], [ %66, %84 ]
  %25 = phi double [ %18, %16 ], [ %65, %84 ]
  %26 = phi double [ %10, %16 ], [ %64, %84 ]
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !2327, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !2326, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata double %25, metadata !2324, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata double %26, metadata !2319, metadata !DIExpression()), !dbg !2346
  %27 = fmul double %20, %25, !dbg !2356
  %28 = trunc i64 %23 to i32, !dbg !2358
  %29 = sitofp i32 %28 to double, !dbg !2358
  %30 = tail call double @sqrt(double noundef %29) #7, !dbg !2359
  %31 = fmul double %26, %30, !dbg !2360
  %32 = fsub double %27, %31, !dbg !2361
  %33 = fadd double %29, 1.000000e+00, !dbg !2362
  %34 = tail call double @sqrt(double noundef %33) #7, !dbg !2363
  %35 = fdiv double %32, %34, !dbg !2364
  tail call void @llvm.dbg.value(metadata double %35, metadata !2325, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata double %25, metadata !2319, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata double %35, metadata !2324, metadata !DIExpression()), !dbg !2346
  %36 = tail call double @llvm.fabs.f64(double %25), !dbg !2365
  %37 = tail call double @llvm.fabs.f64(double %35), !dbg !2365
  %38 = fcmp olt double %36, %37, !dbg !2365
  %39 = select i1 %38, double %36, double %37, !dbg !2365
  %40 = fcmp ogt double %39, 0x2010000000000000, !dbg !2366
  br i1 %40, label %41, label %59, !dbg !2367

41:                                               ; preds = %22, %50
  %42 = phi double [ %55, %50 ], [ %37, %22 ]
  %43 = phi double [ %54, %50 ], [ %36, %22 ]
  %44 = phi i32 [ %53, %50 ], [ %24, %22 ]
  %45 = phi double [ %52, %50 ], [ %35, %22 ]
  %46 = phi double [ %51, %50 ], [ %25, %22 ]
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !2327, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata double %45, metadata !2325, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata double %46, metadata !2319, metadata !DIExpression()), !dbg !2346
  %47 = fcmp ogt double %43, %42, !dbg !2368
  %48 = select i1 %47, double %43, double %42, !dbg !2368
  %49 = fcmp ogt double %48, 0x5FEFFFFFFFFFFFFF, !dbg !2369
  br i1 %49, label %50, label %59, !dbg !2370

50:                                               ; preds = %41
  %51 = fmul double %46, 5.000000e-01, !dbg !2371
  tail call void @llvm.dbg.value(metadata double %51, metadata !2319, metadata !DIExpression()), !dbg !2346
  %52 = fmul double %45, 5.000000e-01, !dbg !2373
  tail call void @llvm.dbg.value(metadata double %52, metadata !2324, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata double %52, metadata !2325, metadata !DIExpression()), !dbg !2346
  %53 = add nsw i32 %44, 1, !dbg !2374
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !2327, metadata !DIExpression()), !dbg !2346
  %54 = tail call double @llvm.fabs.f64(double %51), !dbg !2365
  %55 = tail call double @llvm.fabs.f64(double %52), !dbg !2365
  %56 = fcmp olt double %54, %55, !dbg !2365
  %57 = select i1 %56, double %54, double %55, !dbg !2365
  %58 = fcmp ogt double %57, 0x2010000000000000, !dbg !2366
  br i1 %58, label %41, label %59, !dbg !2367, !llvm.loop !2375

59:                                               ; preds = %41, %50, %22
  %60 = phi double [ %25, %22 ], [ %46, %41 ], [ %51, %50 ]
  %61 = phi double [ %35, %22 ], [ %45, %41 ], [ %52, %50 ]
  %62 = phi i32 [ %24, %22 ], [ %44, %41 ], [ %53, %50 ]
  br label %63, !dbg !2377

63:                                               ; preds = %59, %80
  %64 = phi double [ %81, %80 ], [ %60, %59 ], !dbg !2378
  %65 = phi double [ %82, %80 ], [ %61, %59 ], !dbg !2378
  %66 = phi i32 [ %83, %80 ], [ %62, %59 ], !dbg !2346
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !2327, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata double %65, metadata !2325, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata double %65, metadata !2324, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata double %64, metadata !2319, metadata !DIExpression()), !dbg !2346
  %67 = tail call double @llvm.fabs.f64(double %64), !dbg !2379
  %68 = fcmp olt double %67, 0x2000000000000000, !dbg !2380
  %69 = fcmp une double %64, 0.000000e+00
  %70 = select i1 %68, i1 %69, i1 false, !dbg !2381
  %71 = tail call double @llvm.fabs.f64(double %65), !dbg !2382
  br i1 %70, label %76, label %72, !dbg !2381

72:                                               ; preds = %63
  %73 = fcmp olt double %71, 0x2000000000000000, !dbg !2383
  %74 = fcmp une double %65, 0.000000e+00
  %75 = select i1 %73, i1 %74, i1 false, !dbg !2384
  br i1 %75, label %76, label %84, !dbg !2384

76:                                               ; preds = %63, %72
  %77 = fcmp ogt double %67, %71, !dbg !2385
  %78 = select i1 %77, double %67, double %71, !dbg !2385
  %79 = fcmp olt double %78, 0x5FDFFFFFFFFFFFFF, !dbg !2386
  br i1 %79, label %80, label %84, !dbg !2377

80:                                               ; preds = %76
  %81 = fmul double %64, 2.000000e+00, !dbg !2387
  tail call void @llvm.dbg.value(metadata double %81, metadata !2319, metadata !DIExpression()), !dbg !2346
  %82 = fmul double %65, 2.000000e+00, !dbg !2389
  tail call void @llvm.dbg.value(metadata double %82, metadata !2324, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata double %82, metadata !2325, metadata !DIExpression()), !dbg !2346
  %83 = add nsw i32 %66, -1, !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !2327, metadata !DIExpression()), !dbg !2346
  br label %63, !dbg !2377, !llvm.loop !2391

84:                                               ; preds = %72, %76
  %85 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %66) #7, !dbg !2393
  %86 = fmul double %65, %85, !dbg !2394
  %87 = add nuw nsw i64 %23, 1, !dbg !2395
  %88 = getelementptr inbounds double, ptr %2, i64 %87, !dbg !2396
  store double %86, ptr %88, align 8, !dbg !2397, !tbaa !1279
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !2327, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !2326, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata double %65, metadata !2324, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata double %64, metadata !2319, metadata !DIExpression()), !dbg !2346
  %89 = icmp eq i64 %87, %21, !dbg !2352
  br i1 %89, label %90, label %22, !dbg !2355, !llvm.loop !2398

90:                                               ; preds = %84, %5, %11, %12
  %91 = phi i32 [ 1, %5 ], [ 0, %11 ], [ 0, %12 ], [ 0, %84 ], !dbg !2400
  ret i32 %91, !dbg !2401
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_func_series_e(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !2402 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2404, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata double %1, metadata !2405, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2406, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2407, metadata !DIExpression()), !dbg !2419
  %5 = icmp slt i32 %0, 0, !dbg !2420
  br i1 %5, label %6, label %8, !dbg !2421

6:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !2422, !tbaa !205
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2422
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !2422, !tbaa !214
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1214, i32 noundef 1) #7, !dbg !2425
  br label %92, !dbg !2425

8:                                                ; preds = %4
  switch i32 %0, label %9 [
    i32 0, label %12
    i32 1, label %22
  ], !dbg !2427

9:                                                ; preds = %8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2418, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2416, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2415, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2413, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2408, metadata !DIExpression()), !dbg !2428
  %10 = tail call double @llvm.fabs.f64(double %1)
  %11 = zext nneg i32 %0 to i64, !dbg !2429
  br label %46, !dbg !2429

12:                                               ; preds = %8
  %13 = load double, ptr %2, align 8, !dbg !2431, !tbaa !1279
  %14 = fmul double %1, -5.000000e-01, !dbg !2433
  %15 = fmul double %14, %1, !dbg !2434
  %16 = tail call double @exp(double noundef %15) #7, !dbg !2435
  %17 = fmul double %13, %16, !dbg !2436
  %18 = fdiv double %17, 0x3FF54D264F787EB7, !dbg !2437
  store double %18, ptr %3, align 8, !dbg !2438, !tbaa !205
  %19 = tail call double @llvm.fabs.f64(double %18), !dbg !2439
  %20 = fmul double %19, 0x3CB0000000000000, !dbg !2440
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2441
  store double %20, ptr %21, align 8, !dbg !2442, !tbaa !214
  br label %92, !dbg !2443

22:                                               ; preds = %8
  %23 = load double, ptr %2, align 8, !dbg !2444, !tbaa !1279
  %24 = getelementptr inbounds double, ptr %2, i64 1, !dbg !2446
  %25 = load double, ptr %24, align 8, !dbg !2446, !tbaa !1279
  %26 = fmul double %25, 0x3FF6A09E667F3BCD, !dbg !2447
  %27 = fmul double %26, %1, !dbg !2448
  %28 = fadd double %23, %27, !dbg !2449
  %29 = fmul double %1, -5.000000e-01, !dbg !2450
  %30 = fmul double %29, %1, !dbg !2451
  %31 = tail call double @exp(double noundef %30) #7, !dbg !2452
  %32 = fmul double %31, %28, !dbg !2453
  %33 = fdiv double %32, 0x3FF54D264F787EB7, !dbg !2454
  store double %33, ptr %3, align 8, !dbg !2455, !tbaa !205
  %34 = load double, ptr %2, align 8, !dbg !2456, !tbaa !1279
  %35 = tail call double @llvm.fabs.f64(double %34), !dbg !2457
  %36 = load double, ptr %24, align 8, !dbg !2458, !tbaa !1279
  %37 = fmul double %36, 0x3FF6A09E667F3BCD, !dbg !2459
  %38 = fmul double %37, %1, !dbg !2460
  %39 = tail call double @llvm.fabs.f64(double %38), !dbg !2461
  %40 = fadd double %35, %39, !dbg !2462
  %41 = fmul double %40, 0x3CC0000000000000, !dbg !2463
  %42 = tail call double @exp(double noundef %30) #7, !dbg !2464
  %43 = fmul double %42, %41, !dbg !2465
  %44 = fdiv double %43, 0x3FF54D264F787EB7, !dbg !2466
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2467
  store double %44, ptr %45, align 8, !dbg !2468, !tbaa !214
  br label %92, !dbg !2469

46:                                               ; preds = %9, %46
  %47 = phi i64 [ %11, %9 ], [ %80, %46 ]
  %48 = phi double [ 0.000000e+00, %9 ], [ %49, %46 ]
  %49 = phi double [ 0.000000e+00, %9 ], [ %79, %46 ]
  %50 = phi double [ 0.000000e+00, %9 ], [ %51, %46 ]
  %51 = phi double [ 0.000000e+00, %9 ], [ %69, %46 ]
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !2418, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata double %48, metadata !2416, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata double %49, metadata !2415, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata double %50, metadata !2413, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata double %51, metadata !2408, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata double %51, metadata !2414, metadata !DIExpression()), !dbg !2428
  %52 = getelementptr inbounds double, ptr %2, i64 %47, !dbg !2470
  %53 = load double, ptr %52, align 8, !dbg !2470, !tbaa !1279
  %54 = trunc i64 %47 to i32, !dbg !2473
  %55 = add i32 %54, 1, !dbg !2473
  %56 = sitofp i32 %55 to double, !dbg !2473
  %57 = fdiv double 2.000000e+00, %56, !dbg !2474
  %58 = tail call double @sqrt(double noundef %57) #7, !dbg !2475
  %59 = fmul double %58, %1, !dbg !2476
  %60 = fmul double %51, %59, !dbg !2477
  %61 = fadd double %53, %60, !dbg !2478
  %62 = trunc i64 %47 to i32, !dbg !2479
  %63 = sitofp i32 %62 to double, !dbg !2479
  %64 = fadd double %63, 1.000000e+00, !dbg !2480
  %65 = fadd double %63, 2.000000e+00, !dbg !2481
  %66 = fdiv double %64, %65, !dbg !2482
  %67 = tail call double @sqrt(double noundef %66) #7, !dbg !2483
  %68 = fmul double %50, %67, !dbg !2484
  %69 = fsub double %61, %68, !dbg !2485
  tail call void @llvm.dbg.value(metadata double %69, metadata !2408, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata double %51, metadata !2413, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata double %49, metadata !2417, metadata !DIExpression()), !dbg !2428
  %70 = load double, ptr %52, align 8, !dbg !2486, !tbaa !1279
  %71 = tail call double @llvm.fabs.f64(double %70), !dbg !2487
  %72 = fmul double %71, 0x3CB0000000000000, !dbg !2488
  %73 = tail call double @sqrt(double noundef %57) #7, !dbg !2489
  %74 = fmul double %10, %73, !dbg !2490
  %75 = fmul double %49, %74, !dbg !2491
  %76 = fadd double %72, %75, !dbg !2492
  %77 = tail call double @sqrt(double noundef %66) #7, !dbg !2493
  %78 = fmul double %48, %77, !dbg !2494
  %79 = fadd double %78, %76, !dbg !2495
  tail call void @llvm.dbg.value(metadata double %79, metadata !2415, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata double %49, metadata !2416, metadata !DIExpression()), !dbg !2428
  %80 = add nsw i64 %47, -1, !dbg !2496
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !2418, metadata !DIExpression()), !dbg !2428
  %81 = icmp eq i64 %47, 0, !dbg !2497
  br i1 %81, label %82, label %46, !dbg !2429, !llvm.loop !2498

82:                                               ; preds = %46
  %83 = fmul double %1, -5.000000e-01, !dbg !2500
  %84 = fmul double %83, %1, !dbg !2501
  %85 = tail call double @exp(double noundef %84) #7, !dbg !2502
  %86 = fmul double %69, %85, !dbg !2503
  %87 = fdiv double %86, 0x3FF54D264F787EB7, !dbg !2504
  store double %87, ptr %3, align 8, !dbg !2505, !tbaa !205
  %88 = tail call double @llvm.fabs.f64(double %87), !dbg !2506
  %89 = fmul double %88, 0x3CB0000000000000, !dbg !2507
  %90 = fadd double %79, %89, !dbg !2508
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2509
  store double %90, ptr %91, align 8, !dbg !2510, !tbaa !214
  br label %92

92:                                               ; preds = %6, %12, %22, %82
  %93 = phi i32 [ 1, %6 ], [ 0, %12 ], [ 0, %22 ], [ 0, %82 ], !dbg !2511
  ret i32 %93, !dbg !2512
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_func_series(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !2513 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2520
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2518, metadata !DIExpression(), metadata !2520, metadata ptr %4, metadata !DIExpression()), !dbg !2521
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2515, metadata !DIExpression()), !dbg !2521
  tail call void @llvm.dbg.value(metadata double %1, metadata !2516, metadata !DIExpression()), !dbg !2521
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2517, metadata !DIExpression()), !dbg !2521
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !2522
  %5 = call i32 @gsl_sf_hermite_func_series_e(i32 noundef %0, double noundef %1, ptr noundef %2, ptr noundef nonnull %4), !dbg !2522, !range !864
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2519, metadata !DIExpression()), !dbg !2521
  %6 = icmp eq i32 %5, 0, !dbg !2523
  br i1 %6, label %8, label %7, !dbg !2522

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1258, i32 noundef 1) #7, !dbg !2525
  br label %8, !dbg !2525

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !2522, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !2528
  ret double %9, !dbg !2528
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_func_der_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !2529 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2531, metadata !DIExpression()), !dbg !2552
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2532, metadata !DIExpression()), !dbg !2552
  tail call void @llvm.dbg.value(metadata double %2, metadata !2533, metadata !DIExpression()), !dbg !2552
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2534, metadata !DIExpression()), !dbg !2552
  %5 = or i32 %1, %0, !dbg !2553
  %6 = icmp sgt i32 %5, -1, !dbg !2553
  br i1 %6, label %9, label %7, !dbg !2553

7:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !2554, !tbaa !205
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2554
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !2554, !tbaa !214
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1269, i32 noundef 1) #7, !dbg !2557
  br label %532, !dbg !2557

9:                                                ; preds = %4
  %10 = icmp eq i32 %0, 0, !dbg !2559
  br i1 %10, label %11, label %13, !dbg !2560

11:                                               ; preds = %9
  %12 = tail call i32 @gsl_sf_hermite_func_e(i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !2561, !range !864
  br label %532, !dbg !2563

13:                                               ; preds = %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2535, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2539, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2543, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %2, metadata !2544, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !2545, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !2546, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2547, metadata !DIExpression()), !dbg !2564
  %14 = fmul double %2, 0x3FF6A09E667F3BCD, !dbg !2565
  tail call void @llvm.dbg.value(metadata double %14, metadata !2548, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !2549, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 0x3CB6A09E667F3BCD, metadata !2550, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2551, metadata !DIExpression()), !dbg !2564
  %15 = sub nsw i32 %1, %0, !dbg !2566
  call void @llvm.dbg.value(metadata i32 1, metadata !1554, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i32 %15, metadata !1560, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2568
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 0), !dbg !2570
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !2535, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2551, metadata !DIExpression()), !dbg !2564
  %17 = icmp slt i32 %16, %1, !dbg !2571
  br i1 %17, label %18, label %63, !dbg !2573

18:                                               ; preds = %13
  %19 = tail call i32 @llvm.smin.i32(i32 %1, i32 %0), !dbg !2573
  %20 = and i32 %19, 3, !dbg !2573
  %21 = icmp eq i32 %20, 0, !dbg !2573
  br i1 %21, label %33, label %22, !dbg !2573

22:                                               ; preds = %18, %22
  %23 = phi double [ %30, %22 ], [ 1.000000e+00, %18 ]
  %24 = phi i32 [ %26, %22 ], [ %16, %18 ]
  %25 = phi i32 [ %31, %22 ], [ 0, %18 ]
  tail call void @llvm.dbg.value(metadata double %23, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !2535, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2564
  %26 = add nuw nsw i32 %24, 1, !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !2535, metadata !DIExpression()), !dbg !2564
  %27 = sitofp i32 %26 to double, !dbg !2575
  %28 = fmul double %27, 2.000000e+00, !dbg !2577
  %29 = tail call double @sqrt(double noundef %28) #7, !dbg !2578
  %30 = fmul double %23, %29, !dbg !2579
  tail call void @llvm.dbg.value(metadata double %30, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !2535, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2564
  %31 = add i32 %25, 1, !dbg !2573
  %32 = icmp eq i32 %31, %20, !dbg !2573
  br i1 %32, label %33, label %22, !dbg !2573, !llvm.loop !2580

33:                                               ; preds = %22, %18
  %34 = phi double [ undef, %18 ], [ %30, %22 ]
  %35 = phi double [ 1.000000e+00, %18 ], [ %30, %22 ]
  %36 = phi i32 [ %16, %18 ], [ %26, %22 ]
  %37 = sub i32 %16, %1, !dbg !2573
  %38 = icmp ugt i32 %37, -4, !dbg !2573
  br i1 %38, label %63, label %39, !dbg !2573

39:                                               ; preds = %33, %39
  %40 = phi double [ %61, %39 ], [ %35, %33 ]
  %41 = phi i32 [ %57, %39 ], [ %36, %33 ]
  tail call void @llvm.dbg.value(metadata double %40, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2535, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2564
  %42 = add nuw nsw i32 %41, 1, !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !2535, metadata !DIExpression()), !dbg !2564
  %43 = sitofp i32 %42 to double, !dbg !2575
  %44 = fmul double %43, 2.000000e+00, !dbg !2577
  %45 = tail call double @sqrt(double noundef %44) #7, !dbg !2578
  %46 = fmul double %40, %45, !dbg !2579
  tail call void @llvm.dbg.value(metadata double %46, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !2535, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %46, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !2535, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2564
  %47 = add nuw nsw i32 %41, 2, !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !2535, metadata !DIExpression()), !dbg !2564
  %48 = sitofp i32 %47 to double, !dbg !2575
  %49 = fmul double %48, 2.000000e+00, !dbg !2577
  %50 = tail call double @sqrt(double noundef %49) #7, !dbg !2578
  %51 = fmul double %46, %50, !dbg !2579
  tail call void @llvm.dbg.value(metadata double %51, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !2535, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %51, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !2535, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2564
  %52 = add nuw nsw i32 %41, 3, !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !2535, metadata !DIExpression()), !dbg !2564
  %53 = sitofp i32 %52 to double, !dbg !2575
  %54 = fmul double %53, 2.000000e+00, !dbg !2577
  %55 = tail call double @sqrt(double noundef %54) #7, !dbg !2578
  %56 = fmul double %51, %55, !dbg !2579
  tail call void @llvm.dbg.value(metadata double %56, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !2535, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %56, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !2535, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2564
  %57 = add nuw nsw i32 %41, 4, !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !2535, metadata !DIExpression()), !dbg !2564
  %58 = sitofp i32 %57 to double, !dbg !2575
  %59 = fmul double %58, 2.000000e+00, !dbg !2577
  %60 = tail call double @sqrt(double noundef %59) #7, !dbg !2578
  %61 = fmul double %56, %60, !dbg !2579
  tail call void @llvm.dbg.value(metadata double %61, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !2535, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2564
  %62 = icmp eq i32 %57, %1, !dbg !2571
  br i1 %62, label %63, label %39, !dbg !2573, !llvm.loop !2581

63:                                               ; preds = %33, %39, %13
  %64 = phi double [ 1.000000e+00, %13 ], [ %34, %33 ], [ %61, %39 ], !dbg !2564
  %65 = icmp sgt i32 %0, %1, !dbg !2583
  %66 = sub nsw i32 %0, %1
  br i1 %65, label %67, label %111, !dbg !2585

67:                                               ; preds = %63
  %68 = and i32 %66, 1, !dbg !2586
  %69 = icmp eq i32 %68, 0, !dbg !2586
  %70 = fneg double %64, !dbg !2586
  %71 = select i1 %69, double %64, double %70, !dbg !2586
  tail call void @llvm.dbg.value(metadata double %71, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2535, metadata !DIExpression()), !dbg !2564
  %72 = tail call i32 @llvm.smin.i32(i32 %1, i32 %66)
  %73 = icmp sgt i32 %72, 0, !dbg !2588
  br i1 %73, label %74, label %111, !dbg !2591

74:                                               ; preds = %67
  %75 = and i32 %72, 1, !dbg !2591
  %76 = icmp eq i32 %72, 1, !dbg !2591
  br i1 %76, label %99, label %77, !dbg !2591

77:                                               ; preds = %74
  %78 = and i32 %72, 2147483646, !dbg !2591
  br label %79, !dbg !2591

79:                                               ; preds = %79, %77
  %80 = phi double [ %71, %77 ], [ %95, %79 ]
  %81 = phi i32 [ 0, %77 ], [ %96, %79 ]
  %82 = phi i32 [ 0, %77 ], [ %97, %79 ]
  tail call void @llvm.dbg.value(metadata double %80, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !2535, metadata !DIExpression()), !dbg !2564
  %83 = sub nsw i32 %0, %81, !dbg !2592
  %84 = sitofp i32 %83 to double, !dbg !2594
  %85 = or disjoint i32 %81, 1, !dbg !2595
  %86 = sitofp i32 %85 to double, !dbg !2595
  %87 = fdiv double %84, %86, !dbg !2596
  %88 = fmul double %80, %87, !dbg !2597
  tail call void @llvm.dbg.value(metadata double %88, metadata !2551, metadata !DIExpression()), !dbg !2564
  %89 = or disjoint i32 %81, 1, !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !2535, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %88, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !2535, metadata !DIExpression()), !dbg !2564
  %90 = sub nsw i32 %0, %89, !dbg !2592
  %91 = sitofp i32 %90 to double, !dbg !2594
  %92 = sitofp i32 %89 to double, !dbg !2599
  %93 = fadd double %92, 1.000000e+00, !dbg !2595
  %94 = fdiv double %91, %93, !dbg !2596
  %95 = fmul double %88, %94, !dbg !2597
  tail call void @llvm.dbg.value(metadata double %95, metadata !2551, metadata !DIExpression()), !dbg !2564
  %96 = add nuw nsw i32 %81, 2, !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !2535, metadata !DIExpression()), !dbg !2564
  %97 = add i32 %82, 2, !dbg !2591
  %98 = icmp eq i32 %97, %78, !dbg !2591
  br i1 %98, label %99, label %79, !dbg !2591, !llvm.loop !2600

99:                                               ; preds = %79, %74
  %100 = phi double [ undef, %74 ], [ %95, %79 ]
  %101 = phi double [ %71, %74 ], [ %95, %79 ]
  %102 = phi i32 [ 0, %74 ], [ %96, %79 ]
  %103 = icmp eq i32 %75, 0, !dbg !2591
  br i1 %103, label %111, label %104, !dbg !2591

104:                                              ; preds = %99
  tail call void @llvm.dbg.value(metadata double %101, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2535, metadata !DIExpression()), !dbg !2564
  %105 = sub nsw i32 %0, %102, !dbg !2592
  %106 = sitofp i32 %105 to double, !dbg !2594
  %107 = sitofp i32 %102 to double, !dbg !2599
  %108 = fadd double %107, 1.000000e+00, !dbg !2595
  %109 = fdiv double %106, %108, !dbg !2596
  %110 = fmul double %101, %109, !dbg !2597
  tail call void @llvm.dbg.value(metadata double %110, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2535, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2564
  br label %111, !dbg !2602

111:                                              ; preds = %104, %99, %63, %67
  %112 = phi double [ %71, %67 ], [ %64, %63 ], [ %100, %99 ], [ %110, %104 ], !dbg !2564
  tail call void @llvm.dbg.value(metadata double %112, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !2546, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !2545, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %2, metadata !2544, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2543, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2539, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2535, metadata !DIExpression()), !dbg !2564
  %113 = icmp slt i32 %66, 1, !dbg !2602
  br i1 %113, label %193, label %114, !dbg !2605

114:                                              ; preds = %111
  %115 = tail call double @llvm.fabs.f64(double %2)
  %116 = add i32 %0, 1, !dbg !2605
  %117 = sub i32 %116, %1, !dbg !2605
  br label %118, !dbg !2605

118:                                              ; preds = %114, %190
  %119 = phi double [ 0x3CB0000000000000, %114 ], [ %170, %190 ]
  %120 = phi double [ 0x3CB0000000000000, %114 ], [ %169, %190 ]
  %121 = phi double [ %2, %114 ], [ %168, %190 ]
  %122 = phi double [ 1.000000e+00, %114 ], [ %167, %190 ]
  %123 = phi i32 [ 0, %114 ], [ %166, %190 ]
  %124 = phi i32 [ 1, %114 ], [ %191, %190 ]
  tail call void @llvm.dbg.value(metadata double %119, metadata !2546, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %120, metadata !2545, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %121, metadata !2544, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %122, metadata !2543, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %123, metadata !2539, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %124, metadata !2535, metadata !DIExpression()), !dbg !2564
  %125 = fmul double %121, %2, !dbg !2606
  %126 = sitofp i32 %124 to double, !dbg !2608
  %127 = fmul double %122, %126, !dbg !2609
  %128 = fsub double %125, %127, !dbg !2610
  tail call void @llvm.dbg.value(metadata double %128, metadata !2542, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %121, metadata !2543, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %128, metadata !2544, metadata !DIExpression()), !dbg !2564
  %129 = fmul double %115, %119, !dbg !2611
  %130 = fmul double %120, %126, !dbg !2612
  %131 = fadd double %130, %129, !dbg !2613
  tail call void @llvm.dbg.value(metadata double %131, metadata !2542, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %119, metadata !2545, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %131, metadata !2546, metadata !DIExpression()), !dbg !2564
  %132 = tail call double @llvm.fabs.f64(double %121), !dbg !2614
  %133 = tail call double @llvm.fabs.f64(double %128), !dbg !2614
  %134 = fcmp olt double %132, %133, !dbg !2614
  %135 = select i1 %134, double %132, double %133, !dbg !2614
  %136 = fcmp ogt double %135, 0x2010000000000000, !dbg !2615
  br i1 %136, label %137, label %159, !dbg !2616

137:                                              ; preds = %118, %148
  %138 = phi double [ %155, %148 ], [ %133, %118 ]
  %139 = phi double [ %154, %148 ], [ %132, %118 ]
  %140 = phi double [ %152, %148 ], [ %131, %118 ]
  %141 = phi double [ %151, %148 ], [ %119, %118 ]
  %142 = phi double [ %150, %148 ], [ %128, %118 ]
  %143 = phi double [ %149, %148 ], [ %121, %118 ]
  %144 = phi i32 [ %153, %148 ], [ %123, %118 ]
  tail call void @llvm.dbg.value(metadata double %140, metadata !2546, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %141, metadata !2545, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %142, metadata !2544, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %143, metadata !2543, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !2539, metadata !DIExpression()), !dbg !2564
  %145 = fcmp ogt double %139, %138, !dbg !2617
  %146 = select i1 %145, double %139, double %138, !dbg !2617
  %147 = fcmp ogt double %146, 0x5FEFFFFFFFFFFFFF, !dbg !2618
  br i1 %147, label %148, label %159, !dbg !2619

148:                                              ; preds = %137
  %149 = fmul double %143, 5.000000e-01, !dbg !2620
  tail call void @llvm.dbg.value(metadata double %149, metadata !2543, metadata !DIExpression()), !dbg !2564
  %150 = fmul double %142, 5.000000e-01, !dbg !2622
  tail call void @llvm.dbg.value(metadata double %150, metadata !2544, metadata !DIExpression()), !dbg !2564
  %151 = fmul double %141, 5.000000e-01, !dbg !2623
  tail call void @llvm.dbg.value(metadata double %151, metadata !2545, metadata !DIExpression()), !dbg !2564
  %152 = fmul double %140, 5.000000e-01, !dbg !2624
  tail call void @llvm.dbg.value(metadata double %152, metadata !2546, metadata !DIExpression()), !dbg !2564
  %153 = add nsw i32 %144, 1, !dbg !2625
  tail call void @llvm.dbg.value(metadata i32 %153, metadata !2539, metadata !DIExpression()), !dbg !2564
  %154 = tail call double @llvm.fabs.f64(double %149), !dbg !2614
  %155 = tail call double @llvm.fabs.f64(double %150), !dbg !2614
  %156 = fcmp olt double %154, %155, !dbg !2614
  %157 = select i1 %156, double %154, double %155, !dbg !2614
  %158 = fcmp ogt double %157, 0x2010000000000000, !dbg !2615
  br i1 %158, label %137, label %159, !dbg !2616, !llvm.loop !2626

159:                                              ; preds = %137, %148, %118
  %160 = phi i32 [ %123, %118 ], [ %144, %137 ], [ %153, %148 ]
  %161 = phi double [ %121, %118 ], [ %143, %137 ], [ %149, %148 ]
  %162 = phi double [ %128, %118 ], [ %142, %137 ], [ %150, %148 ]
  %163 = phi double [ %119, %118 ], [ %141, %137 ], [ %151, %148 ]
  %164 = phi double [ %131, %118 ], [ %140, %137 ], [ %152, %148 ]
  br label %165, !dbg !2628

165:                                              ; preds = %159, %184
  %166 = phi i32 [ %189, %184 ], [ %160, %159 ], !dbg !2564
  %167 = phi double [ %185, %184 ], [ %161, %159 ], !dbg !2629
  %168 = phi double [ %186, %184 ], [ %162, %159 ], !dbg !2629
  %169 = phi double [ %187, %184 ], [ %163, %159 ], !dbg !2629
  %170 = phi double [ %188, %184 ], [ %164, %159 ], !dbg !2629
  tail call void @llvm.dbg.value(metadata double %170, metadata !2546, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %169, metadata !2545, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %168, metadata !2544, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %167, metadata !2543, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %166, metadata !2539, metadata !DIExpression()), !dbg !2564
  %171 = tail call double @llvm.fabs.f64(double %167), !dbg !2630
  %172 = fcmp olt double %171, 0x2000000000000000, !dbg !2631
  %173 = fcmp une double %167, 0.000000e+00
  %174 = select i1 %172, i1 %173, i1 false, !dbg !2632
  %175 = tail call double @llvm.fabs.f64(double %168), !dbg !2633
  br i1 %174, label %180, label %176, !dbg !2632

176:                                              ; preds = %165
  %177 = fcmp olt double %175, 0x2000000000000000, !dbg !2634
  %178 = fcmp une double %168, 0.000000e+00
  %179 = select i1 %177, i1 %178, i1 false, !dbg !2635
  br i1 %179, label %180, label %190, !dbg !2635

180:                                              ; preds = %165, %176
  %181 = fcmp ogt double %171, %175, !dbg !2636
  %182 = select i1 %181, double %171, double %175, !dbg !2636
  %183 = fcmp olt double %182, 0x5FDFFFFFFFFFFFFF, !dbg !2637
  br i1 %183, label %184, label %190, !dbg !2628

184:                                              ; preds = %180
  %185 = fmul double %167, 2.000000e+00, !dbg !2638
  tail call void @llvm.dbg.value(metadata double %185, metadata !2543, metadata !DIExpression()), !dbg !2564
  %186 = fmul double %168, 2.000000e+00, !dbg !2640
  tail call void @llvm.dbg.value(metadata double %186, metadata !2544, metadata !DIExpression()), !dbg !2564
  %187 = fmul double %169, 2.000000e+00, !dbg !2641
  tail call void @llvm.dbg.value(metadata double %187, metadata !2545, metadata !DIExpression()), !dbg !2564
  %188 = fmul double %170, 2.000000e+00, !dbg !2642
  tail call void @llvm.dbg.value(metadata double %188, metadata !2546, metadata !DIExpression()), !dbg !2564
  %189 = add nsw i32 %166, -1, !dbg !2643
  tail call void @llvm.dbg.value(metadata i32 %189, metadata !2539, metadata !DIExpression()), !dbg !2564
  br label %165, !dbg !2628, !llvm.loop !2644

190:                                              ; preds = %180, %176
  %191 = add nuw i32 %124, 1, !dbg !2646
  tail call void @llvm.dbg.value(metadata double %170, metadata !2546, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %169, metadata !2545, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %168, metadata !2544, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %167, metadata !2543, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %166, metadata !2539, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %191, metadata !2535, metadata !DIExpression()), !dbg !2564
  %192 = icmp eq i32 %191, %117, !dbg !2602
  br i1 %192, label %193, label %118, !dbg !2605, !llvm.loop !2647

193:                                              ; preds = %190, %111
  %194 = phi i32 [ 0, %111 ], [ %166, %190 ], !dbg !2649
  %195 = phi double [ 1.000000e+00, %111 ], [ %167, %190 ], !dbg !2564
  %196 = phi double [ %2, %111 ], [ %168, %190 ], !dbg !2564
  %197 = phi double [ 0x3CB0000000000000, %111 ], [ %169, %190 ], !dbg !2564
  %198 = phi double [ 0x3CB0000000000000, %111 ], [ %170, %190 ], !dbg !2564
  %199 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %194) #7, !dbg !2650
  %200 = fmul double %195, %199, !dbg !2651
  tail call void @llvm.dbg.value(metadata double %200, metadata !2543, metadata !DIExpression()), !dbg !2564
  %201 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %194) #7, !dbg !2652
  %202 = fmul double %196, %201, !dbg !2653
  tail call void @llvm.dbg.value(metadata double %202, metadata !2544, metadata !DIExpression()), !dbg !2564
  %203 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %194) #7, !dbg !2654
  %204 = fmul double %197, %203, !dbg !2655
  tail call void @llvm.dbg.value(metadata double %204, metadata !2545, metadata !DIExpression()), !dbg !2564
  %205 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %194) #7, !dbg !2656
  %206 = fmul double %198, %205, !dbg !2657
  tail call void @llvm.dbg.value(metadata double %206, metadata !2546, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2542, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2539, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2535, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 0x3CB6A09E667F3BCD, metadata !2550, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !2549, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %14, metadata !2548, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2547, metadata !DIExpression()), !dbg !2564
  %207 = icmp slt i32 %15, 1, !dbg !2658
  br i1 %207, label %295, label %208, !dbg !2661

208:                                              ; preds = %193
  %209 = tail call double @llvm.fabs.f64(double %2)
  %210 = fmul double %209, 0x3FF6A09E667F3BCD
  %211 = add i32 %1, 1, !dbg !2661
  %212 = sub i32 %211, %0, !dbg !2661
  br label %213, !dbg !2661

213:                                              ; preds = %208, %292
  %214 = phi double [ 0x3CB6A09E667F3BCD, %208 ], [ %272, %292 ]
  %215 = phi double [ 0x3CB0000000000000, %208 ], [ %271, %292 ]
  %216 = phi double [ %14, %208 ], [ %270, %292 ]
  %217 = phi double [ 1.000000e+00, %208 ], [ %269, %292 ]
  %218 = phi i32 [ 0, %208 ], [ %268, %292 ]
  %219 = phi i32 [ 1, %208 ], [ %293, %292 ]
  tail call void @llvm.dbg.value(metadata double %214, metadata !2550, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %215, metadata !2549, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %216, metadata !2548, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %217, metadata !2547, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %218, metadata !2539, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %219, metadata !2535, metadata !DIExpression()), !dbg !2564
  %220 = fmul double %14, %216, !dbg !2662
  %221 = sitofp i32 %219 to double, !dbg !2664
  %222 = tail call double @sqrt(double noundef %221) #7, !dbg !2665
  %223 = fmul double %217, %222, !dbg !2666
  %224 = fsub double %220, %223, !dbg !2667
  %225 = fadd double %221, 1.000000e+00, !dbg !2668
  %226 = tail call double @sqrt(double noundef %225) #7, !dbg !2669
  %227 = fdiv double %224, %226, !dbg !2670
  tail call void @llvm.dbg.value(metadata double %227, metadata !2542, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %216, metadata !2547, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %227, metadata !2548, metadata !DIExpression()), !dbg !2564
  %228 = fmul double %210, %214, !dbg !2671
  %229 = tail call double @sqrt(double noundef %221) #7, !dbg !2672
  %230 = fmul double %215, %229, !dbg !2673
  %231 = fadd double %228, %230, !dbg !2674
  %232 = tail call double @sqrt(double noundef %225) #7, !dbg !2675
  %233 = fdiv double %231, %232, !dbg !2676
  tail call void @llvm.dbg.value(metadata double %233, metadata !2542, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %214, metadata !2549, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %233, metadata !2550, metadata !DIExpression()), !dbg !2564
  %234 = tail call double @llvm.fabs.f64(double %216), !dbg !2677
  %235 = tail call double @llvm.fabs.f64(double %227), !dbg !2677
  %236 = fcmp olt double %234, %235, !dbg !2677
  %237 = select i1 %236, double %234, double %235, !dbg !2677
  %238 = fcmp ogt double %237, 0x2010000000000000, !dbg !2678
  br i1 %238, label %239, label %261, !dbg !2679

239:                                              ; preds = %213, %250
  %240 = phi double [ %257, %250 ], [ %235, %213 ]
  %241 = phi double [ %256, %250 ], [ %234, %213 ]
  %242 = phi double [ %254, %250 ], [ %233, %213 ]
  %243 = phi double [ %253, %250 ], [ %214, %213 ]
  %244 = phi double [ %252, %250 ], [ %227, %213 ]
  %245 = phi double [ %251, %250 ], [ %216, %213 ]
  %246 = phi i32 [ %255, %250 ], [ %218, %213 ]
  tail call void @llvm.dbg.value(metadata double %242, metadata !2550, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %243, metadata !2549, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %244, metadata !2548, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %245, metadata !2547, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %246, metadata !2539, metadata !DIExpression()), !dbg !2564
  %247 = fcmp ogt double %241, %240, !dbg !2680
  %248 = select i1 %247, double %241, double %240, !dbg !2680
  %249 = fcmp ogt double %248, 0x5FEFFFFFFFFFFFFF, !dbg !2681
  br i1 %249, label %250, label %261, !dbg !2682

250:                                              ; preds = %239
  %251 = fmul double %245, 5.000000e-01, !dbg !2683
  tail call void @llvm.dbg.value(metadata double %251, metadata !2547, metadata !DIExpression()), !dbg !2564
  %252 = fmul double %244, 5.000000e-01, !dbg !2685
  tail call void @llvm.dbg.value(metadata double %252, metadata !2548, metadata !DIExpression()), !dbg !2564
  %253 = fmul double %243, 5.000000e-01, !dbg !2686
  tail call void @llvm.dbg.value(metadata double %253, metadata !2549, metadata !DIExpression()), !dbg !2564
  %254 = fmul double %242, 5.000000e-01, !dbg !2687
  tail call void @llvm.dbg.value(metadata double %254, metadata !2550, metadata !DIExpression()), !dbg !2564
  %255 = add nsw i32 %246, 1, !dbg !2688
  tail call void @llvm.dbg.value(metadata i32 %255, metadata !2539, metadata !DIExpression()), !dbg !2564
  %256 = tail call double @llvm.fabs.f64(double %251), !dbg !2677
  %257 = tail call double @llvm.fabs.f64(double %252), !dbg !2677
  %258 = fcmp olt double %256, %257, !dbg !2677
  %259 = select i1 %258, double %256, double %257, !dbg !2677
  %260 = fcmp ogt double %259, 0x2010000000000000, !dbg !2678
  br i1 %260, label %239, label %261, !dbg !2679, !llvm.loop !2689

261:                                              ; preds = %239, %250, %213
  %262 = phi i32 [ %218, %213 ], [ %246, %239 ], [ %255, %250 ]
  %263 = phi double [ %216, %213 ], [ %245, %239 ], [ %251, %250 ]
  %264 = phi double [ %227, %213 ], [ %244, %239 ], [ %252, %250 ]
  %265 = phi double [ %214, %213 ], [ %243, %239 ], [ %253, %250 ]
  %266 = phi double [ %233, %213 ], [ %242, %239 ], [ %254, %250 ]
  br label %267, !dbg !2691

267:                                              ; preds = %261, %286
  %268 = phi i32 [ %291, %286 ], [ %262, %261 ], !dbg !2564
  %269 = phi double [ %287, %286 ], [ %263, %261 ], !dbg !2692
  %270 = phi double [ %288, %286 ], [ %264, %261 ], !dbg !2692
  %271 = phi double [ %289, %286 ], [ %265, %261 ], !dbg !2692
  %272 = phi double [ %290, %286 ], [ %266, %261 ], !dbg !2692
  tail call void @llvm.dbg.value(metadata double %272, metadata !2550, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %271, metadata !2549, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %270, metadata !2548, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %269, metadata !2547, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %268, metadata !2539, metadata !DIExpression()), !dbg !2564
  %273 = tail call double @llvm.fabs.f64(double %269), !dbg !2693
  %274 = fcmp olt double %273, 0x2000000000000000, !dbg !2694
  %275 = fcmp une double %269, 0.000000e+00
  %276 = select i1 %274, i1 %275, i1 false, !dbg !2695
  %277 = tail call double @llvm.fabs.f64(double %270), !dbg !2696
  br i1 %276, label %282, label %278, !dbg !2695

278:                                              ; preds = %267
  %279 = fcmp olt double %277, 0x2000000000000000, !dbg !2697
  %280 = fcmp une double %270, 0.000000e+00
  %281 = select i1 %279, i1 %280, i1 false, !dbg !2698
  br i1 %281, label %282, label %292, !dbg !2698

282:                                              ; preds = %267, %278
  %283 = fcmp ogt double %273, %277, !dbg !2699
  %284 = select i1 %283, double %273, double %277, !dbg !2699
  %285 = fcmp olt double %284, 0x5FDFFFFFFFFFFFFF, !dbg !2700
  br i1 %285, label %286, label %292, !dbg !2691

286:                                              ; preds = %282
  %287 = fmul double %269, 2.000000e+00, !dbg !2701
  tail call void @llvm.dbg.value(metadata double %287, metadata !2547, metadata !DIExpression()), !dbg !2564
  %288 = fmul double %270, 2.000000e+00, !dbg !2703
  tail call void @llvm.dbg.value(metadata double %288, metadata !2548, metadata !DIExpression()), !dbg !2564
  %289 = fmul double %271, 2.000000e+00, !dbg !2704
  tail call void @llvm.dbg.value(metadata double %289, metadata !2549, metadata !DIExpression()), !dbg !2564
  %290 = fmul double %272, 2.000000e+00, !dbg !2705
  tail call void @llvm.dbg.value(metadata double %290, metadata !2550, metadata !DIExpression()), !dbg !2564
  %291 = add nsw i32 %268, -1, !dbg !2706
  tail call void @llvm.dbg.value(metadata i32 %291, metadata !2539, metadata !DIExpression()), !dbg !2564
  br label %267, !dbg !2691, !llvm.loop !2707

292:                                              ; preds = %282, %278
  %293 = add nuw i32 %219, 1, !dbg !2709
  tail call void @llvm.dbg.value(metadata double %272, metadata !2550, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %271, metadata !2549, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %270, metadata !2548, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %269, metadata !2547, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %268, metadata !2539, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %293, metadata !2535, metadata !DIExpression()), !dbg !2564
  %294 = icmp eq i32 %293, %212, !dbg !2658
  br i1 %294, label %295, label %213, !dbg !2661, !llvm.loop !2710

295:                                              ; preds = %292, %193
  %296 = phi i32 [ 0, %193 ], [ %268, %292 ], !dbg !2712
  %297 = phi double [ 1.000000e+00, %193 ], [ %269, %292 ], !dbg !2564
  %298 = phi double [ %14, %193 ], [ %270, %292 ], !dbg !2564
  %299 = phi double [ 0x3CB0000000000000, %193 ], [ %271, %292 ], !dbg !2564
  %300 = phi double [ 0x3CB6A09E667F3BCD, %193 ], [ %272, %292 ], !dbg !2564
  %301 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %296) #7, !dbg !2713
  tail call void @llvm.dbg.value(metadata double poison, metadata !2547, metadata !DIExpression()), !dbg !2564
  %302 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %296) #7, !dbg !2714
  tail call void @llvm.dbg.value(metadata double poison, metadata !2548, metadata !DIExpression()), !dbg !2564
  %303 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %296) #7, !dbg !2715
  tail call void @llvm.dbg.value(metadata double poison, metadata !2549, metadata !DIExpression()), !dbg !2564
  %304 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %296) #7, !dbg !2716
  tail call void @llvm.dbg.value(metadata double poison, metadata !2550, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2539, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2542, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2540, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2541, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i32 0, metadata !1554, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32 %66, metadata !1560, metadata !DIExpression()), !dbg !2717
  %305 = tail call i32 @llvm.smax.i32(i32 %66, i32 0), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 %305, metadata !2535, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %112, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %206, metadata !2546, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %204, metadata !2545, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %202, metadata !2544, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %200, metadata !2543, metadata !DIExpression()), !dbg !2564
  %306 = icmp sgt i32 %305, %0, !dbg !2721
  br i1 %306, label %510, label %307, !dbg !2723

307:                                              ; preds = %295
  %308 = fmul double %300, %304, !dbg !2724
  tail call void @llvm.dbg.value(metadata double %308, metadata !2550, metadata !DIExpression()), !dbg !2564
  %309 = fmul double %299, %303, !dbg !2725
  tail call void @llvm.dbg.value(metadata double %309, metadata !2549, metadata !DIExpression()), !dbg !2564
  %310 = fmul double %298, %302, !dbg !2726
  tail call void @llvm.dbg.value(metadata double %310, metadata !2548, metadata !DIExpression()), !dbg !2564
  %311 = fmul double %297, %301, !dbg !2727
  tail call void @llvm.dbg.value(metadata double %311, metadata !2547, metadata !DIExpression()), !dbg !2564
  %312 = tail call double @llvm.fabs.f64(double %2)
  %313 = fmul double %312, 0x3FF6A09E667F3BCD
  br label %314, !dbg !2723

314:                                              ; preds = %307, %505
  %315 = phi double [ %112, %307 ], [ %372, %505 ]
  %316 = phi double [ %308, %307 ], [ %447, %505 ]
  %317 = phi double [ %309, %307 ], [ %446, %505 ]
  %318 = phi double [ %310, %307 ], [ %445, %505 ]
  %319 = phi double [ %311, %307 ], [ %444, %505 ]
  %320 = phi double [ %206, %307 ], [ %443, %505 ]
  %321 = phi double [ %204, %307 ], [ %442, %505 ]
  %322 = phi double [ %202, %307 ], [ %441, %505 ]
  %323 = phi double [ %200, %307 ], [ %440, %505 ]
  %324 = phi double [ 0.000000e+00, %307 ], [ %439, %505 ]
  %325 = phi double [ 0.000000e+00, %307 ], [ %438, %505 ]
  %326 = phi i32 [ 0, %307 ], [ %437, %505 ]
  %327 = phi i32 [ %305, %307 ], [ %506, %505 ]
  tail call void @llvm.dbg.value(metadata double %315, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %316, metadata !2550, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %317, metadata !2549, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %318, metadata !2548, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %319, metadata !2547, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %320, metadata !2546, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %321, metadata !2545, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %322, metadata !2544, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %323, metadata !2543, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %324, metadata !2541, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %325, metadata !2540, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %326, metadata !2539, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %327, metadata !2535, metadata !DIExpression()), !dbg !2564
  %328 = fmul double %323, %315, !dbg !2728
  %329 = fmul double %319, %328, !dbg !2730
  %330 = fadd double %325, %329, !dbg !2731
  tail call void @llvm.dbg.value(metadata double %330, metadata !2540, metadata !DIExpression()), !dbg !2564
  %331 = fmul double %319, %315, !dbg !2732
  %332 = tail call double @llvm.fabs.f64(double %331), !dbg !2733
  %333 = fmul double %321, %332, !dbg !2734
  %334 = tail call double @llvm.fabs.f64(double %328), !dbg !2735
  %335 = fmul double %317, %334, !dbg !2736
  %336 = fadd double %333, %335, !dbg !2737
  %337 = tail call double @llvm.fabs.f64(double %329), !dbg !2738
  %338 = fmul double %337, 0x3CB0000000000000, !dbg !2739
  %339 = fadd double %336, %338, !dbg !2740
  %340 = fadd double %324, %339, !dbg !2741
  tail call void @llvm.dbg.value(metadata double %340, metadata !2541, metadata !DIExpression()), !dbg !2564
  %341 = fmul double %322, %2, !dbg !2742
  %342 = sitofp i32 %327 to double, !dbg !2743
  %343 = fadd double %342, 1.000000e+00, !dbg !2744
  %344 = fmul double %343, %323, !dbg !2745
  %345 = fsub double %341, %344, !dbg !2746
  tail call void @llvm.dbg.value(metadata double %345, metadata !2542, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %322, metadata !2543, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %345, metadata !2544, metadata !DIExpression()), !dbg !2564
  %346 = fmul double %312, %320, !dbg !2747
  %347 = fmul double %343, %321, !dbg !2748
  %348 = fadd double %347, %346, !dbg !2749
  tail call void @llvm.dbg.value(metadata double poison, metadata !2542, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %320, metadata !2545, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double poison, metadata !2546, metadata !DIExpression()), !dbg !2564
  %349 = fmul double %14, %318, !dbg !2750
  %350 = add nsw i32 %327, %15, !dbg !2751
  %351 = sitofp i32 %350 to double, !dbg !2752
  %352 = fadd double %351, 1.000000e+00, !dbg !2753
  %353 = tail call double @sqrt(double noundef %352) #7, !dbg !2754
  %354 = fmul double %319, %353, !dbg !2755
  %355 = fsub double %349, %354, !dbg !2756
  %356 = fadd double %351, 2.000000e+00, !dbg !2757
  %357 = tail call double @sqrt(double noundef %356) #7, !dbg !2758
  %358 = fdiv double %355, %357, !dbg !2759
  tail call void @llvm.dbg.value(metadata double %358, metadata !2542, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %318, metadata !2547, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %358, metadata !2548, metadata !DIExpression()), !dbg !2564
  %359 = fmul double %313, %316, !dbg !2760
  %360 = tail call double @sqrt(double noundef %352) #7, !dbg !2761
  %361 = fmul double %317, %360, !dbg !2762
  %362 = fadd double %359, %361, !dbg !2763
  %363 = fmul double %362, 5.000000e-01, !dbg !2764
  %364 = tail call double @sqrt(double noundef %356) #7, !dbg !2765
  %365 = fdiv double %363, %364, !dbg !2766
  tail call void @llvm.dbg.value(metadata double %365, metadata !2542, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %316, metadata !2549, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %365, metadata !2550, metadata !DIExpression()), !dbg !2564
  %366 = sub nsw i32 %327, %0, !dbg !2767
  %367 = sitofp i32 %366 to double, !dbg !2768
  %368 = fdiv double %367, %343, !dbg !2769
  %369 = tail call double @sqrt(double noundef %352) #7, !dbg !2770
  %370 = fdiv double %368, %369, !dbg !2771
  %371 = fmul double %370, 0x3FE6A09E667F3BCD, !dbg !2772
  %372 = fmul double %315, %371, !dbg !2773
  tail call void @llvm.dbg.value(metadata double %372, metadata !2551, metadata !DIExpression()), !dbg !2564
  %373 = fmul double %348, 5.000000e-01, !dbg !2774
  tail call void @llvm.dbg.value(metadata double %373, metadata !2546, metadata !DIExpression()), !dbg !2564
  %374 = tail call double @llvm.fabs.f64(double %322), !dbg !2775
  %375 = fcmp ogt double %374, 0x2010000000000000, !dbg !2776
  br i1 %375, label %376, label %424, !dbg !2777

376:                                              ; preds = %314, %410
  %377 = phi double [ %422, %410 ], [ %374, %314 ]
  %378 = phi double [ %421, %410 ], [ %373, %314 ]
  %379 = phi double [ %417, %410 ], [ %365, %314 ]
  %380 = phi double [ %416, %410 ], [ %316, %314 ]
  %381 = phi double [ %415, %410 ], [ %358, %314 ]
  %382 = phi double [ %414, %410 ], [ %318, %314 ]
  %383 = phi double [ %413, %410 ], [ %320, %314 ]
  %384 = phi double [ %412, %410 ], [ %345, %314 ]
  %385 = phi double [ %411, %410 ], [ %322, %314 ]
  %386 = phi double [ %419, %410 ], [ %340, %314 ]
  %387 = phi double [ %418, %410 ], [ %330, %314 ]
  %388 = phi i32 [ %420, %410 ], [ %326, %314 ]
  tail call void @llvm.dbg.value(metadata double %379, metadata !2550, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %380, metadata !2549, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %381, metadata !2548, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %382, metadata !2547, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %383, metadata !2545, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %384, metadata !2544, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %385, metadata !2543, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %386, metadata !2541, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %387, metadata !2540, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %388, metadata !2539, metadata !DIExpression()), !dbg !2564
  %389 = tail call double @llvm.fabs.f64(double %384), !dbg !2778
  %390 = fcmp ogt double %389, 0x2010000000000000, !dbg !2779
  br i1 %390, label %391, label %424, !dbg !2780

391:                                              ; preds = %376
  %392 = tail call double @llvm.fabs.f64(double %382), !dbg !2781
  %393 = fcmp ogt double %392, 0x2010000000000000, !dbg !2782
  br i1 %393, label %394, label %424, !dbg !2783

394:                                              ; preds = %391
  %395 = tail call double @llvm.fabs.f64(double %381), !dbg !2784
  %396 = fcmp ogt double %395, 0x2010000000000000, !dbg !2785
  br i1 %396, label %397, label %424, !dbg !2786

397:                                              ; preds = %394
  %398 = tail call double @llvm.fabs.f64(double %387), !dbg !2787
  %399 = fcmp ogt double %398, 0x2020000000000000, !dbg !2788
  br i1 %399, label %400, label %424, !dbg !2789

400:                                              ; preds = %397
  %401 = fcmp ogt double %377, 0x5FEFFFFFFFFFFFFF, !dbg !2790
  %402 = fcmp ogt double %389, 0x5FEFFFFFFFFFFFFF
  %403 = or i1 %401, %402, !dbg !2791
  %404 = fcmp ogt double %392, 0x5FEFFFFFFFFFFFFF
  %405 = or i1 %403, %404, !dbg !2791
  %406 = fcmp ogt double %395, 0x5FEFFFFFFFFFFFFF
  %407 = or i1 %405, %406, !dbg !2791
  %408 = fcmp ogt double %398, 0x5FEFFFFFFFFFFFFF
  %409 = or i1 %408, %407, !dbg !2791
  br i1 %409, label %410, label %424, !dbg !2791

410:                                              ; preds = %400
  %411 = fmul double %385, 5.000000e-01, !dbg !2792
  tail call void @llvm.dbg.value(metadata double %411, metadata !2543, metadata !DIExpression()), !dbg !2564
  %412 = fmul double %384, 5.000000e-01, !dbg !2794
  tail call void @llvm.dbg.value(metadata double %412, metadata !2544, metadata !DIExpression()), !dbg !2564
  %413 = fmul double %383, 5.000000e-01, !dbg !2795
  tail call void @llvm.dbg.value(metadata double %413, metadata !2545, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double poison, metadata !2546, metadata !DIExpression()), !dbg !2564
  %414 = fmul double %382, 5.000000e-01, !dbg !2796
  tail call void @llvm.dbg.value(metadata double %414, metadata !2547, metadata !DIExpression()), !dbg !2564
  %415 = fmul double %381, 5.000000e-01, !dbg !2797
  tail call void @llvm.dbg.value(metadata double %415, metadata !2548, metadata !DIExpression()), !dbg !2564
  %416 = fmul double %380, 5.000000e-01, !dbg !2798
  tail call void @llvm.dbg.value(metadata double %416, metadata !2549, metadata !DIExpression()), !dbg !2564
  %417 = fmul double %379, 5.000000e-01, !dbg !2799
  tail call void @llvm.dbg.value(metadata double %417, metadata !2550, metadata !DIExpression()), !dbg !2564
  %418 = fmul double %387, 2.500000e-01, !dbg !2800
  tail call void @llvm.dbg.value(metadata double %418, metadata !2540, metadata !DIExpression()), !dbg !2564
  %419 = fmul double %386, 2.500000e-01, !dbg !2801
  tail call void @llvm.dbg.value(metadata double %419, metadata !2541, metadata !DIExpression()), !dbg !2564
  %420 = add nsw i32 %388, 1, !dbg !2802
  tail call void @llvm.dbg.value(metadata i32 %420, metadata !2539, metadata !DIExpression()), !dbg !2564
  %421 = fmul double %378, 5.000000e-01, !dbg !2774
  tail call void @llvm.dbg.value(metadata double %421, metadata !2546, metadata !DIExpression()), !dbg !2564
  %422 = tail call double @llvm.fabs.f64(double %411), !dbg !2775
  %423 = fcmp ogt double %422, 0x2010000000000000, !dbg !2776
  br i1 %423, label %376, label %424, !dbg !2777, !llvm.loop !2803

424:                                              ; preds = %410, %376, %391, %394, %397, %400, %314
  %425 = phi i32 [ %326, %314 ], [ %420, %410 ], [ %388, %376 ], [ %388, %391 ], [ %388, %394 ], [ %388, %397 ], [ %388, %400 ]
  %426 = phi double [ %330, %314 ], [ %418, %410 ], [ %387, %376 ], [ %387, %391 ], [ %387, %394 ], [ %387, %397 ], [ %387, %400 ]
  %427 = phi double [ %340, %314 ], [ %419, %410 ], [ %386, %376 ], [ %386, %391 ], [ %386, %394 ], [ %386, %397 ], [ %386, %400 ]
  %428 = phi double [ %322, %314 ], [ %411, %410 ], [ %385, %376 ], [ %385, %391 ], [ %385, %394 ], [ %385, %397 ], [ %385, %400 ]
  %429 = phi double [ %345, %314 ], [ %412, %410 ], [ %384, %376 ], [ %384, %391 ], [ %384, %394 ], [ %384, %397 ], [ %384, %400 ]
  %430 = phi double [ %320, %314 ], [ %413, %410 ], [ %383, %376 ], [ %383, %391 ], [ %383, %394 ], [ %383, %397 ], [ %383, %400 ]
  %431 = phi double [ %373, %314 ], [ %421, %410 ], [ %378, %376 ], [ %378, %391 ], [ %378, %394 ], [ %378, %397 ], [ %378, %400 ]
  %432 = phi double [ %318, %314 ], [ %414, %410 ], [ %382, %376 ], [ %382, %391 ], [ %382, %394 ], [ %382, %397 ], [ %382, %400 ]
  %433 = phi double [ %358, %314 ], [ %415, %410 ], [ %381, %376 ], [ %381, %391 ], [ %381, %394 ], [ %381, %397 ], [ %381, %400 ]
  %434 = phi double [ %316, %314 ], [ %416, %410 ], [ %380, %376 ], [ %380, %391 ], [ %380, %394 ], [ %380, %397 ], [ %380, %400 ]
  %435 = phi double [ %365, %314 ], [ %417, %410 ], [ %379, %376 ], [ %379, %391 ], [ %379, %394 ], [ %379, %397 ], [ %379, %400 ]
  br label %436, !dbg !2806

436:                                              ; preds = %424, %493
  %437 = phi i32 [ %504, %493 ], [ %425, %424 ], !dbg !2564
  %438 = phi double [ %502, %493 ], [ %426, %424 ], !dbg !2774
  %439 = phi double [ %503, %493 ], [ %427, %424 ], !dbg !2774
  %440 = phi double [ %498, %493 ], [ %428, %424 ], !dbg !2774
  %441 = phi double [ %499, %493 ], [ %429, %424 ], !dbg !2774
  %442 = phi double [ %500, %493 ], [ %430, %424 ], !dbg !2774
  %443 = phi double [ %501, %493 ], [ %431, %424 ], !dbg !2774
  %444 = phi double [ %494, %493 ], [ %432, %424 ], !dbg !2774
  %445 = phi double [ %495, %493 ], [ %433, %424 ], !dbg !2774
  %446 = phi double [ %496, %493 ], [ %434, %424 ], !dbg !2774
  %447 = phi double [ %497, %493 ], [ %435, %424 ], !dbg !2774
  tail call void @llvm.dbg.value(metadata double %447, metadata !2550, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %446, metadata !2549, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %445, metadata !2548, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %444, metadata !2547, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %443, metadata !2546, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %442, metadata !2545, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %441, metadata !2544, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %440, metadata !2543, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %439, metadata !2541, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %438, metadata !2540, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %437, metadata !2539, metadata !DIExpression()), !dbg !2564
  %448 = tail call double @llvm.fabs.f64(double %440), !dbg !2807
  %449 = fcmp olt double %448, 0x2000000000000000, !dbg !2808
  %450 = fcmp une double %440, 0.000000e+00
  %451 = select i1 %449, i1 %450, i1 false, !dbg !2809
  br i1 %451, label %474, label %452, !dbg !2809

452:                                              ; preds = %436
  %453 = tail call double @llvm.fabs.f64(double %441), !dbg !2810
  %454 = fcmp olt double %453, 0x2000000000000000, !dbg !2811
  %455 = fcmp une double %441, 0.000000e+00
  %456 = select i1 %454, i1 %455, i1 false, !dbg !2812
  br i1 %456, label %474, label %457, !dbg !2812

457:                                              ; preds = %452
  %458 = tail call double @llvm.fabs.f64(double %444), !dbg !2813
  %459 = fcmp olt double %458, 0x2000000000000000, !dbg !2814
  %460 = fcmp une double %444, 0.000000e+00
  %461 = select i1 %459, i1 %460, i1 false, !dbg !2815
  br i1 %461, label %474, label %462, !dbg !2815

462:                                              ; preds = %457
  %463 = tail call double @llvm.fabs.f64(double %445), !dbg !2816
  %464 = fcmp olt double %463, 0x2000000000000000, !dbg !2817
  %465 = fcmp une double %445, 0.000000e+00
  %466 = select i1 %464, i1 %465, i1 false, !dbg !2818
  br i1 %466, label %474, label %467, !dbg !2818

467:                                              ; preds = %462
  %468 = tail call double @llvm.fabs.f64(double %438), !dbg !2819
  %469 = fcmp olt double %468, 0x2000000000000000, !dbg !2820
  %470 = fcmp une double %438, 0.000000e+00
  %471 = select i1 %469, i1 %470, i1 false, !dbg !2821
  %472 = fcmp olt double %448, 0x5FDFFFFFFFFFFFFF
  %473 = and i1 %471, %472, !dbg !2821
  br i1 %473, label %481, label %505, !dbg !2821

474:                                              ; preds = %462, %457, %452, %436
  %475 = fcmp olt double %448, 0x5FDFFFFFFFFFFFFF, !dbg !2822
  br i1 %475, label %476, label %505, !dbg !2823

476:                                              ; preds = %474
  %477 = tail call double @llvm.fabs.f64(double %441), !dbg !2824
  %478 = tail call double @llvm.fabs.f64(double %444)
  %479 = tail call double @llvm.fabs.f64(double %445)
  %480 = tail call double @llvm.fabs.f64(double %438)
  br label %481, !dbg !2823

481:                                              ; preds = %476, %467
  %482 = phi double [ %480, %476 ], [ %468, %467 ]
  %483 = phi double [ %479, %476 ], [ %463, %467 ]
  %484 = phi double [ %478, %476 ], [ %458, %467 ]
  %485 = phi double [ %477, %476 ], [ %453, %467 ], !dbg !2824
  %486 = fcmp olt double %485, 0x5FDFFFFFFFFFFFFF, !dbg !2825
  %487 = fcmp olt double %484, 0x5FDFFFFFFFFFFFFF
  %488 = select i1 %486, i1 %487, i1 false, !dbg !2826
  %489 = fcmp olt double %483, 0x5FDFFFFFFFFFFFFF
  %490 = select i1 %488, i1 %489, i1 false, !dbg !2826
  %491 = fcmp olt double %482, 0x5FCFFFFFFFFFFFFF
  %492 = select i1 %490, i1 %491, i1 false, !dbg !2826
  br i1 %492, label %493, label %505, !dbg !2826

493:                                              ; preds = %481
  %494 = fmul double %444, 2.000000e+00, !dbg !2827
  tail call void @llvm.dbg.value(metadata double %494, metadata !2547, metadata !DIExpression()), !dbg !2564
  %495 = fmul double %445, 2.000000e+00, !dbg !2829
  tail call void @llvm.dbg.value(metadata double %495, metadata !2548, metadata !DIExpression()), !dbg !2564
  %496 = fmul double %446, 2.000000e+00, !dbg !2830
  tail call void @llvm.dbg.value(metadata double %496, metadata !2549, metadata !DIExpression()), !dbg !2564
  %497 = fmul double %447, 2.000000e+00, !dbg !2831
  tail call void @llvm.dbg.value(metadata double %497, metadata !2550, metadata !DIExpression()), !dbg !2564
  %498 = fmul double %440, 2.000000e+00, !dbg !2832
  tail call void @llvm.dbg.value(metadata double %498, metadata !2543, metadata !DIExpression()), !dbg !2564
  %499 = fmul double %441, 2.000000e+00, !dbg !2833
  tail call void @llvm.dbg.value(metadata double %499, metadata !2544, metadata !DIExpression()), !dbg !2564
  %500 = fmul double %442, 2.000000e+00, !dbg !2834
  tail call void @llvm.dbg.value(metadata double %500, metadata !2545, metadata !DIExpression()), !dbg !2564
  %501 = fmul double %443, 2.000000e+00, !dbg !2835
  tail call void @llvm.dbg.value(metadata double %501, metadata !2546, metadata !DIExpression()), !dbg !2564
  %502 = fmul double %438, 4.000000e+00, !dbg !2836
  tail call void @llvm.dbg.value(metadata double %502, metadata !2540, metadata !DIExpression()), !dbg !2564
  %503 = fmul double %439, 4.000000e+00, !dbg !2837
  tail call void @llvm.dbg.value(metadata double %503, metadata !2541, metadata !DIExpression()), !dbg !2564
  %504 = add nsw i32 %437, -1, !dbg !2838
  tail call void @llvm.dbg.value(metadata i32 %504, metadata !2539, metadata !DIExpression()), !dbg !2564
  br label %436, !dbg !2806, !llvm.loop !2839

505:                                              ; preds = %474, %481, %467
  %506 = add nuw i32 %327, 1, !dbg !2841
  tail call void @llvm.dbg.value(metadata double %372, metadata !2551, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %447, metadata !2550, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %446, metadata !2549, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %445, metadata !2548, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %444, metadata !2547, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %443, metadata !2546, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %442, metadata !2545, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %441, metadata !2544, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %440, metadata !2543, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %439, metadata !2541, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata double %438, metadata !2540, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %437, metadata !2539, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %506, metadata !2535, metadata !DIExpression()), !dbg !2564
  %507 = icmp eq i32 %327, %0, !dbg !2721
  br i1 %507, label %508, label %314, !dbg !2723, !llvm.loop !2842

508:                                              ; preds = %505
  %509 = shl nsw i32 %437, 1, !dbg !2844
  br label %510, !dbg !2844

510:                                              ; preds = %508, %295
  %511 = phi i32 [ 0, %295 ], [ %509, %508 ], !dbg !2845
  %512 = phi double [ 0.000000e+00, %295 ], [ %438, %508 ], !dbg !2564
  %513 = phi double [ 0.000000e+00, %295 ], [ %439, %508 ], !dbg !2564
  %514 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %511) #7, !dbg !2844
  %515 = fmul double %512, %514, !dbg !2846
  tail call void @llvm.dbg.value(metadata double %515, metadata !2540, metadata !DIExpression()), !dbg !2564
  %516 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %511) #7, !dbg !2847
  %517 = fmul double %513, %516, !dbg !2848
  tail call void @llvm.dbg.value(metadata double %517, metadata !2541, metadata !DIExpression()), !dbg !2564
  %518 = fmul double %2, -5.000000e-01, !dbg !2849
  %519 = fmul double %518, %2, !dbg !2850
  %520 = tail call double @exp(double noundef %519) #7, !dbg !2851
  %521 = fmul double %515, %520, !dbg !2852
  %522 = fdiv double %521, 0x3FF54D264F787EB7, !dbg !2853
  store double %522, ptr %3, align 8, !dbg !2854, !tbaa !205
  %523 = tail call double @exp(double noundef %519) #7, !dbg !2855
  %524 = fdiv double %523, 0x3FF54D264F787EB7, !dbg !2856
  %525 = tail call double @llvm.fabs.f64(double %524), !dbg !2857
  %526 = fmul double %517, %525, !dbg !2858
  %527 = load double, ptr %3, align 8, !dbg !2859, !tbaa !205
  %528 = tail call double @llvm.fabs.f64(double %527), !dbg !2860
  %529 = fmul double %528, 0x3CB0000000000000, !dbg !2861
  %530 = fadd double %526, %529, !dbg !2862
  %531 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2863
  store double %530, ptr %531, align 8, !dbg !2864, !tbaa !214
  br label %532

532:                                              ; preds = %7, %11, %510
  %533 = phi i32 [ 1, %7 ], [ %12, %11 ], [ 0, %510 ], !dbg !2865
  ret i32 %533, !dbg !2866
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_func_der(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !2867 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2874
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2872, metadata !DIExpression(), metadata !2874, metadata ptr %4, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2869, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2870, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata double %2, metadata !2871, metadata !DIExpression()), !dbg !2875
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !2876
  %5 = call i32 @gsl_sf_hermite_func_der_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !2876, !range !864
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2873, metadata !DIExpression()), !dbg !2875
  %6 = icmp eq i32 %5, 0, !dbg !2877
  br i1 %6, label %8, label %7, !dbg !2876

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1433, i32 noundef 1) #7, !dbg !2879
  br label %8, !dbg !2879

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !2876, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !2882
  ret double %9, !dbg !2882
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_prob_zero_e(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !2883 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2887, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2888, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2889, metadata !DIExpression()), !dbg !2899
  %4 = icmp slt i32 %0, 1, !dbg !2900
  %5 = icmp slt i32 %1, 0
  %6 = or i1 %4, %5, !dbg !2901
  br i1 %6, label %10, label %7, !dbg !2901

7:                                                ; preds = %3
  %8 = lshr i32 %0, 1
  %9 = icmp ult i32 %8, %1, !dbg !2902
  br i1 %9, label %10, label %12, !dbg !2903

10:                                               ; preds = %3, %7
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !2904, !tbaa !205
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2904
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !2904, !tbaa !214
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1580, i32 noundef 1) #7, !dbg !2907
  br label %101, !dbg !2907

12:                                               ; preds = %7
  %13 = icmp eq i32 %1, 0, !dbg !2909
  br i1 %13, label %14, label %20, !dbg !2910

14:                                               ; preds = %12
  %15 = and i32 %0, 1, !dbg !2911
  %16 = icmp eq i32 %15, 0, !dbg !2914
  br i1 %16, label %18, label %17, !dbg !2915

17:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !2916
  br label %101, !dbg !2918

18:                                               ; preds = %14
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !2919, !tbaa !205
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2919
  store double 0x7FF8000000000000, ptr %19, align 8, !dbg !2919, !tbaa !214
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1589, i32 noundef 1) #7, !dbg !2922
  br label %101, !dbg !2922

20:                                               ; preds = %12
  %21 = icmp eq i32 %0, 2, !dbg !2924
  br i1 %21, label %22, label %24, !dbg !2925

22:                                               ; preds = %20
  store double 1.000000e+00, ptr %2, align 8, !dbg !2926, !tbaa !205
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2928
  store double 0.000000e+00, ptr %23, align 8, !dbg !2929, !tbaa !214
  br label %101, !dbg !2930

24:                                               ; preds = %20
  %25 = icmp ult i32 %0, 21, !dbg !2931
  br i1 %25, label %26, label %40, !dbg !2932

26:                                               ; preds = %24
  %27 = and i32 %0, 1, !dbg !2933
  %28 = icmp eq i32 %27, 0, !dbg !2933
  %29 = select i1 %28, i32 0, i32 %8, !dbg !2933
  %30 = add nsw i32 %8, -1, !dbg !2935
  %31 = mul nsw i32 %30, %8, !dbg !2936
  %32 = add nsw i32 %1, -2, !dbg !2937
  %33 = add i32 %32, %31, !dbg !2938
  %34 = add i32 %33, %29, !dbg !2939
  %35 = sext i32 %34 to i64, !dbg !2940
  %36 = getelementptr inbounds [99 x double], ptr @He_zero_tab, i64 0, i64 %35, !dbg !2940
  %37 = load double, ptr %36, align 8, !dbg !2940, !tbaa !1279
  store double %37, ptr %2, align 8, !dbg !2941, !tbaa !205
  %38 = fmul double %37, 0x3CB0000000000000, !dbg !2942
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2943
  store double %38, ptr %39, align 8, !dbg !2944, !tbaa !214
  br label %101, !dbg !2945

40:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2890, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2896, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2897, metadata !DIExpression()), !dbg !2946
  %41 = tail call fastcc double @H_zero_init(i32 noundef %0, i32 noundef %1), !dbg !2947
  %42 = fmul double %41, 0x3FF6A09E667F3BCD, !dbg !2948
  tail call void @llvm.dbg.value(metadata double %42, metadata !2896, metadata !DIExpression()), !dbg !2946
  %43 = sitofp i32 %0 to double
  %44 = add i32 %0, -1, !dbg !2949
  %45 = add i32 %0, -2, !dbg !2949
  %46 = and i32 %44, 3
  %47 = icmp ult i32 %45, 3
  %48 = and i32 %44, -4
  %49 = icmp eq i32 %46, 0
  br label %50, !dbg !2949

50:                                               ; preds = %88, %40
  %51 = phi double [ %42, %40 ], [ %92, %88 ], !dbg !2946
  tail call void @llvm.dbg.value(metadata double %51, metadata !2896, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata double %51, metadata !2897, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2890, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2898, metadata !DIExpression()), !dbg !2946
  br i1 %47, label %74, label %52, !dbg !2950

52:                                               ; preds = %50, %52
  %53 = phi i32 [ %71, %52 ], [ 1, %50 ]
  %54 = phi double [ %70, %52 ], [ 0.000000e+00, %50 ]
  %55 = phi i32 [ %72, %52 ], [ 0, %50 ]
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !2898, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata double %54, metadata !2890, metadata !DIExpression()), !dbg !2946
  %56 = sitofp i32 %53 to double, !dbg !2953
  %57 = fsub double %51, %54, !dbg !2955
  %58 = fdiv double %56, %57, !dbg !2956
  tail call void @llvm.dbg.value(metadata double %58, metadata !2890, metadata !DIExpression()), !dbg !2946
  %59 = add nuw nsw i32 %53, 1, !dbg !2957
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !2898, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !2898, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata double %58, metadata !2890, metadata !DIExpression()), !dbg !2946
  %60 = sitofp i32 %59 to double, !dbg !2953
  %61 = fsub double %51, %58, !dbg !2955
  %62 = fdiv double %60, %61, !dbg !2956
  tail call void @llvm.dbg.value(metadata double %62, metadata !2890, metadata !DIExpression()), !dbg !2946
  %63 = add nuw nsw i32 %53, 2, !dbg !2957
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !2898, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !2898, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata double %62, metadata !2890, metadata !DIExpression()), !dbg !2946
  %64 = sitofp i32 %63 to double, !dbg !2953
  %65 = fsub double %51, %62, !dbg !2955
  %66 = fdiv double %64, %65, !dbg !2956
  tail call void @llvm.dbg.value(metadata double %66, metadata !2890, metadata !DIExpression()), !dbg !2946
  %67 = add nuw nsw i32 %53, 3, !dbg !2957
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !2898, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !2898, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata double %66, metadata !2890, metadata !DIExpression()), !dbg !2946
  %68 = sitofp i32 %67 to double, !dbg !2953
  %69 = fsub double %51, %66, !dbg !2955
  %70 = fdiv double %68, %69, !dbg !2956
  tail call void @llvm.dbg.value(metadata double %70, metadata !2890, metadata !DIExpression()), !dbg !2946
  %71 = add nuw nsw i32 %53, 4, !dbg !2957
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !2898, metadata !DIExpression()), !dbg !2946
  %72 = add nuw nsw i32 %55, 4, !dbg !2950
  %73 = icmp eq i32 %72, %48, !dbg !2950
  br i1 %73, label %74, label %52, !dbg !2950, !llvm.loop !2958

74:                                               ; preds = %52, %50
  %75 = phi double [ undef, %50 ], [ %70, %52 ]
  %76 = phi i32 [ 1, %50 ], [ %71, %52 ]
  %77 = phi double [ 0.000000e+00, %50 ], [ %70, %52 ]
  br i1 %49, label %88, label %78, !dbg !2950

78:                                               ; preds = %74, %78
  %79 = phi i32 [ %85, %78 ], [ %76, %74 ]
  %80 = phi double [ %84, %78 ], [ %77, %74 ]
  %81 = phi i32 [ %86, %78 ], [ 0, %74 ]
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !2898, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata double %80, metadata !2890, metadata !DIExpression()), !dbg !2946
  %82 = sitofp i32 %79 to double, !dbg !2953
  %83 = fsub double %51, %80, !dbg !2955
  %84 = fdiv double %82, %83, !dbg !2956
  tail call void @llvm.dbg.value(metadata double %84, metadata !2890, metadata !DIExpression()), !dbg !2946
  %85 = add nuw nsw i32 %79, 1, !dbg !2957
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !2898, metadata !DIExpression()), !dbg !2946
  %86 = add i32 %81, 1, !dbg !2950
  %87 = icmp eq i32 %86, %46, !dbg !2950
  br i1 %87, label %88, label %78, !dbg !2950, !llvm.loop !2960

88:                                               ; preds = %78, %74
  %89 = phi double [ %75, %74 ], [ %84, %78 ], !dbg !2956
  %90 = fsub double %51, %89, !dbg !2961
  %91 = fdiv double %90, %43, !dbg !2962
  %92 = fsub double %51, %91, !dbg !2963
  tail call void @llvm.dbg.value(metadata double %92, metadata !2896, metadata !DIExpression()), !dbg !2946
  %93 = tail call i32 @gsl_fcmp(double noundef %92, double noundef %51, double noundef 0x3CE4000000000000) #7, !dbg !2964
  %94 = icmp eq i32 %93, 0, !dbg !2965
  br i1 %94, label %95, label %50, !dbg !2966, !llvm.loop !2967

95:                                               ; preds = %88
  store double %92, ptr %2, align 8, !dbg !2969, !tbaa !205
  %96 = fmul double %92, 0x3CC0000000000000, !dbg !2970
  %97 = fsub double %92, %51, !dbg !2971
  %98 = tail call double @llvm.fabs.f64(double %97), !dbg !2972
  %99 = fadd double %96, %98, !dbg !2973
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2974
  store double %99, ptr %100, align 8, !dbg !2975, !tbaa !214
  br label %101

101:                                              ; preds = %10, %17, %18, %22, %26, %95
  %102 = phi i32 [ 1, %10 ], [ 0, %17 ], [ 1, %18 ], [ 0, %22 ], [ 0, %26 ], [ 0, %95 ], !dbg !2976
  ret i32 %102, !dbg !2977
}

; Function Attrs: nounwind uwtable
define internal fastcc double @H_zero_init(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !2978 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2982, metadata !DIExpression()), !dbg !2987
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2983, metadata !DIExpression()), !dbg !2987
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2984, metadata !DIExpression()), !dbg !2987
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2985, metadata !DIExpression()), !dbg !2987
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2986, metadata !DIExpression()), !dbg !2987
  %3 = icmp eq i32 %1, 1, !dbg !2988
  %4 = icmp sgt i32 %0, 50
  %5 = and i1 %4, %3, !dbg !2990
  br i1 %5, label %6, label %24, !dbg !2990

6:                                                ; preds = %2
  %7 = and i32 %0, 1, !dbg !2991
  %8 = icmp eq i32 %7, 0, !dbg !2991
  br i1 %8, label %13, label %9, !dbg !2991

9:                                                ; preds = %6
  %10 = add nsw i32 %0, -1, !dbg !2993
  %11 = sitofp i32 %10 to double, !dbg !2994
  %12 = fdiv double %11, 6.000000e+00, !dbg !2995
  br label %16, !dbg !2991

13:                                               ; preds = %6
  %14 = sitofp i32 %0 to double, !dbg !2996
  %15 = fmul double %14, 5.000000e-01, !dbg !2997
  br label %16, !dbg !2991

16:                                               ; preds = %13, %9
  %17 = phi double [ %15, %13 ], [ %12, %9 ]
  %18 = tail call double @sqrt(double noundef %17) #7, !dbg !2998
  %19 = fdiv double 1.000000e+00, %18, !dbg !2991
  tail call void @llvm.dbg.value(metadata double %19, metadata !2985, metadata !DIExpression()), !dbg !2987
  %20 = shl nuw nsw i32 %0, 1, !dbg !2999
  %21 = or disjoint i32 %20, 1, !dbg !3000
  %22 = sitofp i32 %21 to double, !dbg !3000
  %23 = lshr i32 %0, 1
  br label %62, !dbg !3001

24:                                               ; preds = %2
  %25 = lshr i32 %0, 1
  %26 = sub i32 %25, %1, !dbg !3002
  %27 = add i32 %26, 1, !dbg !3002
  %28 = tail call double @gsl_sf_airy_zero_Ai(i32 noundef %27) #7, !dbg !3004
  %29 = fmul double %28, 0xBFE965FEA53D6E3D, !dbg !3005
  tail call void @llvm.dbg.value(metadata double %29, metadata !2984, metadata !DIExpression()), !dbg !2987
  %30 = shl nuw nsw i32 %0, 1, !dbg !3006
  %31 = or disjoint i32 %30, 1, !dbg !3007
  %32 = sitofp i32 %31 to double, !dbg !3007
  %33 = tail call double @sqrt(double noundef %32) #7, !dbg !3008
  tail call void @llvm.dbg.value(metadata double %33, metadata !2985, metadata !DIExpression()), !dbg !2987
  %34 = tail call double @pow(double noundef %32, double noundef 0x3FC5555555555555) #7, !dbg !3009
  tail call void @llvm.dbg.value(metadata double %34, metadata !2986, metadata !DIExpression()), !dbg !2987
  %35 = fdiv double %29, %34, !dbg !3010
  %36 = fsub double %33, %35, !dbg !3011
  %37 = fmul double %29, 1.000000e-01, !dbg !3012
  %38 = fmul double %29, %37, !dbg !3013
  %39 = fmul double %33, %34, !dbg !3014
  %40 = fmul double %34, %39, !dbg !3015
  %41 = fdiv double %38, %40, !dbg !3016
  %42 = fsub double %36, %41, !dbg !3017
  %43 = fmul double %29, %29, !dbg !3018
  %44 = fmul double %29, %43, !dbg !3019
  %45 = fmul double %44, 1.100000e+01, !dbg !3020
  %46 = fdiv double %45, 3.500000e+02, !dbg !3021
  %47 = fsub double 0x3FA0750750750750, %46, !dbg !3022
  %48 = fmul double %33, %33, !dbg !3023
  %49 = fmul double %33, %48, !dbg !3024
  %50 = fdiv double %47, %49, !dbg !3025
  %51 = fadd double %42, %50, !dbg !3026
  %52 = fmul double %29, 2.770000e+02, !dbg !3027
  %53 = fdiv double %52, 1.260000e+04, !dbg !3028
  %54 = tail call double @gsl_sf_pow_int(double noundef %29, i32 noundef 4) #7, !dbg !3029
  %55 = fmul double %54, 8.230000e+02, !dbg !3030
  %56 = fdiv double %55, 6.300000e+04, !dbg !3031
  %57 = fsub double %53, %56, !dbg !3032
  %58 = tail call double @gsl_sf_pow_int(double noundef %33, i32 noundef 4) #7, !dbg !3033
  %59 = fdiv double %57, %58, !dbg !3034
  %60 = fdiv double %59, %34, !dbg !3035
  %61 = fadd double %51, %60, !dbg !3036
  tail call void @llvm.dbg.value(metadata double %61, metadata !2985, metadata !DIExpression()), !dbg !2987
  br label %62

62:                                               ; preds = %24, %16
  %63 = phi i32 [ %25, %24 ], [ %23, %16 ]
  %64 = phi double [ %32, %24 ], [ %22, %16 ], !dbg !3000
  %65 = phi double [ %61, %24 ], [ %19, %16 ], !dbg !3037
  tail call void @llvm.dbg.value(metadata double %65, metadata !2985, metadata !DIExpression()), !dbg !2987
  %66 = tail call double @sqrt(double noundef %64) #7, !dbg !3038
  %67 = fdiv double %65, %66, !dbg !3039
  %68 = tail call double @acos(double noundef %67) #7, !dbg !3040
  tail call void @llvm.dbg.value(metadata double %68, metadata !2984, metadata !DIExpression()), !dbg !2987
  %69 = sub nsw i32 %1, %63, !dbg !3041
  %70 = shl nsw i32 %69, 1, !dbg !3042
  %71 = sitofp i32 %70 to double, !dbg !3043
  %72 = fadd double %71, -1.500000e+00, !dbg !3044
  %73 = fmul double %72, 0x400921FB54442D18, !dbg !3045
  %74 = sitofp i32 %0 to double, !dbg !3046
  %75 = fadd double %74, 5.000000e-01, !dbg !3047
  %76 = fdiv double %73, %75, !dbg !3048
  tail call void @llvm.dbg.value(metadata double %76, metadata !2986, metadata !DIExpression()), !dbg !2987
  %77 = fmul double %68, 2.000000e+00, !dbg !3049
  %78 = tail call double @sin(double noundef %77) #7, !dbg !3051
  %79 = fsub double %78, %77, !dbg !3052
  %80 = tail call i32 @gsl_fcmp(double noundef %76, double noundef %79, double noundef 0x3E50000000000000) #7, !dbg !3053
  %81 = icmp eq i32 %80, 0, !dbg !3054
  br i1 %81, label %140, label %82, !dbg !3055

82:                                               ; preds = %62
  %83 = fcmp ogt double %76, 0xBCB0000000000000, !dbg !3056
  br i1 %83, label %84, label %86, !dbg !3058

84:                                               ; preds = %82
  %85 = tail call double @sqrt(double noundef %64) #7, !dbg !3059
  br label %140, !dbg !3060

86:                                               ; preds = %82
  %87 = fcmp olt double %68, 0x3CB0000000000000, !dbg !3061
  %88 = select i1 %87, double 0x3CB0000000000000, double %68, !dbg !3063
  tail call void @llvm.dbg.value(metadata double %88, metadata !2984, metadata !DIExpression()), !dbg !2987
  %89 = fcmp ogt double %88, 0x3FF921FB54442D18, !dbg !3064
  %90 = select i1 %89, double 0x3FF921FB54442D18, double %88, !dbg !3066
  tail call void @llvm.dbg.value(metadata double %90, metadata !2984, metadata !DIExpression()), !dbg !2987
  %91 = fmul double %90, 2.000000e+00, !dbg !3067
  %92 = tail call double @sin(double noundef %91) #7, !dbg !3069
  %93 = fsub double %92, %91, !dbg !3070
  %94 = fcmp ogt double %93, %76, !dbg !3071
  br i1 %94, label %95, label %117, !dbg !3072

95:                                               ; preds = %86
  %96 = tail call double @sin(double noundef %91) #7, !dbg !3073
  %97 = fsub double %96, %91, !dbg !3073
  %98 = fsub double %97, %76, !dbg !3073
  %99 = fmul double %98, 2.500000e-01, !dbg !3073
  %100 = fcmp ogt double %99, 0x3E50000000000000, !dbg !3073
  br i1 %100, label %101, label %106, !dbg !3073

101:                                              ; preds = %95
  %102 = tail call double @sin(double noundef %91) #7, !dbg !3073
  %103 = fsub double %102, %91, !dbg !3073
  %104 = fsub double %103, %76, !dbg !3073
  %105 = fmul double %104, 2.500000e-01, !dbg !3073
  br label %106, !dbg !3073

106:                                              ; preds = %95, %101
  %107 = phi double [ %105, %101 ], [ 0x3E50000000000000, %95 ]
  br label %108, !dbg !3075

108:                                              ; preds = %106, %108
  %109 = phi double [ %112, %108 ], [ %90, %106 ], !dbg !2987
  %110 = phi double [ %111, %108 ], [ %107, %106 ], !dbg !3076
  tail call void @llvm.dbg.value(metadata double %110, metadata !2985, metadata !DIExpression()), !dbg !2987
  tail call void @llvm.dbg.value(metadata double %109, metadata !2984, metadata !DIExpression()), !dbg !2987
  %111 = fmul double %110, 2.000000e+00, !dbg !3077
  tail call void @llvm.dbg.value(metadata double %111, metadata !2985, metadata !DIExpression()), !dbg !2987
  %112 = fadd double %109, %111, !dbg !3079
  tail call void @llvm.dbg.value(metadata double %112, metadata !2984, metadata !DIExpression()), !dbg !2987
  %113 = fmul double %112, 2.000000e+00, !dbg !3080
  %114 = tail call double @sin(double noundef %113) #7, !dbg !3081
  %115 = fsub double %114, %113, !dbg !3082
  %116 = fcmp ogt double %115, %76, !dbg !3083
  br i1 %116, label %108, label %117, !dbg !3084, !llvm.loop !3085

117:                                              ; preds = %108, %86
  %118 = phi double [ %90, %86 ], [ %112, %108 ]
  br label %119, !dbg !3087

119:                                              ; preds = %117, %119
  %120 = phi double [ %133, %119 ], [ %118, %117 ], !dbg !2987
  tail call void @llvm.dbg.value(metadata double %120, metadata !2984, metadata !DIExpression()), !dbg !2987
  tail call void @llvm.dbg.value(metadata double %120, metadata !2985, metadata !DIExpression()), !dbg !2987
  %121 = fmul double %120, 2.000000e+00, !dbg !3088
  %122 = tail call double @sin(double noundef %121) #7, !dbg !3090
  %123 = fsub double %122, %121, !dbg !3091
  %124 = fsub double %123, %76, !dbg !3092
  %125 = tail call double @cos(double noundef %121) #7, !dbg !3093
  %126 = fmul double %125, 2.000000e+00, !dbg !3094
  %127 = fadd double %126, -2.000000e+00, !dbg !3095
  %128 = fdiv double %124, %127, !dbg !3096
  %129 = fsub double %120, %128, !dbg !3097
  tail call void @llvm.dbg.value(metadata double %129, metadata !2984, metadata !DIExpression()), !dbg !2987
  %130 = fcmp olt double %129, 0.000000e+00, !dbg !3098
  %131 = fcmp ogt double %129, 0x3FF921FB54442D18
  %132 = or i1 %130, %131, !dbg !3100
  %133 = select i1 %132, double 0x3FF921FB54442D18, double %129, !dbg !3100
  tail call void @llvm.dbg.value(metadata double %133, metadata !2984, metadata !DIExpression()), !dbg !2987
  %134 = tail call i32 @gsl_fcmp(double noundef %120, double noundef %133, double noundef 0x3D19000000000000) #7, !dbg !3101
  %135 = icmp eq i32 %134, 0, !dbg !3102
  br i1 %135, label %136, label %119, !dbg !3103, !llvm.loop !3104

136:                                              ; preds = %119
  %137 = tail call double @sqrt(double noundef %64) #7, !dbg !3106
  %138 = tail call double @cos(double noundef %133) #7, !dbg !3107
  %139 = fmul double %137, %138, !dbg !3108
  br label %140, !dbg !3109

140:                                              ; preds = %62, %136, %84
  %141 = phi double [ %85, %84 ], [ %139, %136 ], [ %65, %62 ], !dbg !2987
  ret double %141, !dbg !3110
}

declare !dbg !3111 i32 @gsl_fcmp(double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_prob_zero(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3114 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3120
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3118, metadata !DIExpression(), metadata !3120, metadata ptr %3, metadata !DIExpression()), !dbg !3121
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3116, metadata !DIExpression()), !dbg !3121
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !3122
  %4 = call i32 @gsl_sf_hermite_prob_zero_e(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !3122, !range !864
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3119, metadata !DIExpression()), !dbg !3121
  %5 = icmp eq i32 %4, 0, !dbg !3123
  br i1 %5, label %7, label %6, !dbg !3122

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1622, i32 noundef 1) #7, !dbg !3125
  br label %7, !dbg !3125

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !3122, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !3128
  ret double %8, !dbg !3128
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_phys_zero_e(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !3129 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3131, metadata !DIExpression()), !dbg !3143
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3132, metadata !DIExpression()), !dbg !3143
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3133, metadata !DIExpression()), !dbg !3143
  %4 = icmp slt i32 %0, 1, !dbg !3144
  %5 = icmp slt i32 %1, 0
  %6 = or i1 %4, %5, !dbg !3145
  br i1 %6, label %10, label %7, !dbg !3145

7:                                                ; preds = %3
  %8 = lshr i32 %0, 1
  %9 = icmp ult i32 %8, %1, !dbg !3146
  br i1 %9, label %10, label %12, !dbg !3147

10:                                               ; preds = %3, %7
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !3148, !tbaa !205
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !3148
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !3148, !tbaa !214
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1734, i32 noundef 1) #7, !dbg !3151
  br label %107, !dbg !3151

12:                                               ; preds = %7
  %13 = icmp eq i32 %1, 0, !dbg !3153
  br i1 %13, label %14, label %20, !dbg !3154

14:                                               ; preds = %12
  %15 = and i32 %0, 1, !dbg !3155
  %16 = icmp eq i32 %15, 0, !dbg !3158
  br i1 %16, label %18, label %17, !dbg !3159

17:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !3160
  br label %107, !dbg !3162

18:                                               ; preds = %14
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !3163, !tbaa !205
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !3163
  store double 0x7FF8000000000000, ptr %19, align 8, !dbg !3163, !tbaa !214
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1743, i32 noundef 1) #7, !dbg !3166
  br label %107, !dbg !3166

20:                                               ; preds = %12
  %21 = icmp eq i32 %0, 2, !dbg !3168
  br i1 %21, label %22, label %24, !dbg !3169

22:                                               ; preds = %20
  store double 0x3FE6A09E667F3BCD, ptr %2, align 8, !dbg !3170, !tbaa !205
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !3172
  store double 0.000000e+00, ptr %23, align 8, !dbg !3173, !tbaa !214
  br label %107, !dbg !3174

24:                                               ; preds = %20
  %25 = icmp ult i32 %0, 21, !dbg !3175
  br i1 %25, label %26, label %40, !dbg !3176

26:                                               ; preds = %24
  %27 = and i32 %0, 1, !dbg !3177
  %28 = icmp eq i32 %27, 0, !dbg !3177
  %29 = select i1 %28, i32 0, i32 %8, !dbg !3177
  %30 = add nsw i32 %8, -1, !dbg !3179
  %31 = mul nsw i32 %30, %8, !dbg !3180
  %32 = add nsw i32 %1, -2, !dbg !3181
  %33 = add i32 %32, %31, !dbg !3182
  %34 = add i32 %33, %29, !dbg !3183
  %35 = sext i32 %34 to i64, !dbg !3184
  %36 = getelementptr inbounds [99 x double], ptr @H_zero_tab, i64 0, i64 %35, !dbg !3184
  %37 = load double, ptr %36, align 8, !dbg !3184, !tbaa !1279
  store double %37, ptr %2, align 8, !dbg !3185, !tbaa !205
  %38 = fmul double %37, 0x3CB0000000000000, !dbg !3186
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !3187
  store double %38, ptr %39, align 8, !dbg !3188, !tbaa !214
  br label %107, !dbg !3189

40:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3134, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3140, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3141, metadata !DIExpression()), !dbg !3190
  %41 = tail call fastcc double @H_zero_init(i32 noundef %0, i32 noundef %1), !dbg !3191
  tail call void @llvm.dbg.value(metadata double %41, metadata !3140, metadata !DIExpression()), !dbg !3190
  %42 = sitofp i32 %0 to double
  %43 = add i32 %0, -1, !dbg !3192
  %44 = add i32 %0, -2, !dbg !3192
  %45 = and i32 %43, 3
  %46 = icmp ult i32 %44, 3
  %47 = and i32 %43, -4
  %48 = icmp eq i32 %45, 0
  br label %49, !dbg !3192

49:                                               ; preds = %93, %40
  %50 = phi double [ %41, %40 ], [ %98, %93 ], !dbg !3190
  tail call void @llvm.dbg.value(metadata double %50, metadata !3140, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata double %50, metadata !3141, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3134, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3142, metadata !DIExpression()), !dbg !3190
  %51 = fmul double %50, 2.000000e+00
  br i1 %46, label %78, label %52, !dbg !3193

52:                                               ; preds = %49, %52
  %53 = phi i32 [ %75, %52 ], [ 1, %49 ]
  %54 = phi double [ %74, %52 ], [ 0.000000e+00, %49 ]
  %55 = phi i32 [ %76, %52 ], [ 0, %49 ]
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !3142, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata double %54, metadata !3134, metadata !DIExpression()), !dbg !3190
  %56 = shl nuw nsw i32 %53, 1, !dbg !3196
  %57 = sitofp i32 %56 to double, !dbg !3198
  %58 = fsub double %51, %54, !dbg !3199
  %59 = fdiv double %57, %58, !dbg !3200
  tail call void @llvm.dbg.value(metadata double %59, metadata !3134, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !3142, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !3142, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3190
  tail call void @llvm.dbg.value(metadata double %59, metadata !3134, metadata !DIExpression()), !dbg !3190
  %60 = shl nuw i32 %53, 1, !dbg !3196
  %61 = add i32 %60, 2, !dbg !3196
  %62 = sitofp i32 %61 to double, !dbg !3198
  %63 = fsub double %51, %59, !dbg !3199
  %64 = fdiv double %62, %63, !dbg !3200
  tail call void @llvm.dbg.value(metadata double %64, metadata !3134, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !3142, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !3142, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3190
  tail call void @llvm.dbg.value(metadata double %64, metadata !3134, metadata !DIExpression()), !dbg !3190
  %65 = shl nuw i32 %53, 1, !dbg !3196
  %66 = add i32 %65, 4, !dbg !3196
  %67 = sitofp i32 %66 to double, !dbg !3198
  %68 = fsub double %51, %64, !dbg !3199
  %69 = fdiv double %67, %68, !dbg !3200
  tail call void @llvm.dbg.value(metadata double %69, metadata !3134, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !3142, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !3142, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !3190
  tail call void @llvm.dbg.value(metadata double %69, metadata !3134, metadata !DIExpression()), !dbg !3190
  %70 = shl nuw i32 %53, 1, !dbg !3196
  %71 = add i32 %70, 6, !dbg !3196
  %72 = sitofp i32 %71 to double, !dbg !3198
  %73 = fsub double %51, %69, !dbg !3199
  %74 = fdiv double %72, %73, !dbg !3200
  tail call void @llvm.dbg.value(metadata double %74, metadata !3134, metadata !DIExpression()), !dbg !3190
  %75 = add nuw nsw i32 %53, 4, !dbg !3201
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !3142, metadata !DIExpression()), !dbg !3190
  %76 = add nuw nsw i32 %55, 4, !dbg !3193
  %77 = icmp eq i32 %76, %47, !dbg !3193
  br i1 %77, label %78, label %52, !dbg !3193, !llvm.loop !3202

78:                                               ; preds = %52, %49
  %79 = phi double [ undef, %49 ], [ %74, %52 ]
  %80 = phi i32 [ 1, %49 ], [ %75, %52 ]
  %81 = phi double [ 0.000000e+00, %49 ], [ %74, %52 ]
  br i1 %48, label %93, label %82, !dbg !3193

82:                                               ; preds = %78, %82
  %83 = phi i32 [ %90, %82 ], [ %80, %78 ]
  %84 = phi double [ %89, %82 ], [ %81, %78 ]
  %85 = phi i32 [ %91, %82 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !3142, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata double %84, metadata !3134, metadata !DIExpression()), !dbg !3190
  %86 = shl nuw nsw i32 %83, 1, !dbg !3196
  %87 = sitofp i32 %86 to double, !dbg !3198
  %88 = fsub double %51, %84, !dbg !3199
  %89 = fdiv double %87, %88, !dbg !3200
  tail call void @llvm.dbg.value(metadata double %89, metadata !3134, metadata !DIExpression()), !dbg !3190
  %90 = add nuw nsw i32 %83, 1, !dbg !3201
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !3142, metadata !DIExpression()), !dbg !3190
  %91 = add i32 %85, 1, !dbg !3193
  %92 = icmp eq i32 %91, %45, !dbg !3193
  br i1 %92, label %93, label %82, !dbg !3193, !llvm.loop !3204

93:                                               ; preds = %82, %78
  %94 = phi double [ %79, %78 ], [ %89, %82 ], !dbg !3200
  %95 = fsub double %51, %94, !dbg !3205
  %96 = fmul double %95, 5.000000e-01, !dbg !3206
  %97 = fdiv double %96, %42, !dbg !3207
  %98 = fsub double %50, %97, !dbg !3208
  tail call void @llvm.dbg.value(metadata double %98, metadata !3140, metadata !DIExpression()), !dbg !3190
  %99 = tail call i32 @gsl_fcmp(double noundef %98, double noundef %50, double noundef 0x3CE4000000000000) #7, !dbg !3209
  %100 = icmp eq i32 %99, 0, !dbg !3210
  br i1 %100, label %101, label %49, !dbg !3211, !llvm.loop !3212

101:                                              ; preds = %93
  store double %98, ptr %2, align 8, !dbg !3214, !tbaa !205
  %102 = fmul double %98, 0x3CC0000000000000, !dbg !3215
  %103 = fsub double %98, %50, !dbg !3216
  %104 = tail call double @llvm.fabs.f64(double %103), !dbg !3217
  %105 = fadd double %102, %104, !dbg !3218
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !3219
  store double %105, ptr %106, align 8, !dbg !3220, !tbaa !214
  br label %107

107:                                              ; preds = %10, %17, %18, %22, %26, %101
  %108 = phi i32 [ 1, %10 ], [ 0, %17 ], [ 1, %18 ], [ 0, %22 ], [ 0, %26 ], [ 0, %101 ], !dbg !3221
  ret i32 %108, !dbg !3222
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_phys_zero(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3223 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3229
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3227, metadata !DIExpression(), metadata !3229, metadata ptr %3, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3225, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3226, metadata !DIExpression()), !dbg !3230
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !3231
  %4 = call i32 @gsl_sf_hermite_phys_zero_e(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !3231, !range !864
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3228, metadata !DIExpression()), !dbg !3230
  %5 = icmp eq i32 %4, 0, !dbg !3232
  br i1 %5, label %7, label %6, !dbg !3231

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1776, i32 noundef 1) #7, !dbg !3234
  br label %7, !dbg !3234

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !3231, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !3237
  ret double %8, !dbg !3237
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_func_zero_e(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !3238 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3240, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3241, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3242, metadata !DIExpression()), !dbg !3243
  %4 = tail call i32 @gsl_sf_hermite_phys_zero_e(i32 noundef %0, i32 noundef %1, ptr noundef %2), !dbg !3244, !range !864
  ret i32 %4, !dbg !3245
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_func_zero(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3246 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3252
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3250, metadata !DIExpression(), metadata !3252, metadata ptr %3, metadata !DIExpression()), !dbg !3253
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3248, metadata !DIExpression()), !dbg !3253
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3249, metadata !DIExpression()), !dbg !3253
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %0, metadata !3240, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i32 %1, metadata !3241, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata ptr %3, metadata !3242, metadata !DIExpression()), !dbg !3255
  %4 = call noundef i32 @gsl_sf_hermite_phys_zero_e(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !3257, !range !864
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3251, metadata !DIExpression()), !dbg !3253
  %5 = icmp eq i32 %4, 0, !dbg !3258
  br i1 %5, label %7, label %6, !dbg !3254

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1788, i32 noundef %4) #7, !dbg !3260
  br label %7, !dbg !3260

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !3254, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !3263
  ret double %8, !dbg !3263
}

declare !dbg !3264 double @gsl_sf_airy_zero_Ai(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !3267 double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!39}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "hermite.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "730c15504f15045bbd2c8667823d1c93")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 248, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 13)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 268, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 44)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 431, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 37)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 460, type: !14, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 605, type: !19, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 877, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 47)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1148, type: !28, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1258, type: !28, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1433, type: !14, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "He_zero_tab", scope: !39, file: !2, line: 1472, type: !94, isLocal: true, isDefinition: true)
!39 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, globals: !80, splitDebugInlining: false, nameTableKind: None)
!40 = !{!41}
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 39, baseType: !43, size: 32, elements: !44)
!42 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!45 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!46 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!47 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!48 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!49 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!50 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!51 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!52 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!53 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!54 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!55 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!56 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!57 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!58 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!59 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!60 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!61 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!62 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!63 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!64 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!65 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!66 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!67 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!68 = !DIEnumerator(name: "GSL_ESING", value: 21)
!69 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!70 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!71 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!72 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!73 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!74 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!75 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!76 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!77 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!78 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!79 = !DIEnumerator(name: "GSL_EOF", value: 32)
!80 = !{!81, !0, !7, !12, !17, !22, !24, !26, !31, !33, !35, !83, !88, !90, !37, !92}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !19, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1622, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 42)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1776, type: !85, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1788, type: !85, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "H_zero_tab", scope: !39, file: !2, line: 1626, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 6336, elements: !96)
!95 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!96 = !{!97}
!97 = !DISubrange(count: 99)
!98 = !{i32 7, !"Dwarf Version", i32 5}
!99 = !{i32 2, !"Debug Info Version", i32 3}
!100 = !{i32 1, !"wchar_size", i32 4}
!101 = !{i32 8, !"PIC Level", i32 2}
!102 = !{i32 7, !"PIE Level", i32 2}
!103 = !{i32 7, !"uwtable", i32 2}
!104 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!105 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!106 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_e", scope: !2, file: !2, line: 227, type: !107, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !118)
!107 = !DISubroutineType(types: !108)
!108 = !{!43, !109, !110, !111}
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !113, line: 41, baseType: !114)
!113 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !113, line: 37, size: 128, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !114, file: !113, line: 38, baseType: !95, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !114, file: !113, line: 39, baseType: !95, size: 64, offset: 64)
!118 = !{!119, !120, !121}
!119 = !DILocalVariable(name: "n", arg: 1, scope: !106, file: !2, line: 227, type: !109)
!120 = !DILocalVariable(name: "x", arg: 2, scope: !106, file: !2, line: 227, type: !110)
!121 = !DILocalVariable(name: "result", arg: 3, scope: !106, file: !2, line: 227, type: !111)
!122 = distinct !DIAssignID()
!123 = !DILocation(line: 0, scope: !106)
!124 = !DILocation(line: 229, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !106, file: !2, line: 229, column: 7)
!126 = !DILocation(line: 229, column: 14, scope: !125)
!127 = !DILocalVariable(name: "Ai", scope: !128, file: !2, line: 216, type: !112)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 215, column: 7)
!129 = distinct !DILexicalBlock(scope: !130, file: !2, line: 209, column: 12)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 203, column: 7)
!131 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_appr_e", scope: !2, file: !2, line: 193, type: !107, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !142, !127}
!133 = !DILocalVariable(name: "n", arg: 1, scope: !131, file: !2, line: 193, type: !109)
!134 = !DILocalVariable(name: "x", arg: 2, scope: !131, file: !2, line: 193, type: !110)
!135 = !DILocalVariable(name: "result", arg: 3, scope: !131, file: !2, line: 193, type: !111)
!136 = !DILocalVariable(name: "aizero1", scope: !131, file: !2, line: 196, type: !110)
!137 = !DILocalVariable(name: "z", scope: !131, file: !2, line: 197, type: !95)
!138 = !DILocalVariable(name: "f", scope: !131, file: !2, line: 198, type: !95)
!139 = !DILocalVariable(name: "j", scope: !131, file: !2, line: 199, type: !43)
!140 = !DILocalVariable(name: "phi", scope: !141, file: !2, line: 204, type: !95)
!141 = distinct !DILexicalBlock(scope: !130, file: !2, line: 203, column: 52)
!142 = !DILocalVariable(name: "phi", scope: !143, file: !2, line: 210, type: !95)
!143 = distinct !DILexicalBlock(scope: !129, file: !2, line: 209, column: 57)
!144 = !DILocation(line: 0, scope: !128, inlinedAt: !145)
!145 = distinct !DILocation(line: 233, column: 12, scope: !146)
!146 = distinct !DILexicalBlock(scope: !125, file: !2, line: 232, column: 7)
!147 = !DILocation(line: 0, scope: !131, inlinedAt: !145)
!148 = !DILocation(line: 197, column: 14, scope: !131, inlinedAt: !145)
!149 = !DILocation(line: 197, column: 21, scope: !131, inlinedAt: !145)
!150 = !DILocation(line: 200, column: 3, scope: !151, inlinedAt: !145)
!151 = distinct !DILexicalBlock(scope: !131, file: !2, line: 200, column: 3)
!152 = !DILocation(line: 229, column: 32, scope: !125)
!153 = !{i32 0, i32 3}
!154 = !DILocation(line: 229, column: 70, scope: !125)
!155 = !DILocation(line: 229, column: 7, scope: !106)
!156 = !DILocation(line: 200, column: 14, scope: !157, inlinedAt: !145)
!157 = distinct !DILexicalBlock(scope: !151, file: !2, line: 200, column: 3)
!158 = !DILocation(line: 201, column: 13, scope: !159, inlinedAt: !145)
!159 = distinct !DILexicalBlock(scope: !157, file: !2, line: 200, column: 25)
!160 = !DILocation(line: 201, column: 8, scope: !159, inlinedAt: !145)
!161 = !DILocation(line: 201, column: 6, scope: !159, inlinedAt: !145)
!162 = !DILocation(line: 200, column: 21, scope: !157, inlinedAt: !145)
!163 = distinct !{!163, !150, !164, !165}
!164 = !DILocation(line: 202, column: 3, scope: !151, inlinedAt: !145)
!165 = !{!"llvm.loop.mustprogress"}
!166 = distinct !{!166, !167}
!167 = !{!"llvm.loop.unroll.disable"}
!168 = !DILocation(line: 203, column: 17, scope: !130, inlinedAt: !145)
!169 = !DILocation(line: 203, column: 19, scope: !130, inlinedAt: !145)
!170 = !DILocation(line: 203, column: 11, scope: !130, inlinedAt: !145)
!171 = !DILocation(line: 203, column: 44, scope: !130, inlinedAt: !145)
!172 = !DILocation(line: 203, column: 40, scope: !130, inlinedAt: !145)
!173 = !DILocation(line: 203, column: 39, scope: !130, inlinedAt: !145)
!174 = !DILocation(line: 203, column: 23, scope: !130, inlinedAt: !145)
!175 = !DILocation(line: 203, column: 9, scope: !130, inlinedAt: !145)
!176 = !DILocation(line: 0, scope: !130, inlinedAt: !145)
!177 = !DILocation(line: 203, column: 7, scope: !131, inlinedAt: !145)
!178 = !DILocation(line: 204, column: 24, scope: !141, inlinedAt: !145)
!179 = !DILocation(line: 204, column: 18, scope: !141, inlinedAt: !145)
!180 = !DILocation(line: 0, scope: !141, inlinedAt: !145)
!181 = !DILocation(line: 205, column: 22, scope: !141, inlinedAt: !145)
!182 = !DILocation(line: 205, column: 35, scope: !141, inlinedAt: !145)
!183 = !DILocation(line: 205, column: 20, scope: !141, inlinedAt: !145)
!184 = !DILocation(line: 205, column: 58, scope: !141, inlinedAt: !145)
!185 = !DILocation(line: 205, column: 52, scope: !141, inlinedAt: !145)
!186 = !DILocation(line: 205, column: 51, scope: !141, inlinedAt: !145)
!187 = !DILocation(line: 205, column: 81, scope: !141, inlinedAt: !145)
!188 = !DILocation(line: 205, column: 80, scope: !141, inlinedAt: !145)
!189 = !DILocation(line: 205, column: 67, scope: !141, inlinedAt: !145)
!190 = !DILocation(line: 205, column: 66, scope: !141, inlinedAt: !145)
!191 = !DILocation(line: 205, column: 109, scope: !141, inlinedAt: !145)
!192 = !DILocation(line: 205, column: 111, scope: !141, inlinedAt: !145)
!193 = !DILocation(line: 205, column: 124, scope: !141, inlinedAt: !145)
!194 = !DILocation(line: 205, column: 119, scope: !141, inlinedAt: !145)
!195 = !DILocation(line: 205, column: 129, scope: !141, inlinedAt: !145)
!196 = !DILocation(line: 205, column: 117, scope: !141, inlinedAt: !145)
!197 = !DILocation(line: 205, column: 104, scope: !141, inlinedAt: !145)
!198 = !DILocation(line: 205, column: 91, scope: !141, inlinedAt: !145)
!199 = !DILocation(line: 205, column: 90, scope: !141, inlinedAt: !145)
!200 = !DILocation(line: 205, column: 145, scope: !141, inlinedAt: !145)
!201 = !DILocation(line: 205, column: 147, scope: !141, inlinedAt: !145)
!202 = !DILocation(line: 205, column: 138, scope: !141, inlinedAt: !145)
!203 = !DILocation(line: 205, column: 137, scope: !141, inlinedAt: !145)
!204 = !DILocation(line: 205, column: 17, scope: !141, inlinedAt: !145)
!205 = !{!206, !207, i64 0}
!206 = !{!"gsl_sf_result_struct", !207, i64 0, !207, i64 8}
!207 = !{!"double", !208, i64 0}
!208 = !{!"omnipotent char", !209, i64 0}
!209 = !{!"Simple C/C++ TBAA"}
!210 = !DILocation(line: 206, column: 42, scope: !141, inlinedAt: !145)
!211 = !DILocation(line: 206, column: 40, scope: !141, inlinedAt: !145)
!212 = !DILocation(line: 206, column: 13, scope: !141, inlinedAt: !145)
!213 = !DILocation(line: 206, column: 17, scope: !141, inlinedAt: !145)
!214 = !{!206, !207, i64 8}
!215 = !DILocation(line: 209, column: 45, scope: !129, inlinedAt: !145)
!216 = !DILocation(line: 209, column: 44, scope: !129, inlinedAt: !145)
!217 = !DILocation(line: 209, column: 28, scope: !129, inlinedAt: !145)
!218 = !DILocation(line: 209, column: 14, scope: !129, inlinedAt: !145)
!219 = !DILocation(line: 209, column: 12, scope: !130, inlinedAt: !145)
!220 = !DILocation(line: 210, column: 26, scope: !143, inlinedAt: !145)
!221 = !DILocation(line: 210, column: 25, scope: !143, inlinedAt: !145)
!222 = !DILocation(line: 210, column: 18, scope: !143, inlinedAt: !145)
!223 = !DILocation(line: 0, scope: !143, inlinedAt: !145)
!224 = !DILocation(line: 211, column: 22, scope: !143, inlinedAt: !145)
!225 = !DILocation(line: 211, column: 35, scope: !143, inlinedAt: !145)
!226 = !DILocation(line: 211, column: 20, scope: !143, inlinedAt: !145)
!227 = !DILocation(line: 211, column: 52, scope: !143, inlinedAt: !145)
!228 = !DILocation(line: 211, column: 51, scope: !143, inlinedAt: !145)
!229 = !DILocation(line: 211, column: 64, scope: !143, inlinedAt: !145)
!230 = !DILocation(line: 211, column: 95, scope: !143, inlinedAt: !145)
!231 = !DILocation(line: 211, column: 94, scope: !143, inlinedAt: !145)
!232 = !DILocation(line: 211, column: 73, scope: !143, inlinedAt: !145)
!233 = !DILocation(line: 211, column: 72, scope: !143, inlinedAt: !145)
!234 = !DILocation(line: 211, column: 114, scope: !143, inlinedAt: !145)
!235 = !DILocation(line: 211, column: 116, scope: !143, inlinedAt: !145)
!236 = !DILocation(line: 211, column: 125, scope: !143, inlinedAt: !145)
!237 = !DILocation(line: 211, column: 130, scope: !143, inlinedAt: !145)
!238 = !DILocation(line: 211, column: 129, scope: !143, inlinedAt: !145)
!239 = !DILocation(line: 211, column: 122, scope: !143, inlinedAt: !145)
!240 = !DILocation(line: 211, column: 106, scope: !143, inlinedAt: !145)
!241 = !DILocation(line: 211, column: 105, scope: !143, inlinedAt: !145)
!242 = !DILocation(line: 211, column: 151, scope: !143, inlinedAt: !145)
!243 = !DILocation(line: 211, column: 153, scope: !143, inlinedAt: !145)
!244 = !DILocation(line: 211, column: 144, scope: !143, inlinedAt: !145)
!245 = !DILocation(line: 211, column: 143, scope: !143, inlinedAt: !145)
!246 = !DILocation(line: 211, column: 17, scope: !143, inlinedAt: !145)
!247 = !DILocation(line: 212, column: 42, scope: !143, inlinedAt: !145)
!248 = !DILocation(line: 212, column: 40, scope: !143, inlinedAt: !145)
!249 = !DILocation(line: 212, column: 13, scope: !143, inlinedAt: !145)
!250 = !DILocation(line: 212, column: 17, scope: !143, inlinedAt: !145)
!251 = !DILocation(line: 216, column: 5, scope: !128, inlinedAt: !145)
!252 = !DILocation(line: 217, column: 25, scope: !128, inlinedAt: !145)
!253 = !DILocation(line: 217, column: 24, scope: !128, inlinedAt: !145)
!254 = !DILocation(line: 217, column: 38, scope: !128, inlinedAt: !145)
!255 = !DILocation(line: 217, column: 47, scope: !128, inlinedAt: !145)
!256 = !DILocation(line: 217, column: 46, scope: !128, inlinedAt: !145)
!257 = !DILocation(line: 217, column: 5, scope: !128, inlinedAt: !145)
!258 = !DILocation(line: 218, column: 22, scope: !128, inlinedAt: !145)
!259 = !DILocation(line: 218, column: 35, scope: !128, inlinedAt: !145)
!260 = !DILocation(line: 218, column: 20, scope: !128, inlinedAt: !145)
!261 = !DILocation(line: 218, column: 51, scope: !128, inlinedAt: !145)
!262 = !DILocation(line: 218, column: 75, scope: !128, inlinedAt: !145)
!263 = !DILocation(line: 218, column: 74, scope: !128, inlinedAt: !145)
!264 = !DILocation(line: 218, column: 92, scope: !128, inlinedAt: !145)
!265 = !DILocation(line: 218, column: 88, scope: !128, inlinedAt: !145)
!266 = !DILocation(line: 218, column: 103, scope: !128, inlinedAt: !145)
!267 = !DILocation(line: 218, column: 105, scope: !128, inlinedAt: !145)
!268 = !DILocation(line: 218, column: 96, scope: !128, inlinedAt: !145)
!269 = !DILocation(line: 218, column: 95, scope: !128, inlinedAt: !145)
!270 = !DILocation(line: 218, column: 17, scope: !128, inlinedAt: !145)
!271 = !DILocation(line: 219, column: 20, scope: !128, inlinedAt: !145)
!272 = !DILocation(line: 219, column: 44, scope: !128, inlinedAt: !145)
!273 = !DILocation(line: 219, column: 43, scope: !128, inlinedAt: !145)
!274 = !DILocation(line: 219, column: 61, scope: !128, inlinedAt: !145)
!275 = !DILocation(line: 219, column: 57, scope: !128, inlinedAt: !145)
!276 = !DILocation(line: 219, column: 65, scope: !128, inlinedAt: !145)
!277 = !DILocation(line: 219, column: 64, scope: !128, inlinedAt: !145)
!278 = !DILocation(line: 219, column: 109, scope: !128, inlinedAt: !145)
!279 = !DILocation(line: 219, column: 96, scope: !128, inlinedAt: !145)
!280 = !DILocation(line: 219, column: 95, scope: !128, inlinedAt: !145)
!281 = !DILocation(line: 219, column: 78, scope: !128, inlinedAt: !145)
!282 = !DILocation(line: 219, column: 13, scope: !128, inlinedAt: !145)
!283 = !DILocation(line: 219, column: 17, scope: !128, inlinedAt: !145)
!284 = !DILocation(line: 221, column: 3, scope: !129, inlinedAt: !145)
!285 = !DILocation(line: 235, column: 1, scope: !106)
!286 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_iter_e", scope: !2, file: !2, line: 48, type: !107, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !287)
!287 = !{!288, !289, !290, !291, !297, !298, !299, !300, !301, !302, !303}
!288 = !DILocalVariable(name: "n", arg: 1, scope: !286, file: !2, line: 48, type: !109)
!289 = !DILocalVariable(name: "x", arg: 2, scope: !286, file: !2, line: 48, type: !110)
!290 = !DILocalVariable(name: "result", arg: 3, scope: !286, file: !2, line: 48, type: !111)
!291 = !DILocalVariable(name: "p_n0", scope: !292, file: !2, line: 124, type: !95)
!292 = distinct !DILexicalBlock(scope: !293, file: !2, line: 121, column: 7)
!293 = distinct !DILexicalBlock(scope: !294, file: !2, line: 66, column: 11)
!294 = distinct !DILexicalBlock(scope: !295, file: !2, line: 61, column: 11)
!295 = distinct !DILexicalBlock(scope: !296, file: !2, line: 56, column: 11)
!296 = distinct !DILexicalBlock(scope: !286, file: !2, line: 53, column: 6)
!297 = !DILocalVariable(name: "p_n1", scope: !292, file: !2, line: 125, type: !95)
!298 = !DILocalVariable(name: "p_n", scope: !292, file: !2, line: 126, type: !95)
!299 = !DILocalVariable(name: "e_n0", scope: !292, file: !2, line: 128, type: !95)
!300 = !DILocalVariable(name: "e_n1", scope: !292, file: !2, line: 129, type: !95)
!301 = !DILocalVariable(name: "e_n", scope: !292, file: !2, line: 130, type: !95)
!302 = !DILocalVariable(name: "j", scope: !292, file: !2, line: 132, type: !43)
!303 = !DILocalVariable(name: "c", scope: !292, file: !2, line: 132, type: !43)
!304 = !DILocation(line: 0, scope: !286)
!305 = !DILocation(line: 51, column: 11, scope: !286)
!306 = !DILocation(line: 53, column: 8, scope: !296)
!307 = !DILocation(line: 51, column: 15, scope: !286)
!308 = !DILocation(line: 53, column: 6, scope: !286)
!309 = !DILocation(line: 54, column: 5, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 54, column: 5)
!311 = distinct !DILexicalBlock(scope: !296, file: !2, line: 53, column: 13)
!312 = !DILocation(line: 54, column: 5, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !2, line: 54, column: 5)
!314 = !DILocation(line: 56, column: 11, scope: !296)
!315 = !DILocation(line: 57, column: 17, scope: !316)
!316 = distinct !DILexicalBlock(scope: !295, file: !2, line: 56, column: 19)
!317 = !DILocation(line: 58, column: 17, scope: !316)
!318 = !DILocation(line: 59, column: 5, scope: !316)
!319 = !DILocation(line: 62, column: 17, scope: !320)
!320 = distinct !DILexicalBlock(scope: !294, file: !2, line: 61, column: 19)
!321 = !DILocation(line: 63, column: 17, scope: !320)
!322 = !DILocation(line: 64, column: 5, scope: !320)
!323 = !DILocation(line: 66, column: 13, scope: !293)
!324 = !DILocation(line: 66, column: 11, scope: !294)
!325 = !DILocation(line: 67, column: 8, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !2, line: 67, column: 8)
!327 = distinct !DILexicalBlock(scope: !293, file: !2, line: 66, column: 19)
!328 = !DILocation(line: 67, column: 8, scope: !327)
!329 = !DILocation(line: 73, column: 12, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !2, line: 73, column: 10)
!331 = distinct !DILexicalBlock(scope: !326, file: !2, line: 72, column: 9)
!332 = !DILocation(line: 73, column: 10, scope: !331)
!333 = !DILocation(line: 84, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !2, line: 84, column: 5)
!335 = distinct !DILexicalBlock(scope: !330, file: !2, line: 73, column: 18)
!336 = !DILocation(line: 84, column: 5, scope: !335)
!337 = !DILocation(line: 85, column: 25, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !2, line: 84, column: 13)
!339 = !DILocation(line: 85, column: 4, scope: !338)
!340 = !DILocation(line: 86, column: 5, scope: !338)
!341 = !DILocation(line: 86, column: 44, scope: !338)
!342 = !DILocation(line: 86, column: 35, scope: !338)
!343 = !DILocation(line: 86, column: 33, scope: !338)
!344 = !DILocation(line: 88, column: 13, scope: !345)
!345 = distinct !DILexicalBlock(scope: !334, file: !2, line: 88, column: 11)
!346 = !DILocation(line: 88, column: 11, scope: !334)
!347 = !DILocation(line: 89, column: 16, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !2, line: 88, column: 20)
!349 = !DILocation(line: 90, column: 16, scope: !348)
!350 = !DILocation(line: 91, column: 2, scope: !348)
!351 = !DILocation(line: 93, column: 19, scope: !352)
!352 = distinct !DILexicalBlock(scope: !345, file: !2, line: 92, column: 6)
!353 = !DILocation(line: 93, column: 42, scope: !352)
!354 = !DILocation(line: 93, column: 16, scope: !352)
!355 = !DILocation(line: 94, column: 16, scope: !352)
!356 = !DILocation(line: 98, column: 17, scope: !357)
!357 = distinct !DILexicalBlock(scope: !330, file: !2, line: 97, column: 11)
!358 = !DILocation(line: 98, column: 16, scope: !357)
!359 = !DILocation(line: 98, column: 14, scope: !357)
!360 = !DILocation(line: 99, column: 14, scope: !357)
!361 = !DILocation(line: 0, scope: !292)
!362 = !DILocation(line: 129, column: 19, scope: !292)
!363 = !DILocation(line: 129, column: 26, scope: !292)
!364 = !DILocation(line: 134, column: 5, scope: !365)
!365 = distinct !DILexicalBlock(scope: !292, file: !2, line: 134, column: 5)
!366 = !DILocation(line: 135, column: 11, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !2, line: 135, column: 11)
!368 = distinct !DILexicalBlock(scope: !369, file: !2, line: 134, column: 28)
!369 = distinct !DILexicalBlock(scope: !365, file: !2, line: 134, column: 5)
!370 = !DILocation(line: 135, column: 26, scope: !367)
!371 = !DILocation(line: 135, column: 11, scope: !368)
!372 = !DILocation(line: 138, column: 15, scope: !368)
!373 = !DILocation(line: 138, column: 21, scope: !368)
!374 = !DILocation(line: 138, column: 22, scope: !368)
!375 = !DILocation(line: 138, column: 20, scope: !368)
!376 = !DILocation(line: 142, column: 22, scope: !368)
!377 = !DILocation(line: 142, column: 29, scope: !368)
!378 = !DILocation(line: 142, column: 27, scope: !368)
!379 = !DILocation(line: 146, column: 15, scope: !368)
!380 = !DILocation(line: 146, column: 46, scope: !368)
!381 = !DILocation(line: 146, column: 71, scope: !368)
!382 = !DILocation(line: 146, column: 76, scope: !368)
!383 = !DILocation(line: 146, column: 107, scope: !368)
!384 = !DILocation(line: 146, column: 7, scope: !368)
!385 = !DILocation(line: 147, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !368, file: !2, line: 146, column: 128)
!387 = !DILocation(line: 148, column: 7, scope: !386)
!388 = !DILocation(line: 150, column: 7, scope: !386)
!389 = !DILocation(line: 151, column: 7, scope: !386)
!390 = !DILocation(line: 153, column: 3, scope: !386)
!391 = distinct !{!391, !384, !392, !165}
!392 = !DILocation(line: 154, column: 7, scope: !368)
!393 = !DILocation(line: 156, column: 7, scope: !368)
!394 = !DILocation(line: 0, scope: !368)
!395 = !DILocation(line: 156, column: 19, scope: !368)
!396 = !DILocation(line: 156, column: 30, scope: !368)
!397 = !DILocation(line: 156, column: 51, scope: !368)
!398 = !DILocation(line: 156, scope: !368)
!399 = !DILocation(line: 156, column: 87, scope: !368)
!400 = !DILocation(line: 156, column: 108, scope: !368)
!401 = !DILocation(line: 156, column: 133, scope: !368)
!402 = !DILocation(line: 156, column: 164, scope: !368)
!403 = !DILocation(line: 157, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !368, file: !2, line: 156, column: 189)
!405 = !DILocation(line: 158, column: 7, scope: !404)
!406 = !DILocation(line: 160, column: 7, scope: !404)
!407 = !DILocation(line: 161, column: 7, scope: !404)
!408 = !DILocation(line: 163, column: 3, scope: !404)
!409 = distinct !{!409, !393, !410, !165}
!410 = !DILocation(line: 164, column: 7, scope: !368)
!411 = !DILocation(line: 134, column: 25, scope: !369)
!412 = !DILocation(line: 134, column: 16, scope: !369)
!413 = distinct !{!413, !364, !414, !165}
!414 = !DILocation(line: 165, column: 5, scope: !365)
!415 = !DILocation(line: 175, column: 19, scope: !292)
!416 = !DILocation(line: 175, column: 26, scope: !292)
!417 = !DILocation(line: 175, column: 17, scope: !292)
!418 = !DILocation(line: 176, column: 19, scope: !292)
!419 = !DILocation(line: 176, column: 26, scope: !292)
!420 = !DILocation(line: 176, column: 46, scope: !292)
!421 = !DILocation(line: 176, column: 33, scope: !292)
!422 = !DILocation(line: 176, column: 50, scope: !292)
!423 = !DILocation(line: 176, column: 31, scope: !292)
!424 = !DILocation(line: 176, column: 17, scope: !292)
!425 = !DILocation(line: 181, column: 9, scope: !426)
!426 = distinct !DILexicalBlock(scope: !292, file: !2, line: 181, column: 9)
!427 = !DILocation(line: 181, column: 32, scope: !426)
!428 = !DILocation(line: 0, scope: !426)
!429 = !DILocation(line: 0, scope: !296)
!430 = !DILocation(line: 188, column: 1, scope: !286)
!431 = distinct !DISubprogram(name: "gsl_sf_hermite_prob", scope: !2, file: !2, line: 237, type: !432, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{!95, !109, !110}
!434 = !{!435, !436, !437, !438}
!435 = !DILocalVariable(name: "n", arg: 1, scope: !431, file: !2, line: 237, type: !109)
!436 = !DILocalVariable(name: "x", arg: 2, scope: !431, file: !2, line: 237, type: !110)
!437 = !DILocalVariable(name: "result", scope: !431, file: !2, line: 239, type: !112)
!438 = !DILocalVariable(name: "status", scope: !431, file: !2, line: 239, type: !43)
!439 = distinct !DIAssignID()
!440 = !DILocation(line: 0, scope: !431)
!441 = !DILocation(line: 239, column: 3, scope: !431)
!442 = !DILocation(line: 240, column: 1, scope: !431)
!443 = !DISubprogram(name: "gsl_error", scope: !42, file: !42, line: 77, type: !444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !446, !446, !43, !43}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!448 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_der_e", scope: !2, file: !2, line: 245, type: !449, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{!43, !109, !109, !110, !111}
!451 = !{!452, !453, !454, !455, !456, !460}
!452 = !DILocalVariable(name: "m", arg: 1, scope: !448, file: !2, line: 245, type: !109)
!453 = !DILocalVariable(name: "n", arg: 2, scope: !448, file: !2, line: 245, type: !109)
!454 = !DILocalVariable(name: "x", arg: 3, scope: !448, file: !2, line: 245, type: !110)
!455 = !DILocalVariable(name: "result", arg: 4, scope: !448, file: !2, line: 245, type: !111)
!456 = !DILocalVariable(name: "f", scope: !457, file: !2, line: 256, type: !95)
!457 = distinct !DILexicalBlock(scope: !458, file: !2, line: 255, column: 7)
!458 = distinct !DILexicalBlock(scope: !459, file: !2, line: 250, column: 11)
!459 = distinct !DILexicalBlock(scope: !448, file: !2, line: 247, column: 6)
!460 = !DILocalVariable(name: "He", scope: !457, file: !2, line: 257, type: !112)
!461 = distinct !DIAssignID()
!462 = !DILocation(line: 0, scope: !457)
!463 = !DILocation(line: 0, scope: !448)
!464 = !DILocation(line: 247, column: 12, scope: !459)
!465 = !DILocation(line: 248, column: 5, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !2, line: 248, column: 5)
!467 = distinct !DILexicalBlock(scope: !459, file: !2, line: 247, column: 22)
!468 = !DILocation(line: 248, column: 5, scope: !469)
!469 = distinct !DILexicalBlock(scope: !466, file: !2, line: 248, column: 5)
!470 = !DILocation(line: 250, column: 13, scope: !458)
!471 = !DILocation(line: 250, column: 11, scope: !459)
!472 = !DILocation(line: 252, column: 17, scope: !473)
!473 = distinct !DILexicalBlock(scope: !458, file: !2, line: 250, column: 18)
!474 = !DILocation(line: 253, column: 5, scope: !473)
!475 = !DILocation(line: 256, column: 16, scope: !457)
!476 = !DILocation(line: 256, column: 35, scope: !457)
!477 = !DILocation(line: 256, column: 34, scope: !457)
!478 = !DILocation(line: 257, column: 5, scope: !457)
!479 = !DILocation(line: 258, column: 28, scope: !457)
!480 = !DILocation(line: 258, column: 5, scope: !457)
!481 = !DILocation(line: 259, column: 22, scope: !457)
!482 = !DILocation(line: 259, column: 25, scope: !457)
!483 = !DILocation(line: 259, column: 17, scope: !457)
!484 = !DILocation(line: 260, column: 22, scope: !457)
!485 = !DILocation(line: 260, column: 25, scope: !457)
!486 = !DILocation(line: 260, column: 46, scope: !457)
!487 = !DILocation(line: 260, column: 45, scope: !457)
!488 = !DILocation(line: 260, column: 28, scope: !457)
!489 = !DILocation(line: 260, column: 13, scope: !457)
!490 = !DILocation(line: 260, column: 17, scope: !457)
!491 = !DILocation(line: 262, column: 3, scope: !458)
!492 = !DILocation(line: 0, scope: !459)
!493 = !DILocation(line: 263, column: 1, scope: !448)
!494 = !DISubprogram(name: "gsl_sf_choose", scope: !495, file: !495, line: 161, type: !496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!495 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!496 = !DISubroutineType(types: !497)
!497 = !{!95, !498, !498}
!498 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!499 = !DISubprogram(name: "gsl_sf_fact", scope: !495, file: !495, line: 120, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!500 = !DISubroutineType(types: !501)
!501 = !{!95, !502}
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!503 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_der", scope: !2, file: !2, line: 266, type: !504, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !506)
!504 = !DISubroutineType(types: !505)
!505 = !{!95, !109, !109, !110}
!506 = !{!507, !508, !509, !510, !511}
!507 = !DILocalVariable(name: "m", arg: 1, scope: !503, file: !2, line: 266, type: !109)
!508 = !DILocalVariable(name: "n", arg: 2, scope: !503, file: !2, line: 266, type: !109)
!509 = !DILocalVariable(name: "x", arg: 3, scope: !503, file: !2, line: 266, type: !110)
!510 = !DILocalVariable(name: "result", scope: !503, file: !2, line: 268, type: !112)
!511 = !DILocalVariable(name: "status", scope: !503, file: !2, line: 268, type: !43)
!512 = distinct !DIAssignID()
!513 = !DILocation(line: 0, scope: !503)
!514 = !DILocation(line: 0, scope: !457, inlinedAt: !515)
!515 = distinct !DILocation(line: 268, column: 3, scope: !503)
!516 = !DILocation(line: 0, scope: !448, inlinedAt: !515)
!517 = !DILocation(line: 247, column: 12, scope: !459, inlinedAt: !515)
!518 = !DILocation(line: 250, column: 13, scope: !458, inlinedAt: !515)
!519 = !DILocation(line: 250, column: 11, scope: !459, inlinedAt: !515)
!520 = !DILocation(line: 256, column: 16, scope: !457, inlinedAt: !515)
!521 = !DILocation(line: 256, column: 35, scope: !457, inlinedAt: !515)
!522 = !DILocation(line: 256, column: 34, scope: !457, inlinedAt: !515)
!523 = !DILocation(line: 257, column: 5, scope: !457, inlinedAt: !515)
!524 = !DILocation(line: 258, column: 28, scope: !457, inlinedAt: !515)
!525 = !DILocation(line: 258, column: 5, scope: !457, inlinedAt: !515)
!526 = !DILocation(line: 259, column: 22, scope: !457, inlinedAt: !515)
!527 = !DILocation(line: 259, column: 25, scope: !457, inlinedAt: !515)
!528 = !DILocation(line: 262, column: 3, scope: !458, inlinedAt: !515)
!529 = !DILocation(line: 248, column: 5, scope: !469, inlinedAt: !515)
!530 = !DILocation(line: 268, column: 3, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !2, line: 268, column: 3)
!532 = distinct !DILexicalBlock(scope: !533, file: !2, line: 268, column: 3)
!533 = distinct !DILexicalBlock(scope: !503, file: !2, line: 268, column: 3)
!534 = !DILocation(line: 269, column: 1, scope: !503)
!535 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_e", scope: !2, file: !2, line: 274, type: !107, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !536)
!536 = !{!537, !538, !539, !540, !550, !553, !554, !555, !556, !557, !558, !559, !560, !562, !563, !564, !565, !568, !571}
!537 = !DILocalVariable(name: "n", arg: 1, scope: !535, file: !2, line: 274, type: !109)
!538 = !DILocalVariable(name: "x", arg: 2, scope: !535, file: !2, line: 274, type: !110)
!539 = !DILocalVariable(name: "result", arg: 3, scope: !535, file: !2, line: 274, type: !111)
!540 = !DILocalVariable(name: "f", scope: !541, file: !2, line: 300, type: !95)
!541 = distinct !DILexicalBlock(scope: !542, file: !2, line: 299, column: 18)
!542 = distinct !DILexicalBlock(scope: !543, file: !2, line: 299, column: 10)
!543 = distinct !DILexicalBlock(scope: !544, file: !2, line: 298, column: 9)
!544 = distinct !DILexicalBlock(scope: !545, file: !2, line: 293, column: 8)
!545 = distinct !DILexicalBlock(scope: !546, file: !2, line: 292, column: 19)
!546 = distinct !DILexicalBlock(scope: !547, file: !2, line: 292, column: 11)
!547 = distinct !DILexicalBlock(scope: !548, file: !2, line: 287, column: 11)
!548 = distinct !DILexicalBlock(scope: !549, file: !2, line: 282, column: 11)
!549 = distinct !DILexicalBlock(scope: !535, file: !2, line: 279, column: 6)
!550 = !DILocalVariable(name: "p_n0", scope: !551, file: !2, line: 344, type: !95)
!551 = distinct !DILexicalBlock(scope: !552, file: !2, line: 341, column: 24)
!552 = distinct !DILexicalBlock(scope: !546, file: !2, line: 341, column: 12)
!553 = !DILocalVariable(name: "p_n1", scope: !551, file: !2, line: 345, type: !95)
!554 = !DILocalVariable(name: "p_n", scope: !551, file: !2, line: 346, type: !95)
!555 = !DILocalVariable(name: "e_n0", scope: !551, file: !2, line: 348, type: !95)
!556 = !DILocalVariable(name: "e_n1", scope: !551, file: !2, line: 349, type: !95)
!557 = !DILocalVariable(name: "e_n", scope: !551, file: !2, line: 350, type: !95)
!558 = !DILocalVariable(name: "j", scope: !551, file: !2, line: 352, type: !43)
!559 = !DILocalVariable(name: "c", scope: !551, file: !2, line: 352, type: !43)
!560 = !DILocalVariable(name: "aizero1", scope: !561, file: !2, line: 399, type: !110)
!561 = distinct !DILexicalBlock(scope: !535, file: !2, line: 397, column: 3)
!562 = !DILocalVariable(name: "z", scope: !561, file: !2, line: 400, type: !95)
!563 = !DILocalVariable(name: "f", scope: !561, file: !2, line: 401, type: !95)
!564 = !DILocalVariable(name: "j", scope: !561, file: !2, line: 402, type: !43)
!565 = !DILocalVariable(name: "phi", scope: !566, file: !2, line: 407, type: !95)
!566 = distinct !DILexicalBlock(scope: !567, file: !2, line: 406, column: 54)
!567 = distinct !DILexicalBlock(scope: !561, file: !2, line: 406, column: 9)
!568 = !DILocalVariable(name: "phi", scope: !569, file: !2, line: 413, type: !95)
!569 = distinct !DILexicalBlock(scope: !570, file: !2, line: 412, column: 59)
!570 = distinct !DILexicalBlock(scope: !567, file: !2, line: 412, column: 14)
!571 = !DILocalVariable(name: "Ai", scope: !572, file: !2, line: 419, type: !112)
!572 = distinct !DILexicalBlock(scope: !570, file: !2, line: 418, column: 9)
!573 = distinct !DIAssignID()
!574 = !DILocation(line: 0, scope: !572)
!575 = !DILocation(line: 0, scope: !535)
!576 = !DILocation(line: 277, column: 11, scope: !535)
!577 = !DILocation(line: 279, column: 8, scope: !549)
!578 = !DILocation(line: 277, column: 15, scope: !535)
!579 = !DILocation(line: 279, column: 6, scope: !535)
!580 = !DILocation(line: 280, column: 5, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !2, line: 280, column: 5)
!582 = distinct !DILexicalBlock(scope: !549, file: !2, line: 279, column: 13)
!583 = !DILocation(line: 280, column: 5, scope: !584)
!584 = distinct !DILexicalBlock(scope: !581, file: !2, line: 280, column: 5)
!585 = !DILocation(line: 282, column: 11, scope: !549)
!586 = !DILocation(line: 283, column: 17, scope: !587)
!587 = distinct !DILexicalBlock(scope: !548, file: !2, line: 282, column: 19)
!588 = !DILocation(line: 284, column: 17, scope: !587)
!589 = !DILocation(line: 285, column: 5, scope: !587)
!590 = !DILocation(line: 288, column: 22, scope: !591)
!591 = distinct !DILexicalBlock(scope: !547, file: !2, line: 287, column: 19)
!592 = !DILocation(line: 288, column: 17, scope: !591)
!593 = !DILocation(line: 289, column: 17, scope: !591)
!594 = !DILocation(line: 290, column: 5, scope: !591)
!595 = !DILocation(line: 292, column: 13, scope: !546)
!596 = !DILocation(line: 292, column: 11, scope: !547)
!597 = !DILocation(line: 293, column: 8, scope: !544)
!598 = !DILocation(line: 293, column: 8, scope: !545)
!599 = !DILocation(line: 299, column: 12, scope: !542)
!600 = !DILocation(line: 299, column: 10, scope: !543)
!601 = !DILocation(line: 300, column: 13, scope: !541)
!602 = !DILocation(line: 0, scope: !541)
!603 = !DILocation(line: 301, column: 23, scope: !541)
!604 = !DILocation(line: 301, column: 2, scope: !541)
!605 = !DILocation(line: 302, column: 14, scope: !541)
!606 = !DILocation(line: 303, column: 14, scope: !541)
!607 = !DILocation(line: 304, column: 3, scope: !541)
!608 = !DILocation(line: 304, column: 33, scope: !541)
!609 = !DILocation(line: 304, column: 31, scope: !541)
!610 = !DILocation(line: 317, column: 17, scope: !611)
!611 = distinct !DILexicalBlock(scope: !542, file: !2, line: 316, column: 11)
!612 = !DILocation(line: 317, column: 16, scope: !611)
!613 = !DILocation(line: 317, column: 14, scope: !611)
!614 = !DILocation(line: 318, column: 14, scope: !611)
!615 = !DILocation(line: 341, column: 14, scope: !552)
!616 = !DILocation(line: 341, column: 12, scope: !546)
!617 = !DILocation(line: 400, column: 16, scope: !561)
!618 = !DILocation(line: 0, scope: !561)
!619 = !DILocation(line: 403, column: 5, scope: !620)
!620 = distinct !DILexicalBlock(scope: !561, file: !2, line: 403, column: 5)
!621 = !DILocation(line: 0, scope: !551)
!622 = !DILocation(line: 345, column: 22, scope: !551)
!623 = !DILocation(line: 349, column: 22, scope: !551)
!624 = !DILocation(line: 349, column: 21, scope: !551)
!625 = !DILocation(line: 349, column: 29, scope: !551)
!626 = !DILocation(line: 354, column: 5, scope: !627)
!627 = distinct !DILexicalBlock(scope: !551, file: !2, line: 354, column: 5)
!628 = !DILocation(line: 355, column: 11, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !2, line: 355, column: 11)
!630 = distinct !DILexicalBlock(scope: !631, file: !2, line: 354, column: 28)
!631 = distinct !DILexicalBlock(scope: !627, file: !2, line: 354, column: 5)
!632 = !DILocation(line: 355, column: 26, scope: !629)
!633 = !DILocation(line: 355, column: 11, scope: !630)
!634 = !DILocation(line: 358, column: 19, scope: !630)
!635 = !DILocation(line: 358, column: 29, scope: !630)
!636 = !DILocation(line: 358, column: 28, scope: !630)
!637 = !DILocation(line: 358, column: 30, scope: !630)
!638 = !DILocation(line: 358, column: 24, scope: !630)
!639 = !DILocation(line: 362, column: 25, scope: !630)
!640 = !DILocation(line: 362, column: 32, scope: !630)
!641 = !DILocation(line: 362, column: 30, scope: !630)
!642 = !DILocation(line: 362, column: 16, scope: !630)
!643 = !DILocation(line: 366, column: 15, scope: !630)
!644 = !DILocation(line: 366, column: 46, scope: !630)
!645 = !DILocation(line: 366, column: 71, scope: !630)
!646 = !DILocation(line: 366, column: 76, scope: !630)
!647 = !DILocation(line: 366, column: 107, scope: !630)
!648 = !DILocation(line: 366, column: 7, scope: !630)
!649 = !DILocation(line: 367, column: 7, scope: !650)
!650 = distinct !DILexicalBlock(scope: !630, file: !2, line: 366, column: 128)
!651 = !DILocation(line: 368, column: 7, scope: !650)
!652 = !DILocation(line: 370, column: 7, scope: !650)
!653 = !DILocation(line: 371, column: 7, scope: !650)
!654 = !DILocation(line: 373, column: 3, scope: !650)
!655 = distinct !{!655, !648, !656, !165}
!656 = !DILocation(line: 374, column: 7, scope: !630)
!657 = !DILocation(line: 376, column: 7, scope: !630)
!658 = !DILocation(line: 0, scope: !630)
!659 = !DILocation(line: 376, column: 19, scope: !630)
!660 = !DILocation(line: 376, column: 30, scope: !630)
!661 = !DILocation(line: 376, column: 51, scope: !630)
!662 = !DILocation(line: 376, scope: !630)
!663 = !DILocation(line: 376, column: 87, scope: !630)
!664 = !DILocation(line: 376, column: 108, scope: !630)
!665 = !DILocation(line: 376, column: 133, scope: !630)
!666 = !DILocation(line: 376, column: 164, scope: !630)
!667 = !DILocation(line: 377, column: 7, scope: !668)
!668 = distinct !DILexicalBlock(scope: !630, file: !2, line: 376, column: 189)
!669 = !DILocation(line: 378, column: 7, scope: !668)
!670 = !DILocation(line: 380, column: 7, scope: !668)
!671 = !DILocation(line: 381, column: 7, scope: !668)
!672 = !DILocation(line: 383, column: 3, scope: !668)
!673 = distinct !{!673, !657, !674, !165}
!674 = !DILocation(line: 384, column: 7, scope: !630)
!675 = !DILocation(line: 354, column: 25, scope: !631)
!676 = !DILocation(line: 354, column: 16, scope: !631)
!677 = distinct !{!677, !626, !678, !165}
!678 = !DILocation(line: 385, column: 5, scope: !627)
!679 = !DILocation(line: 387, column: 19, scope: !551)
!680 = !DILocation(line: 387, column: 26, scope: !551)
!681 = !DILocation(line: 387, column: 17, scope: !551)
!682 = !DILocation(line: 388, column: 19, scope: !551)
!683 = !DILocation(line: 388, column: 26, scope: !551)
!684 = !DILocation(line: 388, column: 46, scope: !551)
!685 = !DILocation(line: 388, column: 33, scope: !551)
!686 = !DILocation(line: 388, column: 50, scope: !551)
!687 = !DILocation(line: 388, column: 31, scope: !551)
!688 = !DILocation(line: 388, column: 17, scope: !551)
!689 = !DILocation(line: 391, column: 9, scope: !690)
!690 = distinct !DILexicalBlock(scope: !551, file: !2, line: 391, column: 9)
!691 = !DILocation(line: 391, column: 32, scope: !690)
!692 = !DILocation(line: 403, column: 16, scope: !693)
!693 = distinct !DILexicalBlock(scope: !620, file: !2, line: 403, column: 5)
!694 = !DILocation(line: 404, column: 15, scope: !695)
!695 = distinct !DILexicalBlock(scope: !693, file: !2, line: 403, column: 27)
!696 = !DILocation(line: 404, column: 10, scope: !695)
!697 = !DILocation(line: 404, column: 8, scope: !695)
!698 = !DILocation(line: 403, column: 23, scope: !693)
!699 = distinct !{!699, !619, !700, !165}
!700 = !DILocation(line: 405, column: 5, scope: !620)
!701 = distinct !{!701, !167}
!702 = !DILocation(line: 406, column: 19, scope: !567)
!703 = !DILocation(line: 406, column: 21, scope: !567)
!704 = !DILocation(line: 406, column: 13, scope: !567)
!705 = !DILocation(line: 406, column: 46, scope: !567)
!706 = !DILocation(line: 406, column: 42, scope: !567)
!707 = !DILocation(line: 406, column: 41, scope: !567)
!708 = !DILocation(line: 406, column: 25, scope: !567)
!709 = !DILocation(line: 406, column: 11, scope: !567)
!710 = !DILocation(line: 0, scope: !567)
!711 = !DILocation(line: 406, column: 9, scope: !561)
!712 = !DILocation(line: 407, column: 26, scope: !566)
!713 = !DILocation(line: 407, column: 20, scope: !566)
!714 = !DILocation(line: 0, scope: !566)
!715 = !DILocation(line: 408, column: 24, scope: !566)
!716 = !DILocation(line: 408, column: 37, scope: !566)
!717 = !DILocation(line: 408, column: 22, scope: !566)
!718 = !DILocation(line: 408, column: 55, scope: !566)
!719 = !DILocation(line: 408, column: 53, scope: !566)
!720 = !DILocation(line: 408, column: 81, scope: !566)
!721 = !DILocation(line: 408, column: 80, scope: !566)
!722 = !DILocation(line: 408, column: 97, scope: !566)
!723 = !DILocation(line: 408, column: 91, scope: !566)
!724 = !DILocation(line: 408, column: 90, scope: !566)
!725 = !DILocation(line: 408, column: 120, scope: !566)
!726 = !DILocation(line: 408, column: 119, scope: !566)
!727 = !DILocation(line: 408, column: 106, scope: !566)
!728 = !DILocation(line: 408, column: 105, scope: !566)
!729 = !DILocation(line: 408, column: 148, scope: !566)
!730 = !DILocation(line: 408, column: 150, scope: !566)
!731 = !DILocation(line: 408, column: 163, scope: !566)
!732 = !DILocation(line: 408, column: 158, scope: !566)
!733 = !DILocation(line: 408, column: 168, scope: !566)
!734 = !DILocation(line: 408, column: 156, scope: !566)
!735 = !DILocation(line: 408, column: 143, scope: !566)
!736 = !DILocation(line: 408, column: 130, scope: !566)
!737 = !DILocation(line: 408, column: 129, scope: !566)
!738 = !DILocation(line: 408, column: 184, scope: !566)
!739 = !DILocation(line: 408, column: 186, scope: !566)
!740 = !DILocation(line: 408, column: 177, scope: !566)
!741 = !DILocation(line: 408, column: 176, scope: !566)
!742 = !DILocation(line: 408, column: 19, scope: !566)
!743 = !DILocation(line: 409, column: 44, scope: !566)
!744 = !DILocation(line: 409, column: 42, scope: !566)
!745 = !DILocation(line: 409, column: 19, scope: !566)
!746 = !DILocation(line: 412, column: 47, scope: !570)
!747 = !DILocation(line: 412, column: 46, scope: !570)
!748 = !DILocation(line: 412, column: 30, scope: !570)
!749 = !DILocation(line: 412, column: 16, scope: !570)
!750 = !DILocation(line: 412, column: 14, scope: !567)
!751 = !DILocation(line: 413, column: 28, scope: !569)
!752 = !DILocation(line: 413, column: 27, scope: !569)
!753 = !DILocation(line: 413, column: 20, scope: !569)
!754 = !DILocation(line: 0, scope: !569)
!755 = !DILocation(line: 414, column: 24, scope: !569)
!756 = !DILocation(line: 414, column: 37, scope: !569)
!757 = !DILocation(line: 414, column: 22, scope: !569)
!758 = !DILocation(line: 414, column: 55, scope: !569)
!759 = !DILocation(line: 414, column: 53, scope: !569)
!760 = !DILocation(line: 414, column: 83, scope: !569)
!761 = !DILocation(line: 414, column: 82, scope: !569)
!762 = !DILocation(line: 414, column: 93, scope: !569)
!763 = !DILocation(line: 414, column: 92, scope: !569)
!764 = !DILocation(line: 414, column: 128, scope: !569)
!765 = !DILocation(line: 414, column: 127, scope: !569)
!766 = !DILocation(line: 414, column: 106, scope: !569)
!767 = !DILocation(line: 414, column: 105, scope: !569)
!768 = !DILocation(line: 414, column: 147, scope: !569)
!769 = !DILocation(line: 414, column: 149, scope: !569)
!770 = !DILocation(line: 414, column: 158, scope: !569)
!771 = !DILocation(line: 414, column: 163, scope: !569)
!772 = !DILocation(line: 414, column: 162, scope: !569)
!773 = !DILocation(line: 414, column: 155, scope: !569)
!774 = !DILocation(line: 414, column: 139, scope: !569)
!775 = !DILocation(line: 414, column: 138, scope: !569)
!776 = !DILocation(line: 414, column: 184, scope: !569)
!777 = !DILocation(line: 414, column: 186, scope: !569)
!778 = !DILocation(line: 414, column: 177, scope: !569)
!779 = !DILocation(line: 414, column: 176, scope: !569)
!780 = !DILocation(line: 414, column: 19, scope: !569)
!781 = !DILocation(line: 415, column: 44, scope: !569)
!782 = !DILocation(line: 415, column: 42, scope: !569)
!783 = !DILocation(line: 415, column: 19, scope: !569)
!784 = !DILocation(line: 419, column: 7, scope: !572)
!785 = !DILocation(line: 420, column: 27, scope: !572)
!786 = !DILocation(line: 420, column: 26, scope: !572)
!787 = !DILocation(line: 420, column: 40, scope: !572)
!788 = !DILocation(line: 420, column: 49, scope: !572)
!789 = !DILocation(line: 420, column: 48, scope: !572)
!790 = !DILocation(line: 420, column: 7, scope: !572)
!791 = !DILocation(line: 421, column: 24, scope: !572)
!792 = !DILocation(line: 421, column: 37, scope: !572)
!793 = !DILocation(line: 421, column: 22, scope: !572)
!794 = !DILocation(line: 421, column: 55, scope: !572)
!795 = !DILocation(line: 421, column: 53, scope: !572)
!796 = !DILocation(line: 421, column: 80, scope: !572)
!797 = !DILocation(line: 421, column: 104, scope: !572)
!798 = !DILocation(line: 421, column: 103, scope: !572)
!799 = !DILocation(line: 421, column: 114, scope: !572)
!800 = !DILocation(line: 421, column: 113, scope: !572)
!801 = !DILocation(line: 421, column: 131, scope: !572)
!802 = !DILocation(line: 421, column: 127, scope: !572)
!803 = !DILocation(line: 421, column: 142, scope: !572)
!804 = !DILocation(line: 421, column: 144, scope: !572)
!805 = !DILocation(line: 421, column: 135, scope: !572)
!806 = !DILocation(line: 421, column: 134, scope: !572)
!807 = !DILocation(line: 421, column: 19, scope: !572)
!808 = !DILocation(line: 422, column: 22, scope: !572)
!809 = !DILocation(line: 422, column: 50, scope: !572)
!810 = !DILocation(line: 422, column: 49, scope: !572)
!811 = !DILocation(line: 422, column: 59, scope: !572)
!812 = !DILocation(line: 422, column: 83, scope: !572)
!813 = !DILocation(line: 422, column: 82, scope: !572)
!814 = !DILocation(line: 422, column: 100, scope: !572)
!815 = !DILocation(line: 422, column: 96, scope: !572)
!816 = !DILocation(line: 422, column: 104, scope: !572)
!817 = !DILocation(line: 422, column: 103, scope: !572)
!818 = !DILocation(line: 422, column: 148, scope: !572)
!819 = !DILocation(line: 422, column: 135, scope: !572)
!820 = !DILocation(line: 422, column: 134, scope: !572)
!821 = !DILocation(line: 422, column: 117, scope: !572)
!822 = !DILocation(line: 422, column: 19, scope: !572)
!823 = !DILocation(line: 424, column: 5, scope: !570)
!824 = !DILocation(line: 426, column: 1, scope: !535)
!825 = !DISubprogram(name: "gsl_sf_pow_int", scope: !826, file: !826, line: 44, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!826 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!827 = !DISubroutineType(types: !828)
!828 = !{!95, !110, !109}
!829 = !DISubprogram(name: "gsl_sf_doublefact_e", scope: !495, file: !495, line: 127, type: !830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!830 = !DISubroutineType(types: !831)
!831 = !{!43, !502, !111}
!832 = !DISubprogram(name: "gsl_isnan", scope: !833, file: !833, line: 43, type: !834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!833 = !DIFile(filename: "../gsl/gsl_sys.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "66066a5c22c0bbe63a298abf4db295db")
!834 = !DISubroutineType(types: !835)
!835 = !{!43, !110}
!836 = !DISubprogram(name: "sqrt", scope: !837, file: !837, line: 143, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!837 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!838 = !DISubroutineType(types: !839)
!839 = !{!95, !95}
!840 = !DISubprogram(name: "pow", scope: !837, file: !837, line: 140, type: !841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!841 = !DISubroutineType(types: !842)
!842 = !{!95, !95, !95}
!843 = !DISubprogram(name: "acos", scope: !837, file: !837, line: 53, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!844 = !DISubprogram(name: "sin", scope: !837, file: !837, line: 64, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!845 = !DISubprogram(name: "exp", scope: !837, file: !837, line: 95, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!846 = !DISubprogram(name: "acosh", scope: !837, file: !837, line: 85, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!847 = !DISubprogram(name: "sinh", scope: !837, file: !837, line: 73, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!848 = !DISubprogram(name: "gsl_sf_airy_Ai_e", scope: !849, file: !849, line: 45, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!849 = !DIFile(filename: "../gsl/gsl_sf_airy.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "0902d390a487a55f5b5ea11d3d660eab")
!850 = !DISubroutineType(types: !851)
!851 = !{!43, !110, !852, !111}
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !854, line: 50, baseType: !498)
!854 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "229b7551f050f2f3f0376809c7c6b966")
!855 = distinct !DISubprogram(name: "gsl_sf_hermite_phys", scope: !2, file: !2, line: 429, type: !432, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !856)
!856 = !{!857, !858, !859, !860}
!857 = !DILocalVariable(name: "n", arg: 1, scope: !855, file: !2, line: 429, type: !109)
!858 = !DILocalVariable(name: "x", arg: 2, scope: !855, file: !2, line: 429, type: !110)
!859 = !DILocalVariable(name: "result", scope: !855, file: !2, line: 431, type: !112)
!860 = !DILocalVariable(name: "status", scope: !855, file: !2, line: 431, type: !43)
!861 = distinct !DIAssignID()
!862 = !DILocation(line: 0, scope: !855)
!863 = !DILocation(line: 431, column: 3, scope: !855)
!864 = !{i32 0, i32 2}
!865 = !DILocation(line: 431, column: 3, scope: !866)
!866 = distinct !DILexicalBlock(scope: !855, file: !2, line: 431, column: 3)
!867 = !DILocation(line: 431, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !2, line: 431, column: 3)
!869 = distinct !DILexicalBlock(scope: !866, file: !2, line: 431, column: 3)
!870 = !DILocation(line: 432, column: 1, scope: !855)
!871 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_der_e", scope: !2, file: !2, line: 437, type: !449, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !872)
!872 = !{!873, !874, !875, !876, !877, !881}
!873 = !DILocalVariable(name: "m", arg: 1, scope: !871, file: !2, line: 437, type: !109)
!874 = !DILocalVariable(name: "n", arg: 2, scope: !871, file: !2, line: 437, type: !109)
!875 = !DILocalVariable(name: "x", arg: 3, scope: !871, file: !2, line: 437, type: !110)
!876 = !DILocalVariable(name: "result", arg: 4, scope: !871, file: !2, line: 437, type: !111)
!877 = !DILocalVariable(name: "f", scope: !878, file: !2, line: 448, type: !95)
!878 = distinct !DILexicalBlock(scope: !879, file: !2, line: 447, column: 7)
!879 = distinct !DILexicalBlock(scope: !880, file: !2, line: 442, column: 11)
!880 = distinct !DILexicalBlock(scope: !871, file: !2, line: 439, column: 6)
!881 = !DILocalVariable(name: "H", scope: !878, file: !2, line: 449, type: !112)
!882 = distinct !DIAssignID()
!883 = !DILocation(line: 0, scope: !878)
!884 = !DILocation(line: 0, scope: !871)
!885 = !DILocation(line: 439, column: 12, scope: !880)
!886 = !DILocation(line: 440, column: 5, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !2, line: 440, column: 5)
!888 = distinct !DILexicalBlock(scope: !880, file: !2, line: 439, column: 22)
!889 = !DILocation(line: 440, column: 5, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !2, line: 440, column: 5)
!891 = !DILocation(line: 442, column: 13, scope: !879)
!892 = !DILocation(line: 442, column: 11, scope: !880)
!893 = !DILocation(line: 444, column: 17, scope: !894)
!894 = distinct !DILexicalBlock(scope: !879, file: !2, line: 442, column: 18)
!895 = !DILocation(line: 445, column: 5, scope: !894)
!896 = !DILocation(line: 448, column: 16, scope: !878)
!897 = !DILocation(line: 448, column: 35, scope: !878)
!898 = !DILocation(line: 448, column: 34, scope: !878)
!899 = !DILocation(line: 448, column: 50, scope: !878)
!900 = !DILocation(line: 448, column: 49, scope: !878)
!901 = !DILocation(line: 449, column: 5, scope: !878)
!902 = !DILocation(line: 450, column: 28, scope: !878)
!903 = !DILocation(line: 450, column: 5, scope: !878)
!904 = !DILocation(line: 451, column: 21, scope: !878)
!905 = !DILocation(line: 451, column: 24, scope: !878)
!906 = !DILocation(line: 451, column: 17, scope: !878)
!907 = !DILocation(line: 452, column: 21, scope: !878)
!908 = !DILocation(line: 452, column: 24, scope: !878)
!909 = !DILocation(line: 452, column: 45, scope: !878)
!910 = !DILocation(line: 452, column: 44, scope: !878)
!911 = !DILocation(line: 452, column: 27, scope: !878)
!912 = !DILocation(line: 452, column: 13, scope: !878)
!913 = !DILocation(line: 452, column: 17, scope: !878)
!914 = !DILocation(line: 454, column: 3, scope: !879)
!915 = !DILocation(line: 0, scope: !880)
!916 = !DILocation(line: 455, column: 1, scope: !871)
!917 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_der", scope: !2, file: !2, line: 458, type: !504, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !918)
!918 = !{!919, !920, !921, !922, !923}
!919 = !DILocalVariable(name: "m", arg: 1, scope: !917, file: !2, line: 458, type: !109)
!920 = !DILocalVariable(name: "n", arg: 2, scope: !917, file: !2, line: 458, type: !109)
!921 = !DILocalVariable(name: "x", arg: 3, scope: !917, file: !2, line: 458, type: !110)
!922 = !DILocalVariable(name: "result", scope: !917, file: !2, line: 460, type: !112)
!923 = !DILocalVariable(name: "status", scope: !917, file: !2, line: 460, type: !43)
!924 = distinct !DIAssignID()
!925 = !DILocation(line: 0, scope: !917)
!926 = !DILocation(line: 460, column: 3, scope: !917)
!927 = !DILocation(line: 460, column: 3, scope: !928)
!928 = distinct !DILexicalBlock(scope: !917, file: !2, line: 460, column: 3)
!929 = !DILocation(line: 460, column: 3, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !2, line: 460, column: 3)
!931 = distinct !DILexicalBlock(scope: !928, file: !2, line: 460, column: 3)
!932 = !DILocation(line: 461, column: 1, scope: !917)
!933 = distinct !DISubprogram(name: "gsl_sf_hermite_func_e", scope: !2, file: !2, line: 466, type: !107, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !934)
!934 = !{!935, !936, !937, !938, !946, !947, !950, !951, !953, !954, !955, !956, !957, !958, !959, !960, !961, !963, !964, !967, !970}
!935 = !DILocalVariable(name: "n", arg: 1, scope: !933, file: !2, line: 466, type: !109)
!936 = !DILocalVariable(name: "x", arg: 2, scope: !933, file: !2, line: 466, type: !110)
!937 = !DILocalVariable(name: "result", arg: 3, scope: !933, file: !2, line: 466, type: !111)
!938 = !DILocalVariable(name: "f", scope: !939, file: !2, line: 497, type: !95)
!939 = distinct !DILexicalBlock(scope: !940, file: !2, line: 496, column: 9)
!940 = distinct !DILexicalBlock(scope: !941, file: !2, line: 491, column: 9)
!941 = distinct !DILexicalBlock(scope: !942, file: !2, line: 490, column: 20)
!942 = distinct !DILexicalBlock(scope: !943, file: !2, line: 490, column: 12)
!943 = distinct !DILexicalBlock(scope: !944, file: !2, line: 485, column: 11)
!944 = distinct !DILexicalBlock(scope: !945, file: !2, line: 480, column: 11)
!945 = distinct !DILexicalBlock(scope: !933, file: !2, line: 477, column: 7)
!946 = !DILocalVariable(name: "j", scope: !939, file: !2, line: 498, type: !43)
!947 = !DILocalVariable(name: "f", scope: !948, file: !2, line: 509, type: !95)
!948 = distinct !DILexicalBlock(scope: !949, file: !2, line: 508, column: 24)
!949 = distinct !DILexicalBlock(scope: !942, file: !2, line: 508, column: 12)
!950 = !DILocalVariable(name: "He", scope: !948, file: !2, line: 510, type: !112)
!951 = !DILocalVariable(name: "tw", scope: !952, file: !2, line: 522, type: !95)
!952 = distinct !DILexicalBlock(scope: !933, file: !2, line: 521, column: 3)
!953 = !DILocalVariable(name: "p_n0", scope: !952, file: !2, line: 523, type: !95)
!954 = !DILocalVariable(name: "p_n1", scope: !952, file: !2, line: 524, type: !95)
!955 = !DILocalVariable(name: "p_n", scope: !952, file: !2, line: 525, type: !95)
!956 = !DILocalVariable(name: "e_n0", scope: !952, file: !2, line: 526, type: !95)
!957 = !DILocalVariable(name: "e_n1", scope: !952, file: !2, line: 527, type: !95)
!958 = !DILocalVariable(name: "e_n", scope: !952, file: !2, line: 528, type: !95)
!959 = !DILocalVariable(name: "j", scope: !952, file: !2, line: 530, type: !43)
!960 = !DILocalVariable(name: "c", scope: !952, file: !2, line: 532, type: !43)
!961 = !DILocalVariable(name: "aizero1", scope: !962, file: !2, line: 576, type: !110)
!962 = distinct !DILexicalBlock(scope: !952, file: !2, line: 574, column: 3)
!963 = !DILocalVariable(name: "z", scope: !962, file: !2, line: 577, type: !95)
!964 = !DILocalVariable(name: "phi", scope: !965, file: !2, line: 579, type: !95)
!965 = distinct !DILexicalBlock(scope: !966, file: !2, line: 578, column: 54)
!966 = distinct !DILexicalBlock(scope: !962, file: !2, line: 578, column: 9)
!967 = !DILocalVariable(name: "phi", scope: !968, file: !2, line: 585, type: !95)
!968 = distinct !DILexicalBlock(scope: !969, file: !2, line: 584, column: 59)
!969 = distinct !DILexicalBlock(scope: !966, file: !2, line: 584, column: 14)
!970 = !DILocalVariable(name: "Ai", scope: !971, file: !2, line: 592, type: !112)
!971 = distinct !DILexicalBlock(scope: !969, file: !2, line: 591, column: 9)
!972 = distinct !DIAssignID()
!973 = !DILocation(line: 0, scope: !948)
!974 = distinct !DIAssignID()
!975 = !DILocation(line: 0, scope: !971)
!976 = !DILocation(line: 0, scope: !933)
!977 = !DILocation(line: 477, column: 9, scope: !945)
!978 = !DILocation(line: 477, column: 7, scope: !933)
!979 = !DILocation(line: 478, column: 5, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !2, line: 478, column: 5)
!981 = distinct !DILexicalBlock(scope: !945, file: !2, line: 477, column: 13)
!982 = !DILocation(line: 478, column: 5, scope: !983)
!983 = distinct !DILexicalBlock(scope: !980, file: !2, line: 478, column: 5)
!984 = !DILocation(line: 480, column: 13, scope: !944)
!985 = !DILocation(line: 480, column: 18, scope: !944)
!986 = !DILocation(line: 481, column: 27, scope: !987)
!987 = distinct !DILexicalBlock(scope: !944, file: !2, line: 480, column: 30)
!988 = !DILocation(line: 481, column: 29, scope: !987)
!989 = !DILocation(line: 481, column: 19, scope: !987)
!990 = !DILocation(line: 481, column: 32, scope: !987)
!991 = !DILocation(line: 481, column: 17, scope: !987)
!992 = !DILocation(line: 482, column: 35, scope: !987)
!993 = !DILocation(line: 482, column: 34, scope: !987)
!994 = !DILocation(line: 482, column: 13, scope: !987)
!995 = !DILocation(line: 482, column: 17, scope: !987)
!996 = !DILocation(line: 483, column: 5, scope: !987)
!997 = !DILocation(line: 485, column: 13, scope: !943)
!998 = !DILocation(line: 485, column: 18, scope: !943)
!999 = !DILocation(line: 486, column: 26, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !943, file: !2, line: 485, column: 30)
!1001 = !DILocation(line: 486, column: 37, scope: !1000)
!1002 = !DILocation(line: 486, column: 39, scope: !1000)
!1003 = !DILocation(line: 486, column: 29, scope: !1000)
!1004 = !DILocation(line: 486, column: 28, scope: !1000)
!1005 = !DILocation(line: 486, column: 42, scope: !1000)
!1006 = !DILocation(line: 486, column: 17, scope: !1000)
!1007 = !DILocation(line: 487, column: 35, scope: !1000)
!1008 = !DILocation(line: 487, column: 34, scope: !1000)
!1009 = !DILocation(line: 487, column: 13, scope: !1000)
!1010 = !DILocation(line: 487, column: 17, scope: !1000)
!1011 = !DILocation(line: 488, column: 5, scope: !1000)
!1012 = !DILocation(line: 490, column: 14, scope: !942)
!1013 = !DILocation(line: 490, column: 12, scope: !943)
!1014 = !DILocation(line: 491, column: 9, scope: !940)
!1015 = !DILocation(line: 491, column: 9, scope: !941)
!1016 = !DILocation(line: 493, column: 19, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !940, file: !2, line: 491, column: 23)
!1018 = !DILocation(line: 494, column: 7, scope: !1017)
!1019 = !DILocation(line: 499, column: 12, scope: !939)
!1020 = !DILocation(line: 0, scope: !939)
!1021 = !DILocation(line: 500, column: 18, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 500, column: 7)
!1023 = distinct !DILexicalBlock(scope: !939, file: !2, line: 500, column: 7)
!1024 = !DILocation(line: 500, column: 7, scope: !1023)
!1025 = !DILocation(line: 501, column: 10, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 500, column: 29)
!1027 = !DILocation(line: 501, column: 14, scope: !1026)
!1028 = !DILocation(line: 501, column: 11, scope: !1026)
!1029 = !DILocation(line: 501, column: 5, scope: !1026)
!1030 = !DILocation(line: 501, column: 3, scope: !1026)
!1031 = !DILocation(line: 500, column: 24, scope: !1022)
!1032 = distinct !{!1032, !1024, !1033, !165}
!1033 = !DILocation(line: 502, column: 7, scope: !1023)
!1034 = !DILocation(line: 503, column: 22, scope: !939)
!1035 = !DILocation(line: 503, column: 19, scope: !939)
!1036 = !DILocation(line: 504, column: 37, scope: !939)
!1037 = !DILocation(line: 504, column: 36, scope: !939)
!1038 = !DILocation(line: 504, column: 15, scope: !939)
!1039 = !DILocation(line: 504, column: 19, scope: !939)
!1040 = !DILocation(line: 508, column: 14, scope: !949)
!1041 = !DILocation(line: 508, column: 12, scope: !942)
!1042 = !DILocation(line: 509, column: 24, scope: !948)
!1043 = !DILocation(line: 509, column: 26, scope: !948)
!1044 = !DILocation(line: 509, column: 16, scope: !948)
!1045 = !DILocation(line: 509, column: 44, scope: !948)
!1046 = !DILocation(line: 509, column: 43, scope: !948)
!1047 = !DILocation(line: 509, column: 30, scope: !948)
!1048 = !DILocation(line: 509, column: 29, scope: !948)
!1049 = !DILocation(line: 510, column: 5, scope: !948)
!1050 = !DILocation(line: 511, column: 41, scope: !948)
!1051 = !DILocation(line: 511, column: 5, scope: !948)
!1052 = !DILocation(line: 512, column: 22, scope: !948)
!1053 = !DILocation(line: 512, column: 25, scope: !948)
!1054 = !DILocation(line: 512, column: 17, scope: !948)
!1055 = !DILocation(line: 513, column: 22, scope: !948)
!1056 = !DILocation(line: 513, column: 25, scope: !948)
!1057 = !DILocation(line: 513, column: 46, scope: !948)
!1058 = !DILocation(line: 513, column: 45, scope: !948)
!1059 = !DILocation(line: 513, column: 28, scope: !948)
!1060 = !DILocation(line: 513, column: 13, scope: !948)
!1061 = !DILocation(line: 513, column: 17, scope: !948)
!1062 = !DILocation(line: 514, column: 9, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !948, file: !2, line: 514, column: 9)
!1064 = !DILocation(line: 514, column: 32, scope: !1063)
!1065 = !DILocation(line: 514, column: 37, scope: !1063)
!1066 = !DILocation(line: 514, column: 73, scope: !1063)
!1067 = !DILocation(line: 514, column: 59, scope: !1063)
!1068 = !DILocation(line: 514, column: 78, scope: !1063)
!1069 = !DILocation(line: 514, column: 9, scope: !948)
!1070 = !DILocation(line: 517, column: 3, scope: !949)
!1071 = !DILocation(line: 522, column: 21, scope: !952)
!1072 = !DILocation(line: 522, column: 23, scope: !952)
!1073 = !DILocation(line: 522, column: 25, scope: !952)
!1074 = !DILocation(line: 522, column: 30, scope: !952)
!1075 = !DILocation(line: 522, column: 29, scope: !952)
!1076 = !DILocation(line: 522, column: 17, scope: !952)
!1077 = !DILocation(line: 0, scope: !952)
!1078 = !DILocation(line: 523, column: 21, scope: !952)
!1079 = !DILocation(line: 524, column: 23, scope: !952)
!1080 = !DILocation(line: 524, column: 31, scope: !952)
!1081 = !DILocation(line: 533, column: 15, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 533, column: 5)
!1083 = distinct !DILexicalBlock(scope: !952, file: !2, line: 533, column: 5)
!1084 = !DILocation(line: 533, column: 5, scope: !1083)
!1085 = !DILocation(line: 535, column: 13, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 535, column: 13)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 534, column: 7)
!1088 = !DILocation(line: 535, column: 28, scope: !1086)
!1089 = !DILocation(line: 535, column: 13, scope: !1087)
!1090 = !DILocation(line: 538, column: 26, scope: !1087)
!1091 = !DILocation(line: 538, column: 37, scope: !1087)
!1092 = !DILocation(line: 538, column: 32, scope: !1087)
!1093 = !DILocation(line: 538, column: 39, scope: !1087)
!1094 = !DILocation(line: 538, column: 31, scope: !1087)
!1095 = !DILocation(line: 538, column: 15, scope: !1087)
!1096 = !DILocation(line: 538, column: 52, scope: !1087)
!1097 = !DILocation(line: 538, column: 46, scope: !1087)
!1098 = !DILocation(line: 538, column: 45, scope: !1087)
!1099 = !DILocation(line: 539, column: 16, scope: !1087)
!1100 = !DILocation(line: 542, column: 38, scope: !1087)
!1101 = !DILocation(line: 542, column: 52, scope: !1087)
!1102 = !DILocation(line: 546, column: 17, scope: !1087)
!1103 = !DILocation(line: 546, column: 48, scope: !1087)
!1104 = !DILocation(line: 546, column: 73, scope: !1087)
!1105 = !DILocation(line: 546, column: 78, scope: !1087)
!1106 = !DILocation(line: 546, column: 109, scope: !1087)
!1107 = !DILocation(line: 546, column: 9, scope: !1087)
!1108 = !DILocation(line: 547, column: 9, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 546, column: 130)
!1110 = !DILocation(line: 548, column: 9, scope: !1109)
!1111 = !DILocation(line: 553, column: 3, scope: !1109)
!1112 = distinct !{!1112, !1107, !1113, !165}
!1113 = !DILocation(line: 554, column: 7, scope: !1087)
!1114 = !DILocation(line: 556, column: 2, scope: !1087)
!1115 = !DILocation(line: 0, scope: !1087)
!1116 = !DILocation(line: 556, column: 14, scope: !1087)
!1117 = !DILocation(line: 556, column: 25, scope: !1087)
!1118 = !DILocation(line: 556, column: 46, scope: !1087)
!1119 = !DILocation(line: 556, scope: !1087)
!1120 = !DILocation(line: 556, column: 82, scope: !1087)
!1121 = !DILocation(line: 556, column: 103, scope: !1087)
!1122 = !DILocation(line: 556, column: 128, scope: !1087)
!1123 = !DILocation(line: 556, column: 159, scope: !1087)
!1124 = !DILocation(line: 557, column: 13, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 556, column: 184)
!1126 = !DILocation(line: 558, column: 13, scope: !1125)
!1127 = !DILocation(line: 563, column: 3, scope: !1125)
!1128 = distinct !{!1128, !1114, !1129, !165}
!1129 = !DILocation(line: 564, column: 7, scope: !1087)
!1130 = !DILocation(line: 533, column: 19, scope: !1082)
!1131 = distinct !{!1131, !1084, !1132, !165}
!1132 = !DILocation(line: 565, column: 5, scope: !1083)
!1133 = !DILocation(line: 532, column: 9, scope: !952)
!1134 = !DILocation(line: 567, column: 21, scope: !952)
!1135 = !DILocation(line: 567, column: 20, scope: !952)
!1136 = !DILocation(line: 567, column: 15, scope: !952)
!1137 = !DILocation(line: 568, column: 19, scope: !952)
!1138 = !DILocation(line: 568, column: 18, scope: !952)
!1139 = !DILocation(line: 568, column: 36, scope: !952)
!1140 = !DILocation(line: 568, column: 11, scope: !952)
!1141 = !DILocation(line: 568, column: 15, scope: !952)
!1142 = !DILocation(line: 570, column: 7, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !952, file: !2, line: 570, column: 7)
!1144 = !DILocation(line: 570, column: 30, scope: !1143)
!1145 = !DILocation(line: 570, column: 7, scope: !952)
!1146 = !DILocation(line: 0, scope: !962)
!1147 = !DILocation(line: 577, column: 16, scope: !962)
!1148 = !DILocation(line: 578, column: 19, scope: !966)
!1149 = !DILocation(line: 578, column: 21, scope: !966)
!1150 = !DILocation(line: 578, column: 13, scope: !966)
!1151 = !DILocation(line: 578, column: 42, scope: !966)
!1152 = !DILocation(line: 578, column: 41, scope: !966)
!1153 = !DILocation(line: 578, column: 25, scope: !966)
!1154 = !DILocation(line: 578, column: 11, scope: !966)
!1155 = !DILocation(line: 0, scope: !966)
!1156 = !DILocation(line: 578, column: 9, scope: !962)
!1157 = !DILocation(line: 579, column: 26, scope: !965)
!1158 = !DILocation(line: 579, column: 20, scope: !965)
!1159 = !DILocation(line: 0, scope: !965)
!1160 = !DILocation(line: 580, column: 22, scope: !965)
!1161 = !DILocation(line: 580, column: 35, scope: !965)
!1162 = !DILocation(line: 580, column: 58, scope: !965)
!1163 = !DILocation(line: 580, column: 52, scope: !965)
!1164 = !DILocation(line: 580, column: 51, scope: !965)
!1165 = !DILocation(line: 580, column: 66, scope: !965)
!1166 = !DILocation(line: 580, column: 81, scope: !965)
!1167 = !DILocation(line: 580, column: 76, scope: !965)
!1168 = !DILocation(line: 580, column: 75, scope: !965)
!1169 = !DILocation(line: 580, column: 109, scope: !965)
!1170 = !DILocation(line: 580, column: 111, scope: !965)
!1171 = !DILocation(line: 580, column: 124, scope: !965)
!1172 = !DILocation(line: 580, column: 119, scope: !965)
!1173 = !DILocation(line: 580, column: 129, scope: !965)
!1174 = !DILocation(line: 580, column: 117, scope: !965)
!1175 = !DILocation(line: 580, column: 104, scope: !965)
!1176 = !DILocation(line: 580, column: 91, scope: !965)
!1177 = !DILocation(line: 580, column: 90, scope: !965)
!1178 = !DILocation(line: 580, column: 19, scope: !965)
!1179 = !DILocation(line: 581, column: 44, scope: !965)
!1180 = !DILocation(line: 581, column: 42, scope: !965)
!1181 = !DILocation(line: 581, column: 19, scope: !965)
!1182 = !DILocation(line: 584, column: 47, scope: !969)
!1183 = !DILocation(line: 584, column: 46, scope: !969)
!1184 = !DILocation(line: 584, column: 30, scope: !969)
!1185 = !DILocation(line: 584, column: 16, scope: !969)
!1186 = !DILocation(line: 584, column: 14, scope: !966)
!1187 = !DILocation(line: 585, column: 28, scope: !968)
!1188 = !DILocation(line: 585, column: 27, scope: !968)
!1189 = !DILocation(line: 585, column: 20, scope: !968)
!1190 = !DILocation(line: 0, scope: !968)
!1191 = !DILocation(line: 586, column: 22, scope: !968)
!1192 = !DILocation(line: 586, column: 35, scope: !968)
!1193 = !DILocation(line: 586, column: 52, scope: !968)
!1194 = !DILocation(line: 586, column: 51, scope: !968)
!1195 = !DILocation(line: 586, column: 64, scope: !968)
!1196 = !DILocation(line: 587, column: 2, scope: !968)
!1197 = !DILocation(line: 587, column: 17, scope: !968)
!1198 = !DILocation(line: 587, column: 26, scope: !968)
!1199 = !DILocation(line: 587, column: 12, scope: !968)
!1200 = !DILocation(line: 587, column: 11, scope: !968)
!1201 = !DILocation(line: 587, column: 44, scope: !968)
!1202 = !DILocation(line: 587, column: 46, scope: !968)
!1203 = !DILocation(line: 587, column: 55, scope: !968)
!1204 = !DILocation(line: 587, column: 60, scope: !968)
!1205 = !DILocation(line: 587, column: 59, scope: !968)
!1206 = !DILocation(line: 587, column: 52, scope: !968)
!1207 = !DILocation(line: 587, column: 36, scope: !968)
!1208 = !DILocation(line: 587, column: 35, scope: !968)
!1209 = !DILocation(line: 586, column: 19, scope: !968)
!1210 = !DILocation(line: 588, column: 44, scope: !968)
!1211 = !DILocation(line: 588, column: 42, scope: !968)
!1212 = !DILocation(line: 588, column: 19, scope: !968)
!1213 = !DILocation(line: 592, column: 7, scope: !971)
!1214 = !DILocation(line: 593, column: 27, scope: !971)
!1215 = !DILocation(line: 593, column: 26, scope: !971)
!1216 = !DILocation(line: 593, column: 40, scope: !971)
!1217 = !DILocation(line: 593, column: 49, scope: !971)
!1218 = !DILocation(line: 593, column: 48, scope: !971)
!1219 = !DILocation(line: 593, column: 7, scope: !971)
!1220 = !DILocation(line: 594, column: 22, scope: !971)
!1221 = !DILocation(line: 594, column: 35, scope: !971)
!1222 = !DILocation(line: 594, column: 51, scope: !971)
!1223 = !DILocation(line: 594, column: 66, scope: !971)
!1224 = !DILocation(line: 594, column: 65, scope: !971)
!1225 = !DILocation(line: 594, column: 83, scope: !971)
!1226 = !DILocation(line: 594, column: 79, scope: !971)
!1227 = !DILocation(line: 594, column: 19, scope: !971)
!1228 = !DILocation(line: 595, column: 35, scope: !971)
!1229 = !DILocation(line: 595, column: 34, scope: !971)
!1230 = !DILocation(line: 595, column: 52, scope: !971)
!1231 = !DILocation(line: 595, column: 48, scope: !971)
!1232 = !DILocation(line: 595, column: 88, scope: !971)
!1233 = !DILocation(line: 595, column: 75, scope: !971)
!1234 = !DILocation(line: 595, column: 74, scope: !971)
!1235 = !DILocation(line: 595, column: 56, scope: !971)
!1236 = !DILocation(line: 595, column: 19, scope: !971)
!1237 = !DILocation(line: 597, column: 5, scope: !969)
!1238 = !DILocation(line: 600, column: 1, scope: !933)
!1239 = !DISubprogram(name: "gsl_finite", scope: !833, file: !833, line: 45, type: !834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1240 = distinct !DISubprogram(name: "gsl_sf_hermite_func", scope: !2, file: !2, line: 603, type: !432, scopeLine: 604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1241)
!1241 = !{!1242, !1243, !1244, !1245}
!1242 = !DILocalVariable(name: "n", arg: 1, scope: !1240, file: !2, line: 603, type: !109)
!1243 = !DILocalVariable(name: "x", arg: 2, scope: !1240, file: !2, line: 603, type: !110)
!1244 = !DILocalVariable(name: "result", scope: !1240, file: !2, line: 605, type: !112)
!1245 = !DILocalVariable(name: "status", scope: !1240, file: !2, line: 605, type: !43)
!1246 = distinct !DIAssignID()
!1247 = !DILocation(line: 0, scope: !1240)
!1248 = !DILocation(line: 605, column: 3, scope: !1240)
!1249 = !DILocation(line: 605, column: 3, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 605, column: 3)
!1251 = !DILocation(line: 605, column: 3, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 605, column: 3)
!1253 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 605, column: 3)
!1254 = !DILocation(line: 606, column: 1, scope: !1240)
!1255 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_array", scope: !2, file: !2, line: 611, type: !1256, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1259)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!43, !109, !110, !1258}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1259 = !{!1260, !1261, !1262, !1263, !1268, !1269, !1270, !1271}
!1260 = !DILocalVariable(name: "nmax", arg: 1, scope: !1255, file: !2, line: 611, type: !109)
!1261 = !DILocalVariable(name: "x", arg: 2, scope: !1255, file: !2, line: 611, type: !110)
!1262 = !DILocalVariable(name: "result_array", arg: 3, scope: !1255, file: !2, line: 611, type: !1258)
!1263 = !DILocalVariable(name: "p_n0", scope: !1264, file: !2, line: 628, type: !95)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 625, column: 8)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 620, column: 11)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 616, column: 11)
!1267 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 613, column: 6)
!1268 = !DILocalVariable(name: "p_n1", scope: !1264, file: !2, line: 629, type: !95)
!1269 = !DILocalVariable(name: "p_n", scope: !1264, file: !2, line: 630, type: !95)
!1270 = !DILocalVariable(name: "j", scope: !1264, file: !2, line: 631, type: !43)
!1271 = !DILocalVariable(name: "c", scope: !1264, file: !2, line: 631, type: !43)
!1272 = !DILocation(line: 0, scope: !1255)
!1273 = !DILocation(line: 613, column: 11, scope: !1267)
!1274 = !DILocation(line: 613, column: 6, scope: !1255)
!1275 = !DILocation(line: 614, column: 5, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 614, column: 5)
!1277 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 613, column: 16)
!1278 = !DILocation(line: 0, scope: !1266)
!1279 = !{!207, !207, i64 0}
!1280 = !DILocation(line: 616, column: 11, scope: !1267)
!1281 = !DILocation(line: 622, column: 5, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 620, column: 22)
!1283 = !DILocation(line: 622, column: 21, scope: !1282)
!1284 = !DILocation(line: 623, column: 5, scope: !1282)
!1285 = !DILocation(line: 0, scope: !1264)
!1286 = !DILocation(line: 634, column: 5, scope: !1264)
!1287 = !DILocation(line: 634, column: 21, scope: !1264)
!1288 = !DILocation(line: 636, column: 16, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 636, column: 5)
!1290 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 636, column: 5)
!1291 = !DILocation(line: 636, column: 5, scope: !1290)
!1292 = !DILocation(line: 637, column: 15, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 636, column: 31)
!1294 = !DILocation(line: 637, column: 21, scope: !1293)
!1295 = !DILocation(line: 637, column: 22, scope: !1293)
!1296 = !DILocation(line: 637, column: 20, scope: !1293)
!1297 = !DILocation(line: 641, column: 15, scope: !1293)
!1298 = !DILocation(line: 641, column: 46, scope: !1293)
!1299 = !DILocation(line: 641, column: 71, scope: !1293)
!1300 = !DILocation(line: 641, column: 76, scope: !1293)
!1301 = !DILocation(line: 641, column: 107, scope: !1293)
!1302 = !DILocation(line: 641, column: 7, scope: !1293)
!1303 = !DILocation(line: 642, column: 7, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 641, column: 128)
!1305 = !DILocation(line: 643, column: 7, scope: !1304)
!1306 = !DILocation(line: 645, column: 3, scope: !1304)
!1307 = distinct !{!1307, !1302, !1308, !165}
!1308 = !DILocation(line: 646, column: 7, scope: !1293)
!1309 = !DILocation(line: 648, column: 7, scope: !1293)
!1310 = !DILocation(line: 0, scope: !1293)
!1311 = !DILocation(line: 648, column: 19, scope: !1293)
!1312 = !DILocation(line: 648, column: 30, scope: !1293)
!1313 = !DILocation(line: 648, column: 51, scope: !1293)
!1314 = !DILocation(line: 648, scope: !1293)
!1315 = !DILocation(line: 648, column: 87, scope: !1293)
!1316 = !DILocation(line: 648, column: 108, scope: !1293)
!1317 = !DILocation(line: 648, column: 133, scope: !1293)
!1318 = !DILocation(line: 648, column: 164, scope: !1293)
!1319 = !DILocation(line: 649, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 648, column: 189)
!1321 = !DILocation(line: 650, column: 7, scope: !1320)
!1322 = !DILocation(line: 652, column: 3, scope: !1320)
!1323 = distinct !{!1323, !1309, !1324, !165}
!1324 = !DILocation(line: 653, column: 7, scope: !1293)
!1325 = !DILocation(line: 655, column: 27, scope: !1293)
!1326 = !DILocation(line: 655, column: 34, scope: !1293)
!1327 = !DILocation(line: 655, column: 21, scope: !1293)
!1328 = !DILocation(line: 655, column: 7, scope: !1293)
!1329 = !DILocation(line: 655, column: 25, scope: !1293)
!1330 = distinct !{!1330, !1291, !1331, !165}
!1331 = !DILocation(line: 656, column: 5, scope: !1290)
!1332 = !DILocation(line: 0, scope: !1267)
!1333 = !DILocation(line: 660, column: 1, scope: !1255)
!1334 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_array_der", scope: !2, file: !2, line: 667, type: !1335, scopeLine: 668, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!43, !109, !109, !110, !1258}
!1337 = !{!1338, !1339, !1340, !1341, !1342, !1347, !1350, !1353, !1355, !1356, !1357, !1358}
!1338 = !DILocalVariable(name: "m", arg: 1, scope: !1334, file: !2, line: 667, type: !109)
!1339 = !DILocalVariable(name: "nmax", arg: 2, scope: !1334, file: !2, line: 667, type: !109)
!1340 = !DILocalVariable(name: "x", arg: 3, scope: !1334, file: !2, line: 667, type: !110)
!1341 = !DILocalVariable(name: "result_array", arg: 4, scope: !1334, file: !2, line: 667, type: !1258)
!1342 = !DILocalVariable(name: "j", scope: !1343, file: !2, line: 677, type: !43)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 676, column: 21)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 676, column: 11)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 672, column: 11)
!1346 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 669, column: 6)
!1347 = !DILocalVariable(name: "j", scope: !1348, file: !2, line: 684, type: !43)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 683, column: 22)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 683, column: 11)
!1350 = !DILocalVariable(name: "j", scope: !1351, file: !2, line: 692, type: !43)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 691, column: 24)
!1352 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 691, column: 11)
!1353 = !DILocalVariable(name: "p_n0", scope: !1354, file: !2, line: 703, type: !95)
!1354 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 700, column: 8)
!1355 = !DILocalVariable(name: "p_n1", scope: !1354, file: !2, line: 704, type: !95)
!1356 = !DILocalVariable(name: "p_n", scope: !1354, file: !2, line: 705, type: !95)
!1357 = !DILocalVariable(name: "j", scope: !1354, file: !2, line: 706, type: !43)
!1358 = !DILocalVariable(name: "c", scope: !1354, file: !2, line: 706, type: !43)
!1359 = !DILocation(line: 0, scope: !1334)
!1360 = !DILocation(line: 669, column: 15, scope: !1346)
!1361 = !DILocation(line: 670, column: 5, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 670, column: 5)
!1363 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 669, column: 25)
!1364 = !DILocation(line: 672, column: 13, scope: !1345)
!1365 = !DILocation(line: 672, column: 11, scope: !1346)
!1366 = !DILocation(line: 673, column: 5, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 672, column: 19)
!1368 = !DILocation(line: 674, column: 5, scope: !1367)
!1369 = !DILocation(line: 676, column: 16, scope: !1344)
!1370 = !DILocation(line: 676, column: 11, scope: !1345)
!1371 = !DILocation(line: 0, scope: !1343)
!1372 = !DILocation(line: 678, column: 16, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 678, column: 5)
!1374 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 678, column: 5)
!1375 = !DILocation(line: 678, column: 5, scope: !1374)
!1376 = !DILocation(line: 679, column: 23, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 678, column: 29)
!1378 = !DILocation(line: 739, column: 1, scope: !1334)
!1379 = !DILocation(line: 683, column: 16, scope: !1349)
!1380 = !DILocation(line: 683, column: 11, scope: !1344)
!1381 = !DILocation(line: 0, scope: !1348)
!1382 = !DILocation(line: 685, column: 16, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 685, column: 5)
!1384 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 685, column: 5)
!1385 = !DILocation(line: 685, column: 5, scope: !1384)
!1386 = !DILocation(line: 686, column: 23, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 685, column: 25)
!1388 = !DILocation(line: 688, column: 26, scope: !1348)
!1389 = !DILocation(line: 688, column: 5, scope: !1348)
!1390 = !DILocation(line: 688, column: 24, scope: !1348)
!1391 = !DILocation(line: 691, column: 20, scope: !1352)
!1392 = !DILocation(line: 691, column: 16, scope: !1352)
!1393 = !DILocation(line: 691, column: 11, scope: !1349)
!1394 = !DILocation(line: 0, scope: !1351)
!1395 = !DILocation(line: 693, column: 16, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 693, column: 5)
!1397 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 693, column: 5)
!1398 = !DILocation(line: 693, column: 5, scope: !1397)
!1399 = !DILocation(line: 694, column: 23, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 693, column: 25)
!1401 = !DILocation(line: 696, column: 28, scope: !1351)
!1402 = !DILocation(line: 696, column: 5, scope: !1351)
!1403 = !DILocation(line: 696, column: 26, scope: !1351)
!1404 = !DILocation(line: 697, column: 47, scope: !1351)
!1405 = !DILocation(line: 697, column: 46, scope: !1351)
!1406 = !DILocation(line: 697, column: 52, scope: !1351)
!1407 = !DILocation(line: 697, column: 5, scope: !1351)
!1408 = !DILocation(line: 697, column: 24, scope: !1351)
!1409 = !DILocation(line: 703, column: 19, scope: !1354)
!1410 = !DILocation(line: 0, scope: !1354)
!1411 = !DILocation(line: 704, column: 24, scope: !1354)
!1412 = !DILocation(line: 704, column: 23, scope: !1354)
!1413 = !DILocation(line: 704, column: 29, scope: !1354)
!1414 = !DILocation(line: 708, column: 16, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 708, column: 5)
!1416 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 708, column: 5)
!1417 = !DILocation(line: 708, column: 5, scope: !1416)
!1418 = !DILocation(line: 709, column: 23, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 708, column: 25)
!1420 = !DILocation(line: 712, column: 5, scope: !1354)
!1421 = !DILocation(line: 712, column: 21, scope: !1354)
!1422 = !DILocation(line: 713, column: 5, scope: !1354)
!1423 = !DILocation(line: 713, column: 23, scope: !1354)
!1424 = !DILocation(line: 715, column: 18, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 715, column: 5)
!1426 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 715, column: 5)
!1427 = !DILocation(line: 715, column: 5, scope: !1426)
!1428 = !DILocation(line: 716, column: 16, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 715, column: 33)
!1430 = !DILocation(line: 716, column: 22, scope: !1429)
!1431 = !DILocation(line: 716, column: 23, scope: !1429)
!1432 = !DILocation(line: 716, column: 21, scope: !1429)
!1433 = !DILocation(line: 716, column: 32, scope: !1429)
!1434 = !DILocation(line: 716, column: 30, scope: !1429)
!1435 = !DILocation(line: 716, column: 29, scope: !1429)
!1436 = !DILocation(line: 716, column: 40, scope: !1429)
!1437 = !DILocation(line: 716, column: 36, scope: !1429)
!1438 = !DILocation(line: 716, column: 35, scope: !1429)
!1439 = !DILocation(line: 720, column: 15, scope: !1429)
!1440 = !DILocation(line: 720, column: 46, scope: !1429)
!1441 = !DILocation(line: 720, column: 71, scope: !1429)
!1442 = !DILocation(line: 720, column: 76, scope: !1429)
!1443 = !DILocation(line: 720, column: 107, scope: !1429)
!1444 = !DILocation(line: 720, column: 7, scope: !1429)
!1445 = !DILocation(line: 721, column: 7, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 720, column: 128)
!1447 = !DILocation(line: 722, column: 7, scope: !1446)
!1448 = !DILocation(line: 724, column: 3, scope: !1446)
!1449 = distinct !{!1449, !1444, !1450, !165}
!1450 = !DILocation(line: 725, column: 7, scope: !1429)
!1451 = !DILocation(line: 727, column: 7, scope: !1429)
!1452 = !DILocation(line: 0, scope: !1429)
!1453 = !DILocation(line: 727, column: 19, scope: !1429)
!1454 = !DILocation(line: 727, column: 30, scope: !1429)
!1455 = !DILocation(line: 727, column: 51, scope: !1429)
!1456 = !DILocation(line: 727, scope: !1429)
!1457 = !DILocation(line: 727, column: 87, scope: !1429)
!1458 = !DILocation(line: 727, column: 108, scope: !1429)
!1459 = !DILocation(line: 727, column: 133, scope: !1429)
!1460 = !DILocation(line: 727, column: 164, scope: !1429)
!1461 = !DILocation(line: 728, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 727, column: 189)
!1463 = !DILocation(line: 729, column: 7, scope: !1462)
!1464 = !DILocation(line: 731, column: 3, scope: !1462)
!1465 = distinct !{!1465, !1451, !1466, !165}
!1466 = !DILocation(line: 732, column: 7, scope: !1429)
!1467 = !DILocation(line: 734, column: 27, scope: !1429)
!1468 = !DILocation(line: 734, column: 34, scope: !1429)
!1469 = !DILocation(line: 734, column: 7, scope: !1429)
!1470 = !DILocation(line: 734, column: 25, scope: !1429)
!1471 = distinct !{!1471, !1427, !1472, !165}
!1472 = !DILocation(line: 735, column: 5, scope: !1426)
!1473 = !DILocation(line: 0, scope: !1346)
!1474 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_der_array", scope: !2, file: !2, line: 745, type: !1335, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1475)
!1475 = !{!1476, !1477, !1478, !1479, !1480, !1484, !1487, !1491, !1492, !1493, !1494, !1495}
!1476 = !DILocalVariable(name: "mmax", arg: 1, scope: !1474, file: !2, line: 745, type: !109)
!1477 = !DILocalVariable(name: "n", arg: 2, scope: !1474, file: !2, line: 745, type: !109)
!1478 = !DILocalVariable(name: "x", arg: 3, scope: !1474, file: !2, line: 745, type: !110)
!1479 = !DILocalVariable(name: "result_array", arg: 4, scope: !1474, file: !2, line: 745, type: !1258)
!1480 = !DILocalVariable(name: "j", scope: !1481, file: !2, line: 751, type: !43)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 750, column: 19)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 750, column: 11)
!1483 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 747, column: 6)
!1484 = !DILocalVariable(name: "j", scope: !1485, file: !2, line: 759, type: !43)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 758, column: 31)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 758, column: 11)
!1487 = !DILocalVariable(name: "k", scope: !1488, file: !2, line: 779, type: !43)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 776, column: 8)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 771, column: 12)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 767, column: 12)
!1491 = !DILocalVariable(name: "p_n0", scope: !1488, file: !2, line: 781, type: !95)
!1492 = !DILocalVariable(name: "p_n1", scope: !1488, file: !2, line: 782, type: !95)
!1493 = !DILocalVariable(name: "p_n", scope: !1488, file: !2, line: 783, type: !95)
!1494 = !DILocalVariable(name: "j", scope: !1488, file: !2, line: 784, type: !43)
!1495 = !DILocalVariable(name: "c", scope: !1488, file: !2, line: 784, type: !43)
!1496 = distinct !DIAssignID()
!1497 = distinct !DIAssignID()
!1498 = distinct !DIAssignID()
!1499 = distinct !DIAssignID()
!1500 = distinct !DIAssignID()
!1501 = !DILocation(line: 0, scope: !1474)
!1502 = !DILocation(line: 747, column: 12, scope: !1483)
!1503 = !DILocation(line: 748, column: 5, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !2, line: 748, column: 5)
!1505 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 747, column: 25)
!1506 = !DILocation(line: 750, column: 13, scope: !1482)
!1507 = !DILocation(line: 750, column: 11, scope: !1483)
!1508 = !DILocation(line: 752, column: 21, scope: !1481)
!1509 = !DILocation(line: 0, scope: !1481)
!1510 = !DILocation(line: 753, column: 16, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 753, column: 5)
!1512 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 753, column: 5)
!1513 = !DILocation(line: 753, column: 5, scope: !1512)
!1514 = !DILocation(line: 754, column: 23, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 753, column: 29)
!1516 = !DILocation(line: 824, column: 1, scope: !1474)
!1517 = !DILocation(line: 758, column: 13, scope: !1486)
!1518 = !DILocation(line: 758, column: 18, scope: !1486)
!1519 = !DILocation(line: 760, column: 21, scope: !1485)
!1520 = !DILocation(line: 761, column: 5, scope: !1485)
!1521 = !DILocation(line: 761, column: 21, scope: !1485)
!1522 = !DILocation(line: 0, scope: !1485)
!1523 = !DILocation(line: 762, column: 16, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 762, column: 5)
!1525 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 762, column: 5)
!1526 = !DILocation(line: 762, column: 5, scope: !1525)
!1527 = !DILocation(line: 763, column: 23, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 762, column: 29)
!1529 = !DILocation(line: 767, column: 12, scope: !1486)
!1530 = !DILocation(line: 0, scope: !431, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 768, column: 23, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 767, column: 23)
!1533 = !DILocation(line: 239, column: 3, scope: !431, inlinedAt: !1531)
!1534 = !DILocation(line: 240, column: 1, scope: !431, inlinedAt: !1531)
!1535 = !DILocation(line: 768, column: 21, scope: !1532)
!1536 = !DILocation(line: 769, column: 5, scope: !1532)
!1537 = !DILocation(line: 0, scope: !431, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 772, column: 23, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 771, column: 23)
!1540 = !DILocation(line: 239, column: 3, scope: !431, inlinedAt: !1538)
!1541 = !DILocation(line: 240, column: 1, scope: !431, inlinedAt: !1538)
!1542 = !DILocation(line: 772, column: 21, scope: !1539)
!1543 = !DILocation(line: 773, column: 23, scope: !1539)
!1544 = !DILocation(line: 773, column: 46, scope: !1539)
!1545 = !DILocation(line: 0, scope: !431, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 773, column: 25, scope: !1539)
!1547 = !DILocation(line: 239, column: 3, scope: !431, inlinedAt: !1546)
!1548 = !DILocation(line: 240, column: 1, scope: !431, inlinedAt: !1546)
!1549 = !DILocation(line: 773, column: 24, scope: !1539)
!1550 = !DILocation(line: 773, column: 5, scope: !1539)
!1551 = !DILocation(line: 773, column: 21, scope: !1539)
!1552 = !DILocation(line: 774, column: 5, scope: !1539)
!1553 = !DILocation(line: 779, column: 28, scope: !1488)
!1554 = !DILocalVariable(name: "a", arg: 1, scope: !1555, file: !1556, line: 57, type: !43)
!1555 = distinct !DISubprogram(name: "GSL_MAX_INT", scope: !1556, file: !1556, line: 57, type: !1557, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1559)
!1556 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!43, !43, !43}
!1559 = !{!1554, !1560}
!1560 = !DILocalVariable(name: "b", arg: 2, scope: !1555, file: !1556, line: 57, type: !43)
!1561 = !DILocation(line: 0, scope: !1555, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 779, column: 13, scope: !1488)
!1563 = !DILocation(line: 59, column: 10, scope: !1555, inlinedAt: !1562)
!1564 = !DILocation(line: 0, scope: !1488)
!1565 = !DILocation(line: 0, scope: !431, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 781, column: 19, scope: !1488)
!1567 = !DILocation(line: 239, column: 3, scope: !431, inlinedAt: !1566)
!1568 = !DILocation(line: 240, column: 1, scope: !431, inlinedAt: !1566)
!1569 = !DILocation(line: 782, column: 40, scope: !1488)
!1570 = !DILocation(line: 0, scope: !431, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 782, column: 19, scope: !1488)
!1572 = !DILocation(line: 239, column: 3, scope: !431, inlinedAt: !1571)
!1573 = !DILocation(line: 240, column: 1, scope: !431, inlinedAt: !1571)
!1574 = !DILocation(line: 786, column: 18, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !2, line: 786, column: 5)
!1576 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 786, column: 5)
!1577 = !DILocation(line: 786, column: 5, scope: !1576)
!1578 = !DILocation(line: 787, column: 23, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 786, column: 31)
!1580 = !DILocation(line: 65, column: 10, scope: !1581, inlinedAt: !1585)
!1581 = distinct !DISubprogram(name: "GSL_MIN_INT", scope: !1556, file: !1556, line: 63, type: !1557, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1582)
!1582 = !{!1583, !1584}
!1583 = !DILocalVariable(name: "a", arg: 1, scope: !1581, file: !1556, line: 63, type: !43)
!1584 = !DILocalVariable(name: "b", arg: 2, scope: !1581, file: !1556, line: 63, type: !43)
!1585 = distinct !DILocation(line: 790, column: 18, scope: !1488)
!1586 = !DILocation(line: 0, scope: !1581, inlinedAt: !1585)
!1587 = !DILocation(line: 790, column: 5, scope: !1488)
!1588 = !DILocation(line: 790, column: 39, scope: !1488)
!1589 = !DILocation(line: 0, scope: !1581, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 791, column: 18, scope: !1488)
!1591 = !DILocation(line: 791, column: 5, scope: !1488)
!1592 = !DILocation(line: 791, column: 41, scope: !1488)
!1593 = !DILocation(line: 0, scope: !1581, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 793, column: 11, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 793, column: 5)
!1596 = !DILocation(line: 793, column: 9, scope: !1595)
!1597 = !DILocation(line: 793, column: 36, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 793, column: 5)
!1599 = !DILocation(line: 793, column: 5, scope: !1595)
!1600 = !DILocation(line: 0, scope: !1581, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 817, column: 19, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 817, column: 5)
!1603 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 817, column: 5)
!1604 = !DILocation(line: 817, column: 16, scope: !1602)
!1605 = !DILocation(line: 817, column: 5, scope: !1603)
!1606 = !DILocation(line: 793, scope: !1595)
!1607 = !DILocation(line: 794, column: 8, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 793, column: 45)
!1609 = !DILocation(line: 795, column: 15, scope: !1608)
!1610 = !DILocation(line: 795, column: 21, scope: !1608)
!1611 = !DILocation(line: 795, column: 22, scope: !1608)
!1612 = !DILocation(line: 795, column: 20, scope: !1608)
!1613 = !DILocation(line: 799, column: 15, scope: !1608)
!1614 = !DILocation(line: 799, column: 46, scope: !1608)
!1615 = !DILocation(line: 799, column: 71, scope: !1608)
!1616 = !DILocation(line: 799, column: 76, scope: !1608)
!1617 = !DILocation(line: 799, column: 107, scope: !1608)
!1618 = !DILocation(line: 799, column: 7, scope: !1608)
!1619 = !DILocation(line: 800, column: 7, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 799, column: 128)
!1621 = !DILocation(line: 801, column: 7, scope: !1620)
!1622 = !DILocation(line: 803, column: 3, scope: !1620)
!1623 = distinct !{!1623, !1618, !1624, !165}
!1624 = !DILocation(line: 804, column: 7, scope: !1608)
!1625 = !DILocation(line: 806, column: 7, scope: !1608)
!1626 = !DILocation(line: 0, scope: !1608)
!1627 = !DILocation(line: 806, column: 19, scope: !1608)
!1628 = !DILocation(line: 806, column: 30, scope: !1608)
!1629 = !DILocation(line: 806, column: 51, scope: !1608)
!1630 = !DILocation(line: 806, scope: !1608)
!1631 = !DILocation(line: 806, column: 87, scope: !1608)
!1632 = !DILocation(line: 806, column: 108, scope: !1608)
!1633 = !DILocation(line: 806, column: 133, scope: !1608)
!1634 = !DILocation(line: 806, column: 164, scope: !1608)
!1635 = !DILocation(line: 807, column: 7, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 806, column: 189)
!1637 = !DILocation(line: 808, column: 7, scope: !1636)
!1638 = !DILocation(line: 810, column: 3, scope: !1636)
!1639 = distinct !{!1639, !1625, !1640, !165}
!1640 = !DILocation(line: 811, column: 7, scope: !1608)
!1641 = !DILocation(line: 813, column: 27, scope: !1608)
!1642 = !DILocation(line: 813, column: 34, scope: !1608)
!1643 = !DILocation(line: 813, column: 7, scope: !1608)
!1644 = !DILocation(line: 813, column: 25, scope: !1608)
!1645 = distinct !{!1645, !1599, !1646, !165}
!1646 = !DILocation(line: 814, column: 5, scope: !1595)
!1647 = !DILocation(line: 818, column: 22, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 817, column: 44)
!1649 = !DILocation(line: 818, column: 18, scope: !1648)
!1650 = !DILocation(line: 818, column: 17, scope: !1648)
!1651 = !DILocation(line: 819, column: 29, scope: !1648)
!1652 = !DILocation(line: 819, column: 28, scope: !1648)
!1653 = !DILocation(line: 819, column: 23, scope: !1648)
!1654 = !DILocation(line: 817, column: 41, scope: !1602)
!1655 = distinct !{!1655, !1605, !1656, !165}
!1656 = !DILocation(line: 820, column: 5, scope: !1603)
!1657 = !DILocation(line: 0, scope: !1483)
!1658 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_series_e", scope: !2, file: !2, line: 830, type: !1659, scopeLine: 831, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1662)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!43, !109, !110, !1661, !111}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1672, !1673, !1674, !1675, !1676, !1677}
!1663 = !DILocalVariable(name: "n", arg: 1, scope: !1658, file: !2, line: 830, type: !109)
!1664 = !DILocalVariable(name: "x", arg: 2, scope: !1658, file: !2, line: 830, type: !110)
!1665 = !DILocalVariable(name: "a", arg: 3, scope: !1658, file: !2, line: 830, type: !1661)
!1666 = !DILocalVariable(name: "result", arg: 4, scope: !1658, file: !2, line: 830, type: !111)
!1667 = !DILocalVariable(name: "b0", scope: !1668, file: !2, line: 848, type: !95)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !2, line: 845, column: 8)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 840, column: 11)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 835, column: 11)
!1671 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 832, column: 6)
!1672 = !DILocalVariable(name: "b1", scope: !1668, file: !2, line: 849, type: !95)
!1673 = !DILocalVariable(name: "btmp", scope: !1668, file: !2, line: 850, type: !95)
!1674 = !DILocalVariable(name: "e0", scope: !1668, file: !2, line: 852, type: !95)
!1675 = !DILocalVariable(name: "e1", scope: !1668, file: !2, line: 853, type: !95)
!1676 = !DILocalVariable(name: "etmp", scope: !1668, file: !2, line: 854, type: !95)
!1677 = !DILocalVariable(name: "j", scope: !1668, file: !2, line: 856, type: !43)
!1678 = !DILocation(line: 0, scope: !1658)
!1679 = !DILocation(line: 832, column: 8, scope: !1671)
!1680 = !DILocation(line: 832, column: 6, scope: !1658)
!1681 = !DILocation(line: 833, column: 5, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 833, column: 5)
!1683 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 832, column: 13)
!1684 = !DILocation(line: 833, column: 5, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 833, column: 5)
!1686 = !DILocation(line: 835, column: 11, scope: !1671)
!1687 = !DILocation(line: 0, scope: !1668)
!1688 = !DILocation(line: 858, column: 5, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 858, column: 5)
!1690 = !DILocation(line: 836, column: 19, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 835, column: 19)
!1692 = !DILocation(line: 836, column: 17, scope: !1691)
!1693 = !DILocation(line: 837, column: 13, scope: !1691)
!1694 = !DILocation(line: 837, column: 17, scope: !1691)
!1695 = !DILocation(line: 838, column: 5, scope: !1691)
!1696 = !DILocation(line: 841, column: 19, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1669, file: !2, line: 840, column: 19)
!1698 = !DILocation(line: 841, column: 24, scope: !1697)
!1699 = !DILocation(line: 841, column: 28, scope: !1697)
!1700 = !DILocation(line: 841, column: 23, scope: !1697)
!1701 = !DILocation(line: 841, column: 17, scope: !1697)
!1702 = !DILocation(line: 842, column: 46, scope: !1697)
!1703 = !DILocation(line: 842, column: 41, scope: !1697)
!1704 = !DILocation(line: 842, column: 59, scope: !1697)
!1705 = !DILocation(line: 842, column: 63, scope: !1697)
!1706 = !DILocation(line: 842, column: 54, scope: !1697)
!1707 = !DILocation(line: 842, column: 52, scope: !1697)
!1708 = !DILocation(line: 842, column: 38, scope: !1697)
!1709 = !DILocation(line: 842, column: 13, scope: !1697)
!1710 = !DILocation(line: 842, column: 17, scope: !1697)
!1711 = !DILocation(line: 843, column: 5, scope: !1697)
!1712 = !DILocation(line: 860, column: 13, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !2, line: 858, column: 26)
!1714 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 858, column: 5)
!1715 = !DILocation(line: 860, column: 19, scope: !1713)
!1716 = !DILocation(line: 860, column: 17, scope: !1713)
!1717 = !DILocation(line: 860, column: 23, scope: !1713)
!1718 = !DILocation(line: 860, column: 28, scope: !1713)
!1719 = !DILocation(line: 860, column: 22, scope: !1713)
!1720 = !DILocation(line: 864, column: 30, scope: !1713)
!1721 = !DILocation(line: 864, column: 29, scope: !1713)
!1722 = !DILocation(line: 864, column: 48, scope: !1713)
!1723 = !DILocation(line: 864, column: 40, scope: !1713)
!1724 = !DILocation(line: 864, column: 57, scope: !1713)
!1725 = !DILocation(line: 864, column: 51, scope: !1713)
!1726 = !DILocation(line: 858, column: 23, scope: !1714)
!1727 = !DILocation(line: 858, column: 16, scope: !1714)
!1728 = distinct !{!1728, !1688, !1729, !165}
!1729 = !DILocation(line: 866, column: 5, scope: !1689)
!1730 = !DILocation(line: 868, column: 17, scope: !1668)
!1731 = !DILocation(line: 869, column: 24, scope: !1668)
!1732 = !DILocation(line: 869, column: 32, scope: !1668)
!1733 = !DILocation(line: 869, column: 22, scope: !1668)
!1734 = !DILocation(line: 869, column: 13, scope: !1668)
!1735 = !DILocation(line: 869, column: 17, scope: !1668)
!1736 = !DILocation(line: 0, scope: !1671)
!1737 = !DILocation(line: 872, column: 1, scope: !1658)
!1738 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_series", scope: !2, file: !2, line: 875, type: !1739, scopeLine: 876, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1741)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!95, !109, !110, !1661}
!1741 = !{!1742, !1743, !1744, !1745, !1746}
!1742 = !DILocalVariable(name: "n", arg: 1, scope: !1738, file: !2, line: 875, type: !109)
!1743 = !DILocalVariable(name: "x", arg: 2, scope: !1738, file: !2, line: 875, type: !110)
!1744 = !DILocalVariable(name: "a", arg: 3, scope: !1738, file: !2, line: 875, type: !1661)
!1745 = !DILocalVariable(name: "result", scope: !1738, file: !2, line: 877, type: !112)
!1746 = !DILocalVariable(name: "status", scope: !1738, file: !2, line: 877, type: !43)
!1747 = !DILocation(line: 0, scope: !1738)
!1748 = !DILocation(line: 0, scope: !1658, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 877, column: 3, scope: !1738)
!1750 = !DILocation(line: 832, column: 8, scope: !1671, inlinedAt: !1749)
!1751 = !DILocation(line: 832, column: 6, scope: !1658, inlinedAt: !1749)
!1752 = !DILocation(line: 835, column: 11, scope: !1671, inlinedAt: !1749)
!1753 = !DILocation(line: 0, scope: !1668, inlinedAt: !1749)
!1754 = !DILocation(line: 858, column: 5, scope: !1689, inlinedAt: !1749)
!1755 = !DILocation(line: 860, column: 13, scope: !1713, inlinedAt: !1749)
!1756 = !DILocation(line: 860, column: 19, scope: !1713, inlinedAt: !1749)
!1757 = !DILocation(line: 860, column: 17, scope: !1713, inlinedAt: !1749)
!1758 = !DILocation(line: 860, column: 23, scope: !1713, inlinedAt: !1749)
!1759 = !DILocation(line: 860, column: 28, scope: !1713, inlinedAt: !1749)
!1760 = !DILocation(line: 860, column: 22, scope: !1713, inlinedAt: !1749)
!1761 = !DILocation(line: 858, column: 23, scope: !1714, inlinedAt: !1749)
!1762 = !DILocation(line: 836, column: 19, scope: !1691, inlinedAt: !1749)
!1763 = !DILocation(line: 838, column: 5, scope: !1691, inlinedAt: !1749)
!1764 = !DILocation(line: 841, column: 19, scope: !1697, inlinedAt: !1749)
!1765 = !DILocation(line: 841, column: 24, scope: !1697, inlinedAt: !1749)
!1766 = !DILocation(line: 841, column: 28, scope: !1697, inlinedAt: !1749)
!1767 = !DILocation(line: 841, column: 23, scope: !1697, inlinedAt: !1749)
!1768 = !DILocation(line: 843, column: 5, scope: !1697, inlinedAt: !1749)
!1769 = !DILocation(line: 858, column: 16, scope: !1714, inlinedAt: !1749)
!1770 = distinct !{!1770, !1754, !1771, !165}
!1771 = !DILocation(line: 866, column: 5, scope: !1689, inlinedAt: !1749)
!1772 = !DILocation(line: 833, column: 5, scope: !1685, inlinedAt: !1749)
!1773 = !DILocation(line: 877, column: 3, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 877, column: 3)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !2, line: 877, column: 3)
!1776 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 877, column: 3)
!1777 = !DILocation(line: 878, column: 1, scope: !1738)
!1778 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_array", scope: !2, file: !2, line: 883, type: !1256, scopeLine: 884, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1779)
!1779 = !{!1780, !1781, !1782, !1783, !1788, !1789, !1790, !1791}
!1780 = !DILocalVariable(name: "nmax", arg: 1, scope: !1778, file: !2, line: 883, type: !109)
!1781 = !DILocalVariable(name: "x", arg: 2, scope: !1778, file: !2, line: 883, type: !110)
!1782 = !DILocalVariable(name: "result_array", arg: 3, scope: !1778, file: !2, line: 883, type: !1258)
!1783 = !DILocalVariable(name: "p_n0", scope: !1784, file: !2, line: 900, type: !95)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 897, column: 8)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 892, column: 11)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !2, line: 888, column: 11)
!1787 = distinct !DILexicalBlock(scope: !1778, file: !2, line: 885, column: 6)
!1788 = !DILocalVariable(name: "p_n1", scope: !1784, file: !2, line: 901, type: !95)
!1789 = !DILocalVariable(name: "p_n", scope: !1784, file: !2, line: 902, type: !95)
!1790 = !DILocalVariable(name: "j", scope: !1784, file: !2, line: 903, type: !43)
!1791 = !DILocalVariable(name: "c", scope: !1784, file: !2, line: 903, type: !43)
!1792 = !DILocation(line: 0, scope: !1778)
!1793 = !DILocation(line: 885, column: 11, scope: !1787)
!1794 = !DILocation(line: 885, column: 6, scope: !1778)
!1795 = !DILocation(line: 886, column: 5, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 886, column: 5)
!1797 = distinct !DILexicalBlock(scope: !1787, file: !2, line: 885, column: 16)
!1798 = !DILocation(line: 888, column: 11, scope: !1787)
!1799 = !DILocation(line: 889, column: 21, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 888, column: 22)
!1801 = !DILocation(line: 890, column: 5, scope: !1800)
!1802 = !DILocation(line: 893, column: 21, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 892, column: 22)
!1804 = !DILocation(line: 894, column: 26, scope: !1803)
!1805 = !DILocation(line: 894, column: 5, scope: !1803)
!1806 = !DILocation(line: 894, column: 21, scope: !1803)
!1807 = !DILocation(line: 895, column: 5, scope: !1803)
!1808 = !DILocation(line: 0, scope: !1784)
!1809 = !DILocation(line: 901, column: 22, scope: !1784)
!1810 = !DILocation(line: 905, column: 21, scope: !1784)
!1811 = !DILocation(line: 906, column: 5, scope: !1784)
!1812 = !DILocation(line: 906, column: 21, scope: !1784)
!1813 = !DILocation(line: 908, column: 16, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 908, column: 5)
!1815 = distinct !DILexicalBlock(scope: !1784, file: !2, line: 908, column: 5)
!1816 = !DILocation(line: 908, column: 5, scope: !1815)
!1817 = !DILocation(line: 909, column: 19, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 908, column: 31)
!1819 = !DILocation(line: 909, column: 29, scope: !1818)
!1820 = !DILocation(line: 909, column: 28, scope: !1818)
!1821 = !DILocation(line: 909, column: 30, scope: !1818)
!1822 = !DILocation(line: 909, column: 24, scope: !1818)
!1823 = !DILocation(line: 913, column: 15, scope: !1818)
!1824 = !DILocation(line: 913, column: 46, scope: !1818)
!1825 = !DILocation(line: 913, column: 71, scope: !1818)
!1826 = !DILocation(line: 913, column: 76, scope: !1818)
!1827 = !DILocation(line: 913, column: 107, scope: !1818)
!1828 = !DILocation(line: 913, column: 7, scope: !1818)
!1829 = !DILocation(line: 914, column: 7, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 913, column: 128)
!1831 = !DILocation(line: 915, column: 7, scope: !1830)
!1832 = !DILocation(line: 917, column: 3, scope: !1830)
!1833 = distinct !{!1833, !1828, !1834, !165}
!1834 = !DILocation(line: 918, column: 7, scope: !1818)
!1835 = !DILocation(line: 920, column: 7, scope: !1818)
!1836 = !DILocation(line: 0, scope: !1818)
!1837 = !DILocation(line: 920, column: 19, scope: !1818)
!1838 = !DILocation(line: 920, column: 30, scope: !1818)
!1839 = !DILocation(line: 920, column: 51, scope: !1818)
!1840 = !DILocation(line: 920, scope: !1818)
!1841 = !DILocation(line: 920, column: 87, scope: !1818)
!1842 = !DILocation(line: 920, column: 108, scope: !1818)
!1843 = !DILocation(line: 920, column: 133, scope: !1818)
!1844 = !DILocation(line: 920, column: 164, scope: !1818)
!1845 = !DILocation(line: 921, column: 7, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 920, column: 189)
!1847 = !DILocation(line: 922, column: 7, scope: !1846)
!1848 = !DILocation(line: 924, column: 3, scope: !1846)
!1849 = distinct !{!1849, !1835, !1850, !165}
!1850 = !DILocation(line: 925, column: 7, scope: !1818)
!1851 = !DILocation(line: 927, column: 27, scope: !1818)
!1852 = !DILocation(line: 927, column: 34, scope: !1818)
!1853 = !DILocation(line: 927, column: 21, scope: !1818)
!1854 = !DILocation(line: 927, column: 7, scope: !1818)
!1855 = !DILocation(line: 927, column: 25, scope: !1818)
!1856 = distinct !{!1856, !1816, !1857, !165}
!1857 = !DILocation(line: 928, column: 5, scope: !1815)
!1858 = !DILocation(line: 0, scope: !1787)
!1859 = !DILocation(line: 932, column: 1, scope: !1778)
!1860 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_array_der", scope: !2, file: !2, line: 938, type: !1335, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1861)
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1871, !1874, !1877, !1879, !1880, !1881, !1882}
!1862 = !DILocalVariable(name: "m", arg: 1, scope: !1860, file: !2, line: 938, type: !109)
!1863 = !DILocalVariable(name: "nmax", arg: 2, scope: !1860, file: !2, line: 938, type: !109)
!1864 = !DILocalVariable(name: "x", arg: 3, scope: !1860, file: !2, line: 938, type: !110)
!1865 = !DILocalVariable(name: "result_array", arg: 4, scope: !1860, file: !2, line: 938, type: !1258)
!1866 = !DILocalVariable(name: "j", scope: !1867, file: !2, line: 948, type: !43)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !2, line: 947, column: 21)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 947, column: 11)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 943, column: 11)
!1870 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 940, column: 6)
!1871 = !DILocalVariable(name: "j", scope: !1872, file: !2, line: 955, type: !43)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !2, line: 954, column: 22)
!1873 = distinct !DILexicalBlock(scope: !1868, file: !2, line: 954, column: 11)
!1874 = !DILocalVariable(name: "j", scope: !1875, file: !2, line: 963, type: !43)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !2, line: 962, column: 24)
!1876 = distinct !DILexicalBlock(scope: !1873, file: !2, line: 962, column: 11)
!1877 = !DILocalVariable(name: "p_n0", scope: !1878, file: !2, line: 974, type: !95)
!1878 = distinct !DILexicalBlock(scope: !1876, file: !2, line: 971, column: 8)
!1879 = !DILocalVariable(name: "p_n1", scope: !1878, file: !2, line: 975, type: !95)
!1880 = !DILocalVariable(name: "p_n", scope: !1878, file: !2, line: 976, type: !95)
!1881 = !DILocalVariable(name: "j", scope: !1878, file: !2, line: 977, type: !43)
!1882 = !DILocalVariable(name: "c", scope: !1878, file: !2, line: 977, type: !43)
!1883 = !DILocation(line: 0, scope: !1860)
!1884 = !DILocation(line: 940, column: 15, scope: !1870)
!1885 = !DILocation(line: 941, column: 5, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !2, line: 941, column: 5)
!1887 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 940, column: 25)
!1888 = !DILocation(line: 943, column: 13, scope: !1869)
!1889 = !DILocation(line: 943, column: 11, scope: !1870)
!1890 = !DILocation(line: 944, column: 5, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 943, column: 19)
!1892 = !DILocation(line: 945, column: 5, scope: !1891)
!1893 = !DILocation(line: 947, column: 16, scope: !1868)
!1894 = !DILocation(line: 947, column: 11, scope: !1869)
!1895 = !DILocation(line: 0, scope: !1867)
!1896 = !DILocation(line: 949, column: 16, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 949, column: 5)
!1898 = distinct !DILexicalBlock(scope: !1867, file: !2, line: 949, column: 5)
!1899 = !DILocation(line: 949, column: 5, scope: !1898)
!1900 = !DILocation(line: 950, column: 23, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 949, column: 29)
!1902 = !DILocation(line: 1010, column: 1, scope: !1860)
!1903 = !DILocation(line: 954, column: 16, scope: !1873)
!1904 = !DILocation(line: 954, column: 11, scope: !1868)
!1905 = !DILocation(line: 0, scope: !1872)
!1906 = !DILocation(line: 956, column: 16, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !2, line: 956, column: 5)
!1908 = distinct !DILexicalBlock(scope: !1872, file: !2, line: 956, column: 5)
!1909 = !DILocation(line: 956, column: 5, scope: !1908)
!1910 = !DILocation(line: 957, column: 23, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1907, file: !2, line: 956, column: 25)
!1912 = !DILocation(line: 959, column: 26, scope: !1872)
!1913 = !DILocation(line: 959, column: 34, scope: !1872)
!1914 = !DILocation(line: 959, column: 33, scope: !1872)
!1915 = !DILocation(line: 959, column: 5, scope: !1872)
!1916 = !DILocation(line: 959, column: 24, scope: !1872)
!1917 = !DILocation(line: 962, column: 20, scope: !1876)
!1918 = !DILocation(line: 962, column: 16, scope: !1876)
!1919 = !DILocation(line: 962, column: 11, scope: !1873)
!1920 = !DILocation(line: 0, scope: !1875)
!1921 = !DILocation(line: 964, column: 16, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !2, line: 964, column: 5)
!1923 = distinct !DILexicalBlock(scope: !1875, file: !2, line: 964, column: 5)
!1924 = !DILocation(line: 964, column: 5, scope: !1923)
!1925 = !DILocation(line: 965, column: 23, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !2, line: 964, column: 25)
!1927 = !DILocation(line: 967, column: 28, scope: !1875)
!1928 = !DILocation(line: 967, column: 36, scope: !1875)
!1929 = !DILocation(line: 967, column: 35, scope: !1875)
!1930 = !DILocation(line: 967, column: 5, scope: !1875)
!1931 = !DILocation(line: 967, column: 26, scope: !1875)
!1932 = !DILocation(line: 968, column: 46, scope: !1875)
!1933 = !DILocation(line: 968, column: 49, scope: !1875)
!1934 = !DILocation(line: 968, column: 48, scope: !1875)
!1935 = !DILocation(line: 968, column: 54, scope: !1875)
!1936 = !DILocation(line: 968, column: 5, scope: !1875)
!1937 = !DILocation(line: 968, column: 24, scope: !1875)
!1938 = !DILocation(line: 974, column: 19, scope: !1878)
!1939 = !DILocation(line: 974, column: 27, scope: !1878)
!1940 = !DILocation(line: 974, column: 26, scope: !1878)
!1941 = !DILocation(line: 0, scope: !1878)
!1942 = !DILocation(line: 975, column: 23, scope: !1878)
!1943 = !DILocation(line: 975, column: 26, scope: !1878)
!1944 = !DILocation(line: 975, column: 25, scope: !1878)
!1945 = !DILocation(line: 975, column: 31, scope: !1878)
!1946 = !DILocation(line: 979, column: 16, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !2, line: 979, column: 5)
!1948 = distinct !DILexicalBlock(scope: !1878, file: !2, line: 979, column: 5)
!1949 = !DILocation(line: 979, column: 5, scope: !1948)
!1950 = !DILocation(line: 980, column: 23, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1947, file: !2, line: 979, column: 25)
!1952 = !DILocation(line: 983, column: 5, scope: !1878)
!1953 = !DILocation(line: 983, column: 21, scope: !1878)
!1954 = !DILocation(line: 984, column: 5, scope: !1878)
!1955 = !DILocation(line: 984, column: 23, scope: !1878)
!1956 = !DILocation(line: 986, column: 18, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !2, line: 986, column: 5)
!1958 = distinct !DILexicalBlock(scope: !1878, file: !2, line: 986, column: 5)
!1959 = !DILocation(line: 986, column: 5, scope: !1958)
!1960 = !DILocation(line: 987, column: 16, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1957, file: !2, line: 986, column: 33)
!1962 = !DILocation(line: 987, column: 22, scope: !1961)
!1963 = !DILocation(line: 987, column: 23, scope: !1961)
!1964 = !DILocation(line: 987, column: 21, scope: !1961)
!1965 = !DILocation(line: 987, column: 29, scope: !1961)
!1966 = !DILocation(line: 987, column: 34, scope: !1961)
!1967 = !DILocation(line: 987, column: 32, scope: !1961)
!1968 = !DILocation(line: 987, column: 31, scope: !1961)
!1969 = !DILocation(line: 987, column: 42, scope: !1961)
!1970 = !DILocation(line: 987, column: 38, scope: !1961)
!1971 = !DILocation(line: 987, column: 37, scope: !1961)
!1972 = !DILocation(line: 991, column: 15, scope: !1961)
!1973 = !DILocation(line: 991, column: 46, scope: !1961)
!1974 = !DILocation(line: 991, column: 71, scope: !1961)
!1975 = !DILocation(line: 991, column: 76, scope: !1961)
!1976 = !DILocation(line: 991, column: 107, scope: !1961)
!1977 = !DILocation(line: 991, column: 7, scope: !1961)
!1978 = !DILocation(line: 992, column: 7, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1961, file: !2, line: 991, column: 128)
!1980 = !DILocation(line: 993, column: 7, scope: !1979)
!1981 = !DILocation(line: 995, column: 3, scope: !1979)
!1982 = distinct !{!1982, !1977, !1983, !165}
!1983 = !DILocation(line: 996, column: 7, scope: !1961)
!1984 = !DILocation(line: 998, column: 7, scope: !1961)
!1985 = !DILocation(line: 0, scope: !1961)
!1986 = !DILocation(line: 998, column: 19, scope: !1961)
!1987 = !DILocation(line: 998, column: 30, scope: !1961)
!1988 = !DILocation(line: 998, column: 51, scope: !1961)
!1989 = !DILocation(line: 998, scope: !1961)
!1990 = !DILocation(line: 998, column: 87, scope: !1961)
!1991 = !DILocation(line: 998, column: 108, scope: !1961)
!1992 = !DILocation(line: 998, column: 133, scope: !1961)
!1993 = !DILocation(line: 998, column: 164, scope: !1961)
!1994 = !DILocation(line: 999, column: 7, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1961, file: !2, line: 998, column: 189)
!1996 = !DILocation(line: 1000, column: 7, scope: !1995)
!1997 = !DILocation(line: 1002, column: 3, scope: !1995)
!1998 = distinct !{!1998, !1984, !1999, !165}
!1999 = !DILocation(line: 1003, column: 7, scope: !1961)
!2000 = !DILocation(line: 1005, column: 27, scope: !1961)
!2001 = !DILocation(line: 1005, column: 34, scope: !1961)
!2002 = !DILocation(line: 1005, column: 7, scope: !1961)
!2003 = !DILocation(line: 1005, column: 25, scope: !1961)
!2004 = distinct !{!2004, !1959, !2005, !165}
!2005 = !DILocation(line: 1006, column: 5, scope: !1958)
!2006 = !DILocation(line: 0, scope: !1870)
!2007 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_der_array", scope: !2, file: !2, line: 1016, type: !1335, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2008)
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2017, !2020, !2024, !2025, !2026, !2027, !2028}
!2009 = !DILocalVariable(name: "mmax", arg: 1, scope: !2007, file: !2, line: 1016, type: !109)
!2010 = !DILocalVariable(name: "n", arg: 2, scope: !2007, file: !2, line: 1016, type: !109)
!2011 = !DILocalVariable(name: "x", arg: 3, scope: !2007, file: !2, line: 1016, type: !110)
!2012 = !DILocalVariable(name: "result_array", arg: 4, scope: !2007, file: !2, line: 1016, type: !1258)
!2013 = !DILocalVariable(name: "j", scope: !2014, file: !2, line: 1022, type: !43)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !2, line: 1021, column: 19)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !2, line: 1021, column: 11)
!2016 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 1018, column: 6)
!2017 = !DILocalVariable(name: "j", scope: !2018, file: !2, line: 1030, type: !43)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 1029, column: 31)
!2019 = distinct !DILexicalBlock(scope: !2015, file: !2, line: 1029, column: 11)
!2020 = !DILocalVariable(name: "k", scope: !2021, file: !2, line: 1050, type: !43)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !2, line: 1047, column: 8)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !2, line: 1042, column: 12)
!2023 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 1038, column: 12)
!2024 = !DILocalVariable(name: "p_n0", scope: !2021, file: !2, line: 1052, type: !95)
!2025 = !DILocalVariable(name: "p_n1", scope: !2021, file: !2, line: 1053, type: !95)
!2026 = !DILocalVariable(name: "p_n", scope: !2021, file: !2, line: 1054, type: !95)
!2027 = !DILocalVariable(name: "j", scope: !2021, file: !2, line: 1055, type: !43)
!2028 = !DILocalVariable(name: "c", scope: !2021, file: !2, line: 1055, type: !43)
!2029 = distinct !DIAssignID()
!2030 = distinct !DIAssignID()
!2031 = distinct !DIAssignID()
!2032 = distinct !DIAssignID()
!2033 = distinct !DIAssignID()
!2034 = !DILocation(line: 0, scope: !2007)
!2035 = !DILocation(line: 1018, column: 12, scope: !2016)
!2036 = !DILocation(line: 1019, column: 5, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !2, line: 1019, column: 5)
!2038 = distinct !DILexicalBlock(scope: !2016, file: !2, line: 1018, column: 25)
!2039 = !DILocation(line: 1021, column: 13, scope: !2015)
!2040 = !DILocation(line: 1021, column: 11, scope: !2016)
!2041 = !DILocation(line: 1023, column: 21, scope: !2014)
!2042 = !DILocation(line: 0, scope: !2014)
!2043 = !DILocation(line: 1024, column: 16, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 1024, column: 5)
!2045 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 1024, column: 5)
!2046 = !DILocation(line: 1024, column: 5, scope: !2045)
!2047 = !DILocation(line: 1025, column: 23, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !2, line: 1024, column: 29)
!2049 = !DILocation(line: 1095, column: 1, scope: !2007)
!2050 = !DILocation(line: 1029, column: 13, scope: !2019)
!2051 = !DILocation(line: 1029, column: 18, scope: !2019)
!2052 = !DILocation(line: 1031, column: 24, scope: !2018)
!2053 = !DILocation(line: 1031, column: 21, scope: !2018)
!2054 = !DILocation(line: 1032, column: 5, scope: !2018)
!2055 = !DILocation(line: 1032, column: 21, scope: !2018)
!2056 = !DILocation(line: 0, scope: !2018)
!2057 = !DILocation(line: 1033, column: 16, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 1033, column: 5)
!2059 = distinct !DILexicalBlock(scope: !2018, file: !2, line: 1033, column: 5)
!2060 = !DILocation(line: 1033, column: 5, scope: !2059)
!2061 = !DILocation(line: 1034, column: 23, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !2, line: 1033, column: 29)
!2063 = !DILocation(line: 1038, column: 12, scope: !2019)
!2064 = !DILocation(line: 0, scope: !855, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 1039, column: 23, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2023, file: !2, line: 1038, column: 23)
!2067 = !DILocation(line: 431, column: 3, scope: !855, inlinedAt: !2065)
!2068 = !DILocation(line: 431, column: 3, scope: !866, inlinedAt: !2065)
!2069 = !DILocation(line: 431, column: 3, scope: !868, inlinedAt: !2065)
!2070 = !DILocation(line: 432, column: 1, scope: !855, inlinedAt: !2065)
!2071 = !DILocation(line: 1039, column: 21, scope: !2066)
!2072 = !DILocation(line: 1040, column: 5, scope: !2066)
!2073 = !DILocation(line: 0, scope: !855, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 1043, column: 23, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2022, file: !2, line: 1042, column: 23)
!2076 = !DILocation(line: 431, column: 3, scope: !855, inlinedAt: !2074)
!2077 = !DILocation(line: 431, column: 3, scope: !866, inlinedAt: !2074)
!2078 = !DILocation(line: 431, column: 3, scope: !868, inlinedAt: !2074)
!2079 = !DILocation(line: 432, column: 1, scope: !855, inlinedAt: !2074)
!2080 = !DILocation(line: 1043, column: 21, scope: !2075)
!2081 = !DILocation(line: 1044, column: 24, scope: !2075)
!2082 = !DILocation(line: 1044, column: 23, scope: !2075)
!2083 = !DILocation(line: 1044, column: 48, scope: !2075)
!2084 = !DILocation(line: 0, scope: !855, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 1044, column: 27, scope: !2075)
!2086 = !DILocation(line: 431, column: 3, scope: !855, inlinedAt: !2085)
!2087 = !DILocation(line: 431, column: 3, scope: !866, inlinedAt: !2085)
!2088 = !DILocation(line: 431, column: 3, scope: !868, inlinedAt: !2085)
!2089 = !DILocation(line: 432, column: 1, scope: !855, inlinedAt: !2085)
!2090 = !DILocation(line: 1044, column: 26, scope: !2075)
!2091 = !DILocation(line: 1044, column: 5, scope: !2075)
!2092 = !DILocation(line: 1044, column: 21, scope: !2075)
!2093 = !DILocation(line: 1045, column: 5, scope: !2075)
!2094 = !DILocation(line: 1050, column: 28, scope: !2021)
!2095 = !DILocation(line: 0, scope: !1555, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 1050, column: 13, scope: !2021)
!2097 = !DILocation(line: 59, column: 10, scope: !1555, inlinedAt: !2096)
!2098 = !DILocation(line: 0, scope: !2021)
!2099 = !DILocation(line: 0, scope: !855, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 1052, column: 19, scope: !2021)
!2101 = !DILocation(line: 431, column: 3, scope: !855, inlinedAt: !2100)
!2102 = !DILocation(line: 431, column: 3, scope: !866, inlinedAt: !2100)
!2103 = !DILocation(line: 431, column: 3, scope: !868, inlinedAt: !2100)
!2104 = !DILocation(line: 432, column: 1, scope: !855, inlinedAt: !2100)
!2105 = !DILocation(line: 1053, column: 40, scope: !2021)
!2106 = !DILocation(line: 0, scope: !855, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 1053, column: 19, scope: !2021)
!2108 = !DILocation(line: 431, column: 3, scope: !855, inlinedAt: !2107)
!2109 = !DILocation(line: 431, column: 3, scope: !866, inlinedAt: !2107)
!2110 = !DILocation(line: 431, column: 3, scope: !868, inlinedAt: !2107)
!2111 = !DILocation(line: 432, column: 1, scope: !855, inlinedAt: !2107)
!2112 = !DILocation(line: 1057, column: 18, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !2, line: 1057, column: 5)
!2114 = distinct !DILexicalBlock(scope: !2021, file: !2, line: 1057, column: 5)
!2115 = !DILocation(line: 1057, column: 5, scope: !2114)
!2116 = !DILocation(line: 1058, column: 23, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !2, line: 1057, column: 31)
!2118 = !DILocation(line: 65, column: 10, scope: !1581, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 1061, column: 18, scope: !2021)
!2120 = !DILocation(line: 0, scope: !1581, inlinedAt: !2119)
!2121 = !DILocation(line: 1061, column: 5, scope: !2021)
!2122 = !DILocation(line: 1061, column: 39, scope: !2021)
!2123 = !DILocation(line: 0, scope: !1581, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 1062, column: 18, scope: !2021)
!2125 = !DILocation(line: 1062, column: 5, scope: !2021)
!2126 = !DILocation(line: 1062, column: 41, scope: !2021)
!2127 = !DILocation(line: 0, scope: !1581, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 1064, column: 11, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2021, file: !2, line: 1064, column: 5)
!2130 = !DILocation(line: 1064, column: 9, scope: !2129)
!2131 = !DILocation(line: 1064, column: 36, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !2, line: 1064, column: 5)
!2133 = !DILocation(line: 1064, column: 5, scope: !2129)
!2134 = !DILocation(line: 0, scope: !1581, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 1088, column: 19, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !2, line: 1088, column: 5)
!2137 = distinct !DILexicalBlock(scope: !2021, file: !2, line: 1088, column: 5)
!2138 = !DILocation(line: 1088, column: 16, scope: !2136)
!2139 = !DILocation(line: 1088, column: 5, scope: !2137)
!2140 = !DILocation(line: 1064, scope: !2129)
!2141 = !DILocation(line: 1065, column: 8, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 1064, column: 45)
!2143 = !DILocation(line: 1066, column: 17, scope: !2142)
!2144 = !DILocation(line: 1066, column: 24, scope: !2142)
!2145 = !DILocation(line: 1066, column: 23, scope: !2142)
!2146 = !DILocation(line: 1066, column: 26, scope: !2142)
!2147 = !DILocation(line: 1066, column: 22, scope: !2142)
!2148 = !DILocation(line: 1070, column: 15, scope: !2142)
!2149 = !DILocation(line: 1070, column: 46, scope: !2142)
!2150 = !DILocation(line: 1070, column: 71, scope: !2142)
!2151 = !DILocation(line: 1070, column: 76, scope: !2142)
!2152 = !DILocation(line: 1070, column: 107, scope: !2142)
!2153 = !DILocation(line: 1070, column: 7, scope: !2142)
!2154 = !DILocation(line: 1071, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2142, file: !2, line: 1070, column: 128)
!2156 = !DILocation(line: 1072, column: 7, scope: !2155)
!2157 = !DILocation(line: 1074, column: 3, scope: !2155)
!2158 = distinct !{!2158, !2153, !2159, !165}
!2159 = !DILocation(line: 1075, column: 7, scope: !2142)
!2160 = !DILocation(line: 1077, column: 7, scope: !2142)
!2161 = !DILocation(line: 0, scope: !2142)
!2162 = !DILocation(line: 1077, column: 19, scope: !2142)
!2163 = !DILocation(line: 1077, column: 30, scope: !2142)
!2164 = !DILocation(line: 1077, column: 51, scope: !2142)
!2165 = !DILocation(line: 1077, scope: !2142)
!2166 = !DILocation(line: 1077, column: 87, scope: !2142)
!2167 = !DILocation(line: 1077, column: 108, scope: !2142)
!2168 = !DILocation(line: 1077, column: 133, scope: !2142)
!2169 = !DILocation(line: 1077, column: 164, scope: !2142)
!2170 = !DILocation(line: 1078, column: 7, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2142, file: !2, line: 1077, column: 189)
!2172 = !DILocation(line: 1079, column: 7, scope: !2171)
!2173 = !DILocation(line: 1081, column: 3, scope: !2171)
!2174 = distinct !{!2174, !2160, !2175, !165}
!2175 = !DILocation(line: 1082, column: 7, scope: !2142)
!2176 = !DILocation(line: 1084, column: 27, scope: !2142)
!2177 = !DILocation(line: 1084, column: 34, scope: !2142)
!2178 = !DILocation(line: 1084, column: 7, scope: !2142)
!2179 = !DILocation(line: 1084, column: 25, scope: !2142)
!2180 = distinct !{!2180, !2133, !2181, !165}
!2181 = !DILocation(line: 1085, column: 5, scope: !2129)
!2182 = !DILocation(line: 1089, column: 22, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2136, file: !2, line: 1088, column: 44)
!2184 = !DILocation(line: 1089, column: 18, scope: !2183)
!2185 = !DILocation(line: 1089, column: 17, scope: !2183)
!2186 = !DILocation(line: 1089, column: 25, scope: !2183)
!2187 = !DILocation(line: 1090, column: 29, scope: !2183)
!2188 = !DILocation(line: 1090, column: 28, scope: !2183)
!2189 = !DILocation(line: 1090, column: 23, scope: !2183)
!2190 = !DILocation(line: 1088, column: 41, scope: !2136)
!2191 = distinct !{!2191, !2139, !2192, !165}
!2192 = !DILocation(line: 1091, column: 5, scope: !2137)
!2193 = !DILocation(line: 0, scope: !2016)
!2194 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_series_e", scope: !2, file: !2, line: 1101, type: !1659, scopeLine: 1102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2195)
!2195 = !{!2196, !2197, !2198, !2199, !2200, !2205, !2206, !2207, !2208, !2209, !2210}
!2196 = !DILocalVariable(name: "n", arg: 1, scope: !2194, file: !2, line: 1101, type: !109)
!2197 = !DILocalVariable(name: "x", arg: 2, scope: !2194, file: !2, line: 1101, type: !110)
!2198 = !DILocalVariable(name: "a", arg: 3, scope: !2194, file: !2, line: 1101, type: !1661)
!2199 = !DILocalVariable(name: "result", arg: 4, scope: !2194, file: !2, line: 1101, type: !111)
!2200 = !DILocalVariable(name: "b0", scope: !2201, file: !2, line: 1119, type: !95)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 1116, column: 8)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 1111, column: 11)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !2, line: 1106, column: 11)
!2204 = distinct !DILexicalBlock(scope: !2194, file: !2, line: 1103, column: 6)
!2205 = !DILocalVariable(name: "b1", scope: !2201, file: !2, line: 1120, type: !95)
!2206 = !DILocalVariable(name: "btmp", scope: !2201, file: !2, line: 1121, type: !95)
!2207 = !DILocalVariable(name: "e0", scope: !2201, file: !2, line: 1123, type: !95)
!2208 = !DILocalVariable(name: "e1", scope: !2201, file: !2, line: 1124, type: !95)
!2209 = !DILocalVariable(name: "etmp", scope: !2201, file: !2, line: 1125, type: !95)
!2210 = !DILocalVariable(name: "j", scope: !2201, file: !2, line: 1127, type: !43)
!2211 = !DILocation(line: 0, scope: !2194)
!2212 = !DILocation(line: 1103, column: 8, scope: !2204)
!2213 = !DILocation(line: 1103, column: 6, scope: !2194)
!2214 = !DILocation(line: 1104, column: 5, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !2, line: 1104, column: 5)
!2216 = distinct !DILexicalBlock(scope: !2204, file: !2, line: 1103, column: 13)
!2217 = !DILocation(line: 1104, column: 5, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2215, file: !2, line: 1104, column: 5)
!2219 = !DILocation(line: 1106, column: 11, scope: !2204)
!2220 = !DILocation(line: 0, scope: !2201)
!2221 = !DILocation(line: 1129, column: 5, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2201, file: !2, line: 1129, column: 5)
!2223 = !DILocation(line: 1107, column: 19, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 1106, column: 19)
!2225 = !DILocation(line: 1107, column: 17, scope: !2224)
!2226 = !DILocation(line: 1108, column: 13, scope: !2224)
!2227 = !DILocation(line: 1108, column: 17, scope: !2224)
!2228 = !DILocation(line: 1109, column: 5, scope: !2224)
!2229 = !DILocation(line: 1112, column: 19, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 1111, column: 19)
!2231 = !DILocation(line: 1112, column: 24, scope: !2230)
!2232 = !DILocation(line: 1112, column: 28, scope: !2230)
!2233 = !DILocation(line: 1112, column: 31, scope: !2230)
!2234 = !DILocation(line: 1112, column: 23, scope: !2230)
!2235 = !DILocation(line: 1112, column: 17, scope: !2230)
!2236 = !DILocation(line: 1113, column: 46, scope: !2230)
!2237 = !DILocation(line: 1113, column: 41, scope: !2230)
!2238 = !DILocation(line: 1113, column: 59, scope: !2230)
!2239 = !DILocation(line: 1113, column: 63, scope: !2230)
!2240 = !DILocation(line: 1113, column: 66, scope: !2230)
!2241 = !DILocation(line: 1113, column: 54, scope: !2230)
!2242 = !DILocation(line: 1113, column: 52, scope: !2230)
!2243 = !DILocation(line: 1113, column: 38, scope: !2230)
!2244 = !DILocation(line: 1113, column: 13, scope: !2230)
!2245 = !DILocation(line: 1113, column: 17, scope: !2230)
!2246 = !DILocation(line: 1114, column: 5, scope: !2230)
!2247 = !DILocation(line: 1131, column: 13, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1129, column: 26)
!2249 = distinct !DILexicalBlock(scope: !2222, file: !2, line: 1129, column: 5)
!2250 = !DILocation(line: 1131, column: 22, scope: !2248)
!2251 = !DILocation(line: 1131, column: 17, scope: !2248)
!2252 = !DILocation(line: 1131, column: 29, scope: !2248)
!2253 = !DILocation(line: 1131, column: 28, scope: !2248)
!2254 = !DILocation(line: 1131, column: 34, scope: !2248)
!2255 = !DILocation(line: 1131, column: 25, scope: !2248)
!2256 = !DILocation(line: 1135, column: 30, scope: !2248)
!2257 = !DILocation(line: 1135, column: 29, scope: !2248)
!2258 = !DILocation(line: 1135, column: 51, scope: !2248)
!2259 = !DILocation(line: 1135, column: 40, scope: !2248)
!2260 = !DILocation(line: 1135, column: 63, scope: !2248)
!2261 = !DILocation(line: 1135, column: 54, scope: !2248)
!2262 = !DILocation(line: 1129, column: 23, scope: !2249)
!2263 = !DILocation(line: 1129, column: 16, scope: !2249)
!2264 = distinct !{!2264, !2221, !2265, !165}
!2265 = !DILocation(line: 1137, column: 5, scope: !2222)
!2266 = !DILocation(line: 1139, column: 17, scope: !2201)
!2267 = !DILocation(line: 1140, column: 24, scope: !2201)
!2268 = !DILocation(line: 1140, column: 32, scope: !2201)
!2269 = !DILocation(line: 1140, column: 22, scope: !2201)
!2270 = !DILocation(line: 1140, column: 13, scope: !2201)
!2271 = !DILocation(line: 1140, column: 17, scope: !2201)
!2272 = !DILocation(line: 0, scope: !2204)
!2273 = !DILocation(line: 1143, column: 1, scope: !2194)
!2274 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_series", scope: !2, file: !2, line: 1146, type: !1739, scopeLine: 1147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2275)
!2275 = !{!2276, !2277, !2278, !2279, !2280}
!2276 = !DILocalVariable(name: "n", arg: 1, scope: !2274, file: !2, line: 1146, type: !109)
!2277 = !DILocalVariable(name: "x", arg: 2, scope: !2274, file: !2, line: 1146, type: !110)
!2278 = !DILocalVariable(name: "a", arg: 3, scope: !2274, file: !2, line: 1146, type: !1661)
!2279 = !DILocalVariable(name: "result", scope: !2274, file: !2, line: 1148, type: !112)
!2280 = !DILocalVariable(name: "status", scope: !2274, file: !2, line: 1148, type: !43)
!2281 = !DILocation(line: 0, scope: !2274)
!2282 = !DILocation(line: 0, scope: !2194, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 1148, column: 3, scope: !2274)
!2284 = !DILocation(line: 1103, column: 8, scope: !2204, inlinedAt: !2283)
!2285 = !DILocation(line: 1103, column: 6, scope: !2194, inlinedAt: !2283)
!2286 = !DILocation(line: 1106, column: 11, scope: !2204, inlinedAt: !2283)
!2287 = !DILocation(line: 0, scope: !2201, inlinedAt: !2283)
!2288 = !DILocation(line: 1129, column: 5, scope: !2222, inlinedAt: !2283)
!2289 = !DILocation(line: 1131, column: 13, scope: !2248, inlinedAt: !2283)
!2290 = !DILocation(line: 1131, column: 22, scope: !2248, inlinedAt: !2283)
!2291 = !DILocation(line: 1131, column: 17, scope: !2248, inlinedAt: !2283)
!2292 = !DILocation(line: 1131, column: 29, scope: !2248, inlinedAt: !2283)
!2293 = !DILocation(line: 1131, column: 28, scope: !2248, inlinedAt: !2283)
!2294 = !DILocation(line: 1131, column: 34, scope: !2248, inlinedAt: !2283)
!2295 = !DILocation(line: 1131, column: 25, scope: !2248, inlinedAt: !2283)
!2296 = !DILocation(line: 1129, column: 23, scope: !2249, inlinedAt: !2283)
!2297 = !DILocation(line: 1107, column: 19, scope: !2224, inlinedAt: !2283)
!2298 = !DILocation(line: 1109, column: 5, scope: !2224, inlinedAt: !2283)
!2299 = !DILocation(line: 1112, column: 19, scope: !2230, inlinedAt: !2283)
!2300 = !DILocation(line: 1112, column: 24, scope: !2230, inlinedAt: !2283)
!2301 = !DILocation(line: 1112, column: 28, scope: !2230, inlinedAt: !2283)
!2302 = !DILocation(line: 1112, column: 31, scope: !2230, inlinedAt: !2283)
!2303 = !DILocation(line: 1112, column: 23, scope: !2230, inlinedAt: !2283)
!2304 = !DILocation(line: 1114, column: 5, scope: !2230, inlinedAt: !2283)
!2305 = !DILocation(line: 1129, column: 16, scope: !2249, inlinedAt: !2283)
!2306 = distinct !{!2306, !2288, !2307, !165}
!2307 = !DILocation(line: 1137, column: 5, scope: !2222, inlinedAt: !2283)
!2308 = !DILocation(line: 1104, column: 5, scope: !2218, inlinedAt: !2283)
!2309 = !DILocation(line: 1148, column: 3, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !2, line: 1148, column: 3)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !2, line: 1148, column: 3)
!2312 = distinct !DILexicalBlock(scope: !2274, file: !2, line: 1148, column: 3)
!2313 = !DILocation(line: 1149, column: 1, scope: !2274)
!2314 = distinct !DISubprogram(name: "gsl_sf_hermite_func_array", scope: !2, file: !2, line: 1155, type: !1256, scopeLine: 1156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2315)
!2315 = !{!2316, !2317, !2318, !2319, !2324, !2325, !2326, !2327}
!2316 = !DILocalVariable(name: "nmax", arg: 1, scope: !2314, file: !2, line: 1155, type: !109)
!2317 = !DILocalVariable(name: "x", arg: 2, scope: !2314, file: !2, line: 1155, type: !110)
!2318 = !DILocalVariable(name: "result_array", arg: 3, scope: !2314, file: !2, line: 1155, type: !1258)
!2319 = !DILocalVariable(name: "p_n0", scope: !2320, file: !2, line: 1172, type: !95)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !2, line: 1169, column: 8)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !2, line: 1164, column: 11)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 1160, column: 11)
!2323 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 1157, column: 6)
!2324 = !DILocalVariable(name: "p_n1", scope: !2320, file: !2, line: 1173, type: !95)
!2325 = !DILocalVariable(name: "p_n", scope: !2320, file: !2, line: 1174, type: !95)
!2326 = !DILocalVariable(name: "j", scope: !2320, file: !2, line: 1175, type: !43)
!2327 = !DILocalVariable(name: "c", scope: !2320, file: !2, line: 1175, type: !43)
!2328 = !DILocation(line: 0, scope: !2314)
!2329 = !DILocation(line: 1157, column: 11, scope: !2323)
!2330 = !DILocation(line: 1157, column: 6, scope: !2314)
!2331 = !DILocation(line: 1158, column: 5, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !2, line: 1158, column: 5)
!2333 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 1157, column: 16)
!2334 = !DILocation(line: 0, scope: !2322)
!2335 = !DILocation(line: 1160, column: 11, scope: !2323)
!2336 = !DILocation(line: 1161, column: 21, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2322, file: !2, line: 1160, column: 22)
!2338 = !DILocation(line: 1162, column: 5, scope: !2337)
!2339 = !DILocation(line: 1165, column: 21, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2321, file: !2, line: 1164, column: 22)
!2341 = !DILocation(line: 1166, column: 38, scope: !2340)
!2342 = !DILocation(line: 1166, column: 46, scope: !2340)
!2343 = !DILocation(line: 1166, column: 5, scope: !2340)
!2344 = !DILocation(line: 1166, column: 21, scope: !2340)
!2345 = !DILocation(line: 1167, column: 5, scope: !2340)
!2346 = !DILocation(line: 0, scope: !2320)
!2347 = !DILocation(line: 1173, column: 23, scope: !2320)
!2348 = !DILocation(line: 1173, column: 31, scope: !2320)
!2349 = !DILocation(line: 1177, column: 21, scope: !2320)
!2350 = !DILocation(line: 1178, column: 5, scope: !2320)
!2351 = !DILocation(line: 1178, column: 21, scope: !2320)
!2352 = !DILocation(line: 1180, column: 13, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !2, line: 1180, column: 3)
!2354 = distinct !DILexicalBlock(scope: !2320, file: !2, line: 1180, column: 3)
!2355 = !DILocation(line: 1180, column: 3, scope: !2354)
!2356 = !DILocation(line: 1182, column: 21, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2353, file: !2, line: 1181, column: 5)
!2358 = !DILocation(line: 1182, column: 32, scope: !2357)
!2359 = !DILocation(line: 1182, column: 27, scope: !2357)
!2360 = !DILocation(line: 1182, column: 34, scope: !2357)
!2361 = !DILocation(line: 1182, column: 26, scope: !2357)
!2362 = !DILocation(line: 1182, column: 47, scope: !2357)
!2363 = !DILocation(line: 1182, column: 41, scope: !2357)
!2364 = !DILocation(line: 1182, column: 40, scope: !2357)
!2365 = !DILocation(line: 1186, column: 15, scope: !2357)
!2366 = !DILocation(line: 1186, column: 46, scope: !2357)
!2367 = !DILocation(line: 1186, column: 71, scope: !2357)
!2368 = !DILocation(line: 1186, column: 76, scope: !2357)
!2369 = !DILocation(line: 1186, column: 107, scope: !2357)
!2370 = !DILocation(line: 1186, column: 7, scope: !2357)
!2371 = !DILocation(line: 1187, column: 7, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2357, file: !2, line: 1186, column: 128)
!2373 = !DILocation(line: 1188, column: 7, scope: !2372)
!2374 = !DILocation(line: 1190, column: 3, scope: !2372)
!2375 = distinct !{!2375, !2370, !2376, !165}
!2376 = !DILocation(line: 1191, column: 7, scope: !2357)
!2377 = !DILocation(line: 1193, column: 7, scope: !2357)
!2378 = !DILocation(line: 0, scope: !2357)
!2379 = !DILocation(line: 1193, column: 19, scope: !2357)
!2380 = !DILocation(line: 1193, column: 30, scope: !2357)
!2381 = !DILocation(line: 1193, column: 51, scope: !2357)
!2382 = !DILocation(line: 1193, scope: !2357)
!2383 = !DILocation(line: 1193, column: 87, scope: !2357)
!2384 = !DILocation(line: 1193, column: 108, scope: !2357)
!2385 = !DILocation(line: 1193, column: 133, scope: !2357)
!2386 = !DILocation(line: 1193, column: 164, scope: !2357)
!2387 = !DILocation(line: 1194, column: 7, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2357, file: !2, line: 1193, column: 189)
!2389 = !DILocation(line: 1195, column: 7, scope: !2388)
!2390 = !DILocation(line: 1197, column: 3, scope: !2388)
!2391 = distinct !{!2391, !2377, !2392, !165}
!2392 = !DILocation(line: 1198, column: 7, scope: !2357)
!2393 = !DILocation(line: 1200, column: 27, scope: !2357)
!2394 = !DILocation(line: 1200, column: 34, scope: !2357)
!2395 = !DILocation(line: 1200, column: 21, scope: !2357)
!2396 = !DILocation(line: 1200, column: 7, scope: !2357)
!2397 = !DILocation(line: 1200, column: 25, scope: !2357)
!2398 = distinct !{!2398, !2355, !2399, !165}
!2399 = !DILocation(line: 1201, column: 5, scope: !2354)
!2400 = !DILocation(line: 0, scope: !2323)
!2401 = !DILocation(line: 1205, column: 1, scope: !2314)
!2402 = distinct !DISubprogram(name: "gsl_sf_hermite_func_series_e", scope: !2, file: !2, line: 1211, type: !1659, scopeLine: 1212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2403)
!2403 = !{!2404, !2405, !2406, !2407, !2408, !2413, !2414, !2415, !2416, !2417, !2418}
!2404 = !DILocalVariable(name: "n", arg: 1, scope: !2402, file: !2, line: 1211, type: !109)
!2405 = !DILocalVariable(name: "x", arg: 2, scope: !2402, file: !2, line: 1211, type: !110)
!2406 = !DILocalVariable(name: "a", arg: 3, scope: !2402, file: !2, line: 1211, type: !1661)
!2407 = !DILocalVariable(name: "result", arg: 4, scope: !2402, file: !2, line: 1211, type: !111)
!2408 = !DILocalVariable(name: "b0", scope: !2409, file: !2, line: 1229, type: !95)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !2, line: 1226, column: 8)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !2, line: 1221, column: 11)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !2, line: 1216, column: 11)
!2412 = distinct !DILexicalBlock(scope: !2402, file: !2, line: 1213, column: 6)
!2413 = !DILocalVariable(name: "b1", scope: !2409, file: !2, line: 1230, type: !95)
!2414 = !DILocalVariable(name: "btmp", scope: !2409, file: !2, line: 1231, type: !95)
!2415 = !DILocalVariable(name: "e0", scope: !2409, file: !2, line: 1233, type: !95)
!2416 = !DILocalVariable(name: "e1", scope: !2409, file: !2, line: 1234, type: !95)
!2417 = !DILocalVariable(name: "etmp", scope: !2409, file: !2, line: 1235, type: !95)
!2418 = !DILocalVariable(name: "j", scope: !2409, file: !2, line: 1237, type: !43)
!2419 = !DILocation(line: 0, scope: !2402)
!2420 = !DILocation(line: 1213, column: 8, scope: !2412)
!2421 = !DILocation(line: 1213, column: 6, scope: !2402)
!2422 = !DILocation(line: 1214, column: 5, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !2, line: 1214, column: 5)
!2424 = distinct !DILexicalBlock(scope: !2412, file: !2, line: 1213, column: 13)
!2425 = !DILocation(line: 1214, column: 5, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2423, file: !2, line: 1214, column: 5)
!2427 = !DILocation(line: 1216, column: 11, scope: !2412)
!2428 = !DILocation(line: 0, scope: !2409)
!2429 = !DILocation(line: 1239, column: 5, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2409, file: !2, line: 1239, column: 5)
!2431 = !DILocation(line: 1217, column: 19, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2411, file: !2, line: 1216, column: 19)
!2433 = !DILocation(line: 1217, column: 32, scope: !2432)
!2434 = !DILocation(line: 1217, column: 34, scope: !2432)
!2435 = !DILocation(line: 1217, column: 24, scope: !2432)
!2436 = !DILocation(line: 1217, column: 23, scope: !2432)
!2437 = !DILocation(line: 1217, column: 37, scope: !2432)
!2438 = !DILocation(line: 1217, column: 17, scope: !2432)
!2439 = !DILocation(line: 1218, column: 35, scope: !2432)
!2440 = !DILocation(line: 1218, column: 34, scope: !2432)
!2441 = !DILocation(line: 1218, column: 13, scope: !2432)
!2442 = !DILocation(line: 1218, column: 17, scope: !2432)
!2443 = !DILocation(line: 1219, column: 5, scope: !2432)
!2444 = !DILocation(line: 1222, column: 20, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2410, file: !2, line: 1221, column: 19)
!2446 = !DILocation(line: 1222, column: 25, scope: !2445)
!2447 = !DILocation(line: 1222, column: 29, scope: !2445)
!2448 = !DILocation(line: 1222, column: 37, scope: !2445)
!2449 = !DILocation(line: 1222, column: 24, scope: !2445)
!2450 = !DILocation(line: 1222, column: 49, scope: !2445)
!2451 = !DILocation(line: 1222, column: 51, scope: !2445)
!2452 = !DILocation(line: 1222, column: 41, scope: !2445)
!2453 = !DILocation(line: 1222, column: 40, scope: !2445)
!2454 = !DILocation(line: 1222, column: 54, scope: !2445)
!2455 = !DILocation(line: 1222, column: 17, scope: !2445)
!2456 = !DILocation(line: 1223, column: 44, scope: !2445)
!2457 = !DILocation(line: 1223, column: 39, scope: !2445)
!2458 = !DILocation(line: 1223, column: 55, scope: !2445)
!2459 = !DILocation(line: 1223, column: 59, scope: !2445)
!2460 = !DILocation(line: 1223, column: 67, scope: !2445)
!2461 = !DILocation(line: 1223, column: 50, scope: !2445)
!2462 = !DILocation(line: 1223, column: 49, scope: !2445)
!2463 = !DILocation(line: 1223, column: 37, scope: !2445)
!2464 = !DILocation(line: 1223, column: 72, scope: !2445)
!2465 = !DILocation(line: 1223, column: 71, scope: !2445)
!2466 = !DILocation(line: 1223, column: 85, scope: !2445)
!2467 = !DILocation(line: 1223, column: 13, scope: !2445)
!2468 = !DILocation(line: 1223, column: 17, scope: !2445)
!2469 = !DILocation(line: 1224, column: 5, scope: !2445)
!2470 = !DILocation(line: 1241, column: 13, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !2, line: 1239, column: 26)
!2472 = distinct !DILexicalBlock(scope: !2430, file: !2, line: 1239, column: 5)
!2473 = !DILocation(line: 1241, column: 26, scope: !2471)
!2474 = !DILocation(line: 1241, column: 25, scope: !2471)
!2475 = !DILocation(line: 1241, column: 18, scope: !2471)
!2476 = !DILocation(line: 1241, column: 32, scope: !2471)
!2477 = !DILocation(line: 1241, column: 34, scope: !2471)
!2478 = !DILocation(line: 1241, column: 17, scope: !2471)
!2479 = !DILocation(line: 1241, column: 44, scope: !2471)
!2480 = !DILocation(line: 1241, column: 45, scope: !2471)
!2481 = !DILocation(line: 1241, column: 52, scope: !2471)
!2482 = !DILocation(line: 1241, column: 49, scope: !2471)
!2483 = !DILocation(line: 1241, column: 38, scope: !2471)
!2484 = !DILocation(line: 1241, column: 57, scope: !2471)
!2485 = !DILocation(line: 1241, column: 37, scope: !2471)
!2486 = !DILocation(line: 1245, column: 35, scope: !2471)
!2487 = !DILocation(line: 1245, column: 30, scope: !2471)
!2488 = !DILocation(line: 1245, column: 29, scope: !2471)
!2489 = !DILocation(line: 1245, column: 41, scope: !2471)
!2490 = !DILocation(line: 1245, column: 55, scope: !2471)
!2491 = !DILocation(line: 1245, column: 63, scope: !2471)
!2492 = !DILocation(line: 1245, column: 40, scope: !2471)
!2493 = !DILocation(line: 1245, column: 67, scope: !2471)
!2494 = !DILocation(line: 1245, column: 86, scope: !2471)
!2495 = !DILocation(line: 1245, column: 66, scope: !2471)
!2496 = !DILocation(line: 1239, column: 23, scope: !2472)
!2497 = !DILocation(line: 1239, column: 16, scope: !2472)
!2498 = distinct !{!2498, !2429, !2499, !165}
!2499 = !DILocation(line: 1247, column: 5, scope: !2430)
!2500 = !DILocation(line: 1249, column: 30, scope: !2409)
!2501 = !DILocation(line: 1249, column: 32, scope: !2409)
!2502 = !DILocation(line: 1249, column: 22, scope: !2409)
!2503 = !DILocation(line: 1249, column: 21, scope: !2409)
!2504 = !DILocation(line: 1249, column: 35, scope: !2409)
!2505 = !DILocation(line: 1249, column: 17, scope: !2409)
!2506 = !DILocation(line: 1250, column: 24, scope: !2409)
!2507 = !DILocation(line: 1250, column: 41, scope: !2409)
!2508 = !DILocation(line: 1250, column: 22, scope: !2409)
!2509 = !DILocation(line: 1250, column: 13, scope: !2409)
!2510 = !DILocation(line: 1250, column: 17, scope: !2409)
!2511 = !DILocation(line: 0, scope: !2412)
!2512 = !DILocation(line: 1253, column: 1, scope: !2402)
!2513 = distinct !DISubprogram(name: "gsl_sf_hermite_func_series", scope: !2, file: !2, line: 1256, type: !1739, scopeLine: 1257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2514)
!2514 = !{!2515, !2516, !2517, !2518, !2519}
!2515 = !DILocalVariable(name: "n", arg: 1, scope: !2513, file: !2, line: 1256, type: !109)
!2516 = !DILocalVariable(name: "x", arg: 2, scope: !2513, file: !2, line: 1256, type: !110)
!2517 = !DILocalVariable(name: "a", arg: 3, scope: !2513, file: !2, line: 1256, type: !1661)
!2518 = !DILocalVariable(name: "result", scope: !2513, file: !2, line: 1258, type: !112)
!2519 = !DILocalVariable(name: "status", scope: !2513, file: !2, line: 1258, type: !43)
!2520 = distinct !DIAssignID()
!2521 = !DILocation(line: 0, scope: !2513)
!2522 = !DILocation(line: 1258, column: 3, scope: !2513)
!2523 = !DILocation(line: 1258, column: 3, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2513, file: !2, line: 1258, column: 3)
!2525 = !DILocation(line: 1258, column: 3, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !2, line: 1258, column: 3)
!2527 = distinct !DILexicalBlock(scope: !2524, file: !2, line: 1258, column: 3)
!2528 = !DILocation(line: 1259, column: 1, scope: !2513)
!2529 = distinct !DISubprogram(name: "gsl_sf_hermite_func_der_e", scope: !2, file: !2, line: 1265, type: !449, scopeLine: 1266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2530)
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551}
!2531 = !DILocalVariable(name: "m", arg: 1, scope: !2529, file: !2, line: 1265, type: !109)
!2532 = !DILocalVariable(name: "n", arg: 2, scope: !2529, file: !2, line: 1265, type: !109)
!2533 = !DILocalVariable(name: "x", arg: 3, scope: !2529, file: !2, line: 1265, type: !110)
!2534 = !DILocalVariable(name: "result", arg: 4, scope: !2529, file: !2, line: 1265, type: !111)
!2535 = !DILocalVariable(name: "j", scope: !2536, file: !2, line: 1275, type: !43)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !2, line: 1274, column: 7)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !2, line: 1271, column: 11)
!2538 = distinct !DILexicalBlock(scope: !2529, file: !2, line: 1268, column: 6)
!2539 = !DILocalVariable(name: "c", scope: !2536, file: !2, line: 1275, type: !43)
!2540 = !DILocalVariable(name: "r", scope: !2536, file: !2, line: 1276, type: !95)
!2541 = !DILocalVariable(name: "er", scope: !2536, file: !2, line: 1276, type: !95)
!2542 = !DILocalVariable(name: "b", scope: !2536, file: !2, line: 1276, type: !95)
!2543 = !DILocalVariable(name: "h0", scope: !2536, file: !2, line: 1277, type: !95)
!2544 = !DILocalVariable(name: "h1", scope: !2536, file: !2, line: 1278, type: !95)
!2545 = !DILocalVariable(name: "eh0", scope: !2536, file: !2, line: 1279, type: !95)
!2546 = !DILocalVariable(name: "eh1", scope: !2536, file: !2, line: 1280, type: !95)
!2547 = !DILocalVariable(name: "p0", scope: !2536, file: !2, line: 1281, type: !95)
!2548 = !DILocalVariable(name: "p1", scope: !2536, file: !2, line: 1282, type: !95)
!2549 = !DILocalVariable(name: "ep0", scope: !2536, file: !2, line: 1283, type: !95)
!2550 = !DILocalVariable(name: "ep1", scope: !2536, file: !2, line: 1284, type: !95)
!2551 = !DILocalVariable(name: "f", scope: !2536, file: !2, line: 1285, type: !95)
!2552 = !DILocation(line: 0, scope: !2529)
!2553 = !DILocation(line: 1268, column: 12, scope: !2538)
!2554 = !DILocation(line: 1269, column: 5, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !2, line: 1269, column: 5)
!2556 = distinct !DILexicalBlock(scope: !2538, file: !2, line: 1268, column: 22)
!2557 = !DILocation(line: 1269, column: 5, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2555, file: !2, line: 1269, column: 5)
!2559 = !DILocation(line: 1271, column: 13, scope: !2537)
!2560 = !DILocation(line: 1271, column: 11, scope: !2538)
!2561 = !DILocation(line: 1272, column: 12, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2537, file: !2, line: 1271, column: 18)
!2563 = !DILocation(line: 1272, column: 5, scope: !2562)
!2564 = !DILocation(line: 0, scope: !2536)
!2565 = !DILocation(line: 1282, column: 24, scope: !2536)
!2566 = !DILocation(line: 1286, column: 27, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2536, file: !2, line: 1286, column: 5)
!2568 = !DILocation(line: 0, scope: !1555, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 1286, column: 12, scope: !2567)
!2570 = !DILocation(line: 59, column: 10, scope: !1555, inlinedAt: !2569)
!2571 = !DILocation(line: 1286, column: 34, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2567, file: !2, line: 1286, column: 5)
!2573 = !DILocation(line: 1286, column: 5, scope: !2567)
!2574 = !DILocation(line: 1286, scope: !2567)
!2575 = !DILocation(line: 1288, column: 15, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2572, file: !2, line: 1287, column: 7)
!2577 = !DILocation(line: 1288, column: 14, scope: !2576)
!2578 = !DILocation(line: 1288, column: 7, scope: !2576)
!2579 = !DILocation(line: 1288, column: 4, scope: !2576)
!2580 = distinct !{!2580, !167}
!2581 = distinct !{!2581, !2573, !2582, !165}
!2582 = !DILocation(line: 1289, column: 7, scope: !2567)
!2583 = !DILocation(line: 1290, column: 10, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2536, file: !2, line: 1290, column: 9)
!2585 = !DILocation(line: 1290, column: 9, scope: !2536)
!2586 = !DILocation(line: 1292, column: 7, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2584, file: !2, line: 1291, column: 7)
!2588 = !DILocation(line: 1293, column: 12, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 1293, column: 2)
!2590 = distinct !DILexicalBlock(scope: !2587, file: !2, line: 1293, column: 2)
!2591 = !DILocation(line: 1293, column: 2, scope: !2590)
!2592 = !DILocation(line: 1295, column: 13, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2589, file: !2, line: 1294, column: 4)
!2594 = !DILocation(line: 1295, column: 11, scope: !2593)
!2595 = !DILocation(line: 1295, column: 19, scope: !2593)
!2596 = !DILocation(line: 1295, column: 16, scope: !2593)
!2597 = !DILocation(line: 1295, column: 8, scope: !2593)
!2598 = !DILocation(line: 1293, column: 33, scope: !2589)
!2599 = !DILocation(line: 1295, column: 18, scope: !2593)
!2600 = distinct !{!2600, !2591, !2601, !165}
!2601 = !DILocation(line: 1296, column: 4, scope: !2590)
!2602 = !DILocation(line: 1299, column: 15, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !2, line: 1299, column: 5)
!2604 = distinct !DILexicalBlock(scope: !2536, file: !2, line: 1299, column: 5)
!2605 = !DILocation(line: 1299, column: 5, scope: !2604)
!2606 = !DILocation(line: 1301, column: 7, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2603, file: !2, line: 1300, column: 7)
!2608 = !DILocation(line: 1301, column: 11, scope: !2607)
!2609 = !DILocation(line: 1301, column: 12, scope: !2607)
!2610 = !DILocation(line: 1301, column: 10, scope: !2607)
!2611 = !DILocation(line: 1305, column: 15, scope: !2607)
!2612 = !DILocation(line: 1305, column: 21, scope: !2607)
!2613 = !DILocation(line: 1305, column: 19, scope: !2607)
!2614 = !DILocation(line: 1309, column: 10, scope: !2607)
!2615 = !DILocation(line: 1309, column: 37, scope: !2607)
!2616 = !DILocation(line: 1309, column: 62, scope: !2607)
!2617 = !DILocation(line: 1309, column: 67, scope: !2607)
!2618 = !DILocation(line: 1309, column: 94, scope: !2607)
!2619 = !DILocation(line: 1309, column: 2, scope: !2607)
!2620 = !DILocation(line: 1310, column: 7, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2607, file: !2, line: 1309, column: 115)
!2622 = !DILocation(line: 1311, column: 7, scope: !2621)
!2623 = !DILocation(line: 1312, column: 8, scope: !2621)
!2624 = !DILocation(line: 1313, column: 8, scope: !2621)
!2625 = !DILocation(line: 1314, column: 5, scope: !2621)
!2626 = distinct !{!2626, !2619, !2627, !165}
!2627 = !DILocation(line: 1315, column: 2, scope: !2607)
!2628 = !DILocation(line: 1317, column: 2, scope: !2607)
!2629 = !DILocation(line: 0, scope: !2607)
!2630 = !DILocation(line: 1317, column: 13, scope: !2607)
!2631 = !DILocation(line: 1317, column: 22, scope: !2607)
!2632 = !DILocation(line: 1317, column: 42, scope: !2607)
!2633 = !DILocation(line: 1317, scope: !2607)
!2634 = !DILocation(line: 1317, column: 72, scope: !2607)
!2635 = !DILocation(line: 1317, column: 92, scope: !2607)
!2636 = !DILocation(line: 1317, column: 114, scope: !2607)
!2637 = !DILocation(line: 1317, column: 141, scope: !2607)
!2638 = !DILocation(line: 1318, column: 7, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2607, file: !2, line: 1317, column: 166)
!2640 = !DILocation(line: 1319, column: 7, scope: !2639)
!2641 = !DILocation(line: 1320, column: 8, scope: !2639)
!2642 = !DILocation(line: 1321, column: 8, scope: !2639)
!2643 = !DILocation(line: 1322, column: 5, scope: !2639)
!2644 = distinct !{!2644, !2628, !2645, !165}
!2645 = !DILocation(line: 1323, column: 2, scope: !2607)
!2646 = !DILocation(line: 1299, column: 22, scope: !2603)
!2647 = distinct !{!2647, !2605, !2648, !165}
!2648 = !DILocation(line: 1325, column: 7, scope: !2604)
!2649 = !DILocation(line: 1298, column: 7, scope: !2536)
!2650 = !DILocation(line: 1326, column: 11, scope: !2536)
!2651 = !DILocation(line: 1326, column: 8, scope: !2536)
!2652 = !DILocation(line: 1327, column: 11, scope: !2536)
!2653 = !DILocation(line: 1327, column: 8, scope: !2536)
!2654 = !DILocation(line: 1328, column: 12, scope: !2536)
!2655 = !DILocation(line: 1328, column: 9, scope: !2536)
!2656 = !DILocation(line: 1329, column: 12, scope: !2536)
!2657 = !DILocation(line: 1329, column: 9, scope: !2536)
!2658 = !DILocation(line: 1333, column: 15, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !2, line: 1333, column: 5)
!2660 = distinct !DILexicalBlock(scope: !2536, file: !2, line: 1333, column: 5)
!2661 = !DILocation(line: 1333, column: 5, scope: !2660)
!2662 = !DILocation(line: 1335, column: 16, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2659, file: !2, line: 1334, column: 7)
!2664 = !DILocation(line: 1335, column: 25, scope: !2663)
!2665 = !DILocation(line: 1335, column: 20, scope: !2663)
!2666 = !DILocation(line: 1335, column: 27, scope: !2663)
!2667 = !DILocation(line: 1335, column: 19, scope: !2663)
!2668 = !DILocation(line: 1335, column: 38, scope: !2663)
!2669 = !DILocation(line: 1335, column: 32, scope: !2663)
!2670 = !DILocation(line: 1335, column: 31, scope: !2663)
!2671 = !DILocation(line: 1339, column: 23, scope: !2663)
!2672 = !DILocation(line: 1339, column: 28, scope: !2663)
!2673 = !DILocation(line: 1339, column: 35, scope: !2663)
!2674 = !DILocation(line: 1339, column: 27, scope: !2663)
!2675 = !DILocation(line: 1339, column: 41, scope: !2663)
!2676 = !DILocation(line: 1339, column: 40, scope: !2663)
!2677 = !DILocation(line: 1343, column: 10, scope: !2663)
!2678 = !DILocation(line: 1343, column: 37, scope: !2663)
!2679 = !DILocation(line: 1343, column: 62, scope: !2663)
!2680 = !DILocation(line: 1343, column: 67, scope: !2663)
!2681 = !DILocation(line: 1343, column: 94, scope: !2663)
!2682 = !DILocation(line: 1343, column: 2, scope: !2663)
!2683 = !DILocation(line: 1344, column: 7, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2663, file: !2, line: 1343, column: 115)
!2685 = !DILocation(line: 1345, column: 7, scope: !2684)
!2686 = !DILocation(line: 1346, column: 8, scope: !2684)
!2687 = !DILocation(line: 1347, column: 8, scope: !2684)
!2688 = !DILocation(line: 1348, column: 5, scope: !2684)
!2689 = distinct !{!2689, !2682, !2690, !165}
!2690 = !DILocation(line: 1349, column: 2, scope: !2663)
!2691 = !DILocation(line: 1351, column: 2, scope: !2663)
!2692 = !DILocation(line: 0, scope: !2663)
!2693 = !DILocation(line: 1351, column: 13, scope: !2663)
!2694 = !DILocation(line: 1351, column: 22, scope: !2663)
!2695 = !DILocation(line: 1351, column: 42, scope: !2663)
!2696 = !DILocation(line: 1351, scope: !2663)
!2697 = !DILocation(line: 1351, column: 72, scope: !2663)
!2698 = !DILocation(line: 1351, column: 92, scope: !2663)
!2699 = !DILocation(line: 1351, column: 114, scope: !2663)
!2700 = !DILocation(line: 1351, column: 141, scope: !2663)
!2701 = !DILocation(line: 1352, column: 11, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2663, file: !2, line: 1351, column: 166)
!2703 = !DILocation(line: 1353, column: 11, scope: !2702)
!2704 = !DILocation(line: 1354, column: 13, scope: !2702)
!2705 = !DILocation(line: 1355, column: 13, scope: !2702)
!2706 = !DILocation(line: 1356, column: 5, scope: !2702)
!2707 = distinct !{!2707, !2691, !2708, !165}
!2708 = !DILocation(line: 1357, column: 2, scope: !2663)
!2709 = !DILocation(line: 1333, column: 22, scope: !2659)
!2710 = distinct !{!2710, !2661, !2711, !165}
!2711 = !DILocation(line: 1359, column: 7, scope: !2660)
!2712 = !DILocation(line: 1332, column: 7, scope: !2536)
!2713 = !DILocation(line: 1360, column: 11, scope: !2536)
!2714 = !DILocation(line: 1361, column: 11, scope: !2536)
!2715 = !DILocation(line: 1362, column: 12, scope: !2536)
!2716 = !DILocation(line: 1363, column: 12, scope: !2536)
!2717 = !DILocation(line: 0, scope: !1555, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 1369, column: 12, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2536, file: !2, line: 1369, column: 5)
!2720 = !DILocation(line: 59, column: 10, scope: !1555, inlinedAt: !2718)
!2721 = !DILocation(line: 1369, column: 32, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2719, file: !2, line: 1369, column: 5)
!2723 = !DILocation(line: 1369, column: 5, scope: !2719)
!2724 = !DILocation(line: 1363, column: 9, scope: !2536)
!2725 = !DILocation(line: 1362, column: 9, scope: !2536)
!2726 = !DILocation(line: 1361, column: 8, scope: !2536)
!2727 = !DILocation(line: 1360, column: 8, scope: !2536)
!2728 = !DILocation(line: 1371, column: 8, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2722, file: !2, line: 1370, column: 7)
!2730 = !DILocation(line: 1371, column: 11, scope: !2729)
!2731 = !DILocation(line: 1371, column: 4, scope: !2729)
!2732 = !DILocation(line: 1372, column: 18, scope: !2729)
!2733 = !DILocation(line: 1372, column: 12, scope: !2729)
!2734 = !DILocation(line: 1372, column: 11, scope: !2729)
!2735 = !DILocation(line: 1372, column: 27, scope: !2729)
!2736 = !DILocation(line: 1372, column: 26, scope: !2729)
!2737 = !DILocation(line: 1372, column: 22, scope: !2729)
!2738 = !DILocation(line: 1372, column: 54, scope: !2729)
!2739 = !DILocation(line: 1372, column: 53, scope: !2729)
!2740 = !DILocation(line: 1372, column: 37, scope: !2729)
!2741 = !DILocation(line: 1372, column: 5, scope: !2729)
!2742 = !DILocation(line: 1374, column: 7, scope: !2729)
!2743 = !DILocation(line: 1374, column: 12, scope: !2729)
!2744 = !DILocation(line: 1374, column: 13, scope: !2729)
!2745 = !DILocation(line: 1374, column: 17, scope: !2729)
!2746 = !DILocation(line: 1374, column: 10, scope: !2729)
!2747 = !DILocation(line: 1378, column: 19, scope: !2729)
!2748 = !DILocation(line: 1378, column: 30, scope: !2729)
!2749 = !DILocation(line: 1378, column: 23, scope: !2729)
!2750 = !DILocation(line: 1382, column: 16, scope: !2729)
!2751 = !DILocation(line: 1382, column: 28, scope: !2729)
!2752 = !DILocation(line: 1382, column: 25, scope: !2729)
!2753 = !DILocation(line: 1382, column: 30, scope: !2729)
!2754 = !DILocation(line: 1382, column: 20, scope: !2729)
!2755 = !DILocation(line: 1382, column: 34, scope: !2729)
!2756 = !DILocation(line: 1382, column: 19, scope: !2729)
!2757 = !DILocation(line: 1382, column: 49, scope: !2729)
!2758 = !DILocation(line: 1382, column: 39, scope: !2729)
!2759 = !DILocation(line: 1382, column: 38, scope: !2729)
!2760 = !DILocation(line: 1386, column: 27, scope: !2729)
!2761 = !DILocation(line: 1386, column: 32, scope: !2729)
!2762 = !DILocation(line: 1386, column: 46, scope: !2729)
!2763 = !DILocation(line: 1386, column: 31, scope: !2729)
!2764 = !DILocation(line: 1386, column: 10, scope: !2729)
!2765 = !DILocation(line: 1386, column: 52, scope: !2729)
!2766 = !DILocation(line: 1386, column: 51, scope: !2729)
!2767 = !DILocation(line: 1390, column: 10, scope: !2729)
!2768 = !DILocation(line: 1390, column: 7, scope: !2729)
!2769 = !DILocation(line: 1390, column: 13, scope: !2729)
!2770 = !DILocation(line: 1390, column: 21, scope: !2729)
!2771 = !DILocation(line: 1390, column: 20, scope: !2729)
!2772 = !DILocation(line: 1390, column: 35, scope: !2729)
!2773 = !DILocation(line: 1390, column: 4, scope: !2729)
!2774 = !DILocation(line: 0, scope: !2729)
!2775 = !DILocation(line: 1392, column: 11, scope: !2729)
!2776 = !DILocation(line: 1392, column: 20, scope: !2729)
!2777 = !DILocation(line: 1392, column: 44, scope: !2729)
!2778 = !DILocation(line: 1392, column: 48, scope: !2729)
!2779 = !DILocation(line: 1392, column: 57, scope: !2729)
!2780 = !DILocation(line: 1392, column: 81, scope: !2729)
!2781 = !DILocation(line: 1392, column: 85, scope: !2729)
!2782 = !DILocation(line: 1392, column: 94, scope: !2729)
!2783 = !DILocation(line: 1392, column: 118, scope: !2729)
!2784 = !DILocation(line: 1392, column: 122, scope: !2729)
!2785 = !DILocation(line: 1392, column: 131, scope: !2729)
!2786 = !DILocation(line: 1392, column: 155, scope: !2729)
!2787 = !DILocation(line: 1392, column: 159, scope: !2729)
!2788 = !DILocation(line: 1392, column: 167, scope: !2729)
!2789 = !DILocation(line: 1392, column: 193, scope: !2729)
!2790 = !DILocation(line: 1392, column: 208, scope: !2729)
!2791 = !DILocation(line: 1392, column: 228, scope: !2729)
!2792 = !DILocation(line: 1393, column: 7, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2729, file: !2, line: 1392, column: 361)
!2794 = !DILocation(line: 1394, column: 7, scope: !2793)
!2795 = !DILocation(line: 1395, column: 8, scope: !2793)
!2796 = !DILocation(line: 1397, column: 7, scope: !2793)
!2797 = !DILocation(line: 1398, column: 7, scope: !2793)
!2798 = !DILocation(line: 1399, column: 8, scope: !2793)
!2799 = !DILocation(line: 1400, column: 8, scope: !2793)
!2800 = !DILocation(line: 1401, column: 6, scope: !2793)
!2801 = !DILocation(line: 1402, column: 7, scope: !2793)
!2802 = !DILocation(line: 1403, column: 5, scope: !2793)
!2803 = distinct !{!2803, !2804, !2805, !165}
!2804 = !DILocation(line: 1392, column: 2, scope: !2729)
!2805 = !DILocation(line: 1404, column: 2, scope: !2729)
!2806 = !DILocation(line: 1406, column: 2, scope: !2729)
!2807 = !DILocation(line: 1406, column: 13, scope: !2729)
!2808 = !DILocation(line: 1406, column: 22, scope: !2729)
!2809 = !DILocation(line: 1406, column: 42, scope: !2729)
!2810 = !DILocation(line: 1406, column: 63, scope: !2729)
!2811 = !DILocation(line: 1406, column: 72, scope: !2729)
!2812 = !DILocation(line: 1406, column: 92, scope: !2729)
!2813 = !DILocation(line: 1406, column: 113, scope: !2729)
!2814 = !DILocation(line: 1406, column: 122, scope: !2729)
!2815 = !DILocation(line: 1406, column: 142, scope: !2729)
!2816 = !DILocation(line: 1406, column: 163, scope: !2729)
!2817 = !DILocation(line: 1406, column: 172, scope: !2729)
!2818 = !DILocation(line: 1406, column: 192, scope: !2729)
!2819 = !DILocation(line: 1406, column: 213, scope: !2729)
!2820 = !DILocation(line: 1406, column: 221, scope: !2729)
!2821 = !DILocation(line: 1406, column: 241, scope: !2729)
!2822 = !DILocation(line: 1406, column: 272, scope: !2729)
!2823 = !DILocation(line: 1406, column: 296, scope: !2729)
!2824 = !DILocation(line: 1406, column: 300, scope: !2729)
!2825 = !DILocation(line: 1406, column: 309, scope: !2729)
!2826 = !DILocation(line: 1406, column: 333, scope: !2729)
!2827 = !DILocation(line: 1407, column: 7, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2729, file: !2, line: 1406, column: 446)
!2829 = !DILocation(line: 1408, column: 7, scope: !2828)
!2830 = !DILocation(line: 1409, column: 8, scope: !2828)
!2831 = !DILocation(line: 1410, column: 8, scope: !2828)
!2832 = !DILocation(line: 1411, column: 7, scope: !2828)
!2833 = !DILocation(line: 1412, column: 7, scope: !2828)
!2834 = !DILocation(line: 1413, column: 8, scope: !2828)
!2835 = !DILocation(line: 1414, column: 8, scope: !2828)
!2836 = !DILocation(line: 1415, column: 6, scope: !2828)
!2837 = !DILocation(line: 1416, column: 7, scope: !2828)
!2838 = !DILocation(line: 1417, column: 5, scope: !2828)
!2839 = distinct !{!2839, !2806, !2840, !165}
!2840 = !DILocation(line: 1418, column: 2, scope: !2729)
!2841 = !DILocation(line: 1369, column: 37, scope: !2722)
!2842 = distinct !{!2842, !2723, !2843, !165}
!2843 = !DILocation(line: 1420, column: 7, scope: !2719)
!2844 = !DILocation(line: 1422, column: 10, scope: !2536)
!2845 = !DILocation(line: 1365, column: 7, scope: !2536)
!2846 = !DILocation(line: 1422, column: 7, scope: !2536)
!2847 = !DILocation(line: 1423, column: 11, scope: !2536)
!2848 = !DILocation(line: 1423, column: 8, scope: !2536)
!2849 = !DILocation(line: 1424, column: 29, scope: !2536)
!2850 = !DILocation(line: 1424, column: 31, scope: !2536)
!2851 = !DILocation(line: 1424, column: 21, scope: !2536)
!2852 = !DILocation(line: 1424, column: 20, scope: !2536)
!2853 = !DILocation(line: 1424, column: 34, scope: !2536)
!2854 = !DILocation(line: 1424, column: 17, scope: !2536)
!2855 = !DILocation(line: 1425, column: 27, scope: !2536)
!2856 = !DILocation(line: 1425, column: 40, scope: !2536)
!2857 = !DILocation(line: 1425, column: 22, scope: !2536)
!2858 = !DILocation(line: 1425, column: 21, scope: !2536)
!2859 = !DILocation(line: 1425, column: 88, scope: !2536)
!2860 = !DILocation(line: 1425, column: 75, scope: !2536)
!2861 = !DILocation(line: 1425, column: 74, scope: !2536)
!2862 = !DILocation(line: 1425, column: 57, scope: !2536)
!2863 = !DILocation(line: 1425, column: 13, scope: !2536)
!2864 = !DILocation(line: 1425, column: 17, scope: !2536)
!2865 = !DILocation(line: 0, scope: !2538)
!2866 = !DILocation(line: 1428, column: 1, scope: !2529)
!2867 = distinct !DISubprogram(name: "gsl_sf_hermite_func_der", scope: !2, file: !2, line: 1431, type: !504, scopeLine: 1432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2868)
!2868 = !{!2869, !2870, !2871, !2872, !2873}
!2869 = !DILocalVariable(name: "m", arg: 1, scope: !2867, file: !2, line: 1431, type: !109)
!2870 = !DILocalVariable(name: "n", arg: 2, scope: !2867, file: !2, line: 1431, type: !109)
!2871 = !DILocalVariable(name: "x", arg: 3, scope: !2867, file: !2, line: 1431, type: !110)
!2872 = !DILocalVariable(name: "result", scope: !2867, file: !2, line: 1433, type: !112)
!2873 = !DILocalVariable(name: "status", scope: !2867, file: !2, line: 1433, type: !43)
!2874 = distinct !DIAssignID()
!2875 = !DILocation(line: 0, scope: !2867)
!2876 = !DILocation(line: 1433, column: 3, scope: !2867)
!2877 = !DILocation(line: 1433, column: 3, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2867, file: !2, line: 1433, column: 3)
!2879 = !DILocation(line: 1433, column: 3, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !2, line: 1433, column: 3)
!2881 = distinct !DILexicalBlock(scope: !2878, file: !2, line: 1433, column: 3)
!2882 = !DILocation(line: 1434, column: 1, scope: !2867)
!2883 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_zero_e", scope: !2, file: !2, line: 1577, type: !2884, scopeLine: 1578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!43, !109, !109, !111}
!2886 = !{!2887, !2888, !2889, !2890, !2896, !2897, !2898}
!2887 = !DILocalVariable(name: "n", arg: 1, scope: !2883, file: !2, line: 1577, type: !109)
!2888 = !DILocalVariable(name: "s", arg: 2, scope: !2883, file: !2, line: 1577, type: !109)
!2889 = !DILocalVariable(name: "result", arg: 3, scope: !2883, file: !2, line: 1577, type: !111)
!2890 = !DILocalVariable(name: "d", scope: !2891, file: !2, line: 1603, type: !95)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !2, line: 1602, column: 8)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !2, line: 1597, column: 11)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !2, line: 1592, column: 11)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !2, line: 1582, column: 11)
!2895 = distinct !DILexicalBlock(scope: !2883, file: !2, line: 1579, column: 6)
!2896 = !DILocalVariable(name: "x", scope: !2891, file: !2, line: 1603, type: !95)
!2897 = !DILocalVariable(name: "x0", scope: !2891, file: !2, line: 1603, type: !95)
!2898 = !DILocalVariable(name: "j", scope: !2891, file: !2, line: 1604, type: !43)
!2899 = !DILocation(line: 0, scope: !2883)
!2900 = !DILocation(line: 1579, column: 8, scope: !2895)
!2901 = !DILocation(line: 1579, column: 13, scope: !2895)
!2902 = !DILocation(line: 1579, column: 27, scope: !2895)
!2903 = !DILocation(line: 1579, column: 6, scope: !2883)
!2904 = !DILocation(line: 1580, column: 5, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !2, line: 1580, column: 5)
!2906 = distinct !DILexicalBlock(scope: !2895, file: !2, line: 1579, column: 34)
!2907 = !DILocation(line: 1580, column: 5, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2905, file: !2, line: 1580, column: 5)
!2909 = !DILocation(line: 1582, column: 13, scope: !2894)
!2910 = !DILocation(line: 1582, column: 11, scope: !2895)
!2911 = !DILocation(line: 1583, column: 9, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !2, line: 1583, column: 9)
!2913 = distinct !DILexicalBlock(scope: !2894, file: !2, line: 1582, column: 19)
!2914 = !DILocation(line: 1583, column: 23, scope: !2912)
!2915 = !DILocation(line: 1583, column: 9, scope: !2913)
!2916 = !DILocation(line: 1585, column: 19, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2912, file: !2, line: 1583, column: 29)
!2918 = !DILocation(line: 1586, column: 7, scope: !2917)
!2919 = !DILocation(line: 1589, column: 7, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !2, line: 1589, column: 7)
!2921 = distinct !DILexicalBlock(scope: !2912, file: !2, line: 1588, column: 10)
!2922 = !DILocation(line: 1589, column: 7, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2920, file: !2, line: 1589, column: 7)
!2924 = !DILocation(line: 1592, column: 13, scope: !2893)
!2925 = !DILocation(line: 1592, column: 11, scope: !2894)
!2926 = !DILocation(line: 1593, column: 17, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2893, file: !2, line: 1592, column: 19)
!2928 = !DILocation(line: 1594, column: 13, scope: !2927)
!2929 = !DILocation(line: 1594, column: 17, scope: !2927)
!2930 = !DILocation(line: 1595, column: 5, scope: !2927)
!2931 = !DILocation(line: 1597, column: 13, scope: !2892)
!2932 = !DILocation(line: 1597, column: 11, scope: !2893)
!2933 = !DILocation(line: 1598, column: 32, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2892, file: !2, line: 1597, column: 19)
!2935 = !DILocation(line: 1598, column: 64, scope: !2934)
!2936 = !DILocation(line: 1598, column: 59, scope: !2934)
!2937 = !DILocation(line: 1598, column: 52, scope: !2934)
!2938 = !DILocation(line: 1598, column: 68, scope: !2934)
!2939 = !DILocation(line: 1598, column: 70, scope: !2934)
!2940 = !DILocation(line: 1598, column: 19, scope: !2934)
!2941 = !DILocation(line: 1598, column: 17, scope: !2934)
!2942 = !DILocation(line: 1599, column: 34, scope: !2934)
!2943 = !DILocation(line: 1599, column: 13, scope: !2934)
!2944 = !DILocation(line: 1599, column: 17, scope: !2934)
!2945 = !DILocation(line: 1600, column: 5, scope: !2934)
!2946 = !DILocation(line: 0, scope: !2891)
!2947 = !DILocation(line: 1605, column: 9, scope: !2891)
!2948 = !DILocation(line: 1605, column: 26, scope: !2891)
!2949 = !DILocation(line: 1606, column: 5, scope: !2891)
!2950 = !DILocation(line: 1609, column: 7, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !2, line: 1609, column: 7)
!2952 = distinct !DILexicalBlock(scope: !2891, file: !2, line: 1606, column: 8)
!2953 = !DILocation(line: 1609, column: 31, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2951, file: !2, line: 1609, column: 7)
!2955 = !DILocation(line: 1609, column: 35, scope: !2954)
!2956 = !DILocation(line: 1609, column: 32, scope: !2954)
!2957 = !DILocation(line: 1609, column: 23, scope: !2954)
!2958 = distinct !{!2958, !2950, !2959, !165}
!2959 = !DILocation(line: 1609, column: 37, scope: !2951)
!2960 = distinct !{!2960, !167}
!2961 = !DILocation(line: 1610, column: 14, scope: !2952)
!2962 = !DILocation(line: 1610, column: 17, scope: !2952)
!2963 = !DILocation(line: 1610, column: 9, scope: !2952)
!2964 = !DILocation(line: 1612, column: 14, scope: !2891)
!2965 = !DILocation(line: 1612, column: 47, scope: !2891)
!2966 = !DILocation(line: 1612, column: 5, scope: !2952)
!2967 = distinct !{!2967, !2949, !2968, !165}
!2968 = !DILocation(line: 1612, column: 50, scope: !2891)
!2969 = !DILocation(line: 1613, column: 17, scope: !2891)
!2970 = !DILocation(line: 1614, column: 36, scope: !2891)
!2971 = !DILocation(line: 1614, column: 47, scope: !2891)
!2972 = !DILocation(line: 1614, column: 41, scope: !2891)
!2973 = !DILocation(line: 1614, column: 39, scope: !2891)
!2974 = !DILocation(line: 1614, column: 13, scope: !2891)
!2975 = !DILocation(line: 1614, column: 17, scope: !2891)
!2976 = !DILocation(line: 0, scope: !2895)
!2977 = !DILocation(line: 1617, column: 1, scope: !2883)
!2978 = distinct !DISubprogram(name: "H_zero_init", scope: !2, file: !2, line: 1437, type: !2979, scopeLine: 1438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2981)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!95, !109, !109}
!2981 = !{!2982, !2983, !2984, !2985, !2986}
!2982 = !DILocalVariable(name: "n", arg: 1, scope: !2978, file: !2, line: 1437, type: !109)
!2983 = !DILocalVariable(name: "k", arg: 2, scope: !2978, file: !2, line: 1437, type: !109)
!2984 = !DILocalVariable(name: "p", scope: !2978, file: !2, line: 1439, type: !95)
!2985 = !DILocalVariable(name: "x", scope: !2978, file: !2, line: 1439, type: !95)
!2986 = !DILocalVariable(name: "y", scope: !2978, file: !2, line: 1439, type: !95)
!2987 = !DILocation(line: 0, scope: !2978)
!2988 = !DILocation(line: 1440, column: 9, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2978, file: !2, line: 1440, column: 7)
!2990 = !DILocation(line: 1440, column: 14, scope: !2989)
!2991 = !DILocation(line: 1441, column: 10, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2989, file: !2, line: 1440, column: 25)
!2993 = !DILocation(line: 1441, column: 34, scope: !2992)
!2994 = !DILocation(line: 1441, column: 32, scope: !2992)
!2995 = !DILocation(line: 1441, column: 37, scope: !2992)
!2996 = !DILocation(line: 1441, column: 54, scope: !2992)
!2997 = !DILocation(line: 1441, column: 53, scope: !2992)
!2998 = !DILocation(line: 1441, scope: !2992)
!2999 = !DILocation(line: 1449, column: 20, scope: !2978)
!3000 = !DILocation(line: 1449, column: 22, scope: !2978)
!3001 = !DILocation(line: 1442, column: 3, scope: !2992)
!3002 = !DILocation(line: 1444, column: 66, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2989, file: !2, line: 1443, column: 8)
!3004 = !DILocation(line: 1444, column: 41, scope: !3003)
!3005 = !DILocation(line: 1444, column: 40, scope: !3003)
!3006 = !DILocation(line: 1445, column: 15, scope: !3003)
!3007 = !DILocation(line: 1445, column: 17, scope: !3003)
!3008 = !DILocation(line: 1445, column: 9, scope: !3003)
!3009 = !DILocation(line: 1446, column: 9, scope: !3003)
!3010 = !DILocation(line: 1447, column: 14, scope: !3003)
!3011 = !DILocation(line: 1447, column: 11, scope: !3003)
!3012 = !DILocation(line: 1447, column: 22, scope: !3003)
!3013 = !DILocation(line: 1447, column: 24, scope: !3003)
!3014 = !DILocation(line: 1447, column: 29, scope: !3003)
!3015 = !DILocation(line: 1447, column: 31, scope: !3003)
!3016 = !DILocation(line: 1447, column: 26, scope: !3003)
!3017 = !DILocation(line: 1447, column: 17, scope: !3003)
!3018 = !DILocation(line: 1447, column: 48, scope: !3003)
!3019 = !DILocation(line: 1447, column: 50, scope: !3003)
!3020 = !DILocation(line: 1447, column: 52, scope: !3003)
!3021 = !DILocation(line: 1447, column: 55, scope: !3003)
!3022 = !DILocation(line: 1447, column: 45, scope: !3003)
!3023 = !DILocation(line: 1447, column: 64, scope: !3003)
!3024 = !DILocation(line: 1447, column: 66, scope: !3003)
!3025 = !DILocation(line: 1447, column: 61, scope: !3003)
!3026 = !DILocation(line: 1447, column: 35, scope: !3003)
!3027 = !DILocation(line: 1447, column: 74, scope: !3003)
!3028 = !DILocation(line: 1447, column: 78, scope: !3003)
!3029 = !DILocation(line: 1447, column: 88, scope: !3003)
!3030 = !DILocation(line: 1447, column: 107, scope: !3003)
!3031 = !DILocation(line: 1447, column: 111, scope: !3003)
!3032 = !DILocation(line: 1447, column: 86, scope: !3003)
!3033 = !DILocation(line: 1447, column: 120, scope: !3003)
!3034 = !DILocation(line: 1447, column: 119, scope: !3003)
!3035 = !DILocation(line: 1447, column: 139, scope: !3003)
!3036 = !DILocation(line: 1447, column: 70, scope: !3003)
!3037 = !DILocation(line: 0, scope: !2989)
!3038 = !DILocation(line: 1449, column: 14, scope: !2978)
!3039 = !DILocation(line: 1449, column: 13, scope: !2978)
!3040 = !DILocation(line: 1449, column: 7, scope: !2978)
!3041 = !DILocation(line: 1450, column: 20, scope: !2978)
!3042 = !DILocation(line: 1450, column: 15, scope: !2978)
!3043 = !DILocation(line: 1450, column: 13, scope: !2978)
!3044 = !DILocation(line: 1450, column: 23, scope: !2978)
!3045 = !DILocation(line: 1450, column: 11, scope: !2978)
!3046 = !DILocation(line: 1450, column: 30, scope: !2978)
!3047 = !DILocation(line: 1450, column: 31, scope: !2978)
!3048 = !DILocation(line: 1450, column: 28, scope: !2978)
!3049 = !DILocation(line: 1451, column: 23, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !2978, file: !2, line: 1451, column: 6)
!3051 = !DILocation(line: 1451, column: 17, scope: !3050)
!3052 = !DILocation(line: 1451, column: 26, scope: !3050)
!3053 = !DILocation(line: 1451, column: 6, scope: !3050)
!3054 = !DILocation(line: 1451, column: 52, scope: !3050)
!3055 = !DILocation(line: 1451, column: 6, scope: !2978)
!3056 = !DILocation(line: 1452, column: 9, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2978, file: !2, line: 1452, column: 7)
!3058 = !DILocation(line: 1452, column: 7, scope: !2978)
!3059 = !DILocation(line: 1452, column: 36, scope: !3057)
!3060 = !DILocation(line: 1452, column: 29, scope: !3057)
!3061 = !DILocation(line: 1453, column: 9, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !2978, file: !2, line: 1453, column: 7)
!3063 = !DILocation(line: 1453, column: 7, scope: !2978)
!3064 = !DILocation(line: 1454, column: 9, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2978, file: !2, line: 1454, column: 7)
!3066 = !DILocation(line: 1454, column: 7, scope: !2978)
!3067 = !DILocation(line: 1455, column: 13, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !2978, file: !2, line: 1455, column: 7)
!3069 = !DILocation(line: 1455, column: 7, scope: !3068)
!3070 = !DILocation(line: 1455, column: 16, scope: !3068)
!3071 = !DILocation(line: 1455, column: 21, scope: !3068)
!3072 = !DILocation(line: 1455, column: 7, scope: !2978)
!3073 = !DILocation(line: 1456, column: 9, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3068, file: !2, line: 1455, column: 25)
!3075 = !DILocation(line: 1457, column: 5, scope: !3074)
!3076 = !DILocation(line: 0, scope: !3074)
!3077 = !DILocation(line: 1458, column: 9, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3074, file: !2, line: 1457, column: 7)
!3079 = !DILocation(line: 1459, column: 9, scope: !3078)
!3080 = !DILocation(line: 1460, column: 20, scope: !3074)
!3081 = !DILocation(line: 1460, column: 14, scope: !3074)
!3082 = !DILocation(line: 1460, column: 23, scope: !3074)
!3083 = !DILocation(line: 1460, column: 28, scope: !3074)
!3084 = !DILocation(line: 1460, column: 5, scope: !3078)
!3085 = distinct !{!3085, !3075, !3086, !165}
!3086 = !DILocation(line: 1460, column: 31, scope: !3074)
!3087 = !DILocation(line: 1462, column: 3, scope: !2978)
!3088 = !DILocation(line: 1464, column: 17, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !2978, file: !2, line: 1462, column: 6)
!3090 = !DILocation(line: 1464, column: 11, scope: !3089)
!3091 = !DILocation(line: 1464, column: 20, scope: !3089)
!3092 = !DILocation(line: 1464, column: 25, scope: !3089)
!3093 = !DILocation(line: 1464, column: 33, scope: !3089)
!3094 = !DILocation(line: 1464, column: 32, scope: !3089)
!3095 = !DILocation(line: 1464, column: 42, scope: !3089)
!3096 = !DILocation(line: 1464, column: 28, scope: !3089)
!3097 = !DILocation(line: 1464, column: 7, scope: !3089)
!3098 = !DILocation(line: 1465, column: 10, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3089, file: !2, line: 1465, column: 9)
!3100 = !DILocation(line: 1465, column: 13, scope: !3099)
!3101 = !DILocation(line: 1466, column: 12, scope: !2978)
!3102 = !DILocation(line: 1466, column: 45, scope: !2978)
!3103 = !DILocation(line: 1466, column: 3, scope: !3089)
!3104 = distinct !{!3104, !3087, !3105, !165}
!3105 = !DILocation(line: 1466, column: 48, scope: !2978)
!3106 = !DILocation(line: 1467, column: 10, scope: !2978)
!3107 = !DILocation(line: 1467, column: 23, scope: !2978)
!3108 = !DILocation(line: 1467, column: 22, scope: !2978)
!3109 = !DILocation(line: 1467, column: 3, scope: !2978)
!3110 = !DILocation(line: 1468, column: 1, scope: !2978)
!3111 = !DISubprogram(name: "gsl_fcmp", scope: !833, file: !833, line: 59, type: !3112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!43, !110, !110, !110}
!3114 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_zero", scope: !2, file: !2, line: 1620, type: !2979, scopeLine: 1621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !3115)
!3115 = !{!3116, !3117, !3118, !3119}
!3116 = !DILocalVariable(name: "n", arg: 1, scope: !3114, file: !2, line: 1620, type: !109)
!3117 = !DILocalVariable(name: "s", arg: 2, scope: !3114, file: !2, line: 1620, type: !109)
!3118 = !DILocalVariable(name: "result", scope: !3114, file: !2, line: 1622, type: !112)
!3119 = !DILocalVariable(name: "status", scope: !3114, file: !2, line: 1622, type: !43)
!3120 = distinct !DIAssignID()
!3121 = !DILocation(line: 0, scope: !3114)
!3122 = !DILocation(line: 1622, column: 3, scope: !3114)
!3123 = !DILocation(line: 1622, column: 3, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3114, file: !2, line: 1622, column: 3)
!3125 = !DILocation(line: 1622, column: 3, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !2, line: 1622, column: 3)
!3127 = distinct !DILexicalBlock(scope: !3124, file: !2, line: 1622, column: 3)
!3128 = !DILocation(line: 1623, column: 1, scope: !3114)
!3129 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_zero_e", scope: !2, file: !2, line: 1731, type: !2884, scopeLine: 1732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !3130)
!3130 = !{!3131, !3132, !3133, !3134, !3140, !3141, !3142}
!3131 = !DILocalVariable(name: "n", arg: 1, scope: !3129, file: !2, line: 1731, type: !109)
!3132 = !DILocalVariable(name: "s", arg: 2, scope: !3129, file: !2, line: 1731, type: !109)
!3133 = !DILocalVariable(name: "result", arg: 3, scope: !3129, file: !2, line: 1731, type: !111)
!3134 = !DILocalVariable(name: "d", scope: !3135, file: !2, line: 1757, type: !95)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !2, line: 1756, column: 8)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !2, line: 1751, column: 11)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !2, line: 1746, column: 11)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !2, line: 1736, column: 11)
!3139 = distinct !DILexicalBlock(scope: !3129, file: !2, line: 1733, column: 6)
!3140 = !DILocalVariable(name: "x", scope: !3135, file: !2, line: 1757, type: !95)
!3141 = !DILocalVariable(name: "x0", scope: !3135, file: !2, line: 1757, type: !95)
!3142 = !DILocalVariable(name: "j", scope: !3135, file: !2, line: 1758, type: !43)
!3143 = !DILocation(line: 0, scope: !3129)
!3144 = !DILocation(line: 1733, column: 8, scope: !3139)
!3145 = !DILocation(line: 1733, column: 13, scope: !3139)
!3146 = !DILocation(line: 1733, column: 27, scope: !3139)
!3147 = !DILocation(line: 1733, column: 6, scope: !3129)
!3148 = !DILocation(line: 1734, column: 5, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !2, line: 1734, column: 5)
!3150 = distinct !DILexicalBlock(scope: !3139, file: !2, line: 1733, column: 34)
!3151 = !DILocation(line: 1734, column: 5, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3149, file: !2, line: 1734, column: 5)
!3153 = !DILocation(line: 1736, column: 13, scope: !3138)
!3154 = !DILocation(line: 1736, column: 11, scope: !3139)
!3155 = !DILocation(line: 1737, column: 9, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !2, line: 1737, column: 9)
!3157 = distinct !DILexicalBlock(scope: !3138, file: !2, line: 1736, column: 19)
!3158 = !DILocation(line: 1737, column: 23, scope: !3156)
!3159 = !DILocation(line: 1737, column: 9, scope: !3157)
!3160 = !DILocation(line: 1739, column: 19, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3156, file: !2, line: 1737, column: 29)
!3162 = !DILocation(line: 1740, column: 7, scope: !3161)
!3163 = !DILocation(line: 1743, column: 7, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !2, line: 1743, column: 7)
!3165 = distinct !DILexicalBlock(scope: !3156, file: !2, line: 1742, column: 10)
!3166 = !DILocation(line: 1743, column: 7, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3164, file: !2, line: 1743, column: 7)
!3168 = !DILocation(line: 1746, column: 13, scope: !3137)
!3169 = !DILocation(line: 1746, column: 11, scope: !3138)
!3170 = !DILocation(line: 1747, column: 17, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3137, file: !2, line: 1746, column: 19)
!3172 = !DILocation(line: 1748, column: 13, scope: !3171)
!3173 = !DILocation(line: 1748, column: 17, scope: !3171)
!3174 = !DILocation(line: 1749, column: 5, scope: !3171)
!3175 = !DILocation(line: 1751, column: 13, scope: !3136)
!3176 = !DILocation(line: 1751, column: 11, scope: !3137)
!3177 = !DILocation(line: 1752, column: 31, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3136, file: !2, line: 1751, column: 19)
!3179 = !DILocation(line: 1752, column: 63, scope: !3178)
!3180 = !DILocation(line: 1752, column: 58, scope: !3178)
!3181 = !DILocation(line: 1752, column: 51, scope: !3178)
!3182 = !DILocation(line: 1752, column: 67, scope: !3178)
!3183 = !DILocation(line: 1752, column: 69, scope: !3178)
!3184 = !DILocation(line: 1752, column: 19, scope: !3178)
!3185 = !DILocation(line: 1752, column: 17, scope: !3178)
!3186 = !DILocation(line: 1753, column: 34, scope: !3178)
!3187 = !DILocation(line: 1753, column: 13, scope: !3178)
!3188 = !DILocation(line: 1753, column: 17, scope: !3178)
!3189 = !DILocation(line: 1754, column: 5, scope: !3178)
!3190 = !DILocation(line: 0, scope: !3135)
!3191 = !DILocation(line: 1759, column: 9, scope: !3135)
!3192 = !DILocation(line: 1760, column: 5, scope: !3135)
!3193 = !DILocation(line: 1763, column: 7, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !2, line: 1763, column: 7)
!3195 = distinct !DILexicalBlock(scope: !3135, file: !2, line: 1760, column: 8)
!3196 = !DILocation(line: 1763, column: 32, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3194, file: !2, line: 1763, column: 7)
!3198 = !DILocation(line: 1763, column: 31, scope: !3197)
!3199 = !DILocation(line: 1763, column: 40, scope: !3197)
!3200 = !DILocation(line: 1763, column: 34, scope: !3197)
!3201 = !DILocation(line: 1763, column: 23, scope: !3197)
!3202 = distinct !{!3202, !3193, !3203, !165}
!3203 = !DILocation(line: 1763, column: 42, scope: !3194)
!3204 = distinct !{!3204, !167}
!3205 = !DILocation(line: 1764, column: 16, scope: !3195)
!3206 = !DILocation(line: 1764, column: 19, scope: !3195)
!3207 = !DILocation(line: 1764, column: 23, scope: !3195)
!3208 = !DILocation(line: 1764, column: 9, scope: !3195)
!3209 = !DILocation(line: 1766, column: 14, scope: !3135)
!3210 = !DILocation(line: 1766, column: 47, scope: !3135)
!3211 = !DILocation(line: 1766, column: 5, scope: !3195)
!3212 = distinct !{!3212, !3192, !3213, !165}
!3213 = !DILocation(line: 1766, column: 50, scope: !3135)
!3214 = !DILocation(line: 1767, column: 17, scope: !3135)
!3215 = !DILocation(line: 1768, column: 36, scope: !3135)
!3216 = !DILocation(line: 1768, column: 47, scope: !3135)
!3217 = !DILocation(line: 1768, column: 41, scope: !3135)
!3218 = !DILocation(line: 1768, column: 39, scope: !3135)
!3219 = !DILocation(line: 1768, column: 13, scope: !3135)
!3220 = !DILocation(line: 1768, column: 17, scope: !3135)
!3221 = !DILocation(line: 0, scope: !3139)
!3222 = !DILocation(line: 1771, column: 1, scope: !3129)
!3223 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_zero", scope: !2, file: !2, line: 1774, type: !2979, scopeLine: 1775, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !3224)
!3224 = !{!3225, !3226, !3227, !3228}
!3225 = !DILocalVariable(name: "n", arg: 1, scope: !3223, file: !2, line: 1774, type: !109)
!3226 = !DILocalVariable(name: "s", arg: 2, scope: !3223, file: !2, line: 1774, type: !109)
!3227 = !DILocalVariable(name: "result", scope: !3223, file: !2, line: 1776, type: !112)
!3228 = !DILocalVariable(name: "status", scope: !3223, file: !2, line: 1776, type: !43)
!3229 = distinct !DIAssignID()
!3230 = !DILocation(line: 0, scope: !3223)
!3231 = !DILocation(line: 1776, column: 3, scope: !3223)
!3232 = !DILocation(line: 1776, column: 3, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3223, file: !2, line: 1776, column: 3)
!3234 = !DILocation(line: 1776, column: 3, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !2, line: 1776, column: 3)
!3236 = distinct !DILexicalBlock(scope: !3233, file: !2, line: 1776, column: 3)
!3237 = !DILocation(line: 1777, column: 1, scope: !3223)
!3238 = distinct !DISubprogram(name: "gsl_sf_hermite_func_zero_e", scope: !2, file: !2, line: 1780, type: !2884, scopeLine: 1781, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !3239)
!3239 = !{!3240, !3241, !3242}
!3240 = !DILocalVariable(name: "n", arg: 1, scope: !3238, file: !2, line: 1780, type: !109)
!3241 = !DILocalVariable(name: "s", arg: 2, scope: !3238, file: !2, line: 1780, type: !109)
!3242 = !DILocalVariable(name: "result", arg: 3, scope: !3238, file: !2, line: 1780, type: !111)
!3243 = !DILocation(line: 0, scope: !3238)
!3244 = !DILocation(line: 1782, column: 10, scope: !3238)
!3245 = !DILocation(line: 1782, column: 3, scope: !3238)
!3246 = distinct !DISubprogram(name: "gsl_sf_hermite_func_zero", scope: !2, file: !2, line: 1786, type: !2979, scopeLine: 1787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !3247)
!3247 = !{!3248, !3249, !3250, !3251}
!3248 = !DILocalVariable(name: "n", arg: 1, scope: !3246, file: !2, line: 1786, type: !109)
!3249 = !DILocalVariable(name: "s", arg: 2, scope: !3246, file: !2, line: 1786, type: !109)
!3250 = !DILocalVariable(name: "result", scope: !3246, file: !2, line: 1788, type: !112)
!3251 = !DILocalVariable(name: "status", scope: !3246, file: !2, line: 1788, type: !43)
!3252 = distinct !DIAssignID()
!3253 = !DILocation(line: 0, scope: !3246)
!3254 = !DILocation(line: 1788, column: 3, scope: !3246)
!3255 = !DILocation(line: 0, scope: !3238, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 1788, column: 3, scope: !3246)
!3257 = !DILocation(line: 1782, column: 10, scope: !3238, inlinedAt: !3256)
!3258 = !DILocation(line: 1788, column: 3, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3246, file: !2, line: 1788, column: 3)
!3260 = !DILocation(line: 1788, column: 3, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !2, line: 1788, column: 3)
!3262 = distinct !DILexicalBlock(scope: !3259, file: !2, line: 1788, column: 3)
!3263 = !DILocation(line: 1789, column: 1, scope: !3246)
!3264 = !DISubprogram(name: "gsl_sf_airy_zero_Ai", scope: !849, file: !849, line: 116, type: !3265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!95, !498}
!3267 = !DISubprogram(name: "cos", scope: !837, file: !837, line: 62, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
