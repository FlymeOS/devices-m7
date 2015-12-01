.class public Lcom/mt/image/ImageProcess;
.super Ljava/lang/Object;
.source "ImageProcess.java"


# static fields
.field private static DELTA_INDEX:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x65

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mt/image/ImageProcess;->DELTA_INDEX:[F

    .line 31
    return-void

    .line 32
    :array_0
    .array-data 4
        0x0
        0x3c23d70a    # 0.01f
        0x3ca3d70a    # 0.02f
        0x3d23d70a    # 0.04f
        0x3d4ccccd    # 0.05f
        0x3d75c28f    # 0.06f
        0x3d8f5c29    # 0.07f
        0x3da3d70a    # 0.08f
        0x3dcccccd    # 0.1f
        0x3de147ae    # 0.11f
        0x3df5c28f    # 0.12f
        0x3e0f5c29    # 0.14f
        0x3e19999a    # 0.15f
        0x3e23d70a    # 0.16f
        0x3e2e147b    # 0.17f
        0x3e3851ec    # 0.18f
        0x3e4ccccd    # 0.2f
        0x3e570a3d    # 0.21f
        0x3e6147ae    # 0.22f
        0x3e75c28f    # 0.24f
        0x3e800000    # 0.25f
        0x3e8a3d71    # 0.27f
        0x3e8f5c29    # 0.28f
        0x3e99999a    # 0.3f
        0x3ea3d70a    # 0.32f
        0x3eae147b    # 0.34f
        0x3eb851ec    # 0.36f
        0x3ec28f5c    # 0.38f
        0x3ecccccd    # 0.4f
        0x3ed70a3d    # 0.42f
        0x3ee147ae    # 0.44f
        0x3eeb851f    # 0.46f
        0x3ef5c28f    # 0.48f
        0x3f000000    # 0.5f
        0x3f07ae14    # 0.53f
        0x3f0f5c29    # 0.56f
        0x3f170a3d    # 0.59f
        0x3f1eb852    # 0.62f
        0x3f266666    # 0.65f
        0x3f2e147b    # 0.68f
        0x3f35c28f    # 0.71f
        0x3f3d70a4    # 0.74f
        0x3f451eb8    # 0.77f
        0x3f4ccccd    # 0.8f
        0x3f547ae1    # 0.83f
        0x3f5c28f6    # 0.86f
        0x3f63d70a    # 0.89f
        0x3f6b851f    # 0.92f
        0x3f733333    # 0.95f
        0x3f7ae148    # 0.98f
        0x3f800000    # 1.0f
        0x3f87ae14    # 1.06f
        0x3f8f5c29    # 1.12f
        0x3f970a3d    # 1.18f
        0x3f9eb852    # 1.24f
        0x3fa66666    # 1.3f
        0x3fae147b    # 1.36f
        0x3fb5c28f    # 1.42f
        0x3fbd70a4    # 1.48f
        0x3fc51eb8    # 1.54f
        0x3fcccccd    # 1.6f
        0x3fd47ae1    # 1.66f
        0x3fdc28f6    # 1.72f
        0x3fe3d70a    # 1.78f
        0x3feb851f    # 1.84f
        0x3ff33333    # 1.9f
        0x3ffae148    # 1.96f
        0x40000000    # 2.0f
        0x4007ae14    # 2.12f
        0x40100000    # 2.25f
        0x4017ae14    # 2.37f
        0x40200000    # 2.5f
        0x4027ae14    # 2.62f
        0x40300000    # 2.75f
        0x4037ae14    # 2.87f
        0x40400000    # 3.0f
        0x404ccccd    # 3.2f
        0x4059999a    # 3.4f
        0x40666666    # 3.6f
        0x40733333    # 3.8f
        0x40800000    # 4.0f
        0x4089999a    # 4.3f
        0x40966666    # 4.7f
        0x409ccccd    # 4.9f
        0x40a00000    # 5.0f
        0x40b00000    # 5.5f
        0x40c00000    # 6.0f
        0x40d00000    # 6.5f
        0x40d9999a    # 6.8f
        0x40e00000    # 7.0f
        0x40e9999a    # 7.3f
        0x40f00000    # 7.5f
        0x40f9999a    # 7.8f
        0x41000000    # 8.0f
        0x41066666    # 8.4f
        0x410b3333    # 8.7f
        0x41100000    # 9.0f
        0x41166666    # 9.4f
        0x4119999a    # 9.6f
        0x411ccccd    # 9.8f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static Bmp565ToBmp888(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 1199
    const/4 v0, 0x0

    .line 1201
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 1202
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    move-object p0, v0

    .line 1212
    :cond_0
    return-object p0

    .line 1208
    :catch_0
    move-exception v1

    .line 1209
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FittingWindow "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1210
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1046
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1047
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1048
    array-length v0, p1

    mul-int v1, v3, v7

    if-eq v0, v1, :cond_0

    move-object p0, v8

    .line 1063
    :goto_0
    return-object p0

    .line 1052
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_2

    .line 1053
    if-nez p0, :cond_1

    move-object p0, v8

    .line 1054
    goto :goto_0

    .line 1056
    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    :cond_2
    move-object p0, v8

    .line 1063
    goto :goto_0
.end method

.method public static ChangeBitmapDataPart(Landroid/graphics/Bitmap;[IIIII)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1071
    :try_start_0
    array-length v0, p1

    mul-int v1, p4, p5

    if-eq v0, v1, :cond_0

    move-object p0, v8

    .line 1086
    :goto_0
    return-object p0

    .line 1075
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_2

    .line 1076
    if-nez p0, :cond_1

    move-object p0, v8

    .line 1077
    goto :goto_0

    .line 1079
    :cond_1
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    :cond_2
    move-object p0, v8

    .line 1086
    goto :goto_0
.end method

.method public static Clone(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 765
    const/4 v0, 0x0

    .line 767
    :try_start_0
    sget-object v1, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 772
    :goto_0
    return-object v0

    .line 769
    :catch_0
    move-exception v1

    .line 770
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static FittingWindow(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 1260
    const/4 v1, 0x0

    .line 1264
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1265
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1266
    mul-int v0, v4, p2

    mul-int v2, v5, p1

    if-le v0, v2, :cond_2

    .line 1268
    mul-int v0, v5, p1

    div-int/2addr v0, v4

    .line 1269
    int-to-float v2, p1

    int-to-float v3, v4

    div-float/2addr v2, v3

    .line 1270
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "scale="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v3, v2

    move v2, p1

    .line 1290
    :goto_0
    mul-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    .line 1291
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1292
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 1294
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1295
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "srcW="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " srcH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " w="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " h="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1296
    if-nez p0, :cond_3

    .line 1297
    const-string v3, "2aMTXX src == null"

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1302
    :cond_0
    :goto_1
    if-ne v4, v2, :cond_5

    if-ne v5, v0, :cond_5

    .line 1303
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1304
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1309
    :goto_2
    :try_start_1
    const-string v0, "FittingWindow copy"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1335
    :goto_3
    if-eqz p3, :cond_1

    .line 1336
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1344
    :cond_1
    :goto_4
    return-object v0

    .line 1273
    :cond_2
    mul-int v0, v4, p2

    :try_start_3
    div-int/2addr v0, v5

    .line 1274
    int-to-float v2, p2

    int-to-float v3, v5

    div-float/2addr v2, v3

    .line 1275
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "scale="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v3, v2

    move v2, v0

    move v0, p2

    goto/16 :goto_0

    .line 1299
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1300
    const-string v3, "3aMTXX src.isRecycled()"

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1340
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 1341
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FittingWindow "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1342
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_4

    .line 1306
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 1312
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {p0, v2, v0, v3}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_3

    .line 1340
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_5
.end method

.method public static FittingWindow(Landroid/graphics/Bitmap;II[FZ)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 1517
    const/4 v1, 0x0

    .line 1521
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1522
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1523
    mul-int v0, v4, p2

    mul-int v2, v5, p1

    if-le v0, v2, :cond_2

    .line 1525
    mul-int v0, v5, p1

    div-int/2addr v0, v4

    .line 1526
    int-to-float v2, p1

    int-to-float v3, v4

    div-float/2addr v2, v3

    .line 1527
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "scale="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v3, v2

    move v2, p1

    .line 1548
    :goto_0
    const/4 v6, 0x0

    aput v3, p3, v6

    .line 1549
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1550
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 1552
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1553
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "srcW="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " srcH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " w="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " h="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1554
    if-nez p0, :cond_3

    .line 1555
    const-string v3, "2aMTXX src == null"

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1560
    :cond_0
    :goto_1
    if-ne v4, v2, :cond_4

    if-ne v5, v0, :cond_4

    .line 1561
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1562
    :try_start_1
    const-string v0, "FittingWindow copy"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1588
    :goto_2
    if-eqz p4, :cond_1

    .line 1589
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1597
    :cond_1
    :goto_3
    return-object v0

    .line 1530
    :cond_2
    mul-int v0, v4, p2

    :try_start_3
    div-int/2addr v0, v5

    .line 1531
    int-to-float v2, p2

    int-to-float v3, v5

    div-float/2addr v2, v3

    .line 1532
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "scale="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v3, v2

    move v2, v0

    move v0, p2

    goto/16 :goto_0

    .line 1557
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1558
    const-string v3, "3aMTXX src.isRecycled()"

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1593
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 1594
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FittingWindow "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1595
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 1565
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {p0, v2, v0, v3}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_2

    .line 1593
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_4
.end method

.method public static FittingWindow888(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 1604
    const/4 v1, 0x0

    .line 1608
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1609
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1610
    mul-int v0, v4, p2

    mul-int v2, v5, p1

    if-le v0, v2, :cond_2

    .line 1612
    mul-int v0, v5, p1

    div-int/2addr v0, v4

    .line 1613
    int-to-float v2, p1

    int-to-float v3, v4

    div-float/2addr v2, v3

    .line 1614
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "scale="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v3, v2

    move v2, p1

    .line 1635
    :goto_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1636
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 1638
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1639
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "srcW="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " srcH="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1640
    if-nez p0, :cond_3

    .line 1641
    const-string v4, "2aMTXX src == null"

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1646
    :cond_0
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    .line 1647
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1648
    :try_start_1
    const-string v0, "FittingWindow copy"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1654
    :goto_2
    if-eqz p3, :cond_1

    .line 1655
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1663
    :cond_1
    :goto_3
    return-object v0

    .line 1617
    :cond_2
    mul-int v0, v4, p2

    :try_start_3
    div-int/2addr v0, v5

    .line 1618
    int-to-float v2, p2

    int-to-float v3, v5

    div-float/2addr v2, v3

    .line 1619
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "scale="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v3, v2

    move v2, v0

    move v0, p2

    goto :goto_0

    .line 1643
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1644
    const-string v4, "3aMTXX src.isRecycled()"

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1659
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 1660
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FittingWindow "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1661
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 1651
    :cond_4
    :try_start_4
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v2, v0, v3}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_2

    .line 1659
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_4
.end method

.method public static FittingWindowFull(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 1670
    const/4 v1, 0x0

    .line 1674
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1675
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1676
    mul-int v0, v4, p2

    mul-int v2, v5, p1

    if-ge v0, v2, :cond_1

    .line 1678
    mul-int v0, v5, p1

    div-int/2addr v0, v4

    .line 1679
    int-to-float v2, p1

    int-to-float v3, v4

    div-float/2addr v2, v3

    .line 1680
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "scale="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v3, v2

    move v2, p1

    .line 1688
    :goto_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1690
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1691
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "srcW="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " srcH="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1693
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 1694
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1695
    :try_start_1
    const-string v0, "FittingWindow copy"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1700
    :goto_1
    if-eqz p3, :cond_0

    .line 1701
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1709
    :cond_0
    :goto_2
    return-object v0

    .line 1683
    :cond_1
    mul-int v0, v4, p2

    :try_start_3
    div-int/2addr v0, v5

    .line 1684
    int-to-float v2, p2

    int-to-float v3, v5

    div-float/2addr v2, v3

    .line 1685
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "scale="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v3, v2

    move v2, v0

    move v0, p2

    goto :goto_0

    .line 1698
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {p0, v2, v0, v3}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1705
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 1706
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FittingWindow "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1707
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_2

    .line 1705
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method public static FittingWindowFullSize(IIII)F
    .locals 5

    .prologue
    .line 1715
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1719
    mul-int v0, p0, p3

    mul-int v2, p1, p2

    if-ge v0, v2, :cond_0

    .line 1721
    mul-int v0, p1, p2

    :try_start_0
    div-int/2addr v0, p0

    .line 1722
    int-to-float v0, p2

    int-to-float v1, p0

    div-float v1, v0, v1

    .line 1723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "scale="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1731
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "srcW="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " srcH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1738
    :goto_1
    return v0

    .line 1726
    :cond_0
    mul-int v0, p0, p3

    :try_start_2
    div-int/2addr v0, p1

    .line 1727
    int-to-float v0, p3

    int-to-float v1, p1

    div-float v1, v0, v1

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "scale="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    goto :goto_0

    .line 1734
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 1735
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FittingWindow "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1736
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 1734
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static FittingWindowSave(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 1864
    const/4 v1, 0x0

    .line 1866
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FittingWindowSave w="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " srcW="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " srcH="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 1909
    :goto_0
    return-object p0

    .line 1873
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1874
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1875
    mul-int v3, v0, p2

    mul-int v4, v2, p1

    if-le v3, v4, :cond_2

    .line 1877
    mul-int v3, v2, p1

    div-int p2, v3, v0

    .line 1878
    int-to-float v3, p1

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 1890
    :goto_1
    if-ne v0, p1, :cond_3

    if-ne v2, p2, :cond_3

    .line 1891
    sget-object v0, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1892
    :try_start_1
    const-string v0, "FittingWindowSave copy"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1898
    :goto_2
    if-eqz p3, :cond_1

    .line 1899
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1902
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "w="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1903
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1902
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object p0, v0

    .line 1909
    goto :goto_0

    .line 1881
    :cond_2
    mul-int v3, v0, p2

    :try_start_3
    div-int p1, v3, v2

    .line 1882
    int-to-float v3, p2

    int-to-float v4, v2

    div-float/2addr v3, v4

    goto :goto_1

    .line 1895
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_2

    .line 1906
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 1907
    :goto_4
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 1906
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_4
.end method

.method public static FittingWindowSize(IIII[F)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1496
    mul-int v0, p0, p3

    mul-int v1, p1, p2

    if-le v0, v1, :cond_0

    .line 1497
    const/4 v0, 0x0

    int-to-float v1, p2

    :try_start_0
    aput v1, p4, v0

    .line 1498
    const/4 v0, 0x1

    mul-int v1, p1, p2

    div-int/2addr v1, p0

    int-to-float v1, v1

    aput v1, p4, v0

    .line 1499
    const/4 v0, 0x2

    int-to-float v1, p2

    int-to-float v2, p0

    div-float/2addr v1, v2

    aput v1, p4, v0

    .line 1511
    :goto_0
    return v3

    .line 1502
    :cond_0
    const/4 v0, 0x1

    int-to-float v1, p3

    aput v1, p4, v0

    .line 1503
    const/4 v0, 0x0

    mul-int v1, p0, p3

    div-int/2addr v1, p1

    int-to-float v1, v1

    aput v1, p4, v0

    .line 1504
    const/4 v0, 0x2

    int-to-float v1, p3

    int-to-float v2, p1

    div-float/2addr v1, v2

    aput v1, p4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1507
    :catch_0
    move-exception v0

    .line 1509
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static FittingWindowSquare(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/high16 v7, 0x447a0000    # 1000.0f

    const/4 v1, 0x0

    .line 1351
    .line 1355
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1356
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1357
    mul-int v0, v4, p2

    mul-int v2, v5, p1

    if-ge v0, v2, :cond_2

    .line 1359
    mul-int v0, v5, p1

    div-int/2addr v0, v4

    .line 1360
    int-to-float v2, p1

    int-to-float v3, v4

    div-float/2addr v2, v3

    .line 1361
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "scale="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v3, v2

    move v2, p1

    .line 1381
    :goto_0
    mul-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    .line 1382
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1383
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 1385
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1386
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "srcW="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " srcH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " w="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " h="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1387
    if-nez p0, :cond_3

    .line 1388
    const-string v3, "2aMTXX src == null"

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1393
    :cond_0
    :goto_1
    if-ne v4, v2, :cond_4

    if-ne v5, v0, :cond_4

    .line 1394
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1395
    :try_start_1
    const-string v0, "FittingWindow copy"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1400
    :goto_2
    if-eqz p3, :cond_1

    .line 1401
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1404
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_5

    .line 1405
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1406
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1407
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1408
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1423
    :goto_3
    return-object v0

    .line 1364
    :cond_2
    mul-int v0, v4, p2

    :try_start_2
    div-int/2addr v0, v5

    .line 1365
    int-to-float v2, p2

    int-to-float v3, v5

    div-float/2addr v2, v3

    .line 1366
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "scale="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v3, v2

    move v2, v0

    move v0, p2

    goto/16 :goto_0

    .line 1390
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1391
    const-string v3, "3aMTXX src.isRecycled()"

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1419
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 1420
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FittingWindow "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1421
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 1398
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {p0, v2, v0, v3}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    goto/16 :goto_2

    .line 1411
    :cond_5
    :try_start_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1412
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1413
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1414
    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1415
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 1419
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto/16 :goto_3
.end method

.method public static GetFittingSize(IIIIIIIIFF[F)Z
    .locals 8

    .prologue
    .line 1473
    div-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p6

    .line 1474
    div-int/lit8 v2, p3, 0x2

    add-int/2addr v2, p7

    .line 1475
    const-string v3, "TC"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "___GetFittingSize midX="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " midY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " curW="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " curH="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const-string v3, "TC"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "___GetFittingSize midX="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " midY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1478
    move/from16 v0, p9

    invoke-static {p0, p1, v0, v3}, Lcom/mt/image/ImageProcess;->GetRotateSize(IIF[I)Z

    .line 1479
    const/4 v4, 0x0

    aget v4, v3, v4

    div-int/lit8 v4, v4, 0x2

    .line 1480
    const/4 v5, 0x1

    aget v3, v3, v5

    div-int/lit8 v3, v3, 0x2

    .line 1482
    const-string v5, "TC"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "optHalfW="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " optHalfH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mt/tools/MTDebug;->PrintD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    const/4 v5, 0x0

    int-to-float v6, v1

    int-to-float v7, v4

    mul-float v7, v7, p8

    sub-float/2addr v6, v7

    aput v6, p10, v5

    .line 1485
    const/4 v5, 0x1

    int-to-float v6, v2

    int-to-float v7, v3

    mul-float v7, v7, p8

    sub-float/2addr v6, v7

    aput v6, p10, v5

    .line 1486
    const/4 v5, 0x2

    int-to-float v1, v1

    int-to-float v4, v4

    mul-float v4, v4, p8

    add-float/2addr v1, v4

    aput v1, p10, v5

    .line 1487
    const/4 v1, 0x3

    int-to-float v2, v2

    int-to-float v3, v3

    mul-float v3, v3, p8

    add-float/2addr v2, v3

    aput v2, p10, v1

    .line 1488
    const/4 v1, 0x4

    aput p8, p10, v1

    .line 1489
    const-string v1, "TC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "x="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v3, p10, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, p10, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " l="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, p10, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, p10, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->PrintD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    const/4 v1, 0x1

    return v1
.end method

.method public static GetRotateSize(IIF[I)Z
    .locals 10

    .prologue
    const/high16 v5, 0x43870000    # 270.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1428
    const-string v0, "TC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_____________________________GetRotateSize srcW="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " srcH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v4

    if-eqz v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 1430
    :cond_0
    const-string v0, "________0"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 1431
    aput p0, p3, v9

    .line 1432
    aput p1, p3, v8

    .line 1466
    :cond_1
    :goto_0
    return v8

    .line 1434
    :cond_2
    cmpl-float v0, p2, v3

    if-eqz v0, :cond_3

    cmpl-float v0, p2, v5

    if-nez v0, :cond_4

    .line 1435
    :cond_3
    aput p1, p3, v9

    .line 1436
    aput p0, p3, v8

    goto :goto_0

    .line 1438
    :cond_4
    cmpg-float v0, p2, v3

    if-ltz v0, :cond_5

    cmpl-float v0, p2, v4

    if-lez v0, :cond_6

    cmpg-float v0, p2, v5

    if-gez v0, :cond_6

    .line 1439
    :cond_5
    float-to-double v0, p2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 1442
    int-to-double v1, p1

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1443
    int-to-double v2, p0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1445
    int-to-double v3, p0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1446
    int-to-double v4, p1

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 1448
    const-string v4, "TC"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hs0="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " wc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ws="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    add-int/2addr v1, v2

    aput v1, p3, v9

    .line 1450
    add-int/2addr v0, v3

    aput v0, p3, v8

    goto/16 :goto_0

    .line 1452
    :cond_6
    cmpl-float v0, p2, v3

    if-lez v0, :cond_7

    cmpg-float v0, p2, v4

    if-ltz v0, :cond_8

    :cond_7
    cmpl-float v0, p2, v5

    if-lez v0, :cond_1

    const/high16 v0, 0x43b40000    # 360.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 1453
    :cond_8
    float-to-double v0, p2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 1456
    int-to-double v1, p1

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1457
    int-to-double v2, p0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1459
    int-to-double v3, p0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1460
    int-to-double v4, p1

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 1461
    const-string v4, "TC"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hs1="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " wc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ws="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    add-int/2addr v1, v2

    aput v1, p3, v9

    .line 1463
    add-int/2addr v0, v3

    aput v0, p3, v8

    goto/16 :goto_0
.end method

.method public static LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 709
    .line 711
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "LoadAssertsPic path="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 714
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 715
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 716
    sget-object v5, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 717
    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 720
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v2

    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LoadAssertsPic time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 728
    :goto_0
    return-object v0

    .line 724
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 726
    :goto_1
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 724
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;Z)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3107
    .line 3109
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "LoadAssertsPic path="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 3111
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 3112
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3113
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3114
    if-eqz p2, :cond_0

    .line 3115
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3120
    :goto_0
    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3123
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 3125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v2

    .line 3126
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LoadAssertsPic time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3131
    :goto_1
    return-object v0

    .line 3118
    :cond_0
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3127
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 3129
    :goto_2
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 3127
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static MoveBmpToMiddle(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 1172
    const/4 v1, 0x0

    .line 1174
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1175
    :try_start_1
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1176
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, p1, v1

    div-int/lit8 v3, v1, 0x2

    .line 1177
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    .line 1178
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1179
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1180
    if-gtz v3, :cond_0

    move v3, v2

    .line 1183
    :cond_0
    if-gtz v1, :cond_1

    move v1, v2

    .line 1186
    :cond_1
    int-to-float v2, v3

    int-to-float v1, v1

    invoke-virtual {v4, p0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1187
    if-eqz p3, :cond_2

    .line 1188
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1195
    :cond_2
    :goto_0
    return-object v0

    .line 1192
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 1193
    :goto_1
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1192
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static OpenPic(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 55
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static OpenPic(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 62
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 63
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static PreviewBigPic(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 254
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    :try_start_0
    const-string v0, "PreviewBigPic0"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 258
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 259
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 260
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 261
    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    :goto_0
    :try_start_2
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "width_tmp="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " height_tmp="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v4, v3

    move v3, v0

    move v0, v2

    .line 275
    :goto_1
    if-ge v4, p1, :cond_0

    if-ge v3, p2, :cond_0

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PreviewBigPic___ scale="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width_tmp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " height_tmp="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 283
    if-le v0, v2, :cond_1

    .line 284
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 285
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 288
    iput-object p3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 291
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 292
    const/4 v0, 0x0

    invoke-static {v3, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 294
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 327
    :goto_2
    return-object v0

    .line 264
    :catch_0
    move-exception v3

    .line 266
    :try_start_4
    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 322
    :catch_1
    move-exception v0

    .line 323
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v0, v1

    .line 327
    goto :goto_2

    .line 279
    :cond_0
    :try_start_5
    div-int/lit8 v4, v4, 0x2

    .line 280
    div-int/lit8 v3, v3, 0x2

    .line 281
    mul-int/lit8 v0, v0, 0x2

    .line 274
    goto :goto_1

    .line 295
    :catch_2
    move-exception v2

    .line 297
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_2

    .line 304
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PreviewBigPic scale=1 ____"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 306
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 307
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 308
    iput-object p3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 309
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_2
.end method

.method public static PreviewBigPic(Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/16 v7, 0x4b0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 167
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    :try_start_0
    const-string v0, "PreviewBigPic0"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 171
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 172
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 173
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 174
    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    :goto_0
    :try_start_2
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "width_tmp="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " height_tmp="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v4, v3

    move v3, v0

    move v0, v2

    .line 191
    :goto_1
    if-ge v4, v7, :cond_0

    if-ge v3, v7, :cond_0

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PreviewBigPic___ scale="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width_tmp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height_tmp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 200
    const-string v6, "PreviewBigPic1"

    invoke-static {v6}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 202
    if-le v0, v2, :cond_1

    .line 203
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 204
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 205
    const/4 v6, 0x0

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 206
    const/4 v6, 0x0

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 207
    iput-object p1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PreviewBigPic scale="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " width_tmp="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " height_tmp="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 211
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 212
    const/4 v0, 0x0

    invoke-static {v3, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PreviewBigPic bmpReturn w="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " h="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 214
    const-string v2, "PreviewBigPic3"

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 216
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 249
    :goto_2
    return-object v0

    .line 177
    :catch_0
    move-exception v3

    .line 179
    :try_start_4
    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 244
    :catch_1
    move-exception v0

    .line 245
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v0, v1

    .line 249
    goto :goto_2

    .line 195
    :cond_0
    :try_start_5
    div-int/lit8 v4, v4, 0x2

    .line 196
    div-int/lit8 v3, v3, 0x2

    .line 198
    mul-int/lit8 v0, v0, 0x2

    .line 187
    goto/16 :goto_1

    .line 217
    :catch_2
    move-exception v2

    .line 219
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_2

    .line 226
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PreviewBigPic scale=1 ____"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 228
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 229
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 230
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 231
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_2
.end method

.method public static PreviewBigPic(Ljava/lang/String;Landroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 601
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 603
    :try_start_0
    const-string v0, "PreviewBigPic0"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 605
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 606
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 607
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 608
    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 610
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 618
    :goto_0
    :try_start_2
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 619
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "width_tmp="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " height_tmp="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v4, v3

    move v3, v0

    move v0, v2

    .line 625
    :goto_1
    if-ge v4, p2, :cond_0

    if-ge v3, p2, :cond_0

    .line 626
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PreviewBigPic___ scale="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width_tmp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height_tmp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 634
    const-string v6, "PreviewBigPic1"

    invoke-static {v6}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 636
    if-le v0, v2, :cond_1

    .line 637
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 638
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 639
    const/4 v6, 0x0

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 640
    const/4 v6, 0x0

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 641
    iput-object p1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 644
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PreviewBigPic scale="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " width_tmp="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " height_tmp="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 645
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 646
    const/4 v0, 0x0

    invoke-static {v3, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PreviewBigPic bmpReturn w="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " h="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 648
    const-string v2, "PreviewBigPic3"

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 650
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 683
    :goto_2
    return-object v0

    .line 611
    :catch_0
    move-exception v3

    .line 613
    :try_start_4
    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 678
    :catch_1
    move-exception v0

    .line 679
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v0, v1

    .line 683
    goto :goto_2

    .line 629
    :cond_0
    :try_start_5
    div-int/lit8 v4, v4, 0x2

    .line 630
    div-int/lit8 v3, v3, 0x2

    .line 632
    mul-int/lit8 v0, v0, 0x2

    .line 621
    goto/16 :goto_1

    .line 651
    :catch_2
    move-exception v2

    .line 653
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_2

    .line 660
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PreviewBigPic scale=1 ____"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 662
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 663
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 664
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 665
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_2
.end method

.method public static PreviewBigPicTemplate(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 332
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    :try_start_0
    const-string v0, "PreviewBigPic0"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 336
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 337
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 338
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 339
    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 341
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    :goto_0
    :try_start_2
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "width_tmp="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " height_tmp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v3, v2

    move v2, v0

    move v0, v1

    .line 353
    :goto_1
    if-ge v3, p1, :cond_2

    if-ge v2, p2, :cond_2

    .line 354
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "PreviewBigPic___ scale="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " width_tmp="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " height_tmp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 361
    if-le v0, v1, :cond_3

    .line 362
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 363
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 366
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 369
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 370
    const/4 v0, 0x0

    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 373
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 379
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    if-le v1, v2, :cond_0

    .line 380
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 381
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 382
    mul-int/lit8 v5, v3, 0x3

    .line 383
    const/4 v1, 0x0

    sub-int v2, v4, v5

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/mt/image/ImageProcess;->cut(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 389
    :cond_0
    const-string v1, "1"

    .line 390
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 393
    invoke-static {p0}, Lcom/mt/image/ImageProcess;->getJpgOritation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    const-string v2, "TG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "__PreviewBigPicTemplate1  strOrival="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_1
    invoke-static {v1}, Lcom/mt/mtgif/MyPro;->stringToInt(Ljava/lang/String;)I

    move-result v1

    .line 397
    packed-switch v1, :pswitch_data_0

    .line 445
    :goto_3
    :pswitch_0
    return-object v0

    .line 342
    :catch_0
    move-exception v2

    .line 344
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 440
    :catch_1
    move-exception v0

    .line 441
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v0, v6

    .line 445
    goto :goto_3

    .line 357
    :cond_2
    :try_start_5
    div-int/lit8 v3, v3, 0x2

    .line 358
    div-int/lit8 v2, v2, 0x2

    .line 359
    mul-int/lit8 v0, v0, 0x2

    .line 352
    goto/16 :goto_1

    .line 374
    :catch_2
    move-exception v1

    .line 376
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_2

    .line 401
    :pswitch_1
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 404
    :pswitch_2
    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 407
    :pswitch_3
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 410
    :pswitch_4
    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 411
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 414
    :pswitch_5
    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 417
    :pswitch_6
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 418
    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 421
    :pswitch_7
    const/high16 v1, 0x43870000    # 270.0f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 431
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PreviewBigPic scale=1 ____"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 433
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 434
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 435
    iput-object p3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 436
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_3

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static PreviewBigPicTemplate(Ljava/lang/String;Landroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 450
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    :try_start_0
    const-string v0, "PreviewBigPic0"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 454
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 455
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 456
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 457
    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 459
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 467
    :goto_0
    :try_start_2
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "width_tmp="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " height_tmp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    move v3, v2

    move v2, v0

    move v0, v1

    .line 474
    :goto_1
    if-ge v3, p2, :cond_2

    if-ge v2, p2, :cond_2

    .line 475
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "PreviewBigPic___ scale="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " width_tmp="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " height_tmp="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 483
    const-string v5, "PreviewBigPic1"

    invoke-static {v5}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 485
    if-le v0, v1, :cond_3

    .line 486
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 487
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 488
    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 489
    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 490
    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 493
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "PreviewBigPic scale="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " width_tmp="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " height_tmp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 494
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 495
    const/4 v0, 0x0

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    if-le v1, v2, :cond_0

    .line 499
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 500
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 501
    mul-int/lit8 v5, v3, 0x3

    .line 502
    const/4 v1, 0x0

    sub-int v2, v4, v5

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/mt/image/ImageProcess;->cut(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 506
    :cond_0
    const-string v1, "1"

    .line 507
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 510
    invoke-static {p0}, Lcom/mt/image/ImageProcess;->getJpgOritation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    const-string v2, "TG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "__PreviewBigPicTemplate0  strOrival="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_1
    invoke-static {v1}, Lcom/mt/mtgif/MyPro;->stringToInt(Ljava/lang/String;)I

    move-result v1

    .line 514
    packed-switch v1, :pswitch_data_0

    .line 544
    :goto_2
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PreviewBigPic bmpReturn w="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 545
    const-string v1, "PreviewBigPic3"

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 547
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 571
    :goto_3
    return-object v0

    .line 460
    :catch_0
    move-exception v2

    .line 462
    :try_start_4
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 566
    :catch_1
    move-exception v0

    .line 567
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v0, v6

    .line 571
    goto :goto_3

    .line 478
    :cond_2
    :try_start_5
    div-int/lit8 v3, v3, 0x2

    .line 479
    div-int/lit8 v2, v2, 0x2

    .line 481
    mul-int/lit8 v0, v0, 0x2

    .line 470
    goto/16 :goto_1

    .line 518
    :pswitch_1
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 521
    :pswitch_2
    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 524
    :pswitch_3
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 527
    :pswitch_4
    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 528
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 531
    :pswitch_5
    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 534
    :pswitch_6
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 535
    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 538
    :pswitch_7
    const/high16 v1, 0x43870000    # 270.0f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_2

    .line 548
    :catch_2
    move-exception v1

    .line 550
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 557
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PreviewBigPic scale=1 ____"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 559
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 560
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 561
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 562
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_3

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static SafeRelease(Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 3139
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3140
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3142
    const/4 v0, 0x1

    .line 3144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bitmap2Byte(Landroid/graphics/Bitmap;)[B
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 735
    check-cast v0, [B

    .line 737
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 738
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 739
    mul-int v1, v3, v7

    new-array v1, v1, [I

    .line 740
    mul-int v2, v3, v7

    mul-int/lit8 v2, v2, 0x3

    new-array v8, v2, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v3

    :try_start_1
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v9

    move v2, v9

    move v5, v9

    .line 743
    :goto_0
    if-lt v5, v7, :cond_0

    .line 755
    const/4 v0, 0x0

    check-cast v0, [I

    move-object v0, v8

    .line 760
    :goto_1
    return-object v0

    :cond_0
    move v4, v9

    .line 744
    :goto_2
    if-lt v4, v3, :cond_1

    .line 743
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 748
    :cond_1
    aget v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v8, v2

    .line 749
    add-int/lit8 v6, v2, 0x1

    aget v10, v1, v0

    shr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v6

    .line 750
    add-int/lit8 v6, v2, 0x2

    aget v10, v1, v0

    shr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 751
    add-int/lit8 v2, v2, 0x3

    .line 752
    add-int/lit8 v0, v0, 0x1

    .line 744
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 756
    :catch_0
    move-exception v1

    .line 757
    :goto_3
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 756
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_3
.end method

.method public static bitmap2ByteARGB(Landroid/graphics/Bitmap;)[B
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 813
    check-cast v0, [B

    .line 815
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 816
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 818
    mul-int v1, v3, v7

    mul-int/lit8 v1, v1, 0x4

    new-array v8, v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    mul-int v0, v3, v7

    :try_start_1
    new-array v1, v0, [I

    .line 820
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v9

    move v2, v9

    move v5, v9

    .line 824
    :goto_0
    if-lt v5, v7, :cond_0

    .line 844
    const/4 v0, 0x0

    check-cast v0, [I

    move-object v0, v8

    .line 849
    :goto_1
    return-object v0

    :cond_0
    move v4, v9

    .line 826
    :goto_2
    if-lt v4, v3, :cond_1

    .line 824
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 827
    :cond_1
    aget v6, v1, v0

    .line 836
    and-int/lit16 v10, v6, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v2

    .line 837
    add-int/lit8 v10, v2, 0x1

    shr-int/lit8 v11, v6, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    .line 838
    add-int/lit8 v10, v2, 0x2

    shr-int/lit8 v11, v6, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    .line 839
    add-int/lit8 v10, v2, 0x3

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v8, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 840
    add-int/lit8 v2, v2, 0x4

    .line 841
    add-int/lit8 v0, v0, 0x1

    .line 826
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 846
    :catch_0
    move-exception v1

    .line 847
    :goto_3
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 846
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_3
.end method

.method public static bitmap2IntARGB(Landroid/graphics/Bitmap;)[I
    .locals 9

    .prologue
    .line 856
    const/4 v0, 0x0

    check-cast v0, [I

    .line 858
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 859
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 860
    mul-int v1, v3, v7

    new-array v1, v1, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v3

    :try_start_1
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 867
    :goto_0
    return-object v1

    .line 863
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 864
    :goto_1
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 863
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static bitmap2IntARGBPart(Landroid/graphics/Bitmap;IIII)[I
    .locals 9

    .prologue
    .line 874
    const/4 v0, 0x0

    check-cast v0, [I

    .line 878
    mul-int v1, p3, p4

    :try_start_0
    new-array v1, v1, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    const/4 v2, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    :try_start_1
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 885
    :goto_0
    return-object v1

    .line 881
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 882
    :goto_1
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 881
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static bright(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 2900
    const/4 v1, 0x0

    .line 2902
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2904
    :try_start_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2906
    cmpg-float v3, p1, v5

    if-gez v3, :cond_0

    move p1, v2

    .line 2909
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2910
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2912
    const/16 v4, 0x14

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x6

    aput p1, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v4, v5

    const/16 v5, 0x8

    .line 2913
    const/4 v6, 0x0

    aput v6, v4, v5

    const/16 v5, 0x9

    const/4 v6, 0x0

    aput v6, v4, v5

    const/16 v5, 0xa

    const/4 v6, 0x0

    aput v6, v4, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v4, v5

    const/16 v5, 0xc

    aput p1, v4, v5

    const/16 v5, 0xd

    const/4 v6, 0x0

    aput v6, v4, v5

    const/16 v5, 0xe

    const/4 v6, 0x0

    aput v6, v4, v5

    const/16 v5, 0xf

    const/4 v6, 0x0

    aput v6, v4, v5

    const/16 v5, 0x10

    const/4 v6, 0x0

    aput v6, v4, v5

    const/16 v5, 0x11

    const/4 v6, 0x0

    aput v6, v4, v5

    const/16 v5, 0x12

    .line 2914
    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 2915
    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 2916
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 2918
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2919
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2920
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2921
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2922
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2923
    if-eqz p2, :cond_1

    .line 2924
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2931
    :cond_1
    :goto_0
    return-object v0

    .line 2928
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 2929
    :goto_1
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 2928
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static bytes2Bimap([BII)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 891
    :try_start_0
    array-length v0, p0

    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x3

    if-eq v0, v1, :cond_0

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytes2Bimap data.length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " w*h*4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/String;)V

    move-object v0, v8

    .line 927
    :goto_0
    return-object v0

    .line 895
    :cond_0
    array-length v0, p0

    if-lez v0, :cond_4

    .line 897
    sget-object v0, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 898
    if-nez v0, :cond_1

    move-object v0, v8

    .line 899
    goto :goto_0

    .line 901
    :cond_1
    mul-int v1, p1, p2

    new-array v1, v1, [I

    move v2, v5

    move v3, v5

    move v6, v5

    .line 904
    :goto_1
    if-lt v6, p2, :cond_2

    .line 917
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 924
    :catch_0
    move-exception v0

    .line 925
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v0, v8

    .line 927
    goto :goto_0

    :cond_2
    move v4, v5

    .line 905
    :goto_2
    if-lt v4, p1, :cond_3

    .line 904
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    .line 906
    :cond_3
    :try_start_1
    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    .line 907
    add-int/lit8 v9, v3, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v7, v9

    .line 908
    add-int/lit8 v9, v3, 0x2

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/2addr v7, v9

    .line 906
    aput v7, v1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 912
    add-int/lit8 v3, v3, 0x3

    .line 913
    add-int/lit8 v2, v2, 0x1

    .line 905
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v8

    .line 921
    goto :goto_0
.end method

.method public static bytesARGB2Bimap([BII)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 933
    :try_start_0
    array-length v0, p0

    if-lez v0, :cond_4

    .line 934
    array-length v0, p0

    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x4

    if-eq v0, v1, :cond_0

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytesARGB2Bimap data.length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " w*h*4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/String;)V

    move-object v0, v8

    .line 969
    :goto_0
    return-object v0

    .line 939
    :cond_0
    sget-object v0, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 940
    if-nez v0, :cond_1

    move-object v0, v8

    .line 941
    goto :goto_0

    .line 943
    :cond_1
    mul-int v1, p1, p2

    new-array v1, v1, [I

    move v2, v5

    move v3, v5

    move v6, v5

    .line 947
    :goto_1
    if-lt v6, p2, :cond_2

    .line 959
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 960
    const/4 v1, 0x0

    check-cast v1, [I

    goto :goto_0

    :cond_2
    move v4, v5

    .line 948
    :goto_2
    if-lt v4, p1, :cond_3

    .line 947
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    .line 950
    :cond_3
    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    .line 951
    add-int/lit8 v9, v3, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v7, v9

    .line 952
    add-int/lit8 v9, v3, 0x2

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/2addr v7, v9

    .line 953
    add-int/lit8 v9, v3, 0x3

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    add-int/2addr v7, v9

    .line 950
    aput v7, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    add-int/lit8 v3, v3, 0x4

    .line 955
    add-int/lit8 v2, v2, 0x1

    .line 948
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v8

    .line 963
    goto :goto_0

    .line 966
    :catch_0
    move-exception v0

    .line 967
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v0, v8

    .line 969
    goto :goto_0
.end method

.method public static bytesARGB2BimapNew([BII)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 975
    :try_start_0
    array-length v1, p0

    if-lez v1, :cond_0

    .line 976
    array-length v1, p0

    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x4

    if-eq v1, v2, :cond_1

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytesARGB2Bimap data.length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w*h*4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/String;)V

    .line 992
    :cond_0
    :goto_0
    return-object v0

    .line 980
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 982
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 983
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 984
    goto :goto_0

    .line 989
    :catch_0
    move-exception v1

    .line 990
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static bytesARGB2BimapNew([BIII)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1000
    :try_start_0
    array-length v1, p0

    if-lez v1, :cond_0

    .line 1001
    array-length v1, p0

    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, p3

    if-ge v1, v2, :cond_1

    .line 1002
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytesARGB2Bimap data.length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w*h*4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/String;)V

    .line 1017
    :cond_0
    :goto_0
    return-object v0

    .line 1005
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1007
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {p0, p3, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1008
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1009
    goto :goto_0

    .line 1014
    :catch_0
    move-exception v1

    .line 1015
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static changeARGB([BIIII)Z
    .locals 3

    .prologue
    .line 1093
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 1111
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 1094
    :cond_0
    if-ltz p1, :cond_1

    .line 1095
    add-int/lit8 v1, v0, 0x3

    int-to-byte v2, p1

    aput-byte v2, p0, v1

    .line 1097
    :cond_1
    if-ltz p2, :cond_2

    .line 1098
    add-int/lit8 v1, v0, 0x2

    int-to-byte v2, p2

    aput-byte v2, p0, v1

    .line 1100
    :cond_2
    if-ltz p3, :cond_3

    .line 1101
    add-int/lit8 v1, v0, 0x1

    int-to-byte v2, p3

    aput-byte v2, p0, v1

    .line 1103
    :cond_3
    if-ltz p4, :cond_4

    .line 1104
    add-int/lit8 v1, v0, 0x0

    int-to-byte v2, p4

    aput-byte v2, p0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :cond_4
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static changeIntARGB([IIIII)Z
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 1118
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 1136
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 1119
    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v3, :cond_1

    .line 1120
    aget v1, p0, v0

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    add-int/2addr v1, v2

    aput v1, p0, v0

    .line 1122
    :cond_1
    if-ltz p2, :cond_2

    if-ge p2, v3, :cond_2

    .line 1123
    aget v1, p0, v0

    const v2, -0xff0001

    and-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x10

    add-int/2addr v1, v2

    aput v1, p0, v0

    .line 1125
    :cond_2
    if-ltz p3, :cond_3

    if-ge p3, v3, :cond_3

    .line 1126
    aget v1, p0, v0

    const v2, -0xff01

    and-int/2addr v1, v2

    shl-int/lit8 v2, p3, 0x8

    add-int/2addr v1, v2

    aput v1, p0, v0

    .line 1128
    :cond_3
    if-ltz p4, :cond_4

    if-ge p4, v3, :cond_4

    .line 1129
    aget v1, p0, v0

    and-int/lit16 v1, v1, -0x100

    add-int/2addr v1, p4

    aput v1, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static colorRGB(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 2856
    const/4 v1, 0x0

    .line 2858
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2860
    :try_start_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2862
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2863
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2869
    if-nez p1, :cond_1

    .line 2871
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x437f0000    # 255.0f

    invoke-virtual {v3, p2, v4, v5, v6}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 2884
    :cond_0
    :goto_0
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 2886
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2887
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2888
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2889
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2894
    :goto_1
    return-object v0

    .line 2872
    :cond_1
    if-nez p1, :cond_2

    .line 2874
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x437f0000    # 255.0f

    invoke-virtual {v3, v4, p2, v5, v6}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2891
    :catch_0
    move-exception v1

    .line 2892
    :goto_2
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 2875
    :cond_2
    if-nez p1, :cond_0

    .line 2877
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x437f0000    # 255.0f

    :try_start_2
    invoke-virtual {v3, v4, v5, p2, v6}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2891
    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_2
.end method

.method public static contrast(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x42fe0000    # 127.0f

    const/4 v6, 0x0

    .line 2937
    const/4 v1, 0x0

    .line 2939
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2941
    :try_start_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2943
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 2944
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2946
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1e

    mul-int/lit8 v0, v0, 0x2

    .line 2948
    if-gez v0, :cond_0

    .line 2949
    int-to-float v0, v0

    mul-float/2addr v0, v8

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v0, v5

    mul-float/2addr v0, v9

    add-float/2addr v0, v9

    .line 2964
    :goto_0
    div-float v5, v0, v9

    .line 2965
    const/16 v6, 0x19

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v5, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x4

    sub-float v8, v9, v0

    mul-float/2addr v8, v10

    aput v8, v6, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x6

    .line 2966
    aput v5, v6, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput v8, v6, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput v8, v6, v7

    const/16 v7, 0x9

    sub-float v8, v9, v0

    mul-float/2addr v8, v10

    aput v8, v6, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    aput v8, v6, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput v8, v6, v7

    const/16 v7, 0xc

    aput v5, v6, v7

    const/16 v5, 0xd

    const/4 v7, 0x0

    aput v7, v6, v5

    const/16 v5, 0xe

    .line 2967
    sub-float v0, v9, v0

    mul-float/2addr v0, v10

    aput v0, v6, v5

    const/16 v0, 0xf

    const/4 v5, 0x0

    aput v5, v6, v0

    const/16 v0, 0x10

    const/4 v5, 0x0

    aput v5, v6, v0

    const/16 v0, 0x11

    const/4 v5, 0x0

    aput v5, v6, v0

    const/16 v0, 0x12

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v6, v0

    const/16 v0, 0x13

    const/4 v5, 0x0

    aput v5, v6, v0

    const/16 v0, 0x14

    const/4 v5, 0x0

    aput v5, v6, v0

    const/16 v0, 0x15

    const/4 v5, 0x0

    aput v5, v6, v0

    const/16 v0, 0x16

    .line 2968
    const/4 v5, 0x0

    aput v5, v6, v0

    const/16 v0, 0x17

    const/4 v5, 0x0

    aput v5, v6, v0

    const/16 v0, 0x18

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v6, v0

    .line 2969
    invoke-virtual {v4, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 2970
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 2972
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2973
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2974
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2975
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2976
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v0, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2977
    if-eqz p2, :cond_2

    .line 2978
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 2985
    :goto_1
    return-object v0

    .line 2951
    :cond_0
    rem-int/lit8 v5, v0, 0x1

    int-to-float v5, v5

    .line 2952
    cmpl-float v6, v5, v6

    if-nez v6, :cond_1

    .line 2953
    sget-object v5, Lcom/mt/image/ImageProcess;->DELTA_INDEX:[F

    aget v0, v5, v0

    .line 2959
    :goto_2
    mul-float/2addr v0, v9

    add-float/2addr v0, v9

    goto/16 :goto_0

    .line 2956
    :cond_1
    sget-object v6, Lcom/mt/image/ImageProcess;->DELTA_INDEX:[F

    shl-int/lit8 v7, v0, 0x0

    aget v6, v6, v7

    sub-float v7, v8, v5

    mul-float/2addr v6, v7

    sget-object v7, Lcom/mt/image/ImageProcess;->DELTA_INDEX:[F

    shl-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0x1

    aget v0, v7, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2957
    mul-float/2addr v0, v5

    .line 2956
    add-float/2addr v0, v6

    goto :goto_2

    .line 2982
    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    .line 2983
    :goto_3
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 2982
    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static copyDraw(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 801
    :try_start_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 803
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :goto_0
    return-object p0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v0, 0x1

    .line 1215
    const/4 v1, 0x0

    .line 1219
    :try_start_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1221
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1222
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1223
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1232
    if-gtz p1, :cond_0

    move p1, v0

    .line 1235
    :cond_0
    if-gtz p2, :cond_1

    move p2, v0

    .line 1238
    :cond_1
    if-nez p3, :cond_2

    .line 1239
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1241
    :cond_2
    const-string v0, "TA"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createScaledBitmap "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1243
    :try_start_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1245
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1246
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1245
    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1252
    :goto_0
    return-object v0

    .line 1249
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 1250
    :goto_1
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1249
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static cut(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 2015
    const/4 v1, 0x0

    .line 2020
    if-gt p3, p1, :cond_0

    .line 2021
    add-int/lit8 p3, p1, 0x1

    .line 2023
    :cond_0
    if-ge p4, p2, :cond_1

    .line 2024
    add-int/lit8 p4, p2, 0x1

    .line 2026
    :cond_1
    sub-int v0, p3, p1

    sub-int v2, p4, p2

    .line 2027
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 2026
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2028
    :try_start_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2030
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2031
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2032
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    .line 2033
    const/4 v6, 0x0

    sub-int v7, p3, p1

    sub-int v8, p4, p2

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2032
    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2034
    if-eqz p5, :cond_2

    .line 2035
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2043
    :cond_2
    :goto_0
    return-object v0

    .line 2040
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 2041
    :goto_1
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 2040
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static cutAndResizeRotate(Landroid/graphics/Bitmap;IIIIIIZZ)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 2093
    const/4 v1, 0x0

    .line 2095
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cutAndResizeRotate DstW="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " DstH="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "left="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " top="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " right"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bottom="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cutAndResizeRotate bmpw="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bmph="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2098
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2097
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2100
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2102
    int-to-float v0, p1

    sub-int v2, p5, p3

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 2106
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 2107
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2108
    :try_start_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2109
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2110
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2111
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2112
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2113
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3, p4, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2114
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2113
    invoke-virtual {v0, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2115
    if-eqz p7, :cond_7

    .line 2116
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 2200
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2206
    :goto_1
    return-object v0

    .line 2121
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_6

    .line 2122
    :try_start_3
    const-string v2, "cutAndResizeRotate bmp.getWidth() * bmp.getHeight() <= 900 * 900"

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2123
    if-gt p5, p3, :cond_1

    .line 2124
    add-int/lit8 p5, p3, 0x1

    .line 2126
    :cond_1
    if-gt p6, p4, :cond_2

    .line 2127
    add-int/lit8 p6, p4, 0x1

    .line 2129
    :cond_2
    sub-int v2, p5, p3

    sub-int v3, p6, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2130
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2131
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 2132
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2133
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2134
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2135
    neg-int v5, p3

    int-to-float v5, v5

    neg-int v6, p4

    int-to-float v6, v6

    invoke-virtual {v3, p0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2136
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 2137
    if-eqz p7, :cond_3

    .line 2138
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2141
    :cond_3
    if-eqz p8, :cond_5

    .line 2142
    const-string v4, "cutAndResizeRotate0"

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2145
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    .line 2147
    :try_start_4
    const-string v0, "FittingWindow copy"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v1, v2

    .line 2158
    :goto_2
    :try_start_5
    const-string v0, "cutAndResizeRotate1"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 2152
    :cond_4
    :try_start_6
    invoke-static {v2, p1, p2, v3}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v1

    .line 2154
    :try_start_7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 2203
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 2204
    :goto_3
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 2161
    goto :goto_0

    .line 2203
    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static cutBmpTemplate(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2055
    int-to-float v0, p1

    int-to-float v2, p2

    div-float/2addr v0, v2

    .line 2057
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 2058
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v0

    sub-float v0, v2, v0

    float-to-int v0, v0

    div-int/lit8 v2, v0, 0x2

    .line 2059
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2060
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v0, v4

    .line 2061
    add-int v4, v2, v0

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mt/image/ImageProcess;->cut(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2069
    :goto_0
    return-object v0

    .line 2064
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    float-to-int v0, v0

    div-int/lit8 v3, v0, 0x2

    .line 2065
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v2, v3, 0x2

    sub-int/2addr v0, v2

    .line 2066
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 2067
    add-int v5, v3, v0

    move-object v2, p0

    move v4, v1

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/mt/image/ImageProcess;->cut(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static cutRectAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2077
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int v3, v0, v1

    .line 2078
    new-array v1, v3, [I

    move v0, v2

    .line 2081
    :goto_0
    if-lt v0, v3, :cond_0

    .line 2084
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2085
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v0, p0

    .line 2084
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 2087
    const/4 v0, 0x1

    return v0

    .line 2082
    :cond_0
    const v4, 0x110000ff

    aput v4, v1, v0

    .line 2081
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decodeYUV420SP([I[BII)V
    .locals 11

    .prologue
    .line 3149
    mul-int v10, p2, p3

    .line 3167
    const/4 v1, 0x0

    const/4 v0, 0x0

    move v9, v1

    :goto_0
    if-lt v9, p3, :cond_0

    .line 3208
    return-void

    .line 3168
    :cond_0
    shr-int/lit8 v1, v9, 0x1

    mul-int/2addr v1, p2

    add-int v2, v10, v1

    .line 3169
    const/4 v1, 0x0

    .line 3170
    const/4 v3, 0x0

    .line 3171
    const/4 v4, 0x0

    move v7, v0

    move v8, v4

    move v0, v3

    :goto_1
    if-lt v8, p2, :cond_1

    .line 3167
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move v0, v7

    goto :goto_0

    .line 3172
    :cond_1
    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x10

    .line 3173
    if-gez v3, :cond_9

    .line 3174
    const/4 v3, 0x0

    move v6, v3

    .line 3175
    :goto_2
    and-int/lit8 v3, v8, 0x1

    if-nez v3, :cond_8

    .line 3176
    add-int/lit8 v1, v2, 0x1

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x80

    .line 3177
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x80

    move v3, v0

    move v4, v1

    move v5, v2

    .line 3180
    :goto_3
    mul-int/lit16 v0, v6, 0x4a8

    .line 3181
    mul-int/lit16 v1, v3, 0x662

    add-int v2, v0, v1

    .line 3182
    mul-int/lit16 v1, v3, 0x341

    sub-int v1, v0, v1

    mul-int/lit16 v6, v4, 0x190

    sub-int/2addr v1, v6

    .line 3183
    mul-int/lit16 v6, v4, 0x812

    add-int/2addr v0, v6

    .line 3185
    if-gez v2, :cond_5

    .line 3186
    const/4 v2, 0x0

    .line 3189
    :cond_2
    :goto_4
    if-gez v1, :cond_6

    .line 3190
    const/4 v1, 0x0

    .line 3193
    :cond_3
    :goto_5
    if-gez v0, :cond_7

    .line 3194
    const/4 v0, 0x0

    .line 3201
    :cond_4
    :goto_6
    shr-int/lit8 v2, v2, 0xa

    .line 3202
    shr-int/lit8 v1, v1, 0xa

    .line 3203
    shr-int/lit8 v0, v0, 0xa

    .line 3204
    const/high16 v6, -0x1000000

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v6

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    aput v0, p0, v7

    .line 3171
    add-int/lit8 v1, v8, 0x1

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v2, v5

    move v8, v1

    move v0, v3

    move v1, v4

    goto :goto_1

    .line 3187
    :cond_5
    const v6, 0x3ffff

    if-le v2, v6, :cond_2

    .line 3188
    const v2, 0x3ffff

    goto :goto_4

    .line 3191
    :cond_6
    const v6, 0x3ffff

    if-le v1, v6, :cond_3

    .line 3192
    const v1, 0x3ffff

    goto :goto_5

    .line 3195
    :cond_7
    const v6, 0x3ffff

    if-le v0, v6, :cond_4

    .line 3196
    const v0, 0x3ffff

    goto :goto_6

    :cond_8
    move v3, v0

    move v4, v1

    move v5, v2

    goto :goto_3

    :cond_9
    move v6, v3

    goto :goto_2
.end method

.method public static decodeYUV420SPMid([BII)[I
    .locals 17

    .prologue
    .line 3212
    mul-int v16, p1, p2

    .line 3215
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    .line 3216
    const/4 v3, 0x0

    .line 3218
    sub-int v2, p1, p2

    div-int/lit8 v5, v2, 0x2

    .line 3219
    add-int v4, v5, p2

    .line 3221
    mul-int v2, p2, p2

    new-array v2, v2, [I

    .line 3236
    :goto_0
    const/4 v12, 0x0

    move v15, v3

    move v3, v12

    :goto_1
    move/from16 v0, p2

    if-lt v15, v0, :cond_1

    .line 3273
    return-object v2

    .line 3223
    :cond_0
    const/4 v4, 0x0

    .line 3225
    sub-int v2, p2, p1

    div-int/lit8 v3, v2, 0x2

    .line 3226
    add-int p2, v3, p1

    .line 3228
    mul-int v2, p1, p1

    new-array v2, v2, [I

    move v5, v4

    move/from16 v4, p1

    goto :goto_0

    .line 3237
    :cond_1
    shr-int/lit8 v6, v15, 0x1

    mul-int v6, v6, p1

    add-int v6, v6, v16

    rem-int/lit8 v7, v5, 0x2

    sub-int v7, v5, v7

    add-int/2addr v7, v6

    .line 3238
    mul-int v6, v15, p1

    add-int/2addr v6, v5

    .line 3239
    const/4 v9, 0x0

    .line 3240
    const/4 v8, 0x0

    move v12, v3

    move v13, v6

    move v14, v5

    move v6, v9

    move v3, v8

    .line 3241
    :goto_2
    if-lt v14, v4, :cond_2

    .line 3236
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    move v3, v12

    goto :goto_1

    .line 3242
    :cond_2
    aget-byte v8, p0, v13

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v8, v8, -0x10

    .line 3243
    if-gez v8, :cond_a

    .line 3244
    const/4 v8, 0x0

    move v11, v8

    .line 3245
    :goto_3
    and-int/lit8 v8, v14, 0x1

    if-nez v8, :cond_9

    .line 3246
    add-int/lit8 v6, v7, 0x1

    aget-byte v3, p0, v7

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x80

    .line 3247
    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v6, v6, -0x80

    move v8, v3

    move v9, v6

    move v10, v7

    .line 3250
    :goto_4
    mul-int/lit16 v3, v11, 0x4a8

    .line 3251
    mul-int/lit16 v6, v8, 0x662

    add-int v7, v3, v6

    .line 3252
    mul-int/lit16 v6, v8, 0x341

    sub-int v6, v3, v6

    mul-int/lit16 v11, v9, 0x190

    sub-int/2addr v6, v11

    .line 3253
    mul-int/lit16 v11, v9, 0x812

    add-int/2addr v3, v11

    .line 3255
    if-gez v7, :cond_6

    .line 3256
    const/4 v7, 0x0

    .line 3259
    :cond_3
    :goto_5
    if-gez v6, :cond_7

    .line 3260
    const/4 v6, 0x0

    .line 3263
    :cond_4
    :goto_6
    if-gez v3, :cond_8

    .line 3264
    const/4 v3, 0x0

    .line 3267
    :cond_5
    :goto_7
    shr-int/lit8 v7, v7, 0xa

    .line 3268
    shr-int/lit8 v6, v6, 0xa

    .line 3269
    shr-int/lit8 v3, v3, 0xa

    .line 3270
    const/high16 v11, -0x1000000

    shl-int/lit8 v7, v7, 0x10

    add-int/2addr v7, v11

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    aput v3, v2, v12

    .line 3241
    add-int/lit8 v7, v14, 0x1

    add-int/lit8 v3, v12, 0x1

    add-int/lit8 v6, v13, 0x1

    move v12, v3

    move v13, v6

    move v14, v7

    move v6, v9

    move v7, v10

    move v3, v8

    goto :goto_2

    .line 3257
    :cond_6
    const v11, 0x3ffff

    if-le v7, v11, :cond_3

    .line 3258
    const v7, 0x3ffff

    goto :goto_5

    .line 3261
    :cond_7
    const v11, 0x3ffff

    if-le v6, v11, :cond_4

    .line 3262
    const v6, 0x3ffff

    goto :goto_6

    .line 3265
    :cond_8
    const v11, 0x3ffff

    if-le v3, v11, :cond_5

    .line 3266
    const v3, 0x3ffff

    goto :goto_7

    :cond_9
    move v8, v3

    move v9, v6

    move v10, v7

    goto :goto_4

    :cond_a
    move v11, v8

    goto :goto_3
.end method

.method public static drawBmpMidToCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 3062
    .line 3063
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3065
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    .line 3066
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    move v2, v3

    .line 3068
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v4, v0, 0x2

    .line 3069
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v5, v0, 0x2

    .line 3070
    const-string v0, "TEMP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "drawBmpMidToCanvas  dw="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " dh="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " rect="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " bmp W="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3071
    const-string v6, " h="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3070
    invoke-static {v0, v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, v4

    .line 3082
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 3083
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    move v1, v0

    .line 3085
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v5

    .line 3086
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v0, v6, :cond_0

    .line 3087
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 3089
    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, p2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3090
    if-eqz v2, :cond_1

    .line 3091
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3097
    :cond_1
    :goto_2
    return v3

    .line 3094
    :catch_0
    move-exception v0

    .line 3095
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v2, v0

    goto/16 :goto_0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 1141
    const/4 v1, 0x0

    .line 1145
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1146
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1147
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1144
    :goto_0
    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1149
    :try_start_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1151
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1152
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1151
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1153
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1158
    :goto_1
    return-object v0

    .line 1148
    :cond_0
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1155
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 1156
    :goto_2
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 1155
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static getJpgOritation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    const-string v0, ""

    .line 696
    invoke-static {p0}, Lcom/mt/tools/VerifyMothod;->getAttri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    return-object v0
.end method

.method public static gray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 2798
    const/4 v1, 0x0

    .line 2800
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2802
    :try_start_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2804
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2805
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2806
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 2807
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 2809
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2810
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2811
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2816
    :goto_0
    return-object v0

    .line 2813
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 2814
    :goto_1
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 2813
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static hue(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 2991
    const/4 v1, 0x0

    .line 2993
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2995
    :try_start_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2997
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2998
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 3000
    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, -0x3ccc0000    # -180.0f

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x43340000    # 180.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 3001
    int-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 3002
    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 3003
    const v6, 0x3e5a1cac    # 0.213f

    .line 3004
    const v7, 0x3f370a3d    # 0.715f

    .line 3005
    const v8, 0x3d9374bc    # 0.072f

    .line 3006
    const/16 v9, 0x14

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v6

    mul-float/2addr v11, v5

    add-float/2addr v11, v6

    neg-float v12, v6

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    aput v11, v9, v10

    const/4 v10, 0x1

    .line 3007
    neg-float v11, v7

    mul-float/2addr v11, v5

    add-float/2addr v11, v7

    neg-float v12, v7

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    aput v11, v9, v10

    const/4 v10, 0x2

    .line 3008
    neg-float v11, v8

    mul-float/2addr v11, v5

    add-float/2addr v11, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    aput v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x5

    .line 3009
    neg-float v11, v6

    mul-float/2addr v11, v5

    add-float/2addr v11, v6

    const v12, 0x3e126e98    # 0.143f

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    aput v11, v9, v10

    const/4 v10, 0x6

    .line 3010
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v7

    mul-float/2addr v11, v5

    add-float/2addr v11, v7

    const v12, 0x3e0f5c29    # 0.14f

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    aput v11, v9, v10

    const/4 v10, 0x7

    .line 3011
    neg-float v11, v8

    mul-float/2addr v11, v5

    add-float/2addr v11, v8

    const v12, -0x416f1aa0    # -0.283f

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    aput v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput v11, v9, v10

    const/16 v10, 0xa

    .line 3012
    neg-float v11, v6

    mul-float/2addr v11, v5

    add-float/2addr v11, v6

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v6, v12, v6

    neg-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v11

    aput v6, v9, v10

    const/16 v6, 0xb

    .line 3013
    neg-float v10, v7

    mul-float/2addr v10, v5

    add-float/2addr v10, v7

    mul-float/2addr v7, v4

    add-float/2addr v7, v10

    aput v7, v9, v6

    const/16 v6, 0xc

    .line 3014
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    mul-float/2addr v5, v7

    add-float/2addr v5, v8

    mul-float/2addr v4, v8

    add-float/2addr v4, v5

    aput v4, v9, v6

    const/16 v4, 0xd

    const/4 v5, 0x0

    aput v5, v9, v4

    const/16 v4, 0xe

    const/4 v5, 0x0

    aput v5, v9, v4

    const/16 v4, 0xf

    const/4 v5, 0x0

    aput v5, v9, v4

    const/16 v4, 0x10

    const/4 v5, 0x0

    aput v5, v9, v4

    const/16 v4, 0x11

    .line 3015
    const/4 v5, 0x0

    aput v5, v9, v4

    const/16 v4, 0x12

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v9, v4

    const/16 v4, 0x13

    const/4 v5, 0x0

    aput v5, v9, v4

    .line 3016
    invoke-virtual {v3, v9}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 3017
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 3019
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 3020
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3021
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 3022
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3023
    if-eqz p2, :cond_0

    .line 3024
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3031
    :cond_0
    :goto_0
    return-object v0

    .line 3028
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    .line 3029
    :goto_1
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 3028
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static intARGB2Bimap([III)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1023
    :try_start_0
    array-length v0, p0

    mul-int v1, p1, p2

    if-eq v0, v1, :cond_0

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytesARGB2Bimap data.length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " w*h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/String;)V

    move-object v0, v8

    .line 1040
    :goto_0
    return-object v0

    .line 1027
    :cond_0
    array-length v0, p0

    if-lez v0, :cond_2

    .line 1029
    sget-object v0, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1030
    if-nez v0, :cond_1

    move-object v0, v8

    .line 1031
    goto :goto_0

    .line 1033
    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    :cond_2
    move-object v0, v8

    .line 1040
    goto :goto_0
.end method

.method public static loadPic(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3278
    .line 3282
    :try_start_0
    const-string v0, "1"

    .line 3283
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 3284
    invoke-static {p0}, Lcom/mt/tools/VerifyMothod;->getJpgOrit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3286
    :cond_0
    invoke-static {v0}, Lcom/mt/mtgif/MyPro;->stringToInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3290
    const/16 v0, 0x258

    const/16 v3, 0x258

    :try_start_1
    invoke-static {p0, v0, v3, p2}, Lcom/mt/image/ImageProcess;->PreviewBigPic(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 3306
    :goto_0
    if-nez v0, :cond_1

    .line 3307
    :try_start_2
    const-string v0, "loadPic bmpSrc=null"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/String;)V

    move-object v0, v1

    .line 3369
    :goto_1
    :pswitch_0
    return-object v0

    .line 3297
    :catch_0
    move-exception v0

    .line 3298
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 3299
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3300
    const/16 v3, 0x4b0

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 3301
    const/16 v3, 0x4b0

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 3302
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3303
    const-string v3, "loadPic bmpSrc = BitmapFactory.decodeFile(MyData.strPicPath,opt)"

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3365
    :catch_1
    move-exception v0

    .line 3366
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v0, v1

    .line 3367
    goto :goto_1

    .line 3333
    :cond_1
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 3337
    :pswitch_1
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_3
    invoke-static {v0, v2, v3}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 3340
    :pswitch_2
    const/high16 v2, 0x43340000    # 180.0f

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 3343
    :pswitch_3
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 3346
    :pswitch_4
    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3347
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 3350
    :pswitch_5
    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 3353
    :pswitch_6
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3354
    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 3357
    :pswitch_7
    const/high16 v2, 0x43870000    # 270.0f

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_1

    .line 3333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2542
    .line 2544
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mirror kind="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2545
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2546
    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object v0, v7

    .line 2594
    :cond_0
    :goto_1
    return-object v0

    .line 2550
    :pswitch_0
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2570
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    .line 2571
    const-string v0, "mirror bmpSrc.getConfig() == Config.RGB_565"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2577
    :cond_1
    :goto_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2578
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 2577
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2579
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_4

    .line 2580
    const-string v1, "mirror mirrorPic.getConfig() == Config.RGB_565"

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2585
    :cond_2
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mirrorPic w="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2586
    if-eqz p2, :cond_0

    .line 2587
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2591
    :catch_0
    move-exception v1

    .line 2592
    :goto_5
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 2553
    :pswitch_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    :try_start_2
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_2

    .line 2591
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    .line 2556
    :pswitch_2
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2557
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 2573
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 2574
    const-string v0, "mirror bmpSrc.getConfig() == Config.ARGB_8888"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 2582
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_2

    .line 2583
    const-string v1, "mirror mirrorPic.getConfig() == Config.ARGB_8888"

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 2546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static mutable(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 782
    const/4 v1, 0x0

    .line 784
    :try_start_0
    sget-object v0, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 785
    if-eqz p1, :cond_0

    .line 786
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 792
    :cond_0
    :goto_0
    return-object v0

    .line 789
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 790
    :goto_1
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 789
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 1962
    const/4 v1, 0x0

    .line 1977
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 1978
    sget-object v0, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1979
    :try_start_1
    const-string v0, "FittingWindow copy"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1986
    :goto_0
    if-eqz p3, :cond_0

    .line 1987
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2009
    :cond_0
    :goto_1
    return-object v0

    .line 1982
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2006
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 2007
    :goto_2
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 2006
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public static rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 2211
    const/4 v7, 0x0

    .line 2219
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 2220
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2221
    :try_start_1
    const-string v0, "FittingWindow copy"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 2246
    :goto_0
    if-eqz p2, :cond_1

    .line 2247
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2254
    :cond_1
    :goto_1
    return-object v0

    .line 2224
    :cond_2
    :try_start_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2225
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2228
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2229
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 2228
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2251
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 2252
    :goto_2
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 2251
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public static rotate90(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 2392
    const/4 v1, 0x0

    .line 2408
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2409
    :try_start_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2410
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2411
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2412
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2413
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2414
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 2415
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 2416
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 2417
    const/high16 v6, 0x42b40000    # 90.0f

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 2418
    sub-int v6, v5, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-int v4, v5, v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2422
    invoke-virtual {v1, p0, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2425
    if-eqz p1, :cond_0

    .line 2426
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2433
    :cond_0
    :goto_0
    return-object v0

    .line 2430
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 2431
    :goto_1
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 2430
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static rotateAndResize(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 2599
    const/4 v7, 0x0

    .line 2602
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2603
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2604
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2605
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 2606
    :cond_0
    sget-object v0, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2607
    :try_start_1
    const-string v1, "FittingWindow copy"

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2618
    :goto_0
    return-object v0

    .line 2610
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2611
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 2610
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2615
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 2616
    :goto_1
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 2615
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static rotateDirect(Landroid/graphics/Bitmap;FIIZ)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 2259
    .line 2261
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rotateResize direct="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2268
    cmpl-float v0, p1, v2

    if-eqz v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 2269
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2270
    :try_start_1
    const-string v1, "FittingWindow copy"

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2271
    if-eqz p4, :cond_1

    .line 2272
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2310
    :cond_1
    :goto_0
    return-object v0

    .line 2277
    :cond_2
    :try_start_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2278
    cmpl-float v0, p1, v2

    if-eqz v0, :cond_4

    .line 2279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "direct="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2280
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2281
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2282
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 2281
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2283
    if-eqz p4, :cond_3

    .line 2284
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v7

    .line 2287
    :cond_3
    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Lcom/mt/image/ImageProcess;->FittingWindow(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 2289
    :goto_1
    :try_start_3
    const-string v1, "rotate src"

    invoke-static {p0, v1}, Lcom/mt/tools/MTDebug;->printConfig(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 2290
    const-string v1, "rotate bmpDst"

    invoke-static {v0, v1}, Lcom/mt/tools/MTDebug;->printConfig(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2307
    :catch_0
    move-exception v1

    .line 2308
    :goto_2
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 2307
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :cond_4
    move-object v0, v7

    goto :goto_1
.end method

.method public static rotateRect(Landroid/graphics/Bitmap;FFZZZ)Landroid/graphics/Bitmap;
    .locals 22

    .prologue
    .line 2439
    const/4 v3, 0x0

    .line 2441
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 2442
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 2443
    div-int/lit8 v7, v4, 0x2

    .line 2444
    div-int/lit8 v8, v5, 0x2

    .line 2447
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 2448
    const/high16 v2, 0x43b40000    # 360.0f

    add-float v2, v2, p1

    .line 2461
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v6, v5

    mul-float/2addr v2, v6

    int-to-float v6, v4

    div-float/2addr v2, v6

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 2463
    const-string v2, "rotateRect0"

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->printAvilableMemery2(Ljava/lang/String;)V

    .line 2464
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2466
    :try_start_1
    const-string v3, "rotateRect"

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->printAvilableMemery2(Ljava/lang/String;)V

    .line 2467
    if-eqz p4, :cond_1

    .line 2468
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2472
    :cond_1
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 2474
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v4, v3

    div-int/lit8 v11, v3, 0x2

    .line 2475
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v5, v3

    div-int/lit8 v12, v3, 0x2

    .line 2476
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "angle="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2477
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_8

    .line 2478
    const/high16 v3, -0x40800000    # -1.0f

    mul-float v3, v3, p1

    .line 2480
    :goto_0
    const/high16 v6, 0x43b40000    # 360.0f

    cmpl-float v6, v3, v6

    if-gtz v6, :cond_5

    .line 2483
    const/high16 v6, 0x43340000    # 180.0f

    cmpl-float v6, v3, v6

    if-lez v6, :cond_2

    .line 2484
    const/high16 v6, 0x43b40000    # 360.0f

    sub-float v3, v6, v3

    .line 2486
    :cond_2
    const/high16 v6, 0x42b40000    # 90.0f

    cmpl-float v6, v3, v6

    if-lez v6, :cond_3

    .line 2487
    const/high16 v6, 0x43340000    # 180.0f

    sub-float v3, v6, v3

    .line 2491
    :cond_3
    if-ge v4, v5, :cond_6

    .line 2492
    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v13, v4

    mul-float/2addr v6, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v6, v13

    float-to-double v13, v6

    float-to-double v15, v9

    float-to-double v0, v3

    move-wide/from16 v17, v0

    .line 2493
    const-wide v19, 0x400921fb54442d18L    # Math.PI

    mul-double v17, v17, v19

    const-wide v19, 0x4066800000000000L    # 180.0

    div-double v17, v17, v19

    sub-double v15, v15, v17

    .line 2492
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    div-double/2addr v13, v15

    double-to-int v3, v13

    .line 2494
    int-to-double v13, v3

    float-to-double v15, v9

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    double-to-int v6, v13

    .line 2495
    int-to-double v13, v3

    float-to-double v15, v9

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    double-to-int v3, v13

    .line 2502
    :goto_1
    sub-int v9, v7, v6

    sub-int v13, v8, v3

    add-int/2addr v6, v7

    add-int/2addr v3, v8

    invoke-virtual {v10, v9, v13, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2517
    if-eqz p3, :cond_7

    move v3, v5

    .line 2525
    :goto_2
    iget v5, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v11

    iget v6, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v12

    .line 2526
    iget v7, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v11

    .line 2527
    iget v8, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v12

    const/4 v9, 0x1

    move/from16 v10, p5

    .line 2524
    invoke-static/range {v2 .. v10}, Lcom/mt/image/ImageProcess;->cutAndResizeRotate(Landroid/graphics/Bitmap;IIIIIIZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2529
    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-eqz v3, :cond_4

    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float v3, p2, v3

    if-eqz v3, :cond_4

    .line 2530
    const/4 v3, 0x1

    move/from16 v0, p2

    invoke-static {v2, v0, v3}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2537
    :cond_4
    :goto_3
    return-object v2

    .line 2481
    :cond_5
    const/high16 v6, 0x43b40000    # 360.0f

    sub-float/2addr v3, v6

    goto/16 :goto_0

    .line 2497
    :cond_6
    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v13, v5

    mul-float/2addr v6, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v6, v13

    float-to-double v13, v6

    float-to-double v15, v9

    float-to-double v0, v3

    move-wide/from16 v17, v0

    .line 2498
    const-wide v19, 0x400921fb54442d18L    # Math.PI

    mul-double v17, v17, v19

    const-wide v19, 0x4066800000000000L    # 180.0

    div-double v17, v17, v19

    add-double v15, v15, v17

    const-wide v17, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v15, v15, v17

    .line 2497
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    div-double/2addr v13, v15

    double-to-int v3, v13

    .line 2499
    int-to-double v13, v3

    float-to-double v15, v9

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    double-to-int v6, v13

    .line 2500
    int-to-double v13, v3

    float-to-double v15, v9

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v15

    mul-double/2addr v13, v15

    double-to-int v3, v13

    goto :goto_1

    :cond_7
    move v3, v4

    move v4, v5

    .line 2522
    goto :goto_2

    .line 2534
    :catch_0
    move-exception v2

    move-object/from16 v21, v2

    move-object v2, v3

    move-object/from16 v3, v21

    .line 2535
    :goto_4
    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 2534
    :catch_1
    move-exception v3

    goto :goto_4

    :cond_8
    move/from16 v3, p1

    goto/16 :goto_0
.end method

.method public static rotateResize(Landroid/graphics/Bitmap;FFIIZ)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2314
    .line 2316
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rotateResize direct="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " degress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2323
    cmpl-float v0, p2, v8

    if-eqz v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 2324
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2325
    :try_start_1
    const-string v1, "FittingWindow copy"

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2326
    if-eqz p5, :cond_1

    .line 2327
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2388
    :cond_1
    :goto_0
    return-object v0

    .line 2333
    :cond_2
    :try_start_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2334
    cmpl-float v0, p1, v8

    if-eqz v0, :cond_5

    .line 2335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "direct="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2336
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2337
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2338
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 2337
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2339
    if-eqz p5, :cond_3

    .line 2340
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v7

    .line 2343
    :cond_3
    const/4 v1, 0x1

    invoke-static {v0, p3, p4, v1}, Lcom/mt/image/ImageProcess;->FittingWindow(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2344
    cmpl-float v1, p2, v8

    if-eqz v1, :cond_4

    .line 2345
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "degress="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 2347
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2348
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2349
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    .line 2348
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 2350
    :try_start_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    move-object v7, p0

    .line 2367
    :goto_1
    :try_start_4
    const-string v1, "rotate src"

    invoke-static {v7, v1}, Lcom/mt/tools/MTDebug;->printConfig(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 2368
    const-string v1, "rotate bmpDst"

    invoke-static {v0, v1}, Lcom/mt/tools/MTDebug;->printConfig(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 2385
    :catch_0
    move-exception v1

    .line 2386
    :goto_2
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_4
    move-object v7, p0

    .line 2353
    goto :goto_1

    .line 2357
    :cond_5
    :try_start_5
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 2358
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2359
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2360
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 2359
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v1

    .line 2361
    if-eqz p5, :cond_6

    .line 2362
    :try_start_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v0, v1

    .line 2363
    goto :goto_1

    .line 2385
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_2

    :cond_6
    move-object v0, v1

    move-object v7, p0

    goto :goto_1
.end method

.method public static saturation(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 2821
    const/4 v1, 0x0

    .line 2823
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2824
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_2

    .line 2825
    const-string v1, "saturation bmpDst.getConfig() == Config.RGB_565"

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2831
    :cond_0
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2833
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2834
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2835
    invoke-virtual {v3, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 2836
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 2838
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2839
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2840
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2841
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2842
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2843
    if-eqz p2, :cond_1

    .line 2844
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2851
    :cond_1
    :goto_1
    return-object v0

    .line 2827
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 2828
    const-string v1, "saturation bmpDst.getConfig() == Config.ARGB_8888"

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2848
    :catch_0
    move-exception v1

    .line 2849
    :goto_2
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 2848
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2
.end method

.method public static savePic(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 86
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 85
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 88
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 90
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 91
    const-string v0, "savepic jpeg 95"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 97
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    :goto_1
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 93
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 105
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 98
    :catch_1
    move-exception v0

    .line 100
    :try_start_3
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public static savePic2(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 119
    if-ne p2, v2, :cond_1

    .line 120
    sget-object v0, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 128
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :goto_1
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 124
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 129
    :catch_1
    move-exception v0

    .line 131
    :try_start_3
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public static savePicHigh(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public static scale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 2623
    const/4 v1, 0x0

    .line 2629
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    .line 2630
    :try_start_0
    sget-object v0, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2631
    :try_start_1
    const-string v0, "FittingWindow copy"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 2649
    :goto_0
    if-eqz p2, :cond_0

    .line 2650
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2657
    :cond_0
    :goto_1
    return-object v0

    .line 2634
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v3, v2

    .line 2635
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 2636
    if-ge v3, v0, :cond_2

    move v3, v0

    .line 2639
    :cond_2
    if-ge v2, v0, :cond_3

    .line 2642
    :goto_2
    const-string v2, "TEMP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "__________scale dstW="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dstH="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2643
    const-string v5, " srcW="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2642
    invoke-static {v2, v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 2644
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {p0, v3, v0, v2}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2654
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 2655
    :goto_3
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 2654
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public static scalePingTu(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const v4, 0x3f7d70a4    # 0.99f

    const/4 v0, 0x1

    .line 2662
    const/4 v1, 0x0

    .line 2668
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    .line 2669
    :try_start_0
    sget-object v0, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2670
    :try_start_1
    const-string v0, "FittingWindow copy"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 2686
    :goto_0
    if-eqz p2, :cond_0

    .line 2687
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2694
    :cond_0
    :goto_1
    return-object v0

    .line 2673
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v3, v2

    .line 2674
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 2675
    if-ge v3, v0, :cond_2

    move v3, v0

    .line 2678
    :cond_2
    if-ge v2, v0, :cond_3

    .line 2681
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {p0, v3, v0, v2}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2691
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 2692
    :goto_3
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 2691
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public static toARGB(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 2782
    const/4 v1, 0x0

    .line 2784
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2785
    :try_start_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2786
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2787
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2788
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2793
    :goto_0
    return-object v0

    .line 2790
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 2791
    :goto_1
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 2790
    :catch_1
    move-exception v1

    goto :goto_1
.end method
