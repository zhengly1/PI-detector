; ModuleID = 'psi.ll'
source_filename = "psi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"psi.c\00", align 1, !dbg !7
@psi_table = internal unnamed_addr constant [101 x double] [double 0.000000e+00, double 0xBFE2788CFC6FB619, double 0x3FDB0EE6072093CE, double 0x3FED8773039049E7, double 0x3FF4190ED71D7A49, double 0x3FF8190ED71D7A49, double 0x3FFB4C420A50AD7C, double 0x3FFDF6ECB4FB5827, double 0x40002008A3A23E5D, double 0x40012008A3A23E5D, double 0x40020396DC85CC95, double 0x4002D063A9529962, double 0x40038A9234F5821C, double 0x4004353CDFA02CC7, double 0x4004D2C6B83DB6A0, double 0x4005650FDCCFFFC4, double 0x4005ED986558884D, double 0x40066D986558884D, double 0x4006E610DDD100C5, double 0x400757D7FA42C7E2, double 0x4007C3A215354E9E, double 0x40082A087B9BB505, double 0x40088B8E93FD3B1D, double 0x4008E8A5D9CEAF7A, double 0x400941B0FB32DC00, double 0x4009970650883155, double 0x4009E8F1D5A6E9A7, double 0x400A37B6C1F5AE93, double 0x400A8390D4EC3351, double 0x400ACCB5673557E3, double 0x400B13544CB9C1D2, double 0x400B579890FE0616, double 0x400B99A9151F0E58, double 0x400BD9A9151F0E58, double 0x400C17B899000696, double 0x400C53F4D53C42D2, double 0x400C8E787D76C67A, double 0x400CC75C0BAFAA09, double 0x400CFEB5FDD92D7E, double 0x400D349B0B5270DD, double 0x400D691E5386F425, double 0x400D9C5186BA2758, double 0x400DCE4509D95F8A, double 0x400DFF08160A2296, double 0x400E2EA8D48D1CA2, double 0x400E5D347775D6D1, double 0x400E8AB74FA359A9, double 0x400EB73CE0556FEC, double 0x400EE2CFF0AC960C, double 0x400F0D7A9B5740B7, double 0x400F37465CA59EC1, double 0x400F603C1F34FAEA, double 0x400F8864475D2312, double 0x400FAFC6BD848589, double 0x400FD66AF77ADC7A, double 0x400FFC5800F61ED9, double 0x401010CA41A4F37F, double 0x4010231366373CA4, double 0x4010350A6AB4FDC3, double 0x401046B22416183F, double 0x4010580D42758D66, double 0x4010691E53869E77, double 0x401079E7C4D65B51, double 0x40108A6BE5DE9D62, double 0x40109AACE9EEDE66, double 0x4010AAACE9EEDE66, double 0x4010BA6DE5FE9F62, double 0x4010C9F1C6F6DD71, double 0x4010D93A5FCCD5CD, double 0x4010E8496EDBE4DC, double 0x4010F7209F17419D, double 0x401105C18925E287, double 0x4011142DB46A6454, double 0x4011226697F89D38, double 0x4011306D9B7A5E18, double 0x40113E441804BEF6, double 0x40114BEB58DF3304, double 0x401159649C3D83DB, double 0x401166B113EDB90D, double 0x401173D1E5FAD9DF, double 0x401180C82D4561F9, double 0x40118D94FA122EC6, double 0x40119A3952909A3B, double 0x4011A6B633586847, double 0x4011B30C8FE01E41, double 0x4011BF3D52EC4F04, double 0x4011CB495EF85B10, double 0x4011D7318E991993, double 0x4011E2F6B4D9D5E5, double 0x4011EE999D940471, double 0x4011FA1B0DC20A32, double 0x4012057BC3CD6AE8, double 0x401210BC77D8AB9C, double 0x40121BDDDC05312D, double 0x401226E09CB55D38, double 0x401231C560CB26C0, double 0x40123C8CC9E3676C, double 0x40124737748E1217, double 0x401251C5F8838393, double 0x40125C38E8D71B16, double 0x40126690D4274475], align 16, !dbg !12
@psi_1_table = internal unnamed_addr constant [101 x double] [double 0.000000e+00, double 0x3FFA51A6625307D3, double 0x3FE4A34CC4A60FA6, double 0x3FD94699894C1F4D, double 0x3FD22A27C22FAD85, double 0x3FCC544F845F5B0B, double 0x3FC735973273D5EC, double 0x3FC3A75E4EE59D09, double 0x3FC10AA239FFBC61, double 0x3FBE154473FF78C3, double 0x3FBAEC2E54649B87, double 0x3FB85CD22B6ED8F7, double 0x3FB63F337DF20565, double 0x3FB478170C2AE8F4, double 0x3FB2F44D947FBD06, double 0x3FB1A5EF8A0CCCB2, double 0x3FB082AA228320E4, double 0x3FAF0554450641C9, double 0x3FAD3FCAF7F56D30, double 0x3FABAB3FE827FE92, double 0x3FAA402B577DCCEE, double 0x3FA8F87D4302EBA7, double 0x3FA7CF461D476B5C, double 0x3FA6C076C6890193, double 0x3FA5C8B0D8ECB236, double 0x3FA4E522A00923FD, double 0x3FA4136B88B041E4, double 0x3FA35186CCDAABED, double 0x3FA29DBAC5D4B3A7, double 0x3FA1F68BC09B3B7D, double 0x3FA15AB17F770243, double 0x3FA0C90ECBB22C5C, double 0x3FA040AAA223A7B2, double 0x3F9F815544474F65, double 0x3F9E909CF72C46B2, double 0x3F9DADD850A3DC66, double 0x3F9CD7D991A1FAE9, double 0x3F9C0D9409BB439A, double 0x3F9B4E17AF397CD2, double 0x3F9A988D66E46400, double 0x3F99EC33DC5F6CEC, double 0x3F99485CD221FC48, double 0x3F98AC6AD4DFBD3C, double 0x3F9817CF4201FD17, double 0x3F978A0893D5681D, double 0x3F9702A0E8763338, double 0x3F96812CBA71E6DD, double 0x3F960549C3A3BF2E, double 0x3F958E9E04130032, double 0x3F951CD6E7A13915, double 0x3F94AFA8862D5319, double 0x3F9446CCFA80E20D, double 0x3F93E203CCEEEBB2, double 0x3F9381116F0420B6, double 0x3F9323BEC60CF7CB, double 0x3F92C9D8C289FBA8, double 0x3F92733002F0E40B, double 0x3F921F98805427F6, double 0x3F91CEE943BC8EB6, double 0x3F9180FC232A7219, double 0x3F9135AD85583059, double 0x3F90ECDC2B75C566, double 0x3F90A669002F8711, double 0x3F906236EB6844BC, double 0x3F90202AAA22283A, double 0x3F8FC05554445074, double 0x3F8F443DD1D01970, double 0x3F8ECBE1AB429516, double 0x3F8E57166B8F3A78, double 0x3F8DE5B4184B0552, double 0x3F8D779504058CB7, double 0x3F8D0C95A4849BF8, double 0x3F8CA4946C80F3ED, double 0x3F8C3F71A88D9846, double 0x3F8BDD0F5EDC7993, double 0x3F8B7D51319B962F, double 0x3F8B201C43ACF8CF, double 0x3F8AC5571F826C66, double 0x3F8A6CE99FEB6E6D, double 0x3F8A16BCDAA8F2E3, double 0x3F89C2BB0C9F05AD, double 0x3F8970CF87804D5B, double 0x3F8920E6A0D2FB74, double 0x3F88D2EDA231DBEE, double 0x3F8886D2BAAF042D, double 0x3F883C84F140241A, double 0x3F87F3F4181EBA68, double 0x3F87AD10C1086FEC, double 0x3F8767CC324DABD2, double 0x3F8724185C9E115F, double 0x3F86E1E7D1840D0B, double 0x3F86A12DBA81E6DD, double 0x3F8661DDD0C3FF0A, double 0x3F8623EC555CEB32, double 0x3F85E74E0A012204, double 0x3F85ABF82A38C285, double 0x3F8571E064FECF0F, double 0x3F8538FCD6C5EB81, double 0x3F85014403DB5527, double 0x3F84CAACD3216229, double 0x3F84952E891B603A], align 16, !dbg !120
@.str.2 = private unnamed_addr constant [12 x i8] c"singularity\00", align 1, !dbg !58
@.str.3 = private unnamed_addr constant [29 x i8] c"gsl_sf_psi_int_e(n, &result)\00", align 1, !dbg !63
@.str.4 = private unnamed_addr constant [25 x i8] c"gsl_sf_psi_e(x, &result)\00", align 1, !dbg !68
@.str.6 = private unnamed_addr constant [31 x i8] c"gsl_sf_psi_1_int_e(n, &result)\00", align 1, !dbg !78
@.str.7 = private unnamed_addr constant [27 x i8] c"gsl_sf_psi_1_e(x, &result)\00", align 1, !dbg !83
@.str.8 = private unnamed_addr constant [30 x i8] c"gsl_sf_psi_n_e(n, x, &result)\00", align 1, !dbg !88
@apsics_data = internal unnamed_addr constant [16 x double] [double 0xBF94F75F944FE07A, double 0xBF84D951898BF7AF, double 0x3F0D586AE57A4255, double 0xBEB5ABE2956BBABD, double 0x3E6EC14F08E74CD9, double 0xBE30699F80005F34, double 0x3DF758D43FE882CD, double -3.748380e-11, double 4.899000e-12, double 0xBD69D6E31B209F7A, double 1.233000e-13, double -2.280000e-14, double 4.500000e-15, double -9.000000e-16, double 2.000000e-16, double -0.000000e+00], align 16, !dbg !103
@psics_data = internal unnamed_addr constant [23 x double] [double 0xBFA37C37BB231109, double 0x3FDF73598C73FB27, double 0xBFAD16F425947EBB, double 0x3F811DE7C6A62076, double 0xBF55D7FBE17975AE, double 0x3F2CE07CB9C5C359, double 0xBF036B74E4951ABC, double 0x3EDA5B2C0C29E4ED, double 0xBEB1F90B1FB29BFD, double 0x3E88943E64F65CF3, double 0xBE60D5318A2660C2, double 0x3E371377399FDA49, double 0xBE0FA6AE3F8F0DEA, double 0x3DE5B678BB7CAB1E, double 0xBDBDCB973B818CB1, double 0x3D9471FEE403EA3C, double -7.975270e-13, double 1.368270e-13, double -2.347500e-14, double 4.027000e-15, double 0xBCC8E5599EAD4654, double 1.180000e-16, double -2.000000e-17], align 16, !dbg !110
@r1py_data = internal unnamed_addr constant [30 x double] [double 0x3FF99506A303E2E2, double 0x3FE5BAD42E2212DD, double 0xBFB188491C0A3890, double 0xBF77B559DC505E58, double 0x3F816E59BBCDEA3A, double 0xBF708F083E333C97, double 0x3F56281391C93817, double 0xBF346C8FCCCC56B2, double 0x3EF368161956C8A0, double 0x3EFDB9CC33FFDC01, double 0xBEF46F25471D9B64, double 0x3EE0ED12E3B8A733, double 0xBEC347AECF9A9686, double 0x3E9478FFC23E2674, double 0x3E8181477139A58A, double 0xBE808538EF7852FB, double 0x3E6EFBB8388C379F, double 0xBE539F8C28FA8569, double 0x3E2AA5794991B3C0, double 0x3E07B45D8C3425EB, double 0xBE0DF4A2A64D4C15, double 0x3DFE48B9F8D92DC3, double 0xBDE43DB6416D0FC5, double 0x3DBE55CE2494DEB4, double 0x3D926A593CD57785, double 0xBD9CE22C9F37A3F2, double 0x3D8E55FC210997F7, double 0xBD74C583682DB83E, double 0x3D50BF1F89045337, double 0x3CE3834B06E0BA6B], align 16, !dbg !117

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_psi_int_e(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !dbg !157 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !169, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !170, metadata !DIExpression()), !dbg !180
  %3 = icmp slt i32 %0, 1, !dbg !181
  br i1 %3, label %4, label %6, !dbg !182

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !183, !tbaa !186
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !183
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !183, !tbaa !191
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 587, i32 noundef 1) #6, !dbg !192
  br label %32, !dbg !192

6:                                                ; preds = %2
  %7 = icmp ult i32 %0, 101, !dbg !194
  br i1 %7, label %8, label %15, !dbg !195

8:                                                ; preds = %6
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds [101 x double], ptr @psi_table, i64 0, i64 %9, !dbg !196
  %11 = load double, ptr %10, align 8, !dbg !196, !tbaa !198
  store double %11, ptr %1, align 8, !dbg !199, !tbaa !186
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !200
  %13 = fmul double %12, 0x3CB0000000000000, !dbg !201
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !202
  store double %13, ptr %14, align 8, !dbg !203, !tbaa !191
  br label %32, !dbg !204

15:                                               ; preds = %6
  tail call void @llvm.dbg.value(metadata double 0xBFB5555555555555, metadata !171, metadata !DIExpression()), !dbg !205
  tail call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !175, metadata !DIExpression()), !dbg !205
  tail call void @llvm.dbg.value(metadata double 0xBF70410410410410, metadata !176, metadata !DIExpression()), !dbg !205
  tail call void @llvm.dbg.value(metadata double 0x3F71111111111111, metadata !177, metadata !DIExpression()), !dbg !205
  %16 = sitofp i32 %0 to double, !dbg !206
  %17 = fdiv double 1.000000e+00, %16, !dbg !207
  %18 = fmul double %17, %17, !dbg !208
  tail call void @llvm.dbg.value(metadata double %18, metadata !178, metadata !DIExpression()), !dbg !205
  %19 = fmul double %18, 0x3F71111111111111, !dbg !209
  %handler_result = call double @fAddHandlerDouble(double %19, double 0xBF70410410410410), !dbg !210
  %20 = fmul double %18, %handler_result, !dbg !210
  %handler_result1 = call double @fAddHandlerDouble(double %20, double 0x3F81111111111111), !dbg !211
  %21 = fmul double %18, %handler_result1, !dbg !211
  %handler_result2 = call double @fAddHandlerDouble(double %21, double 0xBFB5555555555555), !dbg !212
  %22 = fmul double %18, %handler_result2, !dbg !212
  tail call void @llvm.dbg.value(metadata double %22, metadata !179, metadata !DIExpression()), !dbg !205
  %handler_result8 = call double @callHandler(i32 12, double %16, double %16), !dbg !213
  %23 = fdiv double 5.000000e-01, %16, !dbg !213
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result8, double %23), !dbg !214
  %handler_result4 = call double @fAddHandlerDouble(double %22, double %handler_result3), !dbg !215
  store double %handler_result4, ptr %1, align 8, !dbg !215, !tbaa !186
  %handler_result9 = call double @callHandler(i32 12, double %16, double %16), !dbg !216
  %24 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !216
  %25 = tail call double @llvm.fabs.f64(double %23), !dbg !217
  %handler_result5 = call double @fAddHandlerDouble(double %25, double %24), !dbg !218
  %26 = tail call double @llvm.fabs.f64(double %22), !dbg !218
  %handler_result6 = call double @fAddHandlerDouble(double %26, double %handler_result5), !dbg !219
  %27 = fmul double %handler_result6, 0x3CB0000000000000, !dbg !219
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !220
  %29 = load double, ptr %1, align 8, !dbg !221, !tbaa !186
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !222
  %31 = fmul double %30, 0x3CB0000000000000, !dbg !223
  %handler_result7 = call double @fAddHandlerDouble(double %27, double %31), !dbg !224
  store double %handler_result7, ptr %28, align 8, !dbg !224, !tbaa !191
  br label %32

32:                                               ; preds = %15, %8, %4
  %33 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %15 ], !dbg !225
  ret i32 %33, !dbg !226
}

declare !dbg !227 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !232 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_psi_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !236 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !240, metadata !DIExpression()), !dbg !242
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %0, metadata !243, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata ptr %1, metadata !246, metadata !DIExpression()), !dbg !275
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !277
  call void @llvm.dbg.value(metadata double %3, metadata !247, metadata !DIExpression()), !dbg !275
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !278
  %5 = fcmp oeq double %0, -1.000000e+00
  %6 = or i1 %4, %5, !dbg !279
  %7 = fcmp oeq double %0, -2.000000e+00
  %8 = or i1 %7, %6, !dbg !279
  br i1 %8, label %9, label %11, !dbg !279

9:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !280, !tbaa !186
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !280
  store double 0x7FF8000000000000, ptr %10, align 8, !dbg !280, !tbaa !191
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 385, i32 noundef 1) #6, !dbg !283
  br label %188, !dbg !283

11:                                               ; preds = %2
  %12 = fcmp ult double %3, 2.000000e+00, !dbg !285
  br i1 %12, label %60, label %13, !dbg !286

13:                                               ; preds = %11
  %14 = fmul double %0, %0, !dbg !287
  %15 = fdiv double 8.000000e+00, %14, !dbg !288
  %handler_result = call double @fAddHandlerDouble(double %15, double -1.000000e+00), !dbg !289
  call void @llvm.dbg.value(metadata double %handler_result, metadata !248, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata !314, metadata !297, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata double %handler_result, metadata !298, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata ptr undef, metadata !299, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !301, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !302, metadata !DIExpression()), !dbg !315
  %16 = fmul double %handler_result, 2.000000e+00, !dbg !289
  %handler_result1 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !316
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !317
  %17 = fmul double %handler_result2, 5.000000e-01, !dbg !317
  call void @llvm.dbg.value(metadata double %17, metadata !303, metadata !DIExpression()), !dbg !315
  %18 = fmul double %17, 2.000000e+00, !dbg !318
  call void @llvm.dbg.value(metadata double %18, metadata !304, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !305, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i32 15, metadata !300, metadata !DIExpression()), !dbg !315
  br label %19, !dbg !319

19:                                               ; preds = %19, %13
  %20 = phi i64 [ 15, %13 ], [ %30, %19 ]
  %21 = phi double [ 0.000000e+00, %13 ], [ %handler_result4, %19 ]
  %22 = phi double [ 0.000000e+00, %13 ], [ %handler_result7, %19 ]
  %23 = phi double [ 0.000000e+00, %13 ], [ %21, %19 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !300, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata double %21, metadata !301, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata double %22, metadata !305, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata double %23, metadata !302, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata double %21, metadata !306, metadata !DIExpression()), !dbg !320
  %24 = fmul double %18, %21, !dbg !321
  %handler_result3 = call double @fSubHandlerDouble(double %24, double %23), !dbg !322
  %25 = getelementptr inbounds double, ptr @apsics_data, i64 %20, !dbg !322
  %26 = load double, ptr %25, align 8, !dbg !322, !tbaa !198
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %26), !dbg !323
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !301, metadata !DIExpression()), !dbg !315
  %27 = tail call double @llvm.fabs.f64(double %24), !dbg !323
  %28 = tail call double @llvm.fabs.f64(double %23), !dbg !324
  %handler_result5 = call double @fAddHandlerDouble(double %27, double %28), !dbg !325
  %29 = tail call double @llvm.fabs.f64(double %26), !dbg !325
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %29), !dbg !326
  %handler_result7 = call double @fAddHandlerDouble(double %22, double %handler_result6), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !305, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata double %21, metadata !302, metadata !DIExpression()), !dbg !315
  %30 = add nsw i64 %20, -1, !dbg !327
  call void @llvm.dbg.value(metadata i64 %30, metadata !300, metadata !DIExpression()), !dbg !315
  %31 = icmp ugt i64 %20, 1, !dbg !328
  br i1 %31, label %19, label %32, !dbg !319, !llvm.loop !329

32:                                               ; preds = %19
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !310, metadata !DIExpression()), !dbg !332
  %33 = fmul double %17, %handler_result4, !dbg !333
  %handler_result8 = call double @fSubHandlerDouble(double %33, double %21), !dbg !334
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0xBF84F75F944FE07A), !dbg !335
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !301, metadata !DIExpression()), !dbg !315
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !335
  %35 = tail call double @llvm.fabs.f64(double %21), !dbg !336
  %handler_result10 = call double @fAddHandlerDouble(double %35, double %34), !dbg !337
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3F84F75F944FE07A), !dbg !338
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !339
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !305, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !252, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !313
  %36 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !339
  %handler_result13 = call double @fAddHandlerDouble(double %36, double 0.000000e+00), !dbg !340
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !252, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !313
  %37 = fcmp olt double %0, 0.000000e+00, !dbg !340
  br i1 %37, label %38, label %55, !dbg !341

38:                                               ; preds = %32
  %39 = fmul double %0, 0x400921FB54442D18, !dbg !342
  %handler_result97 = call double @callHandler(i32 1, double %39, double %39), !dbg !343
  call void @llvm.dbg.value(metadata double %handler_result97, metadata !253, metadata !DIExpression()), !dbg !344
  %handler_result98 = call double @callHandler(i32 2, double %39, double %39), !dbg !345
  call void @llvm.dbg.value(metadata double %handler_result98, metadata !256, metadata !DIExpression()), !dbg !344
  %40 = tail call double @llvm.fabs.f64(double %handler_result97), !dbg !345
  %41 = fcmp olt double %40, 0x2010000000000000, !dbg !347
  br i1 %41, label %42, label %44, !dbg !348

42:                                               ; preds = %38
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !349, !tbaa !186
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !349
  store double 0x7FF8000000000000, ptr %43, align 8, !dbg !349, !tbaa !191
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 395, i32 noundef 1) #6, !dbg !352
  br label %188, !dbg !352

44:                                               ; preds = %38
  %handler_result99 = call double @callHandler(i32 12, double %3, double %3), !dbg !354
  %45 = fdiv double 5.000000e-01, %0, !dbg !354
  %handler_result14 = call double @fSubHandlerDouble(double %handler_result99, double %45), !dbg !356
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result9, double %handler_result14), !dbg !357
  %46 = fmul double %handler_result98, 0x400921FB54442D18, !dbg !357
  %47 = fdiv double %46, %handler_result97, !dbg !358
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result15, double %47), !dbg !359
  store double %handler_result16, ptr %1, align 8, !dbg !359, !tbaa !186
  %48 = fmul double %3, 0x400921FB54442D18, !dbg !360
  %49 = fmul double %48, 0x3CB0000000000000, !dbg !361
  %50 = fmul double %handler_result97, %handler_result97, !dbg !362
  %51 = fdiv double %49, %50, !dbg !363
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !364
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result13, double %51), !dbg !365
  %53 = tail call double @llvm.fabs.f64(double %handler_result16), !dbg !365
  %54 = fmul double %53, 0x3CB0000000000000, !dbg !366
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double %54), !dbg !367
  store double %handler_result18, ptr %52, align 8, !dbg !367, !tbaa !191
  br label %188, !dbg !368

55:                                               ; preds = %32
  %handler_result100 = call double @callHandler(i32 12, double %3, double %3), !dbg !369
  %56 = fdiv double 5.000000e-01, %0, !dbg !369
  %handler_result19 = call double @fSubHandlerDouble(double %handler_result100, double %56), !dbg !371
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result9, double %handler_result19), !dbg !372
  store double %handler_result20, ptr %1, align 8, !dbg !372, !tbaa !186
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !373
  %58 = tail call double @llvm.fabs.f64(double %handler_result20), !dbg !374
  %59 = fmul double %58, 0x3CB0000000000000, !dbg !375
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result13, double %59), !dbg !376
  store double %handler_result21, ptr %57, align 8, !dbg !376, !tbaa !191
  br label %188, !dbg !377

60:                                               ; preds = %11
  %61 = fcmp olt double %0, -1.000000e+00, !dbg !378
  br i1 %61, label %62, label %99, !dbg !379

62:                                               ; preds = %60
  %handler_result22 = call double @fAddHandlerDouble(double %0, double 2.000000e+00), !dbg !380
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !259, metadata !DIExpression()), !dbg !381
  %63 = fdiv double 1.000000e+00, %0, !dbg !380
  call void @llvm.dbg.value(metadata double %63, metadata !262, metadata !DIExpression()), !dbg !381
  %handler_result23 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !382
  %64 = fdiv double 1.000000e+00, %handler_result23, !dbg !382
  call void @llvm.dbg.value(metadata double %64, metadata !263, metadata !DIExpression()), !dbg !381
  %65 = fdiv double 1.000000e+00, %handler_result22, !dbg !383
  call void @llvm.dbg.value(metadata double %65, metadata !264, metadata !DIExpression()), !dbg !381
  %66 = fmul double %handler_result22, 2.000000e+00, !dbg !384
  %handler_result24 = call double @fAddHandlerDouble(double %66, double -1.000000e+00), !dbg !385
  call void @llvm.dbg.value(metadata !314, metadata !297, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !298, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata ptr undef, metadata !299, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !301, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !302, metadata !DIExpression()), !dbg !387
  %67 = fmul double %handler_result24, 2.000000e+00, !dbg !385
  %handler_result25 = call double @fAddHandlerDouble(double %67, double 1.000000e+00), !dbg !388
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double -1.000000e+00), !dbg !389
  %68 = fmul double %handler_result26, 5.000000e-01, !dbg !389
  call void @llvm.dbg.value(metadata double %68, metadata !303, metadata !DIExpression()), !dbg !387
  %69 = fmul double %68, 2.000000e+00, !dbg !390
  call void @llvm.dbg.value(metadata double %69, metadata !304, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !305, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i32 22, metadata !300, metadata !DIExpression()), !dbg !387
  br label %70, !dbg !391

70:                                               ; preds = %70, %62
  %71 = phi i64 [ 22, %62 ], [ %81, %70 ]
  %72 = phi double [ 0.000000e+00, %62 ], [ %handler_result28, %70 ]
  %73 = phi double [ 0.000000e+00, %62 ], [ %handler_result31, %70 ]
  %74 = phi double [ 0.000000e+00, %62 ], [ %72, %70 ]
  call void @llvm.dbg.value(metadata i64 %71, metadata !300, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %72, metadata !301, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %73, metadata !305, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %74, metadata !302, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %72, metadata !306, metadata !DIExpression()), !dbg !392
  %75 = fmul double %69, %72, !dbg !393
  %handler_result27 = call double @fSubHandlerDouble(double %75, double %74), !dbg !394
  %76 = getelementptr inbounds double, ptr @psics_data, i64 %71, !dbg !394
  %77 = load double, ptr %76, align 8, !dbg !394, !tbaa !198
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double %77), !dbg !395
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !301, metadata !DIExpression()), !dbg !387
  %78 = tail call double @llvm.fabs.f64(double %75), !dbg !395
  %79 = tail call double @llvm.fabs.f64(double %74), !dbg !396
  %handler_result29 = call double @fAddHandlerDouble(double %78, double %79), !dbg !397
  %80 = tail call double @llvm.fabs.f64(double %77), !dbg !397
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double %80), !dbg !398
  %handler_result31 = call double @fAddHandlerDouble(double %73, double %handler_result30), !dbg !399
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !305, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %72, metadata !302, metadata !DIExpression()), !dbg !387
  %81 = add nsw i64 %71, -1, !dbg !399
  call void @llvm.dbg.value(metadata i64 %81, metadata !300, metadata !DIExpression()), !dbg !387
  %82 = icmp ugt i64 %71, 1, !dbg !400
  br i1 %82, label %70, label %83, !dbg !391, !llvm.loop !401

83:                                               ; preds = %70
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !310, metadata !DIExpression()), !dbg !403
  %84 = fmul double %68, %handler_result28, !dbg !404
  %handler_result32 = call double @fSubHandlerDouble(double %84, double %72), !dbg !405
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double 0xBF937C37BB231109), !dbg !406
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !301, metadata !DIExpression()), !dbg !387
  %85 = tail call double @llvm.fabs.f64(double %84), !dbg !406
  %86 = tail call double @llvm.fabs.f64(double %72), !dbg !407
  %handler_result34 = call double @fAddHandlerDouble(double %86, double %85), !dbg !408
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double 0x3F937C37BB231109), !dbg !409
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result31, double %handler_result35), !dbg !410
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !305, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !257, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !411
  %87 = fmul double %handler_result36, 0x3CB0000000000000, !dbg !410
  %handler_result37 = call double @fAddHandlerDouble(double %87, double 2.000000e-17), !dbg !412
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !257, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !411
  %handler_result38 = call double @fAddHandlerDouble(double %63, double %64), !dbg !413
  %handler_result39 = call double @fAddHandlerDouble(double %65, double %handler_result38), !dbg !414
  %handler_result40 = call double @fSubHandlerDouble(double %handler_result33, double %handler_result39), !dbg !415
  store double %handler_result40, ptr %1, align 8, !dbg !415, !tbaa !186
  %88 = tail call double @llvm.fabs.f64(double %63), !dbg !416
  %89 = fmul double %64, %64, !dbg !417
  %90 = fdiv double %0, %89, !dbg !418
  %91 = tail call double @llvm.fabs.f64(double %90), !dbg !419
  %handler_result41 = call double @fAddHandlerDouble(double %88, double %91), !dbg !420
  %92 = fmul double %65, %65, !dbg !420
  %93 = fdiv double %0, %92, !dbg !421
  %94 = tail call double @llvm.fabs.f64(double %93), !dbg !422
  %handler_result42 = call double @fAddHandlerDouble(double %94, double %handler_result41), !dbg !423
  %95 = fmul double %handler_result42, 0x3CB0000000000000, !dbg !423
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !424
  %handler_result43 = call double @fAddHandlerDouble(double %95, double %handler_result37), !dbg !425
  %97 = tail call double @llvm.fabs.f64(double %handler_result40), !dbg !425
  %98 = fmul double %97, 0x3CB0000000000000, !dbg !426
  %handler_result44 = call double @fAddHandlerDouble(double %98, double %handler_result43), !dbg !427
  store double %handler_result44, ptr %96, align 8, !dbg !427, !tbaa !191
  br label %188

99:                                               ; preds = %60
  %100 = fcmp olt double %0, 0.000000e+00, !dbg !428
  br i1 %100, label %101, label %134, !dbg !429

101:                                              ; preds = %99
  %handler_result45 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !430
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !265, metadata !DIExpression()), !dbg !431
  %102 = fdiv double 1.000000e+00, %0, !dbg !430
  call void @llvm.dbg.value(metadata double %102, metadata !268, metadata !DIExpression()), !dbg !431
  %103 = fdiv double 1.000000e+00, %handler_result45, !dbg !432
  call void @llvm.dbg.value(metadata double %103, metadata !269, metadata !DIExpression()), !dbg !431
  %104 = fmul double %handler_result45, 2.000000e+00, !dbg !433
  %handler_result46 = call double @fAddHandlerDouble(double %104, double -1.000000e+00), !dbg !434
  call void @llvm.dbg.value(metadata !314, metadata !297, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !298, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata ptr undef, metadata !299, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !301, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !302, metadata !DIExpression()), !dbg !436
  %105 = fmul double %handler_result46, 2.000000e+00, !dbg !434
  %handler_result47 = call double @fAddHandlerDouble(double %105, double 1.000000e+00), !dbg !437
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result47, double -1.000000e+00), !dbg !438
  %106 = fmul double %handler_result48, 5.000000e-01, !dbg !438
  call void @llvm.dbg.value(metadata double %106, metadata !303, metadata !DIExpression()), !dbg !436
  %107 = fmul double %106, 2.000000e+00, !dbg !439
  call void @llvm.dbg.value(metadata double %107, metadata !304, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !305, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i32 22, metadata !300, metadata !DIExpression()), !dbg !436
  br label %108, !dbg !440

108:                                              ; preds = %108, %101
  %109 = phi i64 [ 22, %101 ], [ %119, %108 ]
  %110 = phi double [ 0.000000e+00, %101 ], [ %handler_result50, %108 ]
  %111 = phi double [ 0.000000e+00, %101 ], [ %handler_result53, %108 ]
  %112 = phi double [ 0.000000e+00, %101 ], [ %110, %108 ]
  call void @llvm.dbg.value(metadata i64 %109, metadata !300, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %110, metadata !301, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %111, metadata !305, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %112, metadata !302, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %110, metadata !306, metadata !DIExpression()), !dbg !441
  %113 = fmul double %107, %110, !dbg !442
  %handler_result49 = call double @fSubHandlerDouble(double %113, double %112), !dbg !443
  %114 = getelementptr inbounds double, ptr @psics_data, i64 %109, !dbg !443
  %115 = load double, ptr %114, align 8, !dbg !443, !tbaa !198
  %handler_result50 = call double @fAddHandlerDouble(double %handler_result49, double %115), !dbg !444
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !301, metadata !DIExpression()), !dbg !436
  %116 = tail call double @llvm.fabs.f64(double %113), !dbg !444
  %117 = tail call double @llvm.fabs.f64(double %112), !dbg !445
  %handler_result51 = call double @fAddHandlerDouble(double %116, double %117), !dbg !446
  %118 = tail call double @llvm.fabs.f64(double %115), !dbg !446
  %handler_result52 = call double @fAddHandlerDouble(double %handler_result51, double %118), !dbg !447
  %handler_result53 = call double @fAddHandlerDouble(double %111, double %handler_result52), !dbg !448
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !305, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %110, metadata !302, metadata !DIExpression()), !dbg !436
  %119 = add nsw i64 %109, -1, !dbg !448
  call void @llvm.dbg.value(metadata i64 %119, metadata !300, metadata !DIExpression()), !dbg !436
  %120 = icmp ugt i64 %109, 1, !dbg !449
  br i1 %120, label %108, label %121, !dbg !440, !llvm.loop !450

121:                                              ; preds = %108
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !310, metadata !DIExpression()), !dbg !452
  %122 = fmul double %106, %handler_result50, !dbg !453
  %handler_result54 = call double @fSubHandlerDouble(double %122, double %110), !dbg !454
  %handler_result55 = call double @fAddHandlerDouble(double %handler_result54, double 0xBF937C37BB231109), !dbg !455
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !301, metadata !DIExpression()), !dbg !436
  %123 = tail call double @llvm.fabs.f64(double %122), !dbg !455
  %124 = tail call double @llvm.fabs.f64(double %110), !dbg !456
  %handler_result56 = call double @fAddHandlerDouble(double %124, double %123), !dbg !457
  %handler_result57 = call double @fAddHandlerDouble(double %handler_result56, double 0x3F937C37BB231109), !dbg !458
  %handler_result58 = call double @fAddHandlerDouble(double %handler_result53, double %handler_result57), !dbg !459
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !305, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !257, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !411
  %125 = fmul double %handler_result58, 0x3CB0000000000000, !dbg !459
  %handler_result59 = call double @fAddHandlerDouble(double %125, double 2.000000e-17), !dbg !460
  call void @llvm.dbg.value(metadata double %handler_result59, metadata !257, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !411
  %handler_result60 = call double @fAddHandlerDouble(double %102, double %103), !dbg !461
  %handler_result61 = call double @fSubHandlerDouble(double %handler_result55, double %handler_result60), !dbg !462
  store double %handler_result61, ptr %1, align 8, !dbg !462, !tbaa !186
  %126 = tail call double @llvm.fabs.f64(double %102), !dbg !463
  %127 = fmul double %103, %103, !dbg !464
  %128 = fdiv double %0, %127, !dbg !465
  %129 = tail call double @llvm.fabs.f64(double %128), !dbg !466
  %handler_result62 = call double @fAddHandlerDouble(double %126, double %129), !dbg !467
  %130 = fmul double %handler_result62, 0x3CB0000000000000, !dbg !467
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !468
  %handler_result63 = call double @fAddHandlerDouble(double %130, double %handler_result59), !dbg !469
  %132 = tail call double @llvm.fabs.f64(double %handler_result61), !dbg !469
  %133 = fmul double %132, 0x3CB0000000000000, !dbg !470
  %handler_result64 = call double @fAddHandlerDouble(double %133, double %handler_result63), !dbg !471
  store double %handler_result64, ptr %131, align 8, !dbg !471, !tbaa !191
  br label %188

134:                                              ; preds = %99
  %135 = fcmp olt double %0, 1.000000e+00, !dbg !472
  call void @llvm.dbg.value(metadata !314, metadata !297, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata !314, metadata !297, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i32 22, metadata !300, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i32 22, metadata !300, metadata !DIExpression()), !dbg !475
  br i1 %135, label %136, label %164, !dbg !477

136:                                              ; preds = %134
  %137 = fdiv double 1.000000e+00, %0, !dbg !478
  call void @llvm.dbg.value(metadata double %137, metadata !270, metadata !DIExpression()), !dbg !479
  %138 = fmul double %0, 2.000000e+00, !dbg !480
  %handler_result65 = call double @fAddHandlerDouble(double %138, double -1.000000e+00), !dbg !481
  call void @llvm.dbg.value(metadata double %handler_result65, metadata !298, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata ptr undef, metadata !299, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !301, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !302, metadata !DIExpression()), !dbg !473
  %139 = fmul double %handler_result65, 2.000000e+00, !dbg !481
  %handler_result66 = call double @fAddHandlerDouble(double %139, double 1.000000e+00), !dbg !482
  %handler_result67 = call double @fAddHandlerDouble(double %handler_result66, double -1.000000e+00), !dbg !483
  %140 = fmul double %handler_result67, 5.000000e-01, !dbg !483
  call void @llvm.dbg.value(metadata double %140, metadata !303, metadata !DIExpression()), !dbg !473
  %141 = fmul double %140, 2.000000e+00, !dbg !484
  call void @llvm.dbg.value(metadata double %141, metadata !304, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !305, metadata !DIExpression()), !dbg !473
  br label %142, !dbg !485

142:                                              ; preds = %142, %136
  %143 = phi i64 [ 22, %136 ], [ %153, %142 ]
  %144 = phi double [ 0.000000e+00, %136 ], [ %handler_result69, %142 ]
  %145 = phi double [ 0.000000e+00, %136 ], [ %handler_result72, %142 ]
  %146 = phi double [ 0.000000e+00, %136 ], [ %144, %142 ]
  call void @llvm.dbg.value(metadata i64 %143, metadata !300, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata double %144, metadata !301, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata double %145, metadata !305, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata double %146, metadata !302, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata double %144, metadata !306, metadata !DIExpression()), !dbg !486
  %147 = fmul double %141, %144, !dbg !487
  %handler_result68 = call double @fSubHandlerDouble(double %147, double %146), !dbg !488
  %148 = getelementptr inbounds double, ptr @psics_data, i64 %143, !dbg !488
  %149 = load double, ptr %148, align 8, !dbg !488, !tbaa !198
  %handler_result69 = call double @fAddHandlerDouble(double %handler_result68, double %149), !dbg !489
  call void @llvm.dbg.value(metadata double %handler_result69, metadata !301, metadata !DIExpression()), !dbg !473
  %150 = tail call double @llvm.fabs.f64(double %147), !dbg !489
  %151 = tail call double @llvm.fabs.f64(double %146), !dbg !490
  %handler_result70 = call double @fAddHandlerDouble(double %150, double %151), !dbg !491
  %152 = tail call double @llvm.fabs.f64(double %149), !dbg !491
  %handler_result71 = call double @fAddHandlerDouble(double %handler_result70, double %152), !dbg !492
  %handler_result72 = call double @fAddHandlerDouble(double %145, double %handler_result71), !dbg !493
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !305, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata double %144, metadata !302, metadata !DIExpression()), !dbg !473
  %153 = add nsw i64 %143, -1, !dbg !493
  call void @llvm.dbg.value(metadata i64 %153, metadata !300, metadata !DIExpression()), !dbg !473
  %154 = icmp ugt i64 %143, 1, !dbg !494
  br i1 %154, label %142, label %155, !dbg !485, !llvm.loop !495

155:                                              ; preds = %142
  call void @llvm.dbg.value(metadata double %handler_result69, metadata !310, metadata !DIExpression()), !dbg !497
  %156 = fmul double %140, %handler_result69, !dbg !498
  %handler_result73 = call double @fSubHandlerDouble(double %156, double %144), !dbg !499
  %handler_result74 = call double @fAddHandlerDouble(double %handler_result73, double 0xBF937C37BB231109), !dbg !500
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !301, metadata !DIExpression()), !dbg !473
  %157 = tail call double @llvm.fabs.f64(double %156), !dbg !500
  %158 = tail call double @llvm.fabs.f64(double %144), !dbg !501
  %handler_result75 = call double @fAddHandlerDouble(double %158, double %157), !dbg !502
  %handler_result76 = call double @fAddHandlerDouble(double %handler_result75, double 0x3F937C37BB231109), !dbg !503
  %handler_result77 = call double @fAddHandlerDouble(double %handler_result72, double %handler_result76), !dbg !504
  call void @llvm.dbg.value(metadata double %handler_result77, metadata !305, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !257, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !411
  %159 = fmul double %handler_result77, 0x3CB0000000000000, !dbg !504
  %handler_result78 = call double @fAddHandlerDouble(double %159, double 2.000000e-17), !dbg !505
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !257, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !411
  %handler_result79 = call double @fSubHandlerDouble(double %handler_result74, double %137), !dbg !506
  store double %handler_result79, ptr %1, align 8, !dbg !506, !tbaa !186
  %160 = fmul double %137, 0x3CB0000000000000, !dbg !507
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !508
  %handler_result80 = call double @fAddHandlerDouble(double %160, double %handler_result78), !dbg !509
  %162 = tail call double @llvm.fabs.f64(double %handler_result79), !dbg !509
  %163 = fmul double %162, 0x3CB0000000000000, !dbg !510
  %handler_result81 = call double @fAddHandlerDouble(double %163, double %handler_result80), !dbg !511
  store double %handler_result81, ptr %161, align 8, !dbg !511, !tbaa !191
  br label %188

164:                                              ; preds = %134
  %handler_result82 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !512
  call void @llvm.dbg.value(metadata double %handler_result82, metadata !273, metadata !DIExpression()), !dbg !513
  %165 = fmul double %handler_result82, 2.000000e+00, !dbg !512
  %handler_result83 = call double @fAddHandlerDouble(double %165, double -1.000000e+00), !dbg !514
  call void @llvm.dbg.value(metadata double %handler_result83, metadata !298, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata ptr %1, metadata !299, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !301, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !302, metadata !DIExpression()), !dbg !475
  %166 = fmul double %handler_result83, 2.000000e+00, !dbg !514
  %handler_result84 = call double @fAddHandlerDouble(double %166, double 1.000000e+00), !dbg !515
  %handler_result85 = call double @fAddHandlerDouble(double %handler_result84, double -1.000000e+00), !dbg !516
  %167 = fmul double %handler_result85, 5.000000e-01, !dbg !516
  call void @llvm.dbg.value(metadata double %167, metadata !303, metadata !DIExpression()), !dbg !475
  %168 = fmul double %167, 2.000000e+00, !dbg !517
  call void @llvm.dbg.value(metadata double %168, metadata !304, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !305, metadata !DIExpression()), !dbg !475
  br label %169, !dbg !518

169:                                              ; preds = %169, %164
  %170 = phi i64 [ 22, %164 ], [ %180, %169 ]
  %171 = phi double [ 0.000000e+00, %164 ], [ %handler_result87, %169 ]
  %172 = phi double [ 0.000000e+00, %164 ], [ %handler_result90, %169 ]
  %173 = phi double [ 0.000000e+00, %164 ], [ %171, %169 ]
  call void @llvm.dbg.value(metadata i64 %170, metadata !300, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata double %171, metadata !301, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata double %172, metadata !305, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata double %173, metadata !302, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata double %171, metadata !306, metadata !DIExpression()), !dbg !519
  %174 = fmul double %168, %171, !dbg !520
  %handler_result86 = call double @fSubHandlerDouble(double %174, double %173), !dbg !521
  %175 = getelementptr inbounds double, ptr @psics_data, i64 %170, !dbg !521
  %176 = load double, ptr %175, align 8, !dbg !521, !tbaa !198
  %handler_result87 = call double @fAddHandlerDouble(double %handler_result86, double %176), !dbg !522
  call void @llvm.dbg.value(metadata double %handler_result87, metadata !301, metadata !DIExpression()), !dbg !475
  %177 = tail call double @llvm.fabs.f64(double %174), !dbg !522
  %178 = tail call double @llvm.fabs.f64(double %173), !dbg !523
  %handler_result88 = call double @fAddHandlerDouble(double %177, double %178), !dbg !524
  %179 = tail call double @llvm.fabs.f64(double %176), !dbg !524
  %handler_result89 = call double @fAddHandlerDouble(double %handler_result88, double %179), !dbg !525
  %handler_result90 = call double @fAddHandlerDouble(double %172, double %handler_result89), !dbg !526
  call void @llvm.dbg.value(metadata double %handler_result90, metadata !305, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata double %171, metadata !302, metadata !DIExpression()), !dbg !475
  %180 = add nsw i64 %170, -1, !dbg !526
  call void @llvm.dbg.value(metadata i64 %180, metadata !300, metadata !DIExpression()), !dbg !475
  %181 = icmp ugt i64 %170, 1, !dbg !527
  br i1 %181, label %169, label %182, !dbg !518, !llvm.loop !528

182:                                              ; preds = %169
  call void @llvm.dbg.value(metadata double %handler_result87, metadata !310, metadata !DIExpression()), !dbg !530
  %183 = fmul double %167, %handler_result87, !dbg !531
  %handler_result91 = call double @fSubHandlerDouble(double %183, double %171), !dbg !532
  %handler_result92 = call double @fAddHandlerDouble(double %handler_result91, double 0xBF937C37BB231109), !dbg !533
  call void @llvm.dbg.value(metadata double %handler_result92, metadata !301, metadata !DIExpression()), !dbg !475
  %184 = tail call double @llvm.fabs.f64(double %183), !dbg !533
  %185 = tail call double @llvm.fabs.f64(double %171), !dbg !534
  %handler_result93 = call double @fAddHandlerDouble(double %185, double %184), !dbg !535
  %handler_result94 = call double @fAddHandlerDouble(double %handler_result93, double 0x3F937C37BB231109), !dbg !536
  %handler_result95 = call double @fAddHandlerDouble(double %handler_result90, double %handler_result94), !dbg !537
  call void @llvm.dbg.value(metadata double %handler_result95, metadata !305, metadata !DIExpression()), !dbg !475
  store double %handler_result92, ptr %1, align 8, !dbg !537, !tbaa !186
  %186 = fmul double %handler_result95, 0x3CB0000000000000, !dbg !538
  %handler_result96 = call double @fAddHandlerDouble(double %186, double 2.000000e-17), !dbg !539
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !539
  store double %handler_result96, ptr %187, align 8, !dbg !540, !tbaa !191
  br label %188

188:                                              ; preds = %182, %155, %121, %83, %55, %44, %42, %9
  %189 = phi i32 [ 1, %9 ], [ 0, %55 ], [ 1, %42 ], [ 0, %44 ], [ 0, %182 ], [ 0, %155 ], [ 0, %121 ], [ 0, %83 ], !dbg !541
  ret i32 %189, !dbg !542
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_psi_1piy_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 !dbg !543 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !545, metadata !DIExpression()), !dbg !575
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !546, metadata !DIExpression()), !dbg !575
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !576
  tail call void @llvm.dbg.value(metadata double %3, metadata !547, metadata !DIExpression()), !dbg !575
  %4 = fcmp ogt double %3, 1.000000e+03, !dbg !577
  br i1 %4, label %5, label %16, !dbg !578

5:                                                ; preds = %2
  %6 = fmul double %0, %0, !dbg !579
  %7 = fdiv double 1.000000e+00, %6, !dbg !580
  tail call void @llvm.dbg.value(metadata double %7, metadata !548, metadata !DIExpression()), !dbg !581
  %handler_result45 = call double @callHandler(i32 12, double %3, double %3), !dbg !582
  tail call void @llvm.dbg.value(metadata double %handler_result45, metadata !551, metadata !DIExpression()), !dbg !581
  %8 = fmul double %7, 0x3F81111111111111, !dbg !582
  %handler_result = call double @fAddHandlerDouble(double %8, double 0x3FB5555555555555), !dbg !583
  %9 = fmul double %7, 0x3F70410410410410, !dbg !583
  %10 = fmul double %7, %9, !dbg !584
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %10), !dbg !585
  %11 = fmul double %7, %handler_result1, !dbg !585
  tail call void @llvm.dbg.value(metadata double %11, metadata !552, metadata !DIExpression()), !dbg !581
  %handler_result2 = call double @fAddHandlerDouble(double %11, double %handler_result45), !dbg !586
  store double %handler_result2, ptr %1, align 8, !dbg !586, !tbaa !186
  %12 = tail call double @llvm.fabs.f64(double %handler_result45), !dbg !587
  %13 = tail call double @llvm.fabs.f64(double %11), !dbg !588
  %handler_result3 = call double @fAddHandlerDouble(double %13, double %12), !dbg !589
  %14 = fmul double %handler_result3, 0x3CC0000000000000, !dbg !589
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !590
  store double %14, ptr %15, align 8, !dbg !591, !tbaa !191
  br label %94

16:                                               ; preds = %2
  %17 = fcmp ogt double %3, 1.000000e+01, !dbg !592
  br i1 %17, label %18, label %31, !dbg !593

18:                                               ; preds = %16
  %19 = fmul double %0, %0, !dbg !594
  %20 = fdiv double 1.000000e+00, %19, !dbg !595
  tail call void @llvm.dbg.value(metadata double %20, metadata !553, metadata !DIExpression()), !dbg !596
  %handler_result46 = call double @callHandler(i32 12, double %3, double %3), !dbg !597
  tail call void @llvm.dbg.value(metadata double %handler_result46, metadata !556, metadata !DIExpression()), !dbg !596
  %21 = fmul double %20, 0x3F95995995995996, !dbg !597
  %handler_result4 = call double @fAddHandlerDouble(double %21, double 0x3F7F07C1F07C1F08), !dbg !598
  %22 = fmul double %20, %handler_result4, !dbg !598
  %handler_result5 = call double @fAddHandlerDouble(double %22, double 0x3F71111111111111), !dbg !599
  %23 = fmul double %20, %handler_result5, !dbg !599
  %handler_result6 = call double @fAddHandlerDouble(double %23, double 0x3F70410410410410), !dbg !600
  %24 = fmul double %20, %handler_result6, !dbg !600
  %handler_result7 = call double @fAddHandlerDouble(double %24, double 0x3F81111111111111), !dbg !601
  %25 = fmul double %20, %handler_result7, !dbg !601
  %handler_result8 = call double @fAddHandlerDouble(double %25, double 0x3FB5555555555555), !dbg !602
  %26 = fmul double %20, %handler_result8, !dbg !602
  tail call void @llvm.dbg.value(metadata double %26, metadata !557, metadata !DIExpression()), !dbg !596
  %handler_result9 = call double @fAddHandlerDouble(double %26, double %handler_result46), !dbg !603
  store double %handler_result9, ptr %1, align 8, !dbg !603, !tbaa !186
  %27 = tail call double @llvm.fabs.f64(double %handler_result46), !dbg !604
  %28 = tail call double @llvm.fabs.f64(double %26), !dbg !605
  %handler_result10 = call double @fAddHandlerDouble(double %28, double %27), !dbg !606
  %29 = fmul double %handler_result10, 0x3CC0000000000000, !dbg !606
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !607
  store double %29, ptr %30, align 8, !dbg !608, !tbaa !191
  br label %94

31:                                               ; preds = %16
  %32 = fcmp ogt double %3, 1.000000e+00, !dbg !609
  %33 = fmul double %0, %0, !dbg !610
  br i1 %32, label %34, label %67, !dbg !611

34:                                               ; preds = %31
  tail call void @llvm.dbg.value(metadata double %33, metadata !558, metadata !DIExpression()), !dbg !612
  %35 = fmul double %3, 2.000000e+00, !dbg !613
  %handler_result11 = call double @fAddHandlerDouble(double %35, double -1.100000e+01), !dbg !614
  %36 = fdiv double %handler_result11, 9.000000e+00, !dbg !614
  tail call void @llvm.dbg.value(metadata double %36, metadata !561, metadata !DIExpression()), !dbg !612
  %handler_result12 = call double @fAddHandlerDouble(double %33, double 1.000000e+00), !dbg !615
  %37 = fdiv double 1.000000e+00, %handler_result12, !dbg !615
  %handler_result13 = call double @fAddHandlerDouble(double %33, double 4.000000e+00), !dbg !616
  %38 = fdiv double 5.000000e-01, %handler_result13, !dbg !616
  %handler_result14 = call double @fAddHandlerDouble(double %37, double %38), !dbg !617
  %39 = fmul double %33, %handler_result14, !dbg !617
  tail call void @llvm.dbg.value(metadata double %39, metadata !562, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata !314, metadata !297, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata double %36, metadata !298, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata ptr undef, metadata !299, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !301, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !302, metadata !DIExpression()), !dbg !618
  %40 = fmul double %36, 2.000000e+00, !dbg !620
  %handler_result15 = call double @fAddHandlerDouble(double %40, double 1.000000e+00), !dbg !621
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double -1.000000e+00), !dbg !622
  %41 = fmul double %handler_result16, 5.000000e-01, !dbg !622
  call void @llvm.dbg.value(metadata double %41, metadata !303, metadata !DIExpression()), !dbg !618
  %42 = fmul double %41, 2.000000e+00, !dbg !623
  call void @llvm.dbg.value(metadata double %42, metadata !304, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !305, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i32 29, metadata !300, metadata !DIExpression()), !dbg !618
  br label %43, !dbg !624

43:                                               ; preds = %43, %34
  %44 = phi i64 [ 29, %34 ], [ %54, %43 ]
  %45 = phi double [ 0.000000e+00, %34 ], [ %handler_result18, %43 ]
  %46 = phi double [ 0.000000e+00, %34 ], [ %handler_result21, %43 ]
  %47 = phi double [ 0.000000e+00, %34 ], [ %45, %43 ]
  call void @llvm.dbg.value(metadata i64 %44, metadata !300, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata double %45, metadata !301, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata double %46, metadata !305, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata double %47, metadata !302, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata double %45, metadata !306, metadata !DIExpression()), !dbg !625
  %48 = fmul double %42, %45, !dbg !626
  %handler_result17 = call double @fSubHandlerDouble(double %48, double %47), !dbg !627
  %49 = getelementptr inbounds double, ptr @r1py_data, i64 %44, !dbg !627
  %50 = load double, ptr %49, align 8, !dbg !627, !tbaa !198
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double %50), !dbg !628
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !301, metadata !DIExpression()), !dbg !618
  %51 = tail call double @llvm.fabs.f64(double %48), !dbg !628
  %52 = tail call double @llvm.fabs.f64(double %47), !dbg !629
  %handler_result19 = call double @fAddHandlerDouble(double %51, double %52), !dbg !630
  %53 = tail call double @llvm.fabs.f64(double %50), !dbg !630
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %53), !dbg !631
  %handler_result21 = call double @fAddHandlerDouble(double %46, double %handler_result20), !dbg !632
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !305, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata double %45, metadata !302, metadata !DIExpression()), !dbg !618
  %54 = add nsw i64 %44, -1, !dbg !632
  call void @llvm.dbg.value(metadata i64 %54, metadata !300, metadata !DIExpression()), !dbg !618
  %55 = icmp ugt i64 %44, 1, !dbg !633
  br i1 %55, label %43, label %56, !dbg !624, !llvm.loop !634

56:                                               ; preds = %43
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !310, metadata !DIExpression()), !dbg !636
  %57 = fmul double %41, %handler_result18, !dbg !637
  %handler_result22 = call double @fSubHandlerDouble(double %57, double %45), !dbg !638
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double 0x3FE99506A303E2E2), !dbg !639
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !301, metadata !DIExpression()), !dbg !618
  %58 = tail call double @llvm.fabs.f64(double %57), !dbg !639
  %59 = tail call double @llvm.fabs.f64(double %45), !dbg !640
  %handler_result24 = call double @fAddHandlerDouble(double %59, double %58), !dbg !641
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 0x3FE99506A303E2E2), !dbg !642
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result21, double %handler_result25), !dbg !643
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !305, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !563, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !612
  %60 = fmul double %handler_result26, 0x3CB0000000000000, !dbg !643
  %handler_result27 = call double @fAddHandlerDouble(double %60, double 0x3CE3834B06E0BA6B), !dbg !644
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !563, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !612
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result23, double 0xBFE2788CFC6FB619), !dbg !645
  %handler_result29 = call double @fAddHandlerDouble(double %39, double %handler_result28), !dbg !646
  store double %handler_result29, ptr %1, align 8, !dbg !646, !tbaa !186
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !647
  %handler_result30 = call double @fAddHandlerDouble(double %39, double 0x3FE2788CFC6FB619), !dbg !648
  %62 = tail call double @llvm.fabs.f64(double %handler_result23), !dbg !648
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result30, double %62), !dbg !649
  %63 = fmul double %handler_result31, 0x3CC0000000000000, !dbg !649
  %handler_result32 = call double @fAddHandlerDouble(double %63, double %handler_result27), !dbg !650
  %64 = tail call double @llvm.fabs.f64(double %handler_result29), !dbg !650
  %65 = fmul double %64, 0x3CC0000000000000, !dbg !651
  %handler_result33 = call double @fAddHandlerDouble(double %65, double %handler_result32), !dbg !652
  %66 = fmul double %handler_result33, 5.000000e+00, !dbg !652
  store double %66, ptr %61, align 8, !dbg !652, !tbaa !191
  br label %94

67:                                               ; preds = %31
  tail call void @llvm.dbg.value(metadata i32 50, metadata !564, metadata !DIExpression()), !dbg !653
  tail call void @llvm.dbg.value(metadata double %33, metadata !566, metadata !DIExpression()), !dbg !653
  tail call void @llvm.dbg.value(metadata double 0x3F29B202BB4B83AC, metadata !567, metadata !DIExpression()), !dbg !653
  tail call void @llvm.dbg.value(metadata double 0x3E64A151E0278CCF, metadata !568, metadata !DIExpression()), !dbg !653
  tail call void @llvm.dbg.value(metadata double 0x3DA614EA0A67BC29, metadata !569, metadata !DIExpression()), !dbg !653
  tail call void @llvm.dbg.value(metadata double 0x3CEA961904954325, metadata !570, metadata !DIExpression()), !dbg !653
  %68 = fmul double %33, 0x3CEA961904954325, !dbg !654
  %handler_result34 = call double @fSubHandlerDouble(double 0x3DA614EA0A67BC29, double %68), !dbg !655
  %69 = fmul double %33, %handler_result34, !dbg !655
  %handler_result35 = call double @fAddHandlerDouble(double %69, double 0xBE64A151E0278CCF), !dbg !656
  %70 = fmul double %33, %handler_result35, !dbg !656
  tail call void @llvm.dbg.value(metadata double %handler_result40, metadata !571, metadata !DIExpression()), !dbg !653
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !572, metadata !DIExpression()), !dbg !653
  tail call void @llvm.dbg.value(metadata i32 1, metadata !574, metadata !DIExpression()), !dbg !653
  br label %71, !dbg !657

71:                                               ; preds = %71, %67
  %72 = phi i32 [ 1, %67 ], [ %85, %71 ]
  %73 = phi double [ 0.000000e+00, %67 ], [ %handler_result39, %71 ]
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !574, metadata !DIExpression()), !dbg !653
  tail call void @llvm.dbg.value(metadata double %73, metadata !572, metadata !DIExpression()), !dbg !653
  %74 = sitofp i32 %72 to double, !dbg !659
  %75 = mul nuw nsw i32 %72, %72, !dbg !662
  %76 = sitofp i32 %75 to double, !dbg !663
  %handler_result36 = call double @fAddHandlerDouble(double %33, double %76), !dbg !664
  %77 = fmul double %handler_result36, %74, !dbg !664
  %78 = fdiv double 1.000000e+00, %77, !dbg !665
  %handler_result37 = call double @fAddHandlerDouble(double %73, double %78), !dbg !666
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !572, metadata !DIExpression()), !dbg !653
  %79 = add nuw nsw i32 %72, 1, !dbg !666
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !574, metadata !DIExpression()), !dbg !653
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !574, metadata !DIExpression()), !dbg !653
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !572, metadata !DIExpression()), !dbg !653
  %80 = sitofp i32 %79 to double, !dbg !659
  %81 = mul nuw nsw i32 %79, %79, !dbg !662
  %82 = sitofp i32 %81 to double, !dbg !663
  %handler_result38 = call double @fAddHandlerDouble(double %33, double %82), !dbg !664
  %83 = fmul double %handler_result38, %80, !dbg !664
  %84 = fdiv double 1.000000e+00, %83, !dbg !665
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result37, double %84), !dbg !666
  tail call void @llvm.dbg.value(metadata double %handler_result39, metadata !572, metadata !DIExpression()), !dbg !653
  %85 = add nuw nsw i32 %72, 2, !dbg !666
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !574, metadata !DIExpression()), !dbg !653
  %86 = icmp eq i32 %85, 51, !dbg !667
  br i1 %86, label %87, label %71, !dbg !657, !llvm.loop !668

87:                                               ; preds = %71
  %handler_result40 = call double @fAddHandlerDouble(double %70, double 0x3F29B202BB4B83AC), !dbg !670
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double %handler_result39), !dbg !671
  %88 = fmul double %33, %handler_result41, !dbg !671
  tail call void @llvm.dbg.value(metadata double %88, metadata !573, metadata !DIExpression()), !dbg !653
  %handler_result42 = call double @fAddHandlerDouble(double %88, double 0xBFE2788CFC6FB619), !dbg !672
  store double %handler_result42, ptr %1, align 8, !dbg !672, !tbaa !186
  %89 = tail call double @llvm.fabs.f64(double %88), !dbg !673
  %handler_result43 = call double @fAddHandlerDouble(double %89, double 0x3FE2788CFC6FB619), !dbg !674
  %90 = fmul double %handler_result43, 0x3CB0000000000000, !dbg !674
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !675
  %92 = tail call double @llvm.fabs.f64(double %handler_result42), !dbg !676
  %93 = fmul double %92, 0x3CC0000000000000, !dbg !677
  %handler_result44 = call double @fAddHandlerDouble(double %90, double %93), !dbg !678
  store double %handler_result44, ptr %91, align 8, !dbg !678, !tbaa !191
  br label %94

94:                                               ; preds = %87, %56, %18, %5
  ret i32 0, !dbg !679
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_psi_1_int_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !680 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !682, metadata !DIExpression()), !dbg !692
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !683, metadata !DIExpression()), !dbg !692
  %3 = icmp slt i32 %0, 1, !dbg !693
  br i1 %3, label %4, label %6, !dbg !694

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !695, !tbaa !186
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !695
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !695, !tbaa !191
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 699, i32 noundef 1) #6, !dbg !698
  br label %29, !dbg !698

6:                                                ; preds = %2
  %7 = icmp ult i32 %0, 101, !dbg !700
  br i1 %7, label %8, label %14, !dbg !701

8:                                                ; preds = %6
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds [101 x double], ptr @psi_1_table, i64 0, i64 %9, !dbg !702
  %11 = load double, ptr %10, align 8, !dbg !702, !tbaa !198
  store double %11, ptr %1, align 8, !dbg !704, !tbaa !186
  %12 = fmul double %11, 0x3CB0000000000000, !dbg !705
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !706
  store double %12, ptr %13, align 8, !dbg !707, !tbaa !191
  br label %29, !dbg !708

14:                                               ; preds = %6
  tail call void @llvm.dbg.value(metadata double 0xBFA1111111111111, metadata !684, metadata !DIExpression()), !dbg !709
  tail call void @llvm.dbg.value(metadata double 0x3F98618618618618, metadata !688, metadata !DIExpression()), !dbg !709
  tail call void @llvm.dbg.value(metadata double 0xBFA1111111111111, metadata !689, metadata !DIExpression()), !dbg !709
  %15 = sitofp i32 %0 to double, !dbg !710
  %16 = fdiv double 1.000000e+00, %15, !dbg !711
  %17 = fmul double %16, %16, !dbg !712
  tail call void @llvm.dbg.value(metadata double %17, metadata !690, metadata !DIExpression()), !dbg !709
  %18 = fmul double %17, %17, !dbg !713
  %19 = fmul double %17, 0x3FA1111111111111, !dbg !714
  %handler_result = call double @fSubHandlerDouble(double 0x3F98618618618618, double %19), !dbg !715
  %20 = fmul double %17, %handler_result, !dbg !715
  %handler_result1 = call double @fAddHandlerDouble(double %20, double 0xBFA1111111111111), !dbg !716
  %21 = fmul double %18, %handler_result1, !dbg !716
  tail call void @llvm.dbg.value(metadata double %21, metadata !691, metadata !DIExpression()), !dbg !709
  %22 = fdiv double 5.000000e-01, %15, !dbg !717
  %handler_result2 = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !718
  %23 = fmul double %15, 6.000000e+00, !dbg !718
  %24 = fmul double %23, %15, !dbg !719
  %25 = fdiv double 1.000000e+00, %24, !dbg !720
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %25), !dbg !721
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %21), !dbg !722
  %26 = fdiv double %handler_result4, %15, !dbg !722
  store double %26, ptr %1, align 8, !dbg !723, !tbaa !186
  %27 = fmul double %26, 0x3CB0000000000000, !dbg !724
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !725
  store double %27, ptr %28, align 8, !dbg !726, !tbaa !191
  br label %29

29:                                               ; preds = %14, %8, %4
  %30 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %14 ], !dbg !727
  ret i32 %30, !dbg !728
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_psi_1_e(double noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !729 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !748
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !749
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !750
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !751
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !752
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !753
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !754
  call void @llvm.dbg.assign(metadata i1 undef, metadata !746, metadata !DIExpression(), metadata !754, metadata ptr %9, metadata !DIExpression()), !dbg !755
  tail call void @llvm.dbg.value(metadata double %0, metadata !731, metadata !DIExpression()), !dbg !756
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !732, metadata !DIExpression()), !dbg !756
  %10 = fcmp oeq double %0, 0.000000e+00, !dbg !757
  %11 = fcmp oeq double %0, -1.000000e+00
  %12 = or i1 %10, %11, !dbg !758
  %13 = fcmp oeq double %0, -2.000000e+00
  %14 = or i1 %13, %12, !dbg !758
  br i1 %14, label %15, label %17, !dbg !758

15:                                               ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !759, !tbaa !186
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !759
  store double 0x7FF8000000000000, ptr %16, align 8, !dbg !759, !tbaa !191
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 727, i32 noundef 1) #6, !dbg !762
  br label %129, !dbg !762

17:                                               ; preds = %2
  %18 = fcmp ogt double %0, 0.000000e+00, !dbg !764
  br i1 %18, label %19, label %33, !dbg !765

19:                                               ; preds = %17
  call void @llvm.dbg.assign(metadata i1 undef, metadata !766, metadata !DIExpression(), metadata !752, metadata ptr %7, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.assign(metadata i1 undef, metadata !776, metadata !DIExpression(), metadata !753, metadata ptr %8, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata i32 1, metadata !773, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata double %0, metadata !774, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata ptr %1, metadata !775, metadata !DIExpression()), !dbg !783
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !784
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !785
  %20 = call i32 @gsl_sf_hzeta_e(double noundef 2.000000e+00, double noundef %0, ptr noundef nonnull %8) #6, !dbg !786
  call void @llvm.dbg.value(metadata i32 %20, metadata !777, metadata !DIExpression()), !dbg !780
  %21 = call i32 @gsl_sf_lnfact_e(i32 noundef 1, ptr noundef nonnull %7) #6, !dbg !787
  call void @llvm.dbg.value(metadata i32 %21, metadata !778, metadata !DIExpression()), !dbg !780
  %22 = load double, ptr %7, align 8, !dbg !788, !tbaa !186
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !789
  %24 = load double, ptr %23, align 8, !dbg !789, !tbaa !191
  %25 = load double, ptr %8, align 8, !dbg !790, !tbaa !186
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !791
  %27 = load double, ptr %26, align 8, !dbg !791, !tbaa !191
  %28 = call i32 @gsl_sf_exp_mult_err_e(double noundef %22, double noundef %24, double noundef %25, double noundef %27, ptr noundef %1) #6, !dbg !792
  call void @llvm.dbg.value(metadata i32 %28, metadata !779, metadata !DIExpression()), !dbg !780
  %29 = icmp eq i32 %28, 0, !dbg !793
  %30 = icmp eq i32 %21, 0, !dbg !793
  %31 = select i1 %30, i32 %20, i32 %21, !dbg !793
  %32 = select i1 %29, i32 %31, i32 %28, !dbg !793
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !794
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !794
  br label %129, !dbg !795

33:                                               ; preds = %17
  %34 = fcmp ogt double %0, -5.000000e+00, !dbg !796
  br i1 %34, label %35, label %107, !dbg !797

35:                                               ; preds = %33
  %36 = tail call double @llvm.floor.f64(double %0), !dbg !798
  %37 = fneg double %36, !dbg !799
  %38 = fptosi double %37 to i32, !dbg !799
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !733, metadata !DIExpression()), !dbg !800
  %39 = sitofp i32 %38 to double, !dbg !801
  %handler_result = call double @fAddHandlerDouble(double %39, double %0), !dbg !802
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !738, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !739, metadata !DIExpression()), !dbg !800
  %40 = fcmp oeq double %handler_result, 0.000000e+00, !dbg !802
  br i1 %40, label %48, label %41, !dbg !804

41:                                               ; preds = %35
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !739, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata i32 0, metadata !740, metadata !DIExpression()), !dbg !800
  %42 = icmp sgt i32 %38, 0, !dbg !805
  br i1 %42, label %43, label %87, !dbg !808

43:                                               ; preds = %41
  %44 = and i32 %38, 3, !dbg !808
  %45 = icmp ult i32 %38, 4, !dbg !808
  br i1 %45, label %72, label %46, !dbg !808

46:                                               ; preds = %43
  %47 = and i32 %38, 2147483644, !dbg !808
  br label %50, !dbg !808

48:                                               ; preds = %35
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !809, !tbaa !186
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !809
  store double 0x7FF8000000000000, ptr %49, align 8, !dbg !809, !tbaa !191
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 742, i32 noundef 1) #6, !dbg !811
  br label %129, !dbg !811

50:                                               ; preds = %50, %46
  %51 = phi double [ 0.000000e+00, %46 ], [ %handler_result8, %50 ]
  %52 = phi i32 [ 0, %46 ], [ %69, %50 ]
  %53 = phi i32 [ 0, %46 ], [ %70, %50 ]
  tail call void @llvm.dbg.value(metadata double %51, metadata !739, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !740, metadata !DIExpression()), !dbg !800
  %54 = sitofp i32 %52 to double, !dbg !813
  %handler_result1 = call double @fAddHandlerDouble(double %54, double %0), !dbg !814
  %55 = fmul double %handler_result1, %handler_result1, !dbg !814
  %56 = fdiv double 1.000000e+00, %55, !dbg !815
  %handler_result2 = call double @fAddHandlerDouble(double %51, double %56), !dbg !816
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !739, metadata !DIExpression()), !dbg !800
  %57 = or disjoint i32 %52, 1, !dbg !816
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !740, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !739, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !740, metadata !DIExpression()), !dbg !800
  %58 = sitofp i32 %57 to double, !dbg !813
  %handler_result3 = call double @fAddHandlerDouble(double %58, double %0), !dbg !814
  %59 = fmul double %handler_result3, %handler_result3, !dbg !814
  %60 = fdiv double 1.000000e+00, %59, !dbg !815
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result2, double %60), !dbg !816
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !739, metadata !DIExpression()), !dbg !800
  %61 = or disjoint i32 %52, 2, !dbg !816
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !740, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !739, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !740, metadata !DIExpression()), !dbg !800
  %62 = sitofp i32 %61 to double, !dbg !813
  %handler_result5 = call double @fAddHandlerDouble(double %62, double %0), !dbg !814
  %63 = fmul double %handler_result5, %handler_result5, !dbg !814
  %64 = fdiv double 1.000000e+00, %63, !dbg !815
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result4, double %64), !dbg !816
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !739, metadata !DIExpression()), !dbg !800
  %65 = or disjoint i32 %52, 3, !dbg !816
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !740, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !739, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !740, metadata !DIExpression()), !dbg !800
  %66 = sitofp i32 %65 to double, !dbg !813
  %handler_result7 = call double @fAddHandlerDouble(double %66, double %0), !dbg !814
  %67 = fmul double %handler_result7, %handler_result7, !dbg !814
  %68 = fdiv double 1.000000e+00, %67, !dbg !815
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result6, double %68), !dbg !816
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !739, metadata !DIExpression()), !dbg !800
  %69 = add nuw nsw i32 %52, 4, !dbg !816
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !740, metadata !DIExpression()), !dbg !800
  %70 = add i32 %53, 4, !dbg !808
  %71 = icmp eq i32 %70, %47, !dbg !808
  br i1 %71, label %72, label %50, !dbg !808, !llvm.loop !817

72:                                               ; preds = %50, %43
  %73 = phi double [ undef, %43 ], [ %handler_result8, %50 ]
  %74 = phi double [ 0.000000e+00, %43 ], [ %handler_result8, %50 ]
  %75 = phi i32 [ 0, %43 ], [ %69, %50 ]
  %76 = icmp eq i32 %44, 0, !dbg !808
  br i1 %76, label %87, label %77, !dbg !808

77:                                               ; preds = %77, %72
  %78 = phi double [ %handler_result10, %77 ], [ %74, %72 ]
  %79 = phi i32 [ %84, %77 ], [ %75, %72 ]
  %80 = phi i32 [ %85, %77 ], [ 0, %72 ]
  tail call void @llvm.dbg.value(metadata double %78, metadata !739, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !740, metadata !DIExpression()), !dbg !800
  %81 = sitofp i32 %79 to double, !dbg !813
  %handler_result9 = call double @fAddHandlerDouble(double %81, double %0), !dbg !814
  %82 = fmul double %handler_result9, %handler_result9, !dbg !814
  %83 = fdiv double 1.000000e+00, %82, !dbg !815
  %handler_result10 = call double @fAddHandlerDouble(double %78, double %83), !dbg !816
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !739, metadata !DIExpression()), !dbg !800
  %84 = add nuw nsw i32 %79, 1, !dbg !816
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !740, metadata !DIExpression()), !dbg !800
  %85 = add i32 %80, 1, !dbg !808
  %86 = icmp eq i32 %85, %44, !dbg !808
  br i1 %86, label %87, label %77, !dbg !808, !llvm.loop !819

87:                                               ; preds = %77, %72, %41
  %88 = phi double [ 0.000000e+00, %41 ], [ %73, %72 ], [ %handler_result10, %77 ], !dbg !800
  call void @llvm.dbg.assign(metadata i1 undef, metadata !766, metadata !DIExpression(), metadata !750, metadata ptr %5, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.assign(metadata i1 undef, metadata !776, metadata !DIExpression(), metadata !751, metadata ptr %6, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i32 1, metadata !773, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata double %handler_result, metadata !774, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr %1, metadata !775, metadata !DIExpression()), !dbg !823
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !824
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !825
  %89 = call i32 @gsl_sf_hzeta_e(double noundef 2.000000e+00, double noundef %handler_result, ptr noundef nonnull %6) #6, !dbg !826
  call void @llvm.dbg.value(metadata i32 %89, metadata !777, metadata !DIExpression()), !dbg !821
  %90 = call i32 @gsl_sf_lnfact_e(i32 noundef 1, ptr noundef nonnull %5) #6, !dbg !827
  call void @llvm.dbg.value(metadata i32 %90, metadata !778, metadata !DIExpression()), !dbg !821
  %91 = load double, ptr %5, align 8, !dbg !828, !tbaa !186
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !829
  %93 = load double, ptr %92, align 8, !dbg !829, !tbaa !191
  %94 = load double, ptr %6, align 8, !dbg !830, !tbaa !186
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !831
  %96 = load double, ptr %95, align 8, !dbg !831, !tbaa !191
  %97 = call i32 @gsl_sf_exp_mult_err_e(double noundef %91, double noundef %93, double noundef %94, double noundef %96, ptr noundef %1) #6, !dbg !832
  call void @llvm.dbg.value(metadata i32 %97, metadata !779, metadata !DIExpression()), !dbg !821
  %98 = icmp eq i32 %97, 0, !dbg !833
  %99 = icmp eq i32 %90, 0, !dbg !833
  %100 = select i1 %99, i32 %89, i32 %90, !dbg !833
  %101 = select i1 %98, i32 %100, i32 %97, !dbg !833
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !834
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !834
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !741, metadata !DIExpression()), !dbg !835
  %102 = load double, ptr %1, align 8, !dbg !836, !tbaa !186
  %handler_result11 = call double @fAddHandlerDouble(double %88, double %102), !dbg !836
  store double %handler_result11, ptr %1, align 8, !dbg !836, !tbaa !186
  %103 = fmul double %39, 0x3CB0000000000000, !dbg !837
  %104 = fmul double %103, %88, !dbg !838
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !839
  %106 = load double, ptr %105, align 8, !dbg !840, !tbaa !191
  %handler_result12 = call double @fAddHandlerDouble(double %104, double %106), !dbg !840
  store double %handler_result12, ptr %105, align 8, !dbg !840, !tbaa !191
  br label %129

107:                                              ; preds = %33
  %108 = fmul double %0, 0x400921FB54442D18, !dbg !841
  %handler_result16 = call double @callHandler(i32 1, double %108, double %108), !dbg !842
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !743, metadata !DIExpression()), !dbg !755
  %109 = fmul double %handler_result16, %handler_result16, !dbg !842
  %110 = fdiv double 0x4023BD3CC9BE45DE, %109, !dbg !843
  tail call void @llvm.dbg.value(metadata double %110, metadata !745, metadata !DIExpression()), !dbg !755
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !844
  %handler_result13 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !845
  call void @llvm.dbg.assign(metadata i1 undef, metadata !766, metadata !DIExpression(), metadata !748, metadata ptr %3, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.assign(metadata i1 undef, metadata !776, metadata !DIExpression(), metadata !749, metadata ptr %4, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i32 1, metadata !773, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !774, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata ptr %9, metadata !775, metadata !DIExpression()), !dbg !848
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !845
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !849
  %111 = call i32 @gsl_sf_hzeta_e(double noundef 2.000000e+00, double noundef %handler_result13, ptr noundef nonnull %4) #6, !dbg !850
  call void @llvm.dbg.value(metadata i32 %111, metadata !777, metadata !DIExpression()), !dbg !847
  %112 = call i32 @gsl_sf_lnfact_e(i32 noundef 1, ptr noundef nonnull %3) #6, !dbg !851
  call void @llvm.dbg.value(metadata i32 %112, metadata !778, metadata !DIExpression()), !dbg !847
  %113 = load double, ptr %3, align 8, !dbg !852, !tbaa !186
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !853
  %115 = load double, ptr %114, align 8, !dbg !853, !tbaa !191
  %116 = load double, ptr %4, align 8, !dbg !854, !tbaa !186
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !855
  %118 = load double, ptr %117, align 8, !dbg !855, !tbaa !191
  %119 = call i32 @gsl_sf_exp_mult_err_e(double noundef %113, double noundef %115, double noundef %116, double noundef %118, ptr noundef nonnull %9) #6, !dbg !856
  call void @llvm.dbg.value(metadata i32 %119, metadata !779, metadata !DIExpression()), !dbg !847
  %120 = icmp eq i32 %119, 0, !dbg !857
  %121 = icmp eq i32 %112, 0, !dbg !857
  %122 = select i1 %121, i32 %111, i32 %112, !dbg !857
  %123 = select i1 %120, i32 %122, i32 %119, !dbg !857
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !858
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !858
  tail call void @llvm.dbg.value(metadata i32 %123, metadata !747, metadata !DIExpression()), !dbg !755
  %124 = load double, ptr %9, align 8, !dbg !859, !tbaa !186
  %handler_result14 = call double @fSubHandlerDouble(double %110, double %124), !dbg !860
  store double %handler_result14, ptr %1, align 8, !dbg !860, !tbaa !186
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !861
  %126 = load double, ptr %125, align 8, !dbg !861, !tbaa !191
  %127 = fmul double %110, 0x3CC0000000000000, !dbg !862
  %handler_result15 = call double @fAddHandlerDouble(double %127, double %126), !dbg !863
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !863
  store double %handler_result15, ptr %128, align 8, !dbg !864, !tbaa !191
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !865
  br label %129

129:                                              ; preds = %107, %87, %48, %19, %15
  %130 = phi i32 [ 1, %15 ], [ %32, %19 ], [ %123, %107 ], [ 1, %48 ], [ %101, %87 ], !dbg !866
  ret i32 %130, !dbg !867
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !868 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_psi_n_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !869 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !883
  call void @llvm.dbg.assign(metadata i1 undef, metadata !874, metadata !DIExpression(), metadata !883, metadata ptr %4, metadata !DIExpression()), !dbg !884
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !885
  call void @llvm.dbg.assign(metadata i1 undef, metadata !879, metadata !DIExpression(), metadata !885, metadata ptr %5, metadata !DIExpression()), !dbg !884
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !871, metadata !DIExpression()), !dbg !886
  tail call void @llvm.dbg.value(metadata double %1, metadata !872, metadata !DIExpression()), !dbg !886
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !873, metadata !DIExpression()), !dbg !886
  switch i32 %0, label %10 [
    i32 0, label %6
    i32 1, label %8
  ], !dbg !887

6:                                                ; preds = %3
  %7 = tail call i32 @gsl_sf_psi_e(double noundef %1, ptr noundef %2), !dbg !888, !range !890
  br label %37, !dbg !891

8:                                                ; preds = %3
  %9 = tail call i32 @gsl_sf_psi_1_e(double noundef %1, ptr noundef %2), !dbg !892
  br label %37, !dbg !894

10:                                               ; preds = %3
  %11 = icmp slt i32 %0, 0, !dbg !895
  %12 = fcmp ole double %1, 0.000000e+00
  %13 = or i1 %11, %12, !dbg !896
  br i1 %13, label %14, label %16, !dbg !896

14:                                               ; preds = %10
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !897, !tbaa !186
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !897
  store double 0x7FF8000000000000, ptr %15, align 8, !dbg !897, !tbaa !191
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 781, i32 noundef 1) #6, !dbg !900
  br label %37, !dbg !900

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !902
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !903
  %17 = sitofp i32 %0 to double, !dbg !904
  %handler_result = call double @fAddHandlerDouble(double %17, double 1.000000e+00), !dbg !905
  %18 = call i32 @gsl_sf_hzeta_e(double noundef %handler_result, double noundef %1, ptr noundef nonnull %5) #6, !dbg !905
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !880, metadata !DIExpression()), !dbg !884
  %19 = call i32 @gsl_sf_lnfact_e(i32 noundef %0, ptr noundef nonnull %4) #6, !dbg !906
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !881, metadata !DIExpression()), !dbg !884
  %20 = load double, ptr %4, align 8, !dbg !907, !tbaa !186
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !908
  %22 = load double, ptr %21, align 8, !dbg !908, !tbaa !191
  %23 = load double, ptr %5, align 8, !dbg !909, !tbaa !186
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !910
  %25 = load double, ptr %24, align 8, !dbg !910, !tbaa !191
  %26 = call i32 @gsl_sf_exp_mult_err_e(double noundef %20, double noundef %22, double noundef %23, double noundef %25, ptr noundef %2) #6, !dbg !911
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !882, metadata !DIExpression()), !dbg !884
  %27 = and i32 %0, 1, !dbg !912
  %28 = icmp eq i32 %27, 0, !dbg !912
  br i1 %28, label %29, label %32, !dbg !914

29:                                               ; preds = %16
  %30 = load double, ptr %2, align 8, !dbg !915, !tbaa !186
  %31 = fneg double %30, !dbg !916
  store double %31, ptr %2, align 8, !dbg !917, !tbaa !186
  br label %32, !dbg !918

32:                                               ; preds = %29, %16
  %33 = icmp eq i32 %26, 0, !dbg !919
  %34 = icmp eq i32 %19, 0, !dbg !919
  %35 = select i1 %34, i32 %18, i32 %19, !dbg !919
  %36 = select i1 %33, i32 %35, i32 %26, !dbg !919
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !920
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !920
  br label %37

37:                                               ; preds = %32, %14, %8, %6
  %38 = phi i32 [ %7, %6 ], [ %9, %8 ], [ 1, %14 ], [ %36, %32 ], !dbg !921
  ret i32 %38, !dbg !922
}

declare !dbg !923 i32 @gsl_sf_hzeta_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !927 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !932 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_complex_psi_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !936 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !940, metadata !DIExpression()), !dbg !953
  tail call void @llvm.dbg.value(metadata double %1, metadata !941, metadata !DIExpression()), !dbg !953
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !942, metadata !DIExpression()), !dbg !953
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !943, metadata !DIExpression()), !dbg !953
  %5 = fcmp ult double %0, 0.000000e+00, !dbg !954
  br i1 %5, label %8, label %6, !dbg !955

6:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double %0, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !956
  tail call void @llvm.dbg.value(metadata double %1, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !956
  %7 = tail call fastcc i32 @psi_complex_rhp(double %0, double %1, ptr noundef %2, ptr noundef %3), !dbg !957, !range !890
  br label %28

8:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double %0, metadata !947, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !958
  tail call void @llvm.dbg.value(metadata double %1, metadata !947, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !958
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !959
  %9 = fneg double %1, !dbg !959
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !949, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !958
  tail call void @llvm.dbg.value(metadata double %9, metadata !949, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !958
  %10 = tail call { double, double } @gsl_complex_mul_real(double %0, double %1, double noundef 0x400921FB54442D18) #6, !dbg !960
  %11 = extractvalue { double, double } %10, 0, !dbg !960
  tail call void @llvm.dbg.value(metadata double %11, metadata !950, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !958
  %12 = extractvalue { double, double } %10, 1, !dbg !960
  tail call void @llvm.dbg.value(metadata double %12, metadata !950, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !958
  %13 = tail call { double, double } @gsl_complex_cot(double %11, double %12) #6, !dbg !961
  %14 = extractvalue { double, double } %13, 0, !dbg !961
  tail call void @llvm.dbg.value(metadata double %14, metadata !951, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !958
  %15 = extractvalue { double, double } %13, 1, !dbg !961
  tail call void @llvm.dbg.value(metadata double %15, metadata !951, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !958
  %16 = tail call fastcc i32 @psi_complex_rhp(double %handler_result, double %9, ptr noundef %2, ptr noundef %3), !dbg !962, !range !890
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !952, metadata !DIExpression()), !dbg !958
  %17 = tail call i32 @gsl_finite(double noundef %14) #6, !dbg !963
  %18 = icmp eq i32 %17, 0, !dbg !963
  br i1 %18, label %27, label %19, !dbg !965

19:                                               ; preds = %8
  %20 = tail call i32 @gsl_finite(double noundef %15) #6, !dbg !966
  %21 = icmp eq i32 %20, 0, !dbg !966
  br i1 %21, label %27, label %22, !dbg !967

22:                                               ; preds = %19
  %23 = fmul double %14, 0x400921FB54442D18, !dbg !968
  %24 = load double, ptr %2, align 8, !dbg !970, !tbaa !186
  %handler_result1 = call double @fSubHandlerDouble(double %24, double %23), !dbg !970
  store double %handler_result1, ptr %2, align 8, !dbg !970, !tbaa !186
  %25 = fmul double %15, 0x400921FB54442D18, !dbg !971
  %26 = load double, ptr %3, align 8, !dbg !972, !tbaa !186
  %handler_result2 = call double @fSubHandlerDouble(double %26, double %25), !dbg !972
  store double %handler_result2, ptr %3, align 8, !dbg !972, !tbaa !186
  br label %28, !dbg !973

27:                                               ; preds = %19, %8
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 827, i32 noundef 1) #6, !dbg !974
  br label %28, !dbg !974

28:                                               ; preds = %27, %22, %6
  %29 = phi i32 [ %7, %6 ], [ %16, %22 ], [ 1, %27 ], !dbg !977
  ret i32 %29, !dbg !978
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @psi_complex_rhp(double %0, double %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !dbg !979 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !983, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !999
  tail call void @llvm.dbg.value(metadata double %1, metadata !983, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !999
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !984, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !985, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata i32 0, metadata !986, metadata !DIExpression()), !dbg !999
  %5 = fcmp oeq double %0, 0.000000e+00, !dbg !1000
  %6 = fcmp oeq double %1, 0.000000e+00
  %7 = select i1 %5, i1 %6, i1 false, !dbg !1002
  br i1 %7, label %8, label %11, !dbg !1002

8:                                                ; preds = %4
  store double 0.000000e+00, ptr %2, align 8, !dbg !1003, !tbaa !186
  store double 0.000000e+00, ptr %3, align 8, !dbg !1005, !tbaa !186
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1006
  store double 0.000000e+00, ptr %9, align 8, !dbg !1007, !tbaa !191
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1008
  store double 0.000000e+00, ptr %10, align 8, !dbg !1009, !tbaa !191
  br label %119, !dbg !1010

11:                                               ; preds = %4
  %12 = fcmp olt double %0, 2.000000e+01, !dbg !1011
  %13 = tail call double @llvm.fabs.f64(double %1)
  %14 = fcmp olt double %13, 2.000000e+01
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1012
  br i1 %15, label %16, label %24, !dbg !1012

16:                                               ; preds = %11
  %handler_result = call double @fAddHandlerDouble(double %1, double 2.000000e+01), !dbg !1013
  %17 = tail call double @sqrt(double noundef %handler_result) #6, !dbg !1013
  tail call void @llvm.dbg.value(metadata double %17, metadata !989, metadata !DIExpression()), !dbg !1014
  %handler_result1 = call double @fSubHandlerDouble(double 2.000000e+01, double %1), !dbg !1015
  %18 = tail call double @sqrt(double noundef %handler_result1) #6, !dbg !1015
  tail call void @llvm.dbg.value(metadata double %18, metadata !992, metadata !DIExpression()), !dbg !1014
  %19 = fmul double %17, %18, !dbg !1016
  %handler_result2 = call double @fSubHandlerDouble(double %19, double %0), !dbg !1017
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !993, metadata !DIExpression()), !dbg !1014
  %20 = fcmp ogt double %handler_result2, 0.000000e+00, !dbg !1017
  br i1 %20, label %21, label %24, !dbg !1019

21:                                               ; preds = %16
  %22 = tail call double @llvm.ceil.f64(double %handler_result2), !dbg !1020
  %23 = fptosi double %22 to i32, !dbg !1020
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !986, metadata !DIExpression()), !dbg !999
  br label %24, !dbg !1021

24:                                               ; preds = %21, %16, %11
  %25 = phi i32 [ 0, %11 ], [ %23, %21 ], [ 0, %16 ], !dbg !999
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !986, metadata !DIExpression()), !dbg !999
  %26 = sitofp i32 %25 to double, !dbg !1022
  %27 = tail call { double, double } @gsl_complex_add_real(double %0, double %1, double noundef %26) #6, !dbg !1023
  %28 = extractvalue { double, double } %27, 0, !dbg !1023
  %29 = extractvalue { double, double } %27, 1, !dbg !1023
  call void @llvm.dbg.value(metadata double %28, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1024
  call void @llvm.dbg.value(metadata double %29, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1024
  %30 = tail call { double, double } @gsl_complex_inverse(double %28, double %29) #6, !dbg !1026
  %31 = extractvalue { double, double } %30, 0, !dbg !1026
  call void @llvm.dbg.value(metadata double %31, metadata !140, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1024
  %32 = extractvalue { double, double } %30, 1, !dbg !1026
  call void @llvm.dbg.value(metadata double %32, metadata !140, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1024
  %33 = tail call { double, double } @gsl_complex_mul(double %31, double %32, double %31, double %32) #6, !dbg !1027
  %34 = extractvalue { double, double } %33, 0, !dbg !1027
  call void @llvm.dbg.value(metadata double %34, metadata !141, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1024
  %35 = extractvalue { double, double } %33, 1, !dbg !1027
  call void @llvm.dbg.value(metadata double %35, metadata !141, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1024
  %36 = tail call { double, double } @gsl_complex_mul_real(double %34, double %35, double noundef -1.050000e+00) #6, !dbg !1028
  %37 = extractvalue { double, double } %36, 0, !dbg !1028
  %38 = extractvalue { double, double } %36, 1, !dbg !1028
  call void @llvm.dbg.value(metadata double %37, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1024
  call void @llvm.dbg.value(metadata double %38, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1024
  %39 = tail call { double, double } @gsl_complex_add_real(double %37, double %38, double noundef 1.000000e+00) #6, !dbg !1029
  %40 = extractvalue { double, double } %39, 0, !dbg !1029
  %41 = extractvalue { double, double } %39, 1, !dbg !1029
  call void @llvm.dbg.value(metadata double %40, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1024
  call void @llvm.dbg.value(metadata double %41, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1024
  %42 = tail call { double, double } @gsl_complex_mul_real(double %40, double %41, double noundef 0xBFDE79E79E79E79E) #6, !dbg !1030
  %43 = extractvalue { double, double } %42, 0, !dbg !1030
  %44 = extractvalue { double, double } %42, 1, !dbg !1030
  call void @llvm.dbg.value(metadata double %43, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1024
  call void @llvm.dbg.value(metadata double %44, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1024
  %45 = tail call { double, double } @gsl_complex_mul(double %43, double %44, double %34, double %35) #6, !dbg !1031
  %46 = extractvalue { double, double } %45, 0, !dbg !1031
  %47 = extractvalue { double, double } %45, 1, !dbg !1031
  call void @llvm.dbg.value(metadata double %46, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1024
  call void @llvm.dbg.value(metadata double %47, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1024
  %48 = tail call { double, double } @gsl_complex_add_real(double %46, double %47, double noundef 1.000000e+00) #6, !dbg !1032
  %49 = extractvalue { double, double } %48, 0, !dbg !1032
  %50 = extractvalue { double, double } %48, 1, !dbg !1032
  call void @llvm.dbg.value(metadata double %49, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1024
  call void @llvm.dbg.value(metadata double %50, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1024
  %51 = tail call { double, double } @gsl_complex_mul_real(double %49, double %50, double noundef -1.000000e-01) #6, !dbg !1033
  %52 = extractvalue { double, double } %51, 0, !dbg !1033
  %53 = extractvalue { double, double } %51, 1, !dbg !1033
  call void @llvm.dbg.value(metadata double %52, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1024
  call void @llvm.dbg.value(metadata double %53, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1024
  %54 = tail call { double, double } @gsl_complex_mul(double %52, double %53, double %34, double %35) #6, !dbg !1034
  %55 = extractvalue { double, double } %54, 0, !dbg !1034
  %56 = extractvalue { double, double } %54, 1, !dbg !1034
  call void @llvm.dbg.value(metadata double %55, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1024
  call void @llvm.dbg.value(metadata double %56, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1024
  %57 = tail call { double, double } @gsl_complex_add_real(double %55, double %56, double noundef 1.000000e+00) #6, !dbg !1035
  %58 = extractvalue { double, double } %57, 0, !dbg !1035
  %59 = extractvalue { double, double } %57, 1, !dbg !1035
  call void @llvm.dbg.value(metadata double %58, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1024
  call void @llvm.dbg.value(metadata double %59, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1024
  %60 = tail call { double, double } @gsl_complex_mul(double %58, double %59, double %34, double %35) #6, !dbg !1036
  %61 = extractvalue { double, double } %60, 0, !dbg !1036
  %62 = extractvalue { double, double } %60, 1, !dbg !1036
  call void @llvm.dbg.value(metadata double %61, metadata !142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1024
  call void @llvm.dbg.value(metadata double %62, metadata !142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1024
  %63 = tail call { double, double } @gsl_complex_mul_real(double %61, double %62, double noundef 0xBFB5555555555555) #6, !dbg !1037
  %64 = extractvalue { double, double } %63, 0, !dbg !1037
  %65 = extractvalue { double, double } %63, 1, !dbg !1037
  call void @llvm.dbg.value(metadata double %64, metadata !142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1024
  call void @llvm.dbg.value(metadata double %65, metadata !142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1024
  %66 = tail call { double, double } @gsl_complex_mul_real(double %31, double %32, double noundef -5.000000e-01) #6, !dbg !1038
  %67 = extractvalue { double, double } %66, 0, !dbg !1038
  %68 = extractvalue { double, double } %66, 1, !dbg !1038
  %69 = tail call { double, double } @gsl_complex_add(double %64, double %65, double %67, double %68) #6, !dbg !1039
  %70 = extractvalue { double, double } %69, 0, !dbg !1039
  %71 = extractvalue { double, double } %69, 1, !dbg !1039
  call void @llvm.dbg.value(metadata double %70, metadata !142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1024
  call void @llvm.dbg.value(metadata double %71, metadata !142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1024
  %72 = tail call { double, double } @gsl_complex_log(double %28, double %29) #6, !dbg !1040
  %73 = extractvalue { double, double } %72, 0, !dbg !1040
  %74 = extractvalue { double, double } %72, 1, !dbg !1040
  %75 = tail call { double, double } @gsl_complex_add(double %73, double %74, double %70, double %71) #6, !dbg !1041
  %76 = extractvalue { double, double } %75, 0, !dbg !1042
  %77 = extractvalue { double, double } %75, 1, !dbg !1042
  tail call void @llvm.dbg.value(metadata double %76, metadata !988, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !999
  tail call void @llvm.dbg.value(metadata double %77, metadata !988, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !999
  %78 = tail call double @llvm.fabs.f64(double %76), !dbg !1043
  %79 = fmul double %78, 0x3CC0000000000000, !dbg !1044
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1045
  store double %79, ptr %80, align 8, !dbg !1046, !tbaa !191
  %81 = tail call double @llvm.fabs.f64(double %77), !dbg !1047
  %82 = fmul double %81, 0x3CC0000000000000, !dbg !1048
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1049
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !987, metadata !DIExpression()), !dbg !999
  store double %82, ptr %83, align 8, !dbg !999, !tbaa !191
  tail call void @llvm.dbg.value(metadata double %77, metadata !988, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !999
  tail call void @llvm.dbg.value(metadata double %76, metadata !988, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !999
  %84 = icmp sgt i32 %25, 0, !dbg !1050
  br i1 %84, label %85, label %110, !dbg !1051

85:                                               ; preds = %85, %24
  %86 = phi i32 [ %89, %85 ], [ %25, %24 ]
  %87 = phi double [ %99, %85 ], [ %77, %24 ]
  %88 = phi double [ %98, %85 ], [ %76, %24 ]
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !987, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double %87, metadata !988, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !999
  tail call void @llvm.dbg.value(metadata double %88, metadata !988, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !999
  %89 = add nsw i32 %86, -1, !dbg !1052
  %90 = sitofp i32 %89 to double, !dbg !1052
  %91 = tail call { double, double } @gsl_complex_add_real(double %0, double %1, double noundef %90) #6, !dbg !1053
  %92 = extractvalue { double, double } %91, 0, !dbg !1053
  tail call void @llvm.dbg.value(metadata double %92, metadata !994, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1054
  %93 = extractvalue { double, double } %91, 1, !dbg !1053
  tail call void @llvm.dbg.value(metadata double %93, metadata !994, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1054
  %94 = tail call { double, double } @gsl_complex_inverse(double %92, double %93) #6, !dbg !1055
  %95 = extractvalue { double, double } %94, 0, !dbg !1055
  tail call void @llvm.dbg.value(metadata double %95, metadata !998, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1054
  %96 = extractvalue { double, double } %94, 1, !dbg !1055
  tail call void @llvm.dbg.value(metadata double %96, metadata !998, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1054
  %97 = tail call { double, double } @gsl_complex_sub(double %88, double %87, double %95, double %96) #6, !dbg !1056
  %98 = extractvalue { double, double } %97, 0, !dbg !1056
  %99 = extractvalue { double, double } %97, 1, !dbg !1056
  tail call void @llvm.dbg.value(metadata double %98, metadata !988, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !999
  tail call void @llvm.dbg.value(metadata double %99, metadata !988, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !999
  %100 = tail call double @llvm.fabs.f64(double %95), !dbg !1057
  %101 = fmul double %100, 0x3CC0000000000000, !dbg !1058
  %102 = load double, ptr %80, align 8, !dbg !1059, !tbaa !191
  %handler_result3 = call double @fAddHandlerDouble(double %102, double %101), !dbg !1059
  store double %handler_result3, ptr %80, align 8, !dbg !1059, !tbaa !191
  %103 = tail call double @llvm.fabs.f64(double %96), !dbg !1060
  %104 = fmul double %103, 0x3CC0000000000000, !dbg !1061
  %105 = load double, ptr %83, align 8, !dbg !1062, !tbaa !191
  %handler_result4 = call double @fAddHandlerDouble(double %104, double %105), !dbg !999
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !987, metadata !DIExpression()), !dbg !999
  store double %handler_result4, ptr %83, align 8, !dbg !999, !tbaa !191
  tail call void @llvm.dbg.value(metadata double %98, metadata !988, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !999
  %106 = icmp ugt i32 %86, 1, !dbg !1050
  br i1 %106, label %85, label %107, !dbg !1051, !llvm.loop !1063

107:                                              ; preds = %85
  %108 = tail call double @llvm.fabs.f64(double %99), !dbg !1065
  %109 = fmul double %108, 0x3CC0000000000000, !dbg !1066
  br label %110, !dbg !1067

110:                                              ; preds = %107, %24
  %111 = phi double [ %109, %107 ], [ %82, %24 ], !dbg !1066
  %112 = phi double [ %98, %107 ], [ %76, %24 ], !dbg !999
  %113 = phi double [ %99, %107 ], [ %77, %24 ], !dbg !999
  store double %112, ptr %2, align 8, !dbg !1067, !tbaa !186
  store double %113, ptr %3, align 8, !dbg !1068, !tbaa !186
  %114 = load double, ptr %2, align 8, !dbg !1069, !tbaa !186
  %115 = tail call double @llvm.fabs.f64(double %114), !dbg !1070
  %116 = fmul double %115, 0x3CC0000000000000, !dbg !1071
  %117 = load double, ptr %80, align 8, !dbg !1072, !tbaa !191
  %handler_result5 = call double @fAddHandlerDouble(double %117, double %116), !dbg !1072
  store double %handler_result5, ptr %80, align 8, !dbg !1072, !tbaa !191
  %118 = load double, ptr %83, align 8, !dbg !1073, !tbaa !191
  %handler_result6 = call double @fAddHandlerDouble(double %111, double %118), !dbg !1073
  store double %handler_result6, ptr %83, align 8, !dbg !1073, !tbaa !191
  br label %119, !dbg !1074

119:                                              ; preds = %110, %8
  %120 = phi i32 [ 1, %8 ], [ 0, %110 ], !dbg !999
  ret i32 %120, !dbg !1075
}

declare !dbg !1076 { double, double } @gsl_complex_mul_real(double, double, double noundef) local_unnamed_addr #1

declare !dbg !1080 { double, double } @gsl_complex_cot(double, double) local_unnamed_addr #1

declare !dbg !1081 i32 @gsl_finite(double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_psi_int(i32 noundef %0) local_unnamed_addr #0 !dbg !1085 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1092
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1090, metadata !DIExpression(), metadata !1092, metadata ptr %2, metadata !DIExpression()), !dbg !1093
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1089, metadata !DIExpression()), !dbg !1093
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1094
  %3 = call i32 @gsl_sf_psi_int_e(i32 noundef %0, ptr noundef nonnull %2), !dbg !1094, !range !890
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1091, metadata !DIExpression()), !dbg !1093
  %4 = icmp eq i32 %3, 0, !dbg !1095
  br i1 %4, label %6, label %5, !dbg !1094

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 840, i32 noundef 1) #6, !dbg !1097
  br label %6, !dbg !1097

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1094, !tbaa !186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1100
  ret double %7, !dbg !1100
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_psi(double noundef %0) local_unnamed_addr #0 !dbg !1101 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1108
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1106, metadata !DIExpression(), metadata !1108, metadata ptr %2, metadata !DIExpression()), !dbg !1109
  tail call void @llvm.dbg.value(metadata double %0, metadata !1105, metadata !DIExpression()), !dbg !1109
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1110
  %3 = call i32 @gsl_sf_psi_e(double noundef %0, ptr noundef nonnull %2), !dbg !1110, !range !890
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1107, metadata !DIExpression()), !dbg !1109
  %4 = icmp eq i32 %3, 0, !dbg !1111
  br i1 %4, label %6, label %5, !dbg !1110

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 845, i32 noundef %3) #6, !dbg !1113
  br label %6, !dbg !1113

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1110, !tbaa !186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1116
  ret double %7, !dbg !1116
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_psi_1piy(double noundef %0) local_unnamed_addr #5 !dbg !1117 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1120, metadata !DIExpression(), metadata !1122, metadata ptr %2, metadata !DIExpression()), !dbg !1123
  tail call void @llvm.dbg.value(metadata double %0, metadata !1119, metadata !DIExpression()), !dbg !1123
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1124
  %3 = call i32 @gsl_sf_psi_1piy_e(double noundef %0, ptr noundef nonnull %2), !dbg !1124
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1121, metadata !DIExpression()), !dbg !1123
  %4 = load double, ptr %2, align 8, !dbg !1124, !tbaa !186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1125
  ret double %4, !dbg !1125
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_psi_1_int(i32 noundef %0) local_unnamed_addr #0 !dbg !1126 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1128, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i32 %0, metadata !682, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr undef, metadata !683, metadata !DIExpression()), !dbg !1132
  %2 = icmp slt i32 %0, 1, !dbg !1134
  br i1 %2, label %22, label %3, !dbg !1135

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 101, !dbg !1136
  br i1 %4, label %5, label %9, !dbg !1137

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [101 x double], ptr @psi_1_table, i64 0, i64 %6, !dbg !1138
  %8 = load double, ptr %7, align 8, !dbg !1138, !tbaa !198
  tail call void @llvm.dbg.value(metadata double %8, metadata !1129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1131
  tail call void @llvm.dbg.value(metadata double poison, metadata !1129, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1131
  br label %23, !dbg !1139

9:                                                ; preds = %3
  call void @llvm.dbg.value(metadata double 0xBFA1111111111111, metadata !684, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata double 0x3F98618618618618, metadata !688, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata double 0xBFA1111111111111, metadata !689, metadata !DIExpression()), !dbg !1140
  %10 = sitofp i32 %0 to double, !dbg !1141
  %11 = fdiv double 1.000000e+00, %10, !dbg !1142
  %12 = fmul double %11, %11, !dbg !1143
  call void @llvm.dbg.value(metadata double %12, metadata !690, metadata !DIExpression()), !dbg !1140
  %13 = fmul double %12, %12, !dbg !1144
  %14 = fmul double %12, 0x3FA1111111111111, !dbg !1145
  %handler_result = call double @fSubHandlerDouble(double 0x3F98618618618618, double %14), !dbg !1146
  %15 = fmul double %12, %handler_result, !dbg !1146
  %handler_result1 = call double @fAddHandlerDouble(double %15, double 0xBFA1111111111111), !dbg !1147
  %16 = fmul double %13, %handler_result1, !dbg !1147
  call void @llvm.dbg.value(metadata double %16, metadata !691, metadata !DIExpression()), !dbg !1140
  %17 = fdiv double 5.000000e-01, %10, !dbg !1148
  %handler_result2 = call double @fAddHandlerDouble(double %17, double 1.000000e+00), !dbg !1149
  %18 = fmul double %10, 6.000000e+00, !dbg !1149
  %19 = fmul double %18, %10, !dbg !1150
  %20 = fdiv double 1.000000e+00, %19, !dbg !1151
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %20), !dbg !1152
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %16), !dbg !1153
  %21 = fdiv double %handler_result4, %10, !dbg !1153
  tail call void @llvm.dbg.value(metadata double %21, metadata !1129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1131
  tail call void @llvm.dbg.value(metadata double poison, metadata !1129, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1131
  br label %23

22:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1131
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1129, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1131
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 699, i32 noundef 1) #6, !dbg !1154
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1131
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1130, metadata !DIExpression()), !dbg !1131
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 855, i32 noundef 1) #6, !dbg !1155
  br label %23, !dbg !1155

23:                                               ; preds = %22, %9, %5
  %24 = phi double [ 0x7FF8000000000000, %22 ], [ %21, %9 ], [ %8, %5 ]
  ret double %24, !dbg !1159
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_psi_1(double noundef %0) local_unnamed_addr #0 !dbg !1160 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1165
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1163, metadata !DIExpression(), metadata !1165, metadata ptr %2, metadata !DIExpression()), !dbg !1166
  tail call void @llvm.dbg.value(metadata double %0, metadata !1162, metadata !DIExpression()), !dbg !1166
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1167
  %3 = call i32 @gsl_sf_psi_1_e(double noundef %0, ptr noundef nonnull %2), !dbg !1167
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1164, metadata !DIExpression()), !dbg !1166
  %4 = icmp eq i32 %3, 0, !dbg !1168
  br i1 %4, label %6, label %5, !dbg !1167

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 860, i32 noundef %3) #6, !dbg !1170
  br label %6, !dbg !1170

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1167, !tbaa !186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1173
  ret double %7, !dbg !1173
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_psi_n(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1174 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1182
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1180, metadata !DIExpression(), metadata !1182, metadata ptr %3, metadata !DIExpression()), !dbg !1183
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1178, metadata !DIExpression()), !dbg !1183
  tail call void @llvm.dbg.value(metadata double %1, metadata !1179, metadata !DIExpression()), !dbg !1183
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !1184
  %4 = call i32 @gsl_sf_psi_n_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1184
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1181, metadata !DIExpression()), !dbg !1183
  %5 = icmp eq i32 %4, 0, !dbg !1185
  br i1 %5, label %7, label %6, !dbg !1184

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 865, i32 noundef %4) #6, !dbg !1187
  br label %7, !dbg !1187

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1184, !tbaa !186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !1190
  ret double %8, !dbg !1190
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1191 double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1192 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #2

declare !dbg !1193 { double, double } @gsl_complex_add_real(double, double, double noundef) local_unnamed_addr #1

declare !dbg !1194 { double, double } @gsl_complex_inverse(double, double) local_unnamed_addr #1

declare !dbg !1195 { double, double } @gsl_complex_sub(double, double, double, double) local_unnamed_addr #1

declare !dbg !1198 { double, double } @gsl_complex_mul(double, double, double, double) local_unnamed_addr #1

declare !dbg !1199 { double, double } @gsl_complex_add(double, double, double, double) local_unnamed_addr #1

declare !dbg !1200 { double, double } @gsl_complex_log(double, double) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 587, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "psi.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "4e6f678cf05d62c341afe020b7142214")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 587, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "psi_table", scope: !14, file: !2, line: 164, type: !122, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !55, globals: !57, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 39, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!20 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!21 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!22 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!23 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!24 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!25 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!26 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!27 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!28 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!29 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!30 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!31 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!32 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!33 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!34 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!35 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!36 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!37 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!38 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!39 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!40 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!41 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!42 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!43 = !DIEnumerator(name: "GSL_ESING", value: 21)
!44 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!45 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!46 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!47 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!48 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!49 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!50 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!51 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!52 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!53 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!54 = !DIEnumerator(name: "GSL_EOF", value: 32)
!55 = !{!56}
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !{!0, !7, !58, !63, !68, !73, !78, !83, !88, !12, !90, !103, !108, !110, !115, !117, !120, !125, !145, !147}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 827, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 12)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 840, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 29)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 845, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 25)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 850, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 30)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 855, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 31)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 860, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 27)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 865, type: !75, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "apsi_cs", scope: !14, file: !2, line: 156, type: !92, isLocal: true, isDefinition: true)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !93, line: 29, baseType: !94)
!93 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !93, line: 22, size: 320, elements: !95)
!95 = !{!96, !99, !100, !101, !102}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !94, file: !93, line: 23, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !94, file: !93, line: 24, baseType: !18, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !94, file: !93, line: 25, baseType: !98, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !94, file: !93, line: 26, baseType: !98, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !94, file: !93, line: 27, baseType: !18, size: 32, offset: 256)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "apsics_data", scope: !14, file: !2, line: 138, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1024, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 16)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "psi_cs", scope: !14, file: !2, line: 131, type: !92, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "psics_data", scope: !14, file: !2, line: 106, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1472, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 23)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "r1py_cs", scope: !14, file: !2, line: 82, type: !92, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "r1py_data", scope: !14, file: !2, line: 50, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1920, elements: !76)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "psi_1_table", scope: !14, file: !2, line: 270, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 6464, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 101)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "c1", scope: !127, file: !2, line: 468, type: !144, isLocal: true, isDefinition: true)
!127 = distinct !DISubprogram(name: "psi_complex_asymp", scope: !2, file: !2, line: 461, type: !128, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !138)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !130}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_complex", file: !131, line: 80, baseType: !132)
!131 = !DIFile(filename: "../gsl/gsl_complex.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "fa1ab7587b167751c5c7adf6bb027f7f")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 76, size: 128, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "dat", scope: !132, file: !131, line: 78, baseType: !135, size: 128)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 2)
!138 = !{!139, !140, !141, !142, !143}
!139 = !DILocalVariable(name: "z", arg: 1, scope: !127, file: !2, line: 461, type: !130)
!140 = !DILocalVariable(name: "zi", scope: !127, file: !2, line: 472, type: !130)
!141 = !DILocalVariable(name: "w", scope: !127, file: !2, line: 473, type: !130)
!142 = !DILocalVariable(name: "cs", scope: !127, file: !2, line: 474, type: !130)
!143 = !DILocalVariable(name: "sum", scope: !127, file: !2, line: 477, type: !130)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "c2", scope: !127, file: !2, line: 469, type: !144, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "c3", scope: !127, file: !2, line: 470, type: !144, isLocal: true, isDefinition: true)
!149 = !{i32 7, !"Dwarf Version", i32 5}
!150 = !{i32 2, !"Debug Info Version", i32 3}
!151 = !{i32 1, !"wchar_size", i32 4}
!152 = !{i32 8, !"PIC Level", i32 2}
!153 = !{i32 7, !"PIE Level", i32 2}
!154 = !{i32 7, !"uwtable", i32 2}
!155 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!156 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!157 = distinct !DISubprogram(name: "gsl_sf_psi_int_e", scope: !2, file: !2, line: 582, type: !158, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !168)
!158 = !DISubroutineType(types: !159)
!159 = !{!18, !160, !161}
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !163, line: 41, baseType: !164)
!163 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !163, line: 37, size: 128, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !164, file: !163, line: 38, baseType: !98, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !164, file: !163, line: 39, baseType: !98, size: 64, offset: 64)
!168 = !{!169, !170, !171, !175, !176, !177, !178, !179}
!169 = !DILocalVariable(name: "n", arg: 1, scope: !157, file: !2, line: 582, type: !160)
!170 = !DILocalVariable(name: "result", arg: 2, scope: !157, file: !2, line: 582, type: !161)
!171 = !DILocalVariable(name: "c2", scope: !172, file: !2, line: 596, type: !144)
!172 = distinct !DILexicalBlock(scope: !173, file: !2, line: 594, column: 8)
!173 = distinct !DILexicalBlock(scope: !174, file: !2, line: 589, column: 11)
!174 = distinct !DILexicalBlock(scope: !157, file: !2, line: 586, column: 6)
!175 = !DILocalVariable(name: "c3", scope: !172, file: !2, line: 597, type: !144)
!176 = !DILocalVariable(name: "c4", scope: !172, file: !2, line: 598, type: !144)
!177 = !DILocalVariable(name: "c5", scope: !172, file: !2, line: 599, type: !144)
!178 = !DILocalVariable(name: "ni2", scope: !172, file: !2, line: 600, type: !144)
!179 = !DILocalVariable(name: "ser", scope: !172, file: !2, line: 601, type: !144)
!180 = !DILocation(line: 0, scope: !157)
!181 = !DILocation(line: 586, column: 8, scope: !174)
!182 = !DILocation(line: 586, column: 6, scope: !157)
!183 = !DILocation(line: 587, column: 5, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !2, line: 587, column: 5)
!185 = distinct !DILexicalBlock(scope: !174, file: !2, line: 586, column: 14)
!186 = !{!187, !188, i64 0}
!187 = !{!"gsl_sf_result_struct", !188, i64 0, !188, i64 8}
!188 = !{!"double", !189, i64 0}
!189 = !{!"omnipotent char", !190, i64 0}
!190 = !{!"Simple C/C++ TBAA"}
!191 = !{!187, !188, i64 8}
!192 = !DILocation(line: 587, column: 5, scope: !193)
!193 = distinct !DILexicalBlock(scope: !184, file: !2, line: 587, column: 5)
!194 = !DILocation(line: 589, column: 13, scope: !173)
!195 = !DILocation(line: 589, column: 11, scope: !174)
!196 = !DILocation(line: 590, column: 19, scope: !197)
!197 = distinct !DILexicalBlock(scope: !173, file: !2, line: 589, column: 32)
!198 = !{!188, !188, i64 0}
!199 = !DILocation(line: 590, column: 17, scope: !197)
!200 = !DILocation(line: 591, column: 37, scope: !197)
!201 = !DILocation(line: 591, column: 35, scope: !197)
!202 = !DILocation(line: 591, column: 13, scope: !197)
!203 = !DILocation(line: 591, column: 17, scope: !197)
!204 = !DILocation(line: 592, column: 5, scope: !197)
!205 = !DILocation(line: 0, scope: !172)
!206 = !DILocation(line: 600, column: 29, scope: !172)
!207 = !DILocation(line: 600, column: 28, scope: !172)
!208 = !DILocation(line: 600, column: 31, scope: !172)
!209 = !DILocation(line: 601, column: 63, scope: !172)
!210 = !DILocation(line: 601, column: 52, scope: !172)
!211 = !DILocation(line: 601, column: 40, scope: !172)
!212 = !DILocation(line: 601, column: 28, scope: !172)
!213 = !DILocation(line: 602, column: 32, scope: !172)
!214 = !DILocation(line: 602, column: 35, scope: !172)
!215 = !DILocation(line: 602, column: 18, scope: !172)
!216 = !DILocation(line: 603, column: 39, scope: !172)
!217 = !DILocation(line: 603, column: 54, scope: !172)
!218 = !DILocation(line: 603, column: 68, scope: !172)
!219 = !DILocation(line: 603, column: 36, scope: !172)
!220 = !DILocation(line: 603, column: 13, scope: !172)
!221 = !DILocation(line: 604, column: 51, scope: !172)
!222 = !DILocation(line: 604, column: 38, scope: !172)
!223 = !DILocation(line: 604, column: 36, scope: !172)
!224 = !DILocation(line: 604, column: 17, scope: !172)
!225 = !DILocation(line: 0, scope: !174)
!226 = !DILocation(line: 607, column: 1, scope: !157)
!227 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !230, !230, !18, !18}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!232 = !DISubprogram(name: "log", scope: !233, file: !233, line: 104, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!233 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!234 = !DISubroutineType(types: !235)
!235 = !{!98, !98}
!236 = distinct !DISubprogram(name: "gsl_sf_psi_e", scope: !2, file: !2, line: 610, type: !237, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{!18, !144, !161}
!239 = !{!240, !241}
!240 = !DILocalVariable(name: "x", arg: 1, scope: !236, file: !2, line: 610, type: !144)
!241 = !DILocalVariable(name: "result", arg: 2, scope: !236, file: !2, line: 610, type: !161)
!242 = !DILocation(line: 0, scope: !236)
!243 = !DILocalVariable(name: "x", arg: 1, scope: !244, file: !2, line: 380, type: !144)
!244 = distinct !DISubprogram(name: "psi_x", scope: !2, file: !2, line: 380, type: !237, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !245)
!245 = !{!243, !246, !247, !248, !252, !253, !256, !257, !259, !262, !263, !264, !265, !268, !269, !270, !273}
!246 = !DILocalVariable(name: "result", arg: 2, scope: !244, file: !2, line: 380, type: !161)
!247 = !DILocalVariable(name: "y", scope: !244, file: !2, line: 382, type: !144)
!248 = !DILocalVariable(name: "t", scope: !249, file: !2, line: 388, type: !144)
!249 = distinct !DILexicalBlock(scope: !250, file: !2, line: 387, column: 21)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 387, column: 11)
!251 = distinct !DILexicalBlock(scope: !244, file: !2, line: 384, column: 6)
!252 = !DILocalVariable(name: "result_c", scope: !249, file: !2, line: 389, type: !162)
!253 = !DILocalVariable(name: "s", scope: !254, file: !2, line: 392, type: !144)
!254 = distinct !DILexicalBlock(scope: !255, file: !2, line: 391, column: 17)
!255 = distinct !DILexicalBlock(scope: !249, file: !2, line: 391, column: 8)
!256 = !DILocalVariable(name: "c", scope: !254, file: !2, line: 393, type: !144)
!257 = !DILocalVariable(name: "result_c", scope: !258, file: !2, line: 413, type: !162)
!258 = distinct !DILexicalBlock(scope: !250, file: !2, line: 412, column: 8)
!259 = !DILocalVariable(name: "v", scope: !260, file: !2, line: 416, type: !144)
!260 = distinct !DILexicalBlock(scope: !261, file: !2, line: 415, column: 18)
!261 = distinct !DILexicalBlock(scope: !258, file: !2, line: 415, column: 8)
!262 = !DILocalVariable(name: "t1", scope: !260, file: !2, line: 417, type: !144)
!263 = !DILocalVariable(name: "t2", scope: !260, file: !2, line: 418, type: !144)
!264 = !DILocalVariable(name: "t3", scope: !260, file: !2, line: 419, type: !144)
!265 = !DILocalVariable(name: "v", scope: !266, file: !2, line: 429, type: !144)
!266 = distinct !DILexicalBlock(scope: !267, file: !2, line: 428, column: 22)
!267 = distinct !DILexicalBlock(scope: !261, file: !2, line: 428, column: 13)
!268 = !DILocalVariable(name: "t1", scope: !266, file: !2, line: 430, type: !144)
!269 = !DILocalVariable(name: "t2", scope: !266, file: !2, line: 431, type: !144)
!270 = !DILocalVariable(name: "t1", scope: !271, file: !2, line: 441, type: !144)
!271 = distinct !DILexicalBlock(scope: !272, file: !2, line: 440, column: 22)
!272 = distinct !DILexicalBlock(scope: !267, file: !2, line: 440, column: 13)
!273 = !DILocalVariable(name: "v", scope: !274, file: !2, line: 451, type: !144)
!274 = distinct !DILexicalBlock(scope: !272, file: !2, line: 450, column: 10)
!275 = !DILocation(line: 0, scope: !244, inlinedAt: !276)
!276 = distinct !DILocation(line: 613, column: 10, scope: !236)
!277 = !DILocation(line: 382, column: 20, scope: !244, inlinedAt: !276)
!278 = !DILocation(line: 384, column: 8, scope: !251, inlinedAt: !276)
!279 = !DILocation(line: 384, column: 15, scope: !251, inlinedAt: !276)
!280 = !DILocation(line: 385, column: 5, scope: !281, inlinedAt: !276)
!281 = distinct !DILexicalBlock(scope: !282, file: !2, line: 385, column: 5)
!282 = distinct !DILexicalBlock(scope: !251, file: !2, line: 384, column: 42)
!283 = !DILocation(line: 385, column: 5, scope: !284, inlinedAt: !276)
!284 = distinct !DILexicalBlock(scope: !281, file: !2, line: 385, column: 5)
!285 = !DILocation(line: 387, column: 13, scope: !250, inlinedAt: !276)
!286 = !DILocation(line: 387, column: 11, scope: !251, inlinedAt: !276)
!287 = !DILocation(line: 388, column: 28, scope: !249, inlinedAt: !276)
!288 = !DILocation(line: 388, column: 25, scope: !249, inlinedAt: !276)
!289 = !DILocation(line: 11, column: 19, scope: !290, inlinedAt: !312)
!290 = distinct !DISubprogram(name: "cheb_eval_e", scope: !291, file: !291, line: 3, type: !292, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !296)
!291 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!292 = !DISubroutineType(types: !293)
!293 = !{!18, !294, !144, !161}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !310}
!297 = !DILocalVariable(name: "cs", arg: 1, scope: !290, file: !291, line: 3, type: !294)
!298 = !DILocalVariable(name: "x", arg: 2, scope: !290, file: !291, line: 4, type: !144)
!299 = !DILocalVariable(name: "result", arg: 3, scope: !290, file: !291, line: 5, type: !161)
!300 = !DILocalVariable(name: "j", scope: !290, file: !291, line: 7, type: !18)
!301 = !DILocalVariable(name: "d", scope: !290, file: !291, line: 8, type: !98)
!302 = !DILocalVariable(name: "dd", scope: !290, file: !291, line: 9, type: !98)
!303 = !DILocalVariable(name: "y", scope: !290, file: !291, line: 11, type: !98)
!304 = !DILocalVariable(name: "y2", scope: !290, file: !291, line: 12, type: !98)
!305 = !DILocalVariable(name: "e", scope: !290, file: !291, line: 14, type: !98)
!306 = !DILocalVariable(name: "temp", scope: !307, file: !291, line: 17, type: !98)
!307 = distinct !DILexicalBlock(scope: !308, file: !291, line: 16, column: 33)
!308 = distinct !DILexicalBlock(scope: !309, file: !291, line: 16, column: 3)
!309 = distinct !DILexicalBlock(scope: !290, file: !291, line: 16, column: 3)
!310 = !DILocalVariable(name: "temp", scope: !311, file: !291, line: 24, type: !98)
!311 = distinct !DILexicalBlock(scope: !290, file: !291, line: 23, column: 3)
!312 = distinct !DILocation(line: 390, column: 5, scope: !249, inlinedAt: !276)
!313 = !DILocation(line: 0, scope: !249, inlinedAt: !276)
!314 = !{}
!315 = !DILocation(line: 0, scope: !290, inlinedAt: !312)
!316 = !DILocation(line: 11, column: 30, scope: !290, inlinedAt: !312)
!317 = !DILocation(line: 11, column: 39, scope: !290, inlinedAt: !312)
!318 = !DILocation(line: 12, column: 19, scope: !290, inlinedAt: !312)
!319 = !DILocation(line: 16, column: 3, scope: !309, inlinedAt: !312)
!320 = !DILocation(line: 0, scope: !307, inlinedAt: !312)
!321 = !DILocation(line: 18, column: 11, scope: !307, inlinedAt: !312)
!322 = !DILocation(line: 18, column: 21, scope: !307, inlinedAt: !312)
!323 = !DILocation(line: 19, column: 10, scope: !307, inlinedAt: !312)
!324 = !DILocation(line: 19, column: 26, scope: !307, inlinedAt: !312)
!325 = !DILocation(line: 19, column: 37, scope: !307, inlinedAt: !312)
!326 = !DILocation(line: 19, column: 7, scope: !307, inlinedAt: !312)
!327 = !DILocation(line: 16, column: 29, scope: !308, inlinedAt: !312)
!328 = !DILocation(line: 16, column: 23, scope: !308, inlinedAt: !312)
!329 = distinct !{!329, !319, !330, !331}
!330 = !DILocation(line: 21, column: 3, scope: !309, inlinedAt: !312)
!331 = !{!"llvm.loop.mustprogress"}
!332 = !DILocation(line: 0, scope: !311, inlinedAt: !312)
!333 = !DILocation(line: 25, column: 10, scope: !311, inlinedAt: !312)
!334 = !DILocation(line: 25, column: 18, scope: !311, inlinedAt: !312)
!335 = !DILocation(line: 26, column: 10, scope: !311, inlinedAt: !312)
!336 = !DILocation(line: 26, column: 25, scope: !311, inlinedAt: !312)
!337 = !DILocation(line: 26, column: 34, scope: !311, inlinedAt: !312)
!338 = !DILocation(line: 26, column: 7, scope: !311, inlinedAt: !312)
!339 = !DILocation(line: 30, column: 33, scope: !290, inlinedAt: !312)
!340 = !DILocation(line: 391, column: 10, scope: !255, inlinedAt: !276)
!341 = !DILocation(line: 391, column: 8, scope: !249, inlinedAt: !276)
!342 = !DILocation(line: 392, column: 32, scope: !254, inlinedAt: !276)
!343 = !DILocation(line: 393, column: 24, scope: !254, inlinedAt: !276)
!344 = !DILocation(line: 0, scope: !254, inlinedAt: !276)
!345 = !DILocation(line: 394, column: 10, scope: !346, inlinedAt: !276)
!346 = distinct !DILexicalBlock(scope: !254, file: !2, line: 394, column: 10)
!347 = !DILocation(line: 394, column: 18, scope: !346, inlinedAt: !276)
!348 = !DILocation(line: 394, column: 10, scope: !254, inlinedAt: !276)
!349 = !DILocation(line: 395, column: 9, scope: !350, inlinedAt: !276)
!350 = distinct !DILexicalBlock(scope: !351, file: !2, line: 395, column: 9)
!351 = distinct !DILexicalBlock(scope: !346, file: !2, line: 394, column: 42)
!352 = !DILocation(line: 395, column: 9, scope: !353, inlinedAt: !276)
!353 = distinct !DILexicalBlock(scope: !350, file: !2, line: 395, column: 9)
!354 = !DILocation(line: 398, column: 36, scope: !355, inlinedAt: !276)
!355 = distinct !DILexicalBlock(scope: !346, file: !2, line: 397, column: 12)
!356 = !DILocation(line: 398, column: 39, scope: !355, inlinedAt: !276)
!357 = !DILocation(line: 398, column: 61, scope: !355, inlinedAt: !276)
!358 = !DILocation(line: 398, column: 64, scope: !355, inlinedAt: !276)
!359 = !DILocation(line: 398, column: 22, scope: !355, inlinedAt: !276)
!360 = !DILocation(line: 399, column: 28, scope: !355, inlinedAt: !276)
!361 = !DILocation(line: 399, column: 36, scope: !355, inlinedAt: !276)
!362 = !DILocation(line: 399, column: 55, scope: !355, inlinedAt: !276)
!363 = !DILocation(line: 399, column: 52, scope: !355, inlinedAt: !276)
!364 = !DILocation(line: 399, column: 17, scope: !355, inlinedAt: !276)
!365 = !DILocation(line: 401, column: 42, scope: !355, inlinedAt: !276)
!366 = !DILocation(line: 401, column: 40, scope: !355, inlinedAt: !276)
!367 = !DILocation(line: 401, column: 21, scope: !355, inlinedAt: !276)
!368 = !DILocation(line: 402, column: 9, scope: !355, inlinedAt: !276)
!369 = !DILocation(line: 406, column: 34, scope: !370, inlinedAt: !276)
!370 = distinct !DILexicalBlock(scope: !255, file: !2, line: 405, column: 10)
!371 = !DILocation(line: 406, column: 37, scope: !370, inlinedAt: !276)
!372 = !DILocation(line: 406, column: 20, scope: !370, inlinedAt: !276)
!373 = !DILocation(line: 407, column: 15, scope: !370, inlinedAt: !276)
!374 = !DILocation(line: 408, column: 40, scope: !370, inlinedAt: !276)
!375 = !DILocation(line: 408, column: 38, scope: !370, inlinedAt: !276)
!376 = !DILocation(line: 408, column: 19, scope: !370, inlinedAt: !276)
!377 = !DILocation(line: 409, column: 7, scope: !370, inlinedAt: !276)
!378 = !DILocation(line: 415, column: 10, scope: !261, inlinedAt: !276)
!379 = !DILocation(line: 415, column: 8, scope: !258, inlinedAt: !276)
!380 = !DILocation(line: 417, column: 28, scope: !260, inlinedAt: !276)
!381 = !DILocation(line: 0, scope: !260, inlinedAt: !276)
!382 = !DILocation(line: 418, column: 28, scope: !260, inlinedAt: !276)
!383 = !DILocation(line: 419, column: 28, scope: !260, inlinedAt: !276)
!384 = !DILocation(line: 420, column: 31, scope: !260, inlinedAt: !276)
!385 = !DILocation(line: 11, column: 19, scope: !290, inlinedAt: !386)
!386 = distinct !DILocation(line: 420, column: 7, scope: !260, inlinedAt: !276)
!387 = !DILocation(line: 0, scope: !290, inlinedAt: !386)
!388 = !DILocation(line: 11, column: 30, scope: !290, inlinedAt: !386)
!389 = !DILocation(line: 11, column: 39, scope: !290, inlinedAt: !386)
!390 = !DILocation(line: 12, column: 19, scope: !290, inlinedAt: !386)
!391 = !DILocation(line: 16, column: 3, scope: !309, inlinedAt: !386)
!392 = !DILocation(line: 0, scope: !307, inlinedAt: !386)
!393 = !DILocation(line: 18, column: 11, scope: !307, inlinedAt: !386)
!394 = !DILocation(line: 18, column: 21, scope: !307, inlinedAt: !386)
!395 = !DILocation(line: 19, column: 10, scope: !307, inlinedAt: !386)
!396 = !DILocation(line: 19, column: 26, scope: !307, inlinedAt: !386)
!397 = !DILocation(line: 19, column: 37, scope: !307, inlinedAt: !386)
!398 = !DILocation(line: 19, column: 7, scope: !307, inlinedAt: !386)
!399 = !DILocation(line: 16, column: 29, scope: !308, inlinedAt: !386)
!400 = !DILocation(line: 16, column: 23, scope: !308, inlinedAt: !386)
!401 = distinct !{!401, !391, !402, !331}
!402 = !DILocation(line: 21, column: 3, scope: !309, inlinedAt: !386)
!403 = !DILocation(line: 0, scope: !311, inlinedAt: !386)
!404 = !DILocation(line: 25, column: 10, scope: !311, inlinedAt: !386)
!405 = !DILocation(line: 25, column: 18, scope: !311, inlinedAt: !386)
!406 = !DILocation(line: 26, column: 10, scope: !311, inlinedAt: !386)
!407 = !DILocation(line: 26, column: 25, scope: !311, inlinedAt: !386)
!408 = !DILocation(line: 26, column: 34, scope: !311, inlinedAt: !386)
!409 = !DILocation(line: 26, column: 7, scope: !311, inlinedAt: !386)
!410 = !DILocation(line: 30, column: 33, scope: !290, inlinedAt: !386)
!411 = !DILocation(line: 0, scope: !258, inlinedAt: !276)
!412 = !DILocation(line: 422, column: 27, scope: !260, inlinedAt: !276)
!413 = !DILocation(line: 422, column: 32, scope: !260, inlinedAt: !276)
!414 = !DILocation(line: 422, column: 38, scope: !260, inlinedAt: !276)
!415 = !DILocation(line: 422, column: 20, scope: !260, inlinedAt: !276)
!416 = !DILocation(line: 423, column: 41, scope: !260, inlinedAt: !276)
!417 = !DILocation(line: 423, column: 62, scope: !260, inlinedAt: !276)
!418 = !DILocation(line: 423, column: 58, scope: !260, inlinedAt: !276)
!419 = !DILocation(line: 423, column: 52, scope: !260, inlinedAt: !276)
!420 = !DILocation(line: 423, column: 80, scope: !260, inlinedAt: !276)
!421 = !DILocation(line: 423, column: 76, scope: !260, inlinedAt: !276)
!422 = !DILocation(line: 423, column: 70, scope: !260, inlinedAt: !276)
!423 = !DILocation(line: 423, column: 38, scope: !260, inlinedAt: !276)
!424 = !DILocation(line: 423, column: 15, scope: !260, inlinedAt: !276)
!425 = !DILocation(line: 425, column: 40, scope: !260, inlinedAt: !276)
!426 = !DILocation(line: 425, column: 38, scope: !260, inlinedAt: !276)
!427 = !DILocation(line: 425, column: 19, scope: !260, inlinedAt: !276)
!428 = !DILocation(line: 428, column: 15, scope: !267, inlinedAt: !276)
!429 = !DILocation(line: 428, column: 13, scope: !261, inlinedAt: !276)
!430 = !DILocation(line: 430, column: 28, scope: !266, inlinedAt: !276)
!431 = !DILocation(line: 0, scope: !266, inlinedAt: !276)
!432 = !DILocation(line: 431, column: 28, scope: !266, inlinedAt: !276)
!433 = !DILocation(line: 432, column: 31, scope: !266, inlinedAt: !276)
!434 = !DILocation(line: 11, column: 19, scope: !290, inlinedAt: !435)
!435 = distinct !DILocation(line: 432, column: 7, scope: !266, inlinedAt: !276)
!436 = !DILocation(line: 0, scope: !290, inlinedAt: !435)
!437 = !DILocation(line: 11, column: 30, scope: !290, inlinedAt: !435)
!438 = !DILocation(line: 11, column: 39, scope: !290, inlinedAt: !435)
!439 = !DILocation(line: 12, column: 19, scope: !290, inlinedAt: !435)
!440 = !DILocation(line: 16, column: 3, scope: !309, inlinedAt: !435)
!441 = !DILocation(line: 0, scope: !307, inlinedAt: !435)
!442 = !DILocation(line: 18, column: 11, scope: !307, inlinedAt: !435)
!443 = !DILocation(line: 18, column: 21, scope: !307, inlinedAt: !435)
!444 = !DILocation(line: 19, column: 10, scope: !307, inlinedAt: !435)
!445 = !DILocation(line: 19, column: 26, scope: !307, inlinedAt: !435)
!446 = !DILocation(line: 19, column: 37, scope: !307, inlinedAt: !435)
!447 = !DILocation(line: 19, column: 7, scope: !307, inlinedAt: !435)
!448 = !DILocation(line: 16, column: 29, scope: !308, inlinedAt: !435)
!449 = !DILocation(line: 16, column: 23, scope: !308, inlinedAt: !435)
!450 = distinct !{!450, !440, !451, !331}
!451 = !DILocation(line: 21, column: 3, scope: !309, inlinedAt: !435)
!452 = !DILocation(line: 0, scope: !311, inlinedAt: !435)
!453 = !DILocation(line: 25, column: 10, scope: !311, inlinedAt: !435)
!454 = !DILocation(line: 25, column: 18, scope: !311, inlinedAt: !435)
!455 = !DILocation(line: 26, column: 10, scope: !311, inlinedAt: !435)
!456 = !DILocation(line: 26, column: 25, scope: !311, inlinedAt: !435)
!457 = !DILocation(line: 26, column: 34, scope: !311, inlinedAt: !435)
!458 = !DILocation(line: 26, column: 7, scope: !311, inlinedAt: !435)
!459 = !DILocation(line: 30, column: 33, scope: !290, inlinedAt: !435)
!460 = !DILocation(line: 434, column: 27, scope: !266, inlinedAt: !276)
!461 = !DILocation(line: 434, column: 33, scope: !266, inlinedAt: !276)
!462 = !DILocation(line: 434, column: 20, scope: !266, inlinedAt: !276)
!463 = !DILocation(line: 435, column: 41, scope: !266, inlinedAt: !276)
!464 = !DILocation(line: 435, column: 62, scope: !266, inlinedAt: !276)
!465 = !DILocation(line: 435, column: 58, scope: !266, inlinedAt: !276)
!466 = !DILocation(line: 435, column: 52, scope: !266, inlinedAt: !276)
!467 = !DILocation(line: 435, column: 38, scope: !266, inlinedAt: !276)
!468 = !DILocation(line: 435, column: 15, scope: !266, inlinedAt: !276)
!469 = !DILocation(line: 437, column: 40, scope: !266, inlinedAt: !276)
!470 = !DILocation(line: 437, column: 38, scope: !266, inlinedAt: !276)
!471 = !DILocation(line: 437, column: 19, scope: !266, inlinedAt: !276)
!472 = !DILocation(line: 440, column: 15, scope: !272, inlinedAt: !276)
!473 = !DILocation(line: 0, scope: !290, inlinedAt: !474)
!474 = distinct !DILocation(line: 442, column: 7, scope: !271, inlinedAt: !276)
!475 = !DILocation(line: 0, scope: !290, inlinedAt: !476)
!476 = distinct !DILocation(line: 452, column: 14, scope: !274, inlinedAt: !276)
!477 = !DILocation(line: 440, column: 13, scope: !267, inlinedAt: !276)
!478 = !DILocation(line: 441, column: 28, scope: !271, inlinedAt: !276)
!479 = !DILocation(line: 0, scope: !271, inlinedAt: !276)
!480 = !DILocation(line: 442, column: 31, scope: !271, inlinedAt: !276)
!481 = !DILocation(line: 11, column: 19, scope: !290, inlinedAt: !474)
!482 = !DILocation(line: 11, column: 30, scope: !290, inlinedAt: !474)
!483 = !DILocation(line: 11, column: 39, scope: !290, inlinedAt: !474)
!484 = !DILocation(line: 12, column: 19, scope: !290, inlinedAt: !474)
!485 = !DILocation(line: 16, column: 3, scope: !309, inlinedAt: !474)
!486 = !DILocation(line: 0, scope: !307, inlinedAt: !474)
!487 = !DILocation(line: 18, column: 11, scope: !307, inlinedAt: !474)
!488 = !DILocation(line: 18, column: 21, scope: !307, inlinedAt: !474)
!489 = !DILocation(line: 19, column: 10, scope: !307, inlinedAt: !474)
!490 = !DILocation(line: 19, column: 26, scope: !307, inlinedAt: !474)
!491 = !DILocation(line: 19, column: 37, scope: !307, inlinedAt: !474)
!492 = !DILocation(line: 19, column: 7, scope: !307, inlinedAt: !474)
!493 = !DILocation(line: 16, column: 29, scope: !308, inlinedAt: !474)
!494 = !DILocation(line: 16, column: 23, scope: !308, inlinedAt: !474)
!495 = distinct !{!495, !485, !496, !331}
!496 = !DILocation(line: 21, column: 3, scope: !309, inlinedAt: !474)
!497 = !DILocation(line: 0, scope: !311, inlinedAt: !474)
!498 = !DILocation(line: 25, column: 10, scope: !311, inlinedAt: !474)
!499 = !DILocation(line: 25, column: 18, scope: !311, inlinedAt: !474)
!500 = !DILocation(line: 26, column: 10, scope: !311, inlinedAt: !474)
!501 = !DILocation(line: 26, column: 25, scope: !311, inlinedAt: !474)
!502 = !DILocation(line: 26, column: 34, scope: !311, inlinedAt: !474)
!503 = !DILocation(line: 26, column: 7, scope: !311, inlinedAt: !474)
!504 = !DILocation(line: 30, column: 33, scope: !290, inlinedAt: !474)
!505 = !DILocation(line: 444, column: 26, scope: !271, inlinedAt: !276)
!506 = !DILocation(line: 444, column: 20, scope: !271, inlinedAt: !276)
!507 = !DILocation(line: 445, column: 38, scope: !271, inlinedAt: !276)
!508 = !DILocation(line: 445, column: 15, scope: !271, inlinedAt: !276)
!509 = !DILocation(line: 447, column: 40, scope: !271, inlinedAt: !276)
!510 = !DILocation(line: 447, column: 38, scope: !271, inlinedAt: !276)
!511 = !DILocation(line: 447, column: 19, scope: !271, inlinedAt: !276)
!512 = !DILocation(line: 452, column: 38, scope: !274, inlinedAt: !276)
!513 = !DILocation(line: 0, scope: !274, inlinedAt: !276)
!514 = !DILocation(line: 11, column: 19, scope: !290, inlinedAt: !476)
!515 = !DILocation(line: 11, column: 30, scope: !290, inlinedAt: !476)
!516 = !DILocation(line: 11, column: 39, scope: !290, inlinedAt: !476)
!517 = !DILocation(line: 12, column: 19, scope: !290, inlinedAt: !476)
!518 = !DILocation(line: 16, column: 3, scope: !309, inlinedAt: !476)
!519 = !DILocation(line: 0, scope: !307, inlinedAt: !476)
!520 = !DILocation(line: 18, column: 11, scope: !307, inlinedAt: !476)
!521 = !DILocation(line: 18, column: 21, scope: !307, inlinedAt: !476)
!522 = !DILocation(line: 19, column: 10, scope: !307, inlinedAt: !476)
!523 = !DILocation(line: 19, column: 26, scope: !307, inlinedAt: !476)
!524 = !DILocation(line: 19, column: 37, scope: !307, inlinedAt: !476)
!525 = !DILocation(line: 19, column: 7, scope: !307, inlinedAt: !476)
!526 = !DILocation(line: 16, column: 29, scope: !308, inlinedAt: !476)
!527 = !DILocation(line: 16, column: 23, scope: !308, inlinedAt: !476)
!528 = distinct !{!528, !518, !529, !331}
!529 = !DILocation(line: 21, column: 3, scope: !309, inlinedAt: !476)
!530 = !DILocation(line: 0, scope: !311, inlinedAt: !476)
!531 = !DILocation(line: 25, column: 10, scope: !311, inlinedAt: !476)
!532 = !DILocation(line: 25, column: 18, scope: !311, inlinedAt: !476)
!533 = !DILocation(line: 26, column: 10, scope: !311, inlinedAt: !476)
!534 = !DILocation(line: 26, column: 25, scope: !311, inlinedAt: !476)
!535 = !DILocation(line: 26, column: 34, scope: !311, inlinedAt: !476)
!536 = !DILocation(line: 26, column: 7, scope: !311, inlinedAt: !476)
!537 = !DILocation(line: 29, column: 15, scope: !290, inlinedAt: !476)
!538 = !DILocation(line: 30, column: 33, scope: !290, inlinedAt: !476)
!539 = !DILocation(line: 30, column: 11, scope: !290, inlinedAt: !476)
!540 = !DILocation(line: 30, column: 15, scope: !290, inlinedAt: !476)
!541 = !DILocation(line: 0, scope: !251, inlinedAt: !276)
!542 = !DILocation(line: 613, column: 3, scope: !236)
!543 = distinct !DISubprogram(name: "gsl_sf_psi_1piy_e", scope: !2, file: !2, line: 618, type: !237, scopeLine: 619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !544)
!544 = !{!545, !546, !547, !548, !551, !552, !553, !556, !557, !558, !561, !562, !563, !564, !566, !567, !568, !569, !570, !571, !572, !573, !574}
!545 = !DILocalVariable(name: "y", arg: 1, scope: !543, file: !2, line: 618, type: !144)
!546 = !DILocalVariable(name: "result", arg: 2, scope: !543, file: !2, line: 618, type: !161)
!547 = !DILocalVariable(name: "ay", scope: !543, file: !2, line: 620, type: !144)
!548 = !DILocalVariable(name: "yi2", scope: !549, file: !2, line: 626, type: !144)
!549 = distinct !DILexicalBlock(scope: !550, file: !2, line: 624, column: 19)
!550 = distinct !DILexicalBlock(scope: !543, file: !2, line: 624, column: 6)
!551 = !DILocalVariable(name: "lny", scope: !549, file: !2, line: 627, type: !144)
!552 = !DILocalVariable(name: "sum", scope: !549, file: !2, line: 628, type: !144)
!553 = !DILocalVariable(name: "yi2", scope: !554, file: !2, line: 635, type: !144)
!554 = distinct !DILexicalBlock(scope: !555, file: !2, line: 633, column: 22)
!555 = distinct !DILexicalBlock(scope: !550, file: !2, line: 633, column: 11)
!556 = !DILocalVariable(name: "lny", scope: !554, file: !2, line: 636, type: !144)
!557 = !DILocalVariable(name: "sum", scope: !554, file: !2, line: 637, type: !144)
!558 = !DILocalVariable(name: "y2", scope: !559, file: !2, line: 647, type: !144)
!559 = distinct !DILexicalBlock(scope: !560, file: !2, line: 646, column: 20)
!560 = distinct !DILexicalBlock(scope: !555, file: !2, line: 646, column: 11)
!561 = !DILocalVariable(name: "x", scope: !559, file: !2, line: 648, type: !144)
!562 = !DILocalVariable(name: "v", scope: !559, file: !2, line: 649, type: !144)
!563 = !DILocalVariable(name: "result_c", scope: !559, file: !2, line: 650, type: !162)
!564 = !DILocalVariable(name: "M", scope: !565, file: !2, line: 671, type: !160)
!565 = distinct !DILexicalBlock(scope: !560, file: !2, line: 659, column: 8)
!566 = !DILocalVariable(name: "y2", scope: !565, file: !2, line: 672, type: !144)
!567 = !DILocalVariable(name: "c0", scope: !565, file: !2, line: 673, type: !144)
!568 = !DILocalVariable(name: "c2", scope: !565, file: !2, line: 674, type: !144)
!569 = !DILocalVariable(name: "c4", scope: !565, file: !2, line: 675, type: !144)
!570 = !DILocalVariable(name: "c6", scope: !565, file: !2, line: 676, type: !144)
!571 = !DILocalVariable(name: "p", scope: !565, file: !2, line: 677, type: !144)
!572 = !DILocalVariable(name: "sum", scope: !565, file: !2, line: 678, type: !98)
!573 = !DILocalVariable(name: "v", scope: !565, file: !2, line: 679, type: !98)
!574 = !DILocalVariable(name: "n", scope: !565, file: !2, line: 681, type: !18)
!575 = !DILocation(line: 0, scope: !543)
!576 = !DILocation(line: 620, column: 21, scope: !543)
!577 = !DILocation(line: 624, column: 9, scope: !550)
!578 = !DILocation(line: 624, column: 6, scope: !543)
!579 = !DILocation(line: 626, column: 31, scope: !549)
!580 = !DILocation(line: 626, column: 27, scope: !549)
!581 = !DILocation(line: 0, scope: !549)
!582 = !DILocation(line: 628, column: 52, scope: !549)
!583 = !DILocation(line: 628, column: 70, scope: !549)
!584 = !DILocation(line: 628, column: 75, scope: !549)
!585 = !DILocation(line: 628, column: 28, scope: !549)
!586 = !DILocation(line: 629, column: 17, scope: !549)
!587 = !DILocation(line: 630, column: 44, scope: !549)
!588 = !DILocation(line: 630, column: 56, scope: !549)
!589 = !DILocation(line: 630, column: 41, scope: !549)
!590 = !DILocation(line: 630, column: 13, scope: !549)
!591 = !DILocation(line: 630, column: 17, scope: !549)
!592 = !DILocation(line: 633, column: 14, scope: !555)
!593 = !DILocation(line: 633, column: 11, scope: !550)
!594 = !DILocation(line: 635, column: 31, scope: !554)
!595 = !DILocation(line: 635, column: 27, scope: !554)
!596 = !DILocation(line: 0, scope: !554)
!597 = !DILocation(line: 641, column: 65, scope: !554)
!598 = !DILocation(line: 641, column: 36, scope: !554)
!599 = !DILocation(line: 640, column: 34, scope: !554)
!600 = !DILocation(line: 639, column: 32, scope: !554)
!601 = !DILocation(line: 638, column: 30, scope: !554)
!602 = !DILocation(line: 637, column: 28, scope: !554)
!603 = !DILocation(line: 642, column: 17, scope: !554)
!604 = !DILocation(line: 643, column: 44, scope: !554)
!605 = !DILocation(line: 643, column: 56, scope: !554)
!606 = !DILocation(line: 643, column: 41, scope: !554)
!607 = !DILocation(line: 643, column: 13, scope: !554)
!608 = !DILocation(line: 643, column: 17, scope: !554)
!609 = !DILocation(line: 646, column: 14, scope: !560)
!610 = !DILocation(line: 0, scope: !560)
!611 = !DILocation(line: 646, column: 11, scope: !555)
!612 = !DILocation(line: 0, scope: !559)
!613 = !DILocation(line: 648, column: 27, scope: !559)
!614 = !DILocation(line: 648, column: 38, scope: !559)
!615 = !DILocation(line: 649, column: 30, scope: !559)
!616 = !DILocation(line: 649, column: 45, scope: !559)
!617 = !DILocation(line: 649, column: 25, scope: !559)
!618 = !DILocation(line: 0, scope: !290, inlinedAt: !619)
!619 = distinct !DILocation(line: 651, column: 5, scope: !559)
!620 = !DILocation(line: 11, column: 19, scope: !290, inlinedAt: !619)
!621 = !DILocation(line: 11, column: 30, scope: !290, inlinedAt: !619)
!622 = !DILocation(line: 11, column: 39, scope: !290, inlinedAt: !619)
!623 = !DILocation(line: 12, column: 19, scope: !290, inlinedAt: !619)
!624 = !DILocation(line: 16, column: 3, scope: !309, inlinedAt: !619)
!625 = !DILocation(line: 0, scope: !307, inlinedAt: !619)
!626 = !DILocation(line: 18, column: 11, scope: !307, inlinedAt: !619)
!627 = !DILocation(line: 18, column: 21, scope: !307, inlinedAt: !619)
!628 = !DILocation(line: 19, column: 10, scope: !307, inlinedAt: !619)
!629 = !DILocation(line: 19, column: 26, scope: !307, inlinedAt: !619)
!630 = !DILocation(line: 19, column: 37, scope: !307, inlinedAt: !619)
!631 = !DILocation(line: 19, column: 7, scope: !307, inlinedAt: !619)
!632 = !DILocation(line: 16, column: 29, scope: !308, inlinedAt: !619)
!633 = !DILocation(line: 16, column: 23, scope: !308, inlinedAt: !619)
!634 = distinct !{!634, !624, !635, !331}
!635 = !DILocation(line: 21, column: 3, scope: !309, inlinedAt: !619)
!636 = !DILocation(line: 0, scope: !311, inlinedAt: !619)
!637 = !DILocation(line: 25, column: 10, scope: !311, inlinedAt: !619)
!638 = !DILocation(line: 25, column: 18, scope: !311, inlinedAt: !619)
!639 = !DILocation(line: 26, column: 10, scope: !311, inlinedAt: !619)
!640 = !DILocation(line: 26, column: 25, scope: !311, inlinedAt: !619)
!641 = !DILocation(line: 26, column: 34, scope: !311, inlinedAt: !619)
!642 = !DILocation(line: 26, column: 7, scope: !311, inlinedAt: !619)
!643 = !DILocation(line: 30, column: 33, scope: !290, inlinedAt: !619)
!644 = !DILocation(line: 652, column: 33, scope: !559)
!645 = !DILocation(line: 652, column: 43, scope: !559)
!646 = !DILocation(line: 652, column: 18, scope: !559)
!647 = !DILocation(line: 653, column: 13, scope: !559)
!648 = !DILocation(line: 654, column: 65, scope: !559)
!649 = !DILocation(line: 654, column: 42, scope: !559)
!650 = !DILocation(line: 655, column: 44, scope: !559)
!651 = !DILocation(line: 655, column: 42, scope: !559)
!652 = !DILocation(line: 656, column: 17, scope: !559)
!653 = !DILocation(line: 0, scope: !565)
!654 = !DILocation(line: 677, column: 50, scope: !565)
!655 = !DILocation(line: 677, column: 41, scope: !565)
!656 = !DILocation(line: 677, column: 31, scope: !565)
!657 = !DILocation(line: 682, column: 5, scope: !658)
!658 = distinct !DILexicalBlock(scope: !565, file: !2, line: 682, column: 5)
!659 = !DILocation(line: 683, column: 19, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !2, line: 682, column: 25)
!661 = distinct !DILexicalBlock(scope: !658, file: !2, line: 682, column: 5)
!662 = !DILocation(line: 683, column: 25, scope: !660)
!663 = !DILocation(line: 683, column: 24, scope: !660)
!664 = !DILocation(line: 683, column: 21, scope: !660)
!665 = !DILocation(line: 683, column: 17, scope: !660)
!666 = !DILocation(line: 682, column: 21, scope: !661)
!667 = !DILocation(line: 682, column: 15, scope: !661)
!668 = distinct !{!668, !657, !669, !331}
!669 = !DILocation(line: 684, column: 5, scope: !658)
!670 = !DILocation(line: 686, column: 19, scope: !565)
!671 = !DILocation(line: 686, column: 12, scope: !565)
!672 = !DILocation(line: 687, column: 18, scope: !565)
!673 = !DILocation(line: 688, column: 49, scope: !565)
!674 = !DILocation(line: 688, column: 36, scope: !565)
!675 = !DILocation(line: 688, column: 13, scope: !565)
!676 = !DILocation(line: 689, column: 44, scope: !565)
!677 = !DILocation(line: 689, column: 42, scope: !565)
!678 = !DILocation(line: 689, column: 17, scope: !565)
!679 = !DILocation(line: 692, column: 1, scope: !543)
!680 = distinct !DISubprogram(name: "gsl_sf_psi_1_int_e", scope: !2, file: !2, line: 695, type: !158, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !681)
!681 = !{!682, !683, !684, !688, !689, !690, !691}
!682 = !DILocalVariable(name: "n", arg: 1, scope: !680, file: !2, line: 695, type: !160)
!683 = !DILocalVariable(name: "result", arg: 2, scope: !680, file: !2, line: 695, type: !161)
!684 = !DILocalVariable(name: "c0", scope: !685, file: !2, line: 710, type: !144)
!685 = distinct !DILexicalBlock(scope: !686, file: !2, line: 706, column: 8)
!686 = distinct !DILexicalBlock(scope: !687, file: !2, line: 701, column: 11)
!687 = distinct !DILexicalBlock(scope: !680, file: !2, line: 698, column: 6)
!688 = !DILocalVariable(name: "c1", scope: !685, file: !2, line: 711, type: !144)
!689 = !DILocalVariable(name: "c2", scope: !685, file: !2, line: 712, type: !144)
!690 = !DILocalVariable(name: "ni2", scope: !685, file: !2, line: 713, type: !144)
!691 = !DILocalVariable(name: "ser", scope: !685, file: !2, line: 714, type: !144)
!692 = !DILocation(line: 0, scope: !680)
!693 = !DILocation(line: 698, column: 8, scope: !687)
!694 = !DILocation(line: 698, column: 6, scope: !680)
!695 = !DILocation(line: 699, column: 5, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !2, line: 699, column: 5)
!697 = distinct !DILexicalBlock(scope: !687, file: !2, line: 698, column: 14)
!698 = !DILocation(line: 699, column: 5, scope: !699)
!699 = distinct !DILexicalBlock(scope: !696, file: !2, line: 699, column: 5)
!700 = !DILocation(line: 701, column: 13, scope: !686)
!701 = !DILocation(line: 701, column: 11, scope: !687)
!702 = !DILocation(line: 702, column: 19, scope: !703)
!703 = distinct !DILexicalBlock(scope: !686, file: !2, line: 701, column: 34)
!704 = !DILocation(line: 702, column: 17, scope: !703)
!705 = !DILocation(line: 703, column: 35, scope: !703)
!706 = !DILocation(line: 703, column: 13, scope: !703)
!707 = !DILocation(line: 703, column: 17, scope: !703)
!708 = !DILocation(line: 704, column: 5, scope: !703)
!709 = !DILocation(line: 0, scope: !685)
!710 = !DILocation(line: 713, column: 29, scope: !685)
!711 = !DILocation(line: 713, column: 28, scope: !685)
!712 = !DILocation(line: 713, column: 31, scope: !685)
!713 = !DILocation(line: 714, column: 28, scope: !685)
!714 = !DILocation(line: 714, column: 53, scope: !685)
!715 = !DILocation(line: 714, column: 44, scope: !685)
!716 = !DILocation(line: 714, column: 33, scope: !685)
!717 = !DILocation(line: 715, column: 29, scope: !685)
!718 = !DILocation(line: 715, column: 42, scope: !685)
!719 = !DILocation(line: 715, column: 44, scope: !685)
!720 = !DILocation(line: 715, column: 37, scope: !685)
!721 = !DILocation(line: 715, column: 48, scope: !685)
!722 = !DILocation(line: 715, column: 55, scope: !685)
!723 = !DILocation(line: 715, column: 17, scope: !685)
!724 = !DILocation(line: 716, column: 35, scope: !685)
!725 = !DILocation(line: 716, column: 13, scope: !685)
!726 = !DILocation(line: 716, column: 17, scope: !685)
!727 = !DILocation(line: 0, scope: !687)
!728 = !DILocation(line: 719, column: 1, scope: !680)
!729 = distinct !DISubprogram(name: "gsl_sf_psi_1_e", scope: !2, file: !2, line: 722, type: !237, scopeLine: 723, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !730)
!730 = !{!731, !732, !733, !738, !739, !740, !741, !743, !745, !746, !747}
!731 = !DILocalVariable(name: "x", arg: 1, scope: !729, file: !2, line: 722, type: !144)
!732 = !DILocalVariable(name: "result", arg: 2, scope: !729, file: !2, line: 722, type: !161)
!733 = !DILocalVariable(name: "M", scope: !734, file: !2, line: 736, type: !18)
!734 = distinct !DILexicalBlock(scope: !735, file: !2, line: 734, column: 3)
!735 = distinct !DILexicalBlock(scope: !736, file: !2, line: 733, column: 11)
!736 = distinct !DILexicalBlock(scope: !737, file: !2, line: 729, column: 11)
!737 = distinct !DILexicalBlock(scope: !729, file: !2, line: 726, column: 6)
!738 = !DILocalVariable(name: "fx", scope: !734, file: !2, line: 737, type: !98)
!739 = !DILocalVariable(name: "sum", scope: !734, file: !2, line: 738, type: !98)
!740 = !DILocalVariable(name: "m", scope: !734, file: !2, line: 739, type: !18)
!741 = !DILocalVariable(name: "stat_psi", scope: !742, file: !2, line: 748, type: !18)
!742 = distinct !DILexicalBlock(scope: !734, file: !2, line: 747, column: 5)
!743 = !DILocalVariable(name: "sin_px", scope: !744, file: !2, line: 757, type: !144)
!744 = distinct !DILexicalBlock(scope: !735, file: !2, line: 755, column: 3)
!745 = !DILocalVariable(name: "d", scope: !744, file: !2, line: 758, type: !144)
!746 = !DILocalVariable(name: "r", scope: !744, file: !2, line: 759, type: !162)
!747 = !DILocalVariable(name: "stat_psi", scope: !744, file: !2, line: 760, type: !18)
!748 = distinct !DIAssignID()
!749 = distinct !DIAssignID()
!750 = distinct !DIAssignID()
!751 = distinct !DIAssignID()
!752 = distinct !DIAssignID()
!753 = distinct !DIAssignID()
!754 = distinct !DIAssignID()
!755 = !DILocation(line: 0, scope: !744)
!756 = !DILocation(line: 0, scope: !729)
!757 = !DILocation(line: 726, column: 8, scope: !737)
!758 = !DILocation(line: 726, column: 15, scope: !737)
!759 = !DILocation(line: 727, column: 5, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !2, line: 727, column: 5)
!761 = distinct !DILexicalBlock(scope: !737, file: !2, line: 726, column: 42)
!762 = !DILocation(line: 727, column: 5, scope: !763)
!763 = distinct !DILexicalBlock(scope: !760, file: !2, line: 727, column: 5)
!764 = !DILocation(line: 729, column: 13, scope: !736)
!765 = !DILocation(line: 729, column: 11, scope: !737)
!766 = !DILocalVariable(name: "ln_nf", scope: !767, file: !2, line: 566, type: !162)
!767 = distinct !DILexicalBlock(scope: !768, file: !2, line: 564, column: 8)
!768 = distinct !DILexicalBlock(scope: !769, file: !2, line: 561, column: 6)
!769 = distinct !DISubprogram(name: "psi_n_xg0", scope: !2, file: !2, line: 559, type: !770, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{!18, !160, !144, !161}
!772 = !{!773, !774, !775, !766, !776, !777, !778, !779}
!773 = !DILocalVariable(name: "n", arg: 1, scope: !769, file: !2, line: 559, type: !160)
!774 = !DILocalVariable(name: "x", arg: 2, scope: !769, file: !2, line: 559, type: !144)
!775 = !DILocalVariable(name: "result", arg: 3, scope: !769, file: !2, line: 559, type: !161)
!776 = !DILocalVariable(name: "hzeta", scope: !767, file: !2, line: 567, type: !162)
!777 = !DILocalVariable(name: "stat_hz", scope: !767, file: !2, line: 568, type: !18)
!778 = !DILocalVariable(name: "stat_nf", scope: !767, file: !2, line: 569, type: !18)
!779 = !DILocalVariable(name: "stat_e", scope: !767, file: !2, line: 570, type: !18)
!780 = !DILocation(line: 0, scope: !767, inlinedAt: !781)
!781 = distinct !DILocation(line: 731, column: 12, scope: !782)
!782 = distinct !DILexicalBlock(scope: !736, file: !2, line: 730, column: 3)
!783 = !DILocation(line: 0, scope: !769, inlinedAt: !781)
!784 = !DILocation(line: 566, column: 5, scope: !767, inlinedAt: !781)
!785 = !DILocation(line: 567, column: 5, scope: !767, inlinedAt: !781)
!786 = !DILocation(line: 568, column: 19, scope: !767, inlinedAt: !781)
!787 = !DILocation(line: 569, column: 19, scope: !767, inlinedAt: !781)
!788 = !DILocation(line: 570, column: 47, scope: !767, inlinedAt: !781)
!789 = !DILocation(line: 570, column: 58, scope: !767, inlinedAt: !781)
!790 = !DILocation(line: 571, column: 50, scope: !767, inlinedAt: !781)
!791 = !DILocation(line: 571, column: 61, scope: !767, inlinedAt: !781)
!792 = !DILocation(line: 570, column: 19, scope: !767, inlinedAt: !781)
!793 = !DILocation(line: 574, column: 12, scope: !767, inlinedAt: !781)
!794 = !DILocation(line: 575, column: 3, scope: !768, inlinedAt: !781)
!795 = !DILocation(line: 731, column: 5, scope: !782)
!796 = !DILocation(line: 733, column: 13, scope: !735)
!797 = !DILocation(line: 733, column: 11, scope: !736)
!798 = !DILocation(line: 736, column: 14, scope: !734)
!799 = !DILocation(line: 736, column: 13, scope: !734)
!800 = !DILocation(line: 0, scope: !734)
!801 = !DILocation(line: 737, column: 21, scope: !734)
!802 = !DILocation(line: 741, column: 11, scope: !803)
!803 = distinct !DILexicalBlock(scope: !734, file: !2, line: 741, column: 8)
!804 = !DILocation(line: 741, column: 8, scope: !734)
!805 = !DILocation(line: 744, column: 18, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !2, line: 744, column: 5)
!807 = distinct !DILexicalBlock(scope: !734, file: !2, line: 744, column: 5)
!808 = !DILocation(line: 744, column: 5, scope: !807)
!809 = !DILocation(line: 742, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !803, file: !2, line: 742, column: 7)
!811 = !DILocation(line: 742, column: 7, scope: !812)
!812 = distinct !DILexicalBlock(scope: !810, file: !2, line: 742, column: 7)
!813 = !DILocation(line: 745, column: 22, scope: !806)
!814 = !DILocation(line: 745, column: 24, scope: !806)
!815 = !DILocation(line: 745, column: 17, scope: !806)
!816 = !DILocation(line: 744, column: 23, scope: !806)
!817 = distinct !{!817, !808, !818, !331}
!818 = !DILocation(line: 745, column: 30, scope: !807)
!819 = distinct !{!819, !820}
!820 = !{!"llvm.loop.unroll.disable"}
!821 = !DILocation(line: 0, scope: !767, inlinedAt: !822)
!822 = distinct !DILocation(line: 748, column: 22, scope: !742)
!823 = !DILocation(line: 0, scope: !769, inlinedAt: !822)
!824 = !DILocation(line: 566, column: 5, scope: !767, inlinedAt: !822)
!825 = !DILocation(line: 567, column: 5, scope: !767, inlinedAt: !822)
!826 = !DILocation(line: 568, column: 19, scope: !767, inlinedAt: !822)
!827 = !DILocation(line: 569, column: 19, scope: !767, inlinedAt: !822)
!828 = !DILocation(line: 570, column: 47, scope: !767, inlinedAt: !822)
!829 = !DILocation(line: 570, column: 58, scope: !767, inlinedAt: !822)
!830 = !DILocation(line: 571, column: 50, scope: !767, inlinedAt: !822)
!831 = !DILocation(line: 571, column: 61, scope: !767, inlinedAt: !822)
!832 = !DILocation(line: 570, column: 19, scope: !767, inlinedAt: !822)
!833 = !DILocation(line: 574, column: 12, scope: !767, inlinedAt: !822)
!834 = !DILocation(line: 575, column: 3, scope: !768, inlinedAt: !822)
!835 = !DILocation(line: 0, scope: !742)
!836 = !DILocation(line: 749, column: 19, scope: !742)
!837 = !DILocation(line: 750, column: 24, scope: !742)
!838 = !DILocation(line: 750, column: 42, scope: !742)
!839 = !DILocation(line: 750, column: 15, scope: !742)
!840 = !DILocation(line: 750, column: 19, scope: !742)
!841 = !DILocation(line: 757, column: 36, scope: !744)
!842 = !DILocation(line: 758, column: 39, scope: !744)
!843 = !DILocation(line: 758, column: 31, scope: !744)
!844 = !DILocation(line: 759, column: 5, scope: !744)
!845 = !DILocation(line: 566, column: 5, scope: !767, inlinedAt: !846)
!846 = distinct !DILocation(line: 760, column: 20, scope: !744)
!847 = !DILocation(line: 0, scope: !767, inlinedAt: !846)
!848 = !DILocation(line: 0, scope: !769, inlinedAt: !846)
!849 = !DILocation(line: 567, column: 5, scope: !767, inlinedAt: !846)
!850 = !DILocation(line: 568, column: 19, scope: !767, inlinedAt: !846)
!851 = !DILocation(line: 569, column: 19, scope: !767, inlinedAt: !846)
!852 = !DILocation(line: 570, column: 47, scope: !767, inlinedAt: !846)
!853 = !DILocation(line: 570, column: 58, scope: !767, inlinedAt: !846)
!854 = !DILocation(line: 571, column: 50, scope: !767, inlinedAt: !846)
!855 = !DILocation(line: 571, column: 61, scope: !767, inlinedAt: !846)
!856 = !DILocation(line: 570, column: 19, scope: !767, inlinedAt: !846)
!857 = !DILocation(line: 574, column: 12, scope: !767, inlinedAt: !846)
!858 = !DILocation(line: 575, column: 3, scope: !768, inlinedAt: !846)
!859 = !DILocation(line: 761, column: 25, scope: !744)
!860 = !DILocation(line: 761, column: 17, scope: !744)
!861 = !DILocation(line: 762, column: 21, scope: !744)
!862 = !DILocation(line: 762, column: 46, scope: !744)
!863 = !DILocation(line: 762, column: 13, scope: !744)
!864 = !DILocation(line: 762, column: 17, scope: !744)
!865 = !DILocation(line: 764, column: 3, scope: !735)
!866 = !DILocation(line: 0, scope: !737)
!867 = !DILocation(line: 765, column: 1, scope: !729)
!868 = !DISubprogram(name: "sin", scope: !233, file: !233, line: 64, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!869 = distinct !DISubprogram(name: "gsl_sf_psi_n_e", scope: !2, file: !2, line: 768, type: !770, scopeLine: 769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !870)
!870 = !{!871, !872, !873, !874, !879, !880, !881, !882}
!871 = !DILocalVariable(name: "n", arg: 1, scope: !869, file: !2, line: 768, type: !160)
!872 = !DILocalVariable(name: "x", arg: 2, scope: !869, file: !2, line: 768, type: !144)
!873 = !DILocalVariable(name: "result", arg: 3, scope: !869, file: !2, line: 768, type: !161)
!874 = !DILocalVariable(name: "ln_nf", scope: !875, file: !2, line: 784, type: !162)
!875 = distinct !DILexicalBlock(scope: !876, file: !2, line: 783, column: 8)
!876 = distinct !DILexicalBlock(scope: !877, file: !2, line: 780, column: 11)
!877 = distinct !DILexicalBlock(scope: !878, file: !2, line: 776, column: 11)
!878 = distinct !DILexicalBlock(scope: !869, file: !2, line: 772, column: 6)
!879 = !DILocalVariable(name: "hzeta", scope: !875, file: !2, line: 785, type: !162)
!880 = !DILocalVariable(name: "stat_hz", scope: !875, file: !2, line: 786, type: !18)
!881 = !DILocalVariable(name: "stat_nf", scope: !875, file: !2, line: 787, type: !18)
!882 = !DILocalVariable(name: "stat_e", scope: !875, file: !2, line: 788, type: !18)
!883 = distinct !DIAssignID()
!884 = !DILocation(line: 0, scope: !875)
!885 = distinct !DIAssignID()
!886 = !DILocation(line: 0, scope: !869)
!887 = !DILocation(line: 772, column: 6, scope: !869)
!888 = !DILocation(line: 774, column: 12, scope: !889)
!889 = distinct !DILexicalBlock(scope: !878, file: !2, line: 773, column: 3)
!890 = !{i32 0, i32 2}
!891 = !DILocation(line: 774, column: 5, scope: !889)
!892 = !DILocation(line: 778, column: 12, scope: !893)
!893 = distinct !DILexicalBlock(scope: !877, file: !2, line: 777, column: 3)
!894 = !DILocation(line: 778, column: 5, scope: !893)
!895 = !DILocation(line: 780, column: 13, scope: !876)
!896 = !DILocation(line: 780, column: 17, scope: !876)
!897 = !DILocation(line: 781, column: 5, scope: !898)
!898 = distinct !DILexicalBlock(scope: !899, file: !2, line: 781, column: 5)
!899 = distinct !DILexicalBlock(scope: !876, file: !2, line: 780, column: 30)
!900 = !DILocation(line: 781, column: 5, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !2, line: 781, column: 5)
!902 = !DILocation(line: 784, column: 5, scope: !875)
!903 = !DILocation(line: 785, column: 5, scope: !875)
!904 = !DILocation(line: 786, column: 34, scope: !875)
!905 = !DILocation(line: 786, column: 19, scope: !875)
!906 = !DILocation(line: 787, column: 19, scope: !875)
!907 = !DILocation(line: 788, column: 47, scope: !875)
!908 = !DILocation(line: 788, column: 58, scope: !875)
!909 = !DILocation(line: 789, column: 50, scope: !875)
!910 = !DILocation(line: 789, column: 61, scope: !875)
!911 = !DILocation(line: 788, column: 19, scope: !875)
!912 = !DILocation(line: 791, column: 8, scope: !913)
!913 = distinct !DILexicalBlock(scope: !875, file: !2, line: 791, column: 8)
!914 = !DILocation(line: 791, column: 8, scope: !875)
!915 = !DILocation(line: 791, column: 47, scope: !913)
!916 = !DILocation(line: 791, column: 38, scope: !913)
!917 = !DILocation(line: 791, column: 36, scope: !913)
!918 = !DILocation(line: 791, column: 24, scope: !913)
!919 = !DILocation(line: 792, column: 12, scope: !875)
!920 = !DILocation(line: 793, column: 3, scope: !876)
!921 = !DILocation(line: 0, scope: !878)
!922 = !DILocation(line: 794, column: 1, scope: !869)
!923 = !DISubprogram(name: "gsl_sf_hzeta_e", scope: !924, file: !924, line: 88, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!924 = !DIFile(filename: "../gsl/gsl_sf_zeta.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3b020124d077aa4b6b3c3ca444b4ecd2")
!925 = !DISubroutineType(types: !926)
!926 = !{!18, !144, !144, !161}
!927 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !928, file: !928, line: 136, type: !929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!928 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!929 = !DISubroutineType(types: !930)
!930 = !{!18, !931, !161}
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!932 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !933, file: !933, line: 122, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!933 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!934 = !DISubroutineType(types: !935)
!935 = !{!18, !144, !144, !144, !144, !161}
!936 = distinct !DISubprogram(name: "gsl_sf_complex_psi_e", scope: !2, file: !2, line: 798, type: !937, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !939)
!937 = !DISubroutineType(types: !938)
!938 = !{!18, !144, !144, !161, !161}
!939 = !{!940, !941, !942, !943, !944, !947, !949, !950, !951, !952}
!940 = !DILocalVariable(name: "x", arg: 1, scope: !936, file: !2, line: 799, type: !144)
!941 = !DILocalVariable(name: "y", arg: 2, scope: !936, file: !2, line: 800, type: !144)
!942 = !DILocalVariable(name: "result_re", arg: 3, scope: !936, file: !2, line: 801, type: !161)
!943 = !DILocalVariable(name: "result_im", arg: 4, scope: !936, file: !2, line: 802, type: !161)
!944 = !DILocalVariable(name: "z", scope: !945, file: !2, line: 807, type: !130)
!945 = distinct !DILexicalBlock(scope: !946, file: !2, line: 806, column: 3)
!946 = distinct !DILexicalBlock(scope: !936, file: !2, line: 805, column: 6)
!947 = !DILocalVariable(name: "z", scope: !948, file: !2, line: 813, type: !130)
!948 = distinct !DILexicalBlock(scope: !946, file: !2, line: 811, column: 3)
!949 = !DILocalVariable(name: "omz", scope: !948, file: !2, line: 814, type: !130)
!950 = !DILocalVariable(name: "zpi", scope: !948, file: !2, line: 815, type: !130)
!951 = !DILocalVariable(name: "cotzpi", scope: !948, file: !2, line: 816, type: !130)
!952 = !DILocalVariable(name: "ret_val", scope: !948, file: !2, line: 817, type: !18)
!953 = !DILocation(line: 0, scope: !936)
!954 = !DILocation(line: 805, column: 8, scope: !946)
!955 = !DILocation(line: 805, column: 6, scope: !936)
!956 = !DILocation(line: 0, scope: !945)
!957 = !DILocation(line: 808, column: 12, scope: !945)
!958 = !DILocation(line: 0, scope: !948)
!959 = !DILocation(line: 814, column: 49, scope: !948)
!960 = !DILocation(line: 815, column: 23, scope: !948)
!961 = !DILocation(line: 816, column: 26, scope: !948)
!962 = !DILocation(line: 817, column: 19, scope: !948)
!963 = !DILocation(line: 819, column: 8, scope: !964)
!964 = distinct !DILexicalBlock(scope: !948, file: !2, line: 819, column: 8)
!965 = !DILocation(line: 819, column: 38, scope: !964)
!966 = !DILocation(line: 819, column: 41, scope: !964)
!967 = !DILocation(line: 819, column: 8, scope: !948)
!968 = !DILocation(line: 821, column: 30, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !2, line: 820, column: 5)
!970 = !DILocation(line: 821, column: 22, scope: !969)
!971 = !DILocation(line: 822, column: 30, scope: !969)
!972 = !DILocation(line: 822, column: 22, scope: !969)
!973 = !DILocation(line: 823, column: 7, scope: !969)
!974 = !DILocation(line: 827, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !2, line: 827, column: 7)
!976 = distinct !DILexicalBlock(scope: !964, file: !2, line: 826, column: 5)
!977 = !DILocation(line: 0, scope: !946)
!978 = !DILocation(line: 830, column: 1, scope: !936)
!979 = distinct !DISubprogram(name: "psi_complex_rhp", scope: !2, file: !2, line: 499, type: !980, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{!18, !130, !161, !161}
!982 = !{!983, !984, !985, !986, !987, !988, !989, !992, !993, !994, !998}
!983 = !DILocalVariable(name: "z", arg: 1, scope: !979, file: !2, line: 500, type: !130)
!984 = !DILocalVariable(name: "result_re", arg: 2, scope: !979, file: !2, line: 501, type: !161)
!985 = !DILocalVariable(name: "result_im", arg: 3, scope: !979, file: !2, line: 502, type: !161)
!986 = !DILocalVariable(name: "n_recurse", scope: !979, file: !2, line: 505, type: !18)
!987 = !DILocalVariable(name: "i", scope: !979, file: !2, line: 506, type: !18)
!988 = !DILocalVariable(name: "a", scope: !979, file: !2, line: 507, type: !130)
!989 = !DILocalVariable(name: "sp", scope: !990, file: !2, line: 521, type: !144)
!990 = distinct !DILexicalBlock(scope: !991, file: !2, line: 520, column: 3)
!991 = distinct !DILexicalBlock(scope: !979, file: !2, line: 519, column: 6)
!992 = !DILocalVariable(name: "sn", scope: !990, file: !2, line: 522, type: !144)
!993 = !DILocalVariable(name: "rhs", scope: !990, file: !2, line: 523, type: !144)
!994 = !DILocalVariable(name: "zn", scope: !995, file: !2, line: 536, type: !130)
!995 = distinct !DILexicalBlock(scope: !996, file: !2, line: 535, column: 3)
!996 = distinct !DILexicalBlock(scope: !997, file: !2, line: 534, column: 3)
!997 = distinct !DILexicalBlock(scope: !979, file: !2, line: 534, column: 3)
!998 = !DILocalVariable(name: "zn_inverse", scope: !995, file: !2, line: 537, type: !130)
!999 = !DILocation(line: 0, scope: !979)
!1000 = !DILocation(line: 509, column: 18, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !979, file: !2, line: 509, column: 6)
!1002 = !DILocation(line: 509, column: 25, scope: !1001)
!1003 = !DILocation(line: 511, column: 20, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 510, column: 3)
!1005 = !DILocation(line: 512, column: 20, scope: !1004)
!1006 = !DILocation(line: 513, column: 16, scope: !1004)
!1007 = !DILocation(line: 513, column: 20, scope: !1004)
!1008 = !DILocation(line: 514, column: 16, scope: !1004)
!1009 = !DILocation(line: 514, column: 20, scope: !1004)
!1010 = !DILocation(line: 515, column: 5, scope: !1004)
!1011 = !DILocation(line: 519, column: 18, scope: !991)
!1012 = !DILocation(line: 519, column: 25, scope: !991)
!1013 = !DILocation(line: 521, column: 23, scope: !990)
!1014 = !DILocation(line: 0, scope: !990)
!1015 = !DILocation(line: 522, column: 23, scope: !990)
!1016 = !DILocation(line: 523, column: 26, scope: !990)
!1017 = !DILocation(line: 524, column: 12, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !990, file: !2, line: 524, column: 8)
!1019 = !DILocation(line: 524, column: 8, scope: !990)
!1020 = !DILocation(line: 524, column: 31, scope: !1018)
!1021 = !DILocation(line: 524, column: 19, scope: !1018)
!1022 = !DILocation(line: 528, column: 49, scope: !979)
!1023 = !DILocation(line: 528, column: 25, scope: !979)
!1024 = !DILocation(line: 0, scope: !127, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 528, column: 7, scope: !979)
!1026 = !DILocation(line: 472, column: 20, scope: !127, inlinedAt: !1025)
!1027 = !DILocation(line: 473, column: 20, scope: !127, inlinedAt: !1025)
!1028 = !DILocation(line: 478, column: 9, scope: !127, inlinedAt: !1025)
!1029 = !DILocation(line: 479, column: 9, scope: !127, inlinedAt: !1025)
!1030 = !DILocation(line: 480, column: 9, scope: !127, inlinedAt: !1025)
!1031 = !DILocation(line: 481, column: 9, scope: !127, inlinedAt: !1025)
!1032 = !DILocation(line: 482, column: 9, scope: !127, inlinedAt: !1025)
!1033 = !DILocation(line: 483, column: 9, scope: !127, inlinedAt: !1025)
!1034 = !DILocation(line: 484, column: 9, scope: !127, inlinedAt: !1025)
!1035 = !DILocation(line: 485, column: 9, scope: !127, inlinedAt: !1025)
!1036 = !DILocation(line: 488, column: 8, scope: !127, inlinedAt: !1025)
!1037 = !DILocation(line: 489, column: 8, scope: !127, inlinedAt: !1025)
!1038 = !DILocation(line: 490, column: 28, scope: !127, inlinedAt: !1025)
!1039 = !DILocation(line: 490, column: 8, scope: !127, inlinedAt: !1025)
!1040 = !DILocation(line: 492, column: 26, scope: !127, inlinedAt: !1025)
!1041 = !DILocation(line: 492, column: 10, scope: !127, inlinedAt: !1025)
!1042 = !DILocation(line: 528, column: 7, scope: !979)
!1043 = !DILocation(line: 530, column: 44, scope: !979)
!1044 = !DILocation(line: 530, column: 42, scope: !979)
!1045 = !DILocation(line: 530, column: 14, scope: !979)
!1046 = !DILocation(line: 530, column: 18, scope: !979)
!1047 = !DILocation(line: 531, column: 44, scope: !979)
!1048 = !DILocation(line: 531, column: 42, scope: !979)
!1049 = !DILocation(line: 531, column: 14, scope: !979)
!1050 = !DILocation(line: 534, column: 24, scope: !996)
!1051 = !DILocation(line: 534, column: 3, scope: !997)
!1052 = !DILocation(line: 536, column: 48, scope: !995)
!1053 = !DILocation(line: 536, column: 22, scope: !995)
!1054 = !DILocation(line: 0, scope: !995)
!1055 = !DILocation(line: 537, column: 30, scope: !995)
!1056 = !DILocation(line: 538, column: 9, scope: !995)
!1057 = !DILocation(line: 541, column: 47, scope: !995)
!1058 = !DILocation(line: 541, column: 45, scope: !995)
!1059 = !DILocation(line: 541, column: 20, scope: !995)
!1060 = !DILocation(line: 542, column: 47, scope: !995)
!1061 = !DILocation(line: 542, column: 45, scope: !995)
!1062 = !DILocation(line: 542, column: 20, scope: !995)
!1063 = distinct !{!1063, !1051, !1064, !331}
!1064 = !DILocation(line: 543, column: 3, scope: !997)
!1065 = !DILocation(line: 549, column: 45, scope: !979)
!1066 = !DILocation(line: 549, column: 43, scope: !979)
!1067 = !DILocation(line: 545, column: 18, scope: !979)
!1068 = !DILocation(line: 546, column: 18, scope: !979)
!1069 = !DILocation(line: 548, column: 61, scope: !979)
!1070 = !DILocation(line: 548, column: 45, scope: !979)
!1071 = !DILocation(line: 548, column: 43, scope: !979)
!1072 = !DILocation(line: 548, column: 18, scope: !979)
!1073 = !DILocation(line: 549, column: 18, scope: !979)
!1074 = !DILocation(line: 551, column: 3, scope: !979)
!1075 = !DILocation(line: 552, column: 1, scope: !979)
!1076 = !DISubprogram(name: "gsl_complex_mul_real", scope: !1077, file: !1077, line: 73, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1077 = !DIFile(filename: "../gsl/gsl_complex_math.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3bebe2d988d25a9edadbea9b4bb7ae01")
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!130, !130, !98}
!1080 = !DISubprogram(name: "gsl_complex_cot", scope: !1077, file: !1077, line: 105, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1081 = !DISubprogram(name: "gsl_finite", scope: !1082, file: !1082, line: 45, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1082 = !DIFile(filename: "../gsl/gsl_sys.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "66066a5c22c0bbe63a298abf4db295db")
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!18, !144}
!1085 = distinct !DISubprogram(name: "gsl_sf_psi_int", scope: !2, file: !2, line: 838, type: !1086, scopeLine: 839, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1088)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!98, !160}
!1088 = !{!1089, !1090, !1091}
!1089 = !DILocalVariable(name: "n", arg: 1, scope: !1085, file: !2, line: 838, type: !160)
!1090 = !DILocalVariable(name: "result", scope: !1085, file: !2, line: 840, type: !162)
!1091 = !DILocalVariable(name: "status", scope: !1085, file: !2, line: 840, type: !18)
!1092 = distinct !DIAssignID()
!1093 = !DILocation(line: 0, scope: !1085)
!1094 = !DILocation(line: 840, column: 3, scope: !1085)
!1095 = !DILocation(line: 840, column: 3, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 840, column: 3)
!1097 = !DILocation(line: 840, column: 3, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 840, column: 3)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 840, column: 3)
!1100 = !DILocation(line: 841, column: 1, scope: !1085)
!1101 = distinct !DISubprogram(name: "gsl_sf_psi", scope: !2, file: !2, line: 843, type: !1102, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1104)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!98, !144}
!1104 = !{!1105, !1106, !1107}
!1105 = !DILocalVariable(name: "x", arg: 1, scope: !1101, file: !2, line: 843, type: !144)
!1106 = !DILocalVariable(name: "result", scope: !1101, file: !2, line: 845, type: !162)
!1107 = !DILocalVariable(name: "status", scope: !1101, file: !2, line: 845, type: !18)
!1108 = distinct !DIAssignID()
!1109 = !DILocation(line: 0, scope: !1101)
!1110 = !DILocation(line: 845, column: 3, scope: !1101)
!1111 = !DILocation(line: 845, column: 3, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 845, column: 3)
!1113 = !DILocation(line: 845, column: 3, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 845, column: 3)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 845, column: 3)
!1116 = !DILocation(line: 846, column: 1, scope: !1101)
!1117 = distinct !DISubprogram(name: "gsl_sf_psi_1piy", scope: !2, file: !2, line: 848, type: !1102, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1118)
!1118 = !{!1119, !1120, !1121}
!1119 = !DILocalVariable(name: "x", arg: 1, scope: !1117, file: !2, line: 848, type: !144)
!1120 = !DILocalVariable(name: "result", scope: !1117, file: !2, line: 850, type: !162)
!1121 = !DILocalVariable(name: "status", scope: !1117, file: !2, line: 850, type: !18)
!1122 = distinct !DIAssignID()
!1123 = !DILocation(line: 0, scope: !1117)
!1124 = !DILocation(line: 850, column: 3, scope: !1117)
!1125 = !DILocation(line: 851, column: 1, scope: !1117)
!1126 = distinct !DISubprogram(name: "gsl_sf_psi_1_int", scope: !2, file: !2, line: 853, type: !1086, scopeLine: 854, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1127)
!1127 = !{!1128, !1129, !1130}
!1128 = !DILocalVariable(name: "n", arg: 1, scope: !1126, file: !2, line: 853, type: !160)
!1129 = !DILocalVariable(name: "result", scope: !1126, file: !2, line: 855, type: !162)
!1130 = !DILocalVariable(name: "status", scope: !1126, file: !2, line: 855, type: !18)
!1131 = !DILocation(line: 0, scope: !1126)
!1132 = !DILocation(line: 0, scope: !680, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 855, column: 3, scope: !1126)
!1134 = !DILocation(line: 698, column: 8, scope: !687, inlinedAt: !1133)
!1135 = !DILocation(line: 698, column: 6, scope: !680, inlinedAt: !1133)
!1136 = !DILocation(line: 701, column: 13, scope: !686, inlinedAt: !1133)
!1137 = !DILocation(line: 701, column: 11, scope: !687, inlinedAt: !1133)
!1138 = !DILocation(line: 702, column: 19, scope: !703, inlinedAt: !1133)
!1139 = !DILocation(line: 704, column: 5, scope: !703, inlinedAt: !1133)
!1140 = !DILocation(line: 0, scope: !685, inlinedAt: !1133)
!1141 = !DILocation(line: 713, column: 29, scope: !685, inlinedAt: !1133)
!1142 = !DILocation(line: 713, column: 28, scope: !685, inlinedAt: !1133)
!1143 = !DILocation(line: 713, column: 31, scope: !685, inlinedAt: !1133)
!1144 = !DILocation(line: 714, column: 28, scope: !685, inlinedAt: !1133)
!1145 = !DILocation(line: 714, column: 53, scope: !685, inlinedAt: !1133)
!1146 = !DILocation(line: 714, column: 44, scope: !685, inlinedAt: !1133)
!1147 = !DILocation(line: 714, column: 33, scope: !685, inlinedAt: !1133)
!1148 = !DILocation(line: 715, column: 29, scope: !685, inlinedAt: !1133)
!1149 = !DILocation(line: 715, column: 42, scope: !685, inlinedAt: !1133)
!1150 = !DILocation(line: 715, column: 44, scope: !685, inlinedAt: !1133)
!1151 = !DILocation(line: 715, column: 37, scope: !685, inlinedAt: !1133)
!1152 = !DILocation(line: 715, column: 48, scope: !685, inlinedAt: !1133)
!1153 = !DILocation(line: 715, column: 55, scope: !685, inlinedAt: !1133)
!1154 = !DILocation(line: 699, column: 5, scope: !699, inlinedAt: !1133)
!1155 = !DILocation(line: 855, column: 3, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 855, column: 3)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 855, column: 3)
!1158 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 855, column: 3)
!1159 = !DILocation(line: 856, column: 1, scope: !1126)
!1160 = distinct !DISubprogram(name: "gsl_sf_psi_1", scope: !2, file: !2, line: 858, type: !1102, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1161)
!1161 = !{!1162, !1163, !1164}
!1162 = !DILocalVariable(name: "x", arg: 1, scope: !1160, file: !2, line: 858, type: !144)
!1163 = !DILocalVariable(name: "result", scope: !1160, file: !2, line: 860, type: !162)
!1164 = !DILocalVariable(name: "status", scope: !1160, file: !2, line: 860, type: !18)
!1165 = distinct !DIAssignID()
!1166 = !DILocation(line: 0, scope: !1160)
!1167 = !DILocation(line: 860, column: 3, scope: !1160)
!1168 = !DILocation(line: 860, column: 3, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 860, column: 3)
!1170 = !DILocation(line: 860, column: 3, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 860, column: 3)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 860, column: 3)
!1173 = !DILocation(line: 861, column: 1, scope: !1160)
!1174 = distinct !DISubprogram(name: "gsl_sf_psi_n", scope: !2, file: !2, line: 863, type: !1175, scopeLine: 864, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1177)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!98, !160, !144}
!1177 = !{!1178, !1179, !1180, !1181}
!1178 = !DILocalVariable(name: "n", arg: 1, scope: !1174, file: !2, line: 863, type: !160)
!1179 = !DILocalVariable(name: "x", arg: 2, scope: !1174, file: !2, line: 863, type: !144)
!1180 = !DILocalVariable(name: "result", scope: !1174, file: !2, line: 865, type: !162)
!1181 = !DILocalVariable(name: "status", scope: !1174, file: !2, line: 865, type: !18)
!1182 = distinct !DIAssignID()
!1183 = !DILocation(line: 0, scope: !1174)
!1184 = !DILocation(line: 865, column: 3, scope: !1174)
!1185 = !DILocation(line: 865, column: 3, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 865, column: 3)
!1187 = !DILocation(line: 865, column: 3, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 865, column: 3)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 865, column: 3)
!1190 = !DILocation(line: 866, column: 1, scope: !1174)
!1191 = !DISubprogram(name: "cos", scope: !233, file: !233, line: 62, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1192 = !DISubprogram(name: "sqrt", scope: !233, file: !233, line: 143, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1193 = !DISubprogram(name: "gsl_complex_add_real", scope: !1077, file: !1077, line: 71, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1194 = !DISubprogram(name: "gsl_complex_inverse", scope: !1077, file: !1077, line: 82, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1195 = !DISubprogram(name: "gsl_complex_sub", scope: !1077, file: !1077, line: 67, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!130, !130, !130}
!1198 = !DISubprogram(name: "gsl_complex_mul", scope: !1077, file: !1077, line: 68, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1199 = !DISubprogram(name: "gsl_complex_add", scope: !1077, file: !1077, line: 66, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1200 = !DISubprogram(name: "gsl_complex_log", scope: !1077, file: !1077, line: 94, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
