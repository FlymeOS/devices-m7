.class public final Lcom/htc/camera/imaging/ImageUtility;
.super Ljava/lang/Object;
.source "ImageUtility.java"


# static fields
.field private static final EXIF_TAG_NAMES:[Ljava/lang/String;

.field private static final PIXEL_FORMAT_ARGB8888:I = 0x2

.field private static final PIXEL_FORMAT_RGB565:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageUtility"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ExposureTime"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FocalLength"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GPSTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/imaging/ImageUtility;->EXIF_TAG_NAMES:[Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/htc/camera/CameraNativeLibrary;->initialize()V

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bitmapFlipX(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 191
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 193
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 195
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 196
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 197
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 198
    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 200
    const/4 v0, 0x0

    invoke-virtual {v2, p0, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 202
    return-object v1
.end method

.method public static final cameraSizeListToSizeList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/imaging/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 214
    new-instance v3, Lcom/htc/camera/imaging/Size;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v0}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_0
    return-object v1
.end method

.method public static extractExif(Ljava/util/Set;[B)Ljava/util/Hashtable;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[B)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 229
    .line 233
    :try_start_0
    const-string v1, "_htc_exif_extract_"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 234
    if-nez v2, :cond_1

    .line 236
    :try_start_1
    const-string v1, "ImageUtility"

    const-string v3, "extractExif() - Cannot create temp file"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 281
    if-eqz v2, :cond_0

    .line 282
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 277
    :cond_0
    :goto_1
    return-object v0

    .line 240
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 243
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    :try_start_4
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 251
    const/4 v1, 0x1

    .line 252
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_8

    :cond_2
    move v4, v3

    .line 256
    :goto_2
    new-instance v5, Landroid/media/ExifInterface;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 257
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 258
    sget-object v6, Lcom/htc/camera/imaging/ImageUtility;->EXIF_TAG_NAMES:[Ljava/lang/String;

    array-length v7, v6

    :goto_3
    if-ge v3, v7, :cond_6

    aget-object v8, v6, v3

    .line 260
    if-eqz v4, :cond_3

    invoke-interface {p0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 258
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 247
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 274
    :catch_0
    move-exception v1

    .line 276
    :goto_5
    :try_start_5
    const-string v3, "ImageUtility"

    const-string v4, "extractExif() - Fail to extract EXIF"

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 281
    if-eqz v2, :cond_0

    goto :goto_0

    .line 263
    :cond_3
    :try_start_6
    invoke-virtual {v5, v8}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 264
    if-eqz v9, :cond_5

    .line 266
    invoke-virtual {v1, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v10, "ImageUtility"

    const-string v11, "extractExif() - tag:"

    const-string v12, " value:"

    invoke-static {v10, v11, v8, v12, v9}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 281
    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v2, :cond_4

    .line 282
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 281
    :cond_4
    throw v0

    .line 270
    :cond_5
    :try_start_7
    const-string v9, "ImageUtility"

    const-string v10, "extractExif() - tag:"

    const-string v11, " value: -"

    invoke-static {v9, v10, v8, v11}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 281
    :cond_6
    if-eqz v2, :cond_7

    .line 282
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_7
    move-object v0, v1

    .line 272
    goto :goto_1

    .line 281
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    .line 274
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_5

    :cond_8
    move v4, v1

    goto :goto_2
.end method

.method public static extractExif([B)Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/htc/camera/imaging/ImageUtility;->extractExif(Ljava/util/Set;[B)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public static final findNearestSize(IILjava/util/List;Lcom/htc/camera/AspectRatio;Ljava/lang/Boolean;)Landroid/hardware/Camera$Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Lcom/htc/camera/AspectRatio;",
            "Ljava/lang/Boolean;",
            ")",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 145
    if-nez p2, :cond_1

    .line 147
    const-string v0, "allSizes"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 182
    :cond_0
    return-object v3

    .line 152
    :cond_1
    mul-int v5, p0, p1

    .line 154
    const/4 v1, 0x0

    .line 155
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_0

    .line 157
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 158
    invoke-static {v0}, Lcom/htc/camera/AspectRatio;->getAspectRatio(Landroid/hardware/Camera$Size;)Lcom/htc/camera/AspectRatio;

    move-result-object v2

    if-ne v2, p3, :cond_5

    .line 160
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v2

    .line 161
    sub-int v2, v5, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 162
    if-eqz p4, :cond_3

    .line 164
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 166
    if-ge v6, v5, :cond_3

    move v0, v1

    move-object v1, v3

    .line 155
    :goto_1
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    .line 171
    :cond_2
    if-le v6, v5, :cond_3

    move v0, v1

    move-object v1, v3

    .line 172
    goto :goto_1

    .line 175
    :cond_3
    if-eqz v3, :cond_4

    if-ge v2, v1, :cond_5

    :cond_4
    move-object v1, v0

    move v0, v2

    .line 178
    goto :goto_1

    :cond_5
    move v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public static final findNearestSize(IILjava/util/List;Ljava/lang/Boolean;)Landroid/hardware/Camera$Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {p0, p1}, Lcom/htc/camera/AspectRatio;->getAspectRatio(II)Lcom/htc/camera/AspectRatio;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/htc/camera/imaging/ImageUtility;->findNearestSize(IILjava/util/List;Lcom/htc/camera/AspectRatio;Ljava/lang/Boolean;)Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public static final findNearestSize(Lcom/htc/camera/imaging/Size;Ljava/util/List;Z)Lcom/htc/camera/imaging/Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/imaging/Size;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/imaging/Size;",
            ">;Z)",
            "Lcom/htc/camera/imaging/Size;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 80
    if-nez p0, :cond_1

    .line 82
    const-string v0, "ImageUtility"

    const-string v2, "findNearestSize() - target is null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "target"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    return-object v1

    .line 86
    :cond_1
    if-nez p1, :cond_2

    .line 88
    const-string v0, "ImageUtility"

    const-string v2, "findNearestSize() - fullList is null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "fullList"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_2
    iget v0, p0, Lcom/htc/camera/imaging/Size;->width:I

    iget v2, p0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0, v2}, Lcom/htc/camera/AspectRatio;->getAspectRatio(II)Lcom/htc/camera/AspectRatio;

    move-result-object v3

    .line 98
    const-string v0, "ImageUtility"

    const-string v2, "findNearestSize() - target="

    invoke-virtual {p0}, Lcom/htc/camera/imaging/Size;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " ratio="

    invoke-virtual {v3}, Lcom/htc/camera/AspectRatio;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v4, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    .line 102
    iget v5, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v6, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v5, v6}, Lcom/htc/camera/AspectRatio;->getAspectRatio(II)Lcom/htc/camera/AspectRatio;

    move-result-object v5

    if-ne v5, v3, :cond_3

    .line 105
    iget v5, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v6, p0, Lcom/htc/camera/imaging/Size;->width:I

    if-ne v5, v6, :cond_4

    iget v5, p0, Lcom/htc/camera/imaging/Size;->height:I

    iget v6, p0, Lcom/htc/camera/imaging/Size;->height:I

    if-ne v5, v6, :cond_4

    move-object v1, v0

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    iget v5, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v6, p0, Lcom/htc/camera/imaging/Size;->width:I

    if-le v5, v6, :cond_6

    iget v5, v0, Lcom/htc/camera/imaging/Size;->height:I

    iget v6, p0, Lcom/htc/camera/imaging/Size;->height:I

    if-le v5, v6, :cond_6

    .line 109
    if-eqz v2, :cond_5

    iget v5, v2, Lcom/htc/camera/imaging/Size;->width:I

    iget v6, v0, Lcom/htc/camera/imaging/Size;->width:I

    if-le v5, v6, :cond_a

    :cond_5
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    move-object v2, v1

    move-object v1, v0

    .line 121
    goto :goto_1

    .line 114
    :cond_6
    iget v5, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v6, p0, Lcom/htc/camera/imaging/Size;->width:I

    if-ge v5, v6, :cond_a

    iget v5, v0, Lcom/htc/camera/imaging/Size;->height:I

    iget v6, p0, Lcom/htc/camera/imaging/Size;->height:I

    if-ge v5, v6, :cond_a

    .line 116
    if-eqz v1, :cond_7

    iget v5, v1, Lcom/htc/camera/imaging/Size;->width:I

    iget v6, v0, Lcom/htc/camera/imaging/Size;->width:I

    if-ge v5, v6, :cond_a

    :cond_7
    move-object v1, v2

    .line 118
    goto :goto_2

    .line 123
    :cond_8
    if-eqz p2, :cond_9

    .line 125
    if-eqz v2, :cond_0

    move-object v1, v2

    .line 126
    goto/16 :goto_0

    .line 132
    :cond_9
    if-nez v1, :cond_0

    move-object v1, v2

    .line 135
    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    move-object v1, v2

    goto :goto_2
.end method

.method public static final getJpegImageOrientation([B)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 307
    if-nez p0, :cond_0

    .line 309
    const-string v0, "jpegRawData"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 314
    :cond_0
    new-instance v1, Lcom/htc/camera/imaging/ExifTagEnumerator;

    invoke-direct {v1, p0}, Lcom/htc/camera/imaging/ExifTagEnumerator;-><init>([B)V

    .line 315
    :cond_1
    invoke-virtual {v1}, Lcom/htc/camera/imaging/ExifTagEnumerator;->read()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 317
    invoke-virtual {v1}, Lcom/htc/camera/imaging/ExifTagEnumerator;->currentIfd()Lcom/htc/camera/imaging/Ifd;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/imaging/Ifd;->Ifd0:Lcom/htc/camera/imaging/Ifd;

    if-ne v2, v3, :cond_1

    .line 319
    invoke-virtual {v1}, Lcom/htc/camera/imaging/ExifTagEnumerator;->currentTagId()I

    move-result v2

    const/16 v3, 0x112

    if-ne v2, v3, :cond_1

    .line 321
    invoke-virtual {v1}, Lcom/htc/camera/imaging/ExifTagEnumerator;->getTagDataInteger()[I

    move-result-object v2

    .line 322
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/htc/camera/imaging/ExifTagEnumerator;->getTagDataInteger()[I

    move-result-object v1

    aget v1, v1, v0

    .line 323
    :goto_0
    if-nez v2, :cond_2

    .line 324
    const-string v2, "ImageUtility"

    const-string v3, "getJpegImageOrientation() - tagDataInteger is null, return default as orientation"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 342
    :cond_3
    :goto_1
    return v0

    .line 322
    :cond_4
    const/4 v1, -0x1

    goto :goto_0

    .line 329
    :pswitch_0
    const/16 v0, 0xb4

    goto :goto_1

    .line 332
    :pswitch_1
    const/16 v0, 0x10e

    goto :goto_1

    .line 335
    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_1

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getPixelSize(Lcom/htc/camera/io/Path;)Lcom/htc/camera/imaging/Size;
    .locals 3

    .prologue
    .line 368
    if-nez p0, :cond_0

    .line 370
    const-string v0, "filePath"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 375
    :cond_0
    const/4 v2, 0x0

    .line 378
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :try_start_1
    invoke-static {v1}, Lcom/htc/camera/imaging/ImageUtility;->getPixelSize(Ljava/io/InputStream;)Lcom/htc/camera/imaging/Size;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 383
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 379
    return-object v0

    .line 383
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static getPixelSize(Ljava/io/InputStream;)Lcom/htc/camera/imaging/Size;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 389
    if-nez p0, :cond_0

    .line 391
    const-string v0, "stream"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 396
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 397
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 398
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 399
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_1

    .line 400
    new-instance v0, Lcom/htc/camera/imaging/Size;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v2, v1}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 401
    :cond_1
    return-object v0
.end method

.method public static getPixelSize([B)Lcom/htc/camera/imaging/Size;
    .locals 3

    .prologue
    .line 351
    if-nez p0, :cond_0

    .line 353
    const-string v0, "bytes"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 358
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 360
    const/4 v0, 0x0

    array-length v2, p0

    invoke-static {p0, v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 361
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v0, :cond_1

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v0, :cond_1

    .line 362
    new-instance v0, Lcom/htc/camera/imaging/Size;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v2, v1}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 363
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRatioStretchBounds(Landroid/graphics/Rect;Lcom/htc/camera/imaging/Size;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/htc/camera/imaging/Size;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getRatioStretchBounds(Landroid/graphics/Rect;Lcom/htc/camera/imaging/Size;Z)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 414
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 415
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 428
    :goto_0
    return-object v0

    .line 418
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Lcom/htc/camera/imaging/Size;->width:I

    iget v3, p1, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0, v1, v2, v3, p2}, Lcom/htc/camera/imaging/ImageUtility;->getRatioStretchSize(IIIIZ)Lcom/htc/camera/imaging/Size;

    move-result-object v1

    .line 421
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 422
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, v1, Lcom/htc/camera/imaging/Size;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 423
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, v1, Lcom/htc/camera/imaging/Size;->height:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 424
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Lcom/htc/camera/imaging/Size;->width:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 425
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Lcom/htc/camera/imaging/Size;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public static getRatioStretchSize(IIII)Lcom/htc/camera/imaging/Size;
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/camera/imaging/ImageUtility;->getRatioStretchSize(IIIIZ)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    return-object v0
.end method

.method public static getRatioStretchSize(IIIIZ)Lcom/htc/camera/imaging/Size;
    .locals 8

    .prologue
    const-wide v6, 0x3fa999999999999aL    # 0.05

    .line 450
    if-lez p0, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_2

    .line 451
    :cond_0
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    .line 471
    :cond_1
    :goto_0
    return-object v0

    .line 454
    :cond_2
    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 455
    int-to-double v2, p1

    int-to-double v4, p3

    div-double/2addr v2, v4

    .line 456
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 459
    new-instance v0, Lcom/htc/camera/imaging/Size;

    int-to-double v3, p2

    mul-double/2addr v3, v1

    double-to-int v3, v3

    int-to-double v4, p3

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-direct {v0, v3, v1}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 462
    if-eqz p4, :cond_1

    .line 464
    iget v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    sub-int v1, p0, v1

    int-to-double v1, v1

    iget v3, v0, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    cmpg-double v1, v1, v6

    if-gtz v1, :cond_3

    .line 465
    iput p0, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 466
    :cond_3
    iget v1, v0, Lcom/htc/camera/imaging/Size;->height:I

    sub-int v1, p1, v1

    int-to-double v1, v1

    iget v3, v0, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    cmpg-double v1, v1, v6

    if-gtz v1, :cond_1

    .line 467
    iput p1, v0, Lcom/htc/camera/imaging/Size;->height:I

    goto :goto_0
.end method

.method public static getRatioStretchSize(Lcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;)Lcom/htc/camera/imaging/Size;
    .locals 4

    .prologue
    .line 437
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 438
    :cond_0
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    .line 441
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/htc/camera/imaging/Size;->width:I

    iget v1, p0, Lcom/htc/camera/imaging/Size;->height:I

    iget v2, p1, Lcom/htc/camera/imaging/Size;->width:I

    iget v3, p1, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/imaging/ImageUtility;->getRatioStretchSize(IIII)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    goto :goto_0
.end method

.method public static mapFromCameraArea(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 4

    .prologue
    const/high16 v3, 0x44fa0000    # 2000.0f

    .line 502
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/Point;->x:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Landroid/graphics/Point;->y:I

    add-int/lit16 v2, v2, 0x3e8

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static mapFromCameraArea(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/high16 v4, 0x44fa0000    # 2000.0f

    .line 494
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 495
    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 496
    iget v2, p0, Landroid/graphics/Rect;->right:I

    add-int/lit16 v2, v2, 0x3e8

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 497
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 498
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public static mapToCameraArea(Landroid/graphics/PointF;)Landroid/graphics/Point;
    .locals 4

    .prologue
    const/high16 v3, 0x44fa0000    # 2000.0f

    .line 487
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int/lit16 v1, v1, -0x3e8

    iget v2, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit16 v2, v2, -0x3e8

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static mapToCameraArea(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/high16 v4, 0x44fa0000    # 2000.0f

    .line 479
    iget v0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    add-int/lit16 v0, v0, -0x3e8

    .line 480
    iget v1, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    add-int/lit16 v1, v1, -0x3e8

    .line 481
    iget v2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    add-int/lit16 v2, v2, -0x3e8

    .line 482
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit16 v3, v3, -0x3e8

    .line 483
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public static recycleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 538
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 540
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 544
    :cond_0
    return-void
.end method

.method public static final resolutionListToSizeList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/imaging/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 295
    new-instance v3, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    invoke-direct {v3, v4, v0}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_0
    return-object v1
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/camera/imaging/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 556
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 557
    sparse-switch p1, :sswitch_data_0

    .line 566
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "degree can only be 0, 90, 180 or 270"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :sswitch_0
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 570
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 571
    if-eqz p2, :cond_0

    .line 572
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 573
    :cond_0
    return-object v0

    .line 557
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public static native rotateRgb565Image90Clockwise(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Z
.end method

.method public static roundOrientation(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 513
    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    move p0, v0

    .line 516
    :cond_0
    rem-int/lit16 v1, p0, 0x168

    .line 518
    const/16 v2, 0x2d

    if-ge v1, v2, :cond_2

    .line 530
    :cond_1
    :goto_0
    return v0

    .line 520
    :cond_2
    const/16 v2, 0x87

    if-ge v1, v2, :cond_3

    .line 521
    const/16 v0, 0x5a

    goto :goto_0

    .line 522
    :cond_3
    const/16 v2, 0xe1

    if-ge v1, v2, :cond_4

    .line 523
    const/16 v0, 0xb4

    goto :goto_0

    .line 524
    :cond_4
    const/16 v2, 0x13b

    if-ge v1, v2, :cond_1

    .line 525
    const/16 v0, 0x10e

    goto :goto_0
.end method

.method public static native scaleYvu420sp(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)V
.end method

.method public static yvu420spToBitmap([BIIIZ)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 599
    sparse-switch p3, :sswitch_data_0

    .line 612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_0
    move v0, p2

    move v1, p1

    .line 616
    :goto_0
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 617
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 620
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/imaging/ImageUtility;->yvu420spToRgb565([BIILjava/nio/ByteBuffer;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_1
    move v0, p1

    move v1, p2

    .line 610
    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {v6, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 625
    return-object v6

    .line 599
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public static native yvu420spToRgb565(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Z
.end method

.method public static native yvu420spToRgb565([BIILjava/nio/ByteBuffer;IZ)Z
.end method
