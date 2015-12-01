.class public final Lcom/htc/camera/imaging/ThumbnailUtility;
.super Ljava/lang/Object;
.source "ThumbnailUtility.java"


# direct methods
.method public static a(Lcom/htc/camera/MediaDataRetriever;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 130
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/MediaDataRetriever;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    const-string v0, "ThumbnailUtility"

    const-string v1, "createPanoramaPlusThumbnailImage() - MediaDataRetriever is null or released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 137
    :cond_1
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0352

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 138
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0353

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 139
    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/MediaDataRetriever;->getPanoramaPlusThumbnailImage(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    if-nez v0, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/htc/camera/MediaDataRetriever;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/htc/camera/imaging/ThumbnailUtility;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    :cond_2
    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 34
    const-string v0, "ThumbnailUtility"

    const-string v2, "createImageThumbnailByReflection() - start"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    const-class v0, Landroid/media/ThumbnailUtils;

    const-string v2, "createImageThumbnail"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 38
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 39
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v2, "ThumbnailUtility"

    const-string v3, "createImageThumbnailByReflection() - Error occurs"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 43
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/camera/imaging/ThumbnailUtility;->a(Ljava/lang/String;Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 56
    if-nez p0, :cond_0

    .line 58
    const-string v0, "filePath"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 61
    :cond_0
    if-nez p1, :cond_1

    .line 63
    const-string v0, "mediaType"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_1
    const-string v0, "ThumbnailUtility"

    const-string v2, "createThumbnailImage() - MediaType: "

    invoke-static {v0, v2, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x0

    .line 71
    sget-object v2, Lcom/htc/camera/imaging/ThumbnailUtility$1;->$SwitchMap$com$htc$camera$imaging$ThumbnailUtility$MediaType:[I

    invoke-virtual {p1}, Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 100
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :pswitch_0
    invoke-static {p0, v4}, Lcom/htc/camera/imaging/ThumbnailUtility;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_1
    invoke-static {p0, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_2
    new-instance v2, Lcom/htc/camera/MediaDataRetriever;

    invoke-direct {v2, p0}, Lcom/htc/camera/MediaDataRetriever;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {v2}, Lcom/htc/camera/imaging/ThumbnailUtility;->b(Lcom/htc/camera/MediaDataRetriever;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    invoke-virtual {v2}, Lcom/htc/camera/MediaDataRetriever;->release()V

    goto :goto_0

    .line 92
    :pswitch_3
    new-instance v2, Lcom/htc/camera/MediaDataRetriever;

    invoke-direct {v2, p0}, Lcom/htc/camera/MediaDataRetriever;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {v2}, Lcom/htc/camera/imaging/ThumbnailUtility;->a(Lcom/htc/camera/MediaDataRetriever;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    invoke-virtual {v2}, Lcom/htc/camera/MediaDataRetriever;->release()V

    goto :goto_0

    .line 107
    :sswitch_0
    if-eqz v0, :cond_3

    .line 109
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 110
    int-to-float v2, p2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 111
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 121
    :cond_3
    :sswitch_1
    return-object v0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public static a([BIIII)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 174
    invoke-static {p0}, Lcom/htc/camera/imaging/ImageUtility;->getJpegImageOrientation([B)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/imaging/ThumbnailUtility;->a([BIIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a([BIIIII)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 179
    if-nez p0, :cond_1

    .line 181
    const-string v0, "jpegRawData"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    .line 276
    :cond_0
    :goto_0
    return-object v0

    .line 184
    :cond_1
    if-lez p3, :cond_2

    if-gtz p4, :cond_3

    .line 186
    :cond_2
    const-string v0, "ThumbnailUtility"

    const-string v1, "createThumbnailImage() - Invalid thumbnail size"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :cond_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 192
    if-lez p1, :cond_4

    if-gtz p2, :cond_6

    .line 194
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 195
    const/4 v0, 0x0

    array-length v2, p0

    invoke-static {p0, v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 196
    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 197
    iget p2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 199
    if-lez p1, :cond_5

    if-gtz p2, :cond_6

    .line 201
    :cond_5
    const-string v0, "ThumbnailUtility"

    const-string v1, "createThumbnailImage() - Cannot get image size"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    :cond_6
    sparse-switch p5, :sswitch_data_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_0
    move v8, p3

    move p3, p4

    move p4, v8

    .line 229
    :sswitch_1
    if-gt p1, p3, :cond_7

    if-le p2, p4, :cond_8

    .line 231
    :cond_7
    int-to-double v2, p1

    int-to-double v4, p3

    div-double/2addr v2, v4

    .line 232
    int-to-double v4, p2

    int-to-double v6, p4

    div-double/2addr v4, v6

    .line 233
    :try_start_0
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 234
    const/4 v0, 0x2

    .line 236
    :goto_1
    int-to-double v4, v0

    cmpl-double v4, v4, v2

    if-ltz v4, :cond_b

    .line 238
    shr-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 245
    :cond_8
    const/4 v0, 0x0

    array-length v2, p0

    invoke-static {p0, v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, p3, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, p4, :cond_a

    .line 251
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 252
    int-to-float v2, p3

    int-to-float v3, p4

    div-float/2addr v2, v3

    .line 253
    div-float/2addr v1, v2

    .line 254
    float-to-double v2, v1

    const-wide v4, 0x3fef0a3d70a3d70aL    # 0.97

    cmpl-double v2, v2, v4

    if-lez v2, :cond_c

    float-to-double v1, v1

    const-wide v3, 0x3ff07ae147ae147bL    # 1.03

    cmpg-double v1, v1, v3

    if-gez v1, :cond_c

    .line 255
    const/4 v1, 0x1

    invoke-static {v0, p3, p4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 263
    :cond_a
    :goto_2
    if-eqz p5, :cond_0

    .line 265
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 266
    int-to-float v1, p5

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 267
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 268
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 269
    goto/16 :goto_0

    .line 234
    :cond_b
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 257
    :cond_c
    invoke-static {v0, p3, p4}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 273
    :catch_0
    move-exception v0

    .line 275
    const-string v1, "ThumbnailUtility"

    const-string v2, "createThumbnailImage() - Cannot create thumbnail image"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public static a([BLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 153
    invoke-static {p0}, Lcom/htc/camera/imaging/ImageUtility;->getJpegImageOrientation([B)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/camera/imaging/ThumbnailUtility;->a([BLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a([BLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;I)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 158
    if-nez p1, :cond_0

    .line 160
    const-string v1, "imageSize"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 170
    :goto_0
    return-object v0

    .line 163
    :cond_0
    if-nez p2, :cond_1

    .line 165
    const-string v1, "thumbSize"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    iget v1, p1, Lcom/htc/camera/imaging/Size;->width:I

    iget v2, p1, Lcom/htc/camera/imaging/Size;->height:I

    iget v3, p2, Lcom/htc/camera/imaging/Size;->width:I

    iget v4, p2, Lcom/htc/camera/imaging/Size;->height:I

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/imaging/ThumbnailUtility;->a([BIIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/htc/camera/MediaDataRetriever;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 285
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/MediaDataRetriever;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    const-string v0, "ThumbnailUtility"

    const-string v1, "createZoeThumbnailImage() - MediaDataRetriever is null or released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 292
    :cond_1
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0352

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 293
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0353

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 294
    invoke-virtual {p0}, Lcom/htc/camera/MediaDataRetriever;->getZoeCoverJpeg()[B

    move-result-object v2

    .line 295
    invoke-virtual {p0}, Lcom/htc/camera/MediaDataRetriever;->getZoePhotoSize()Lcom/htc/camera/imaging/Size;

    move-result-object v3

    .line 296
    if-nez v3, :cond_2

    .line 297
    const-string v0, "ThumbnailUtility"

    const-string v1, "createZoeThumbnailImage() - imageSize is null, skip the thumbnail creating process"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    .line 304
    :goto_0
    return-object v0

    .line 301
    :cond_2
    const-string v4, "ThumbnailUtility"

    const-string v5, "createZoeThumbnailImage() from HtcWrapHtcMediaMetadataRetriever, ready to create Thumbnail"

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget v4, v3, Lcom/htc/camera/imaging/Size;->width:I

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v2, v4, v3, v0, v1}, Lcom/htc/camera/imaging/ThumbnailUtility;->a([BIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
