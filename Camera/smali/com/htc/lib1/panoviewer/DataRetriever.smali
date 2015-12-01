.class public Lcom/htc/lib1/panoviewer/DataRetriever;
.super Ljava/lang/Object;
.source "DataRetriever.java"


# static fields
.field public static final CODE_FAIL:I = -0x1

.field public static final CODE_SUCCESS:I = 0x0

.field public static final DECODE_DETPH_16:I = 0x10

.field public static final DECODE_DETPH_32:I = 0x20

.field public static final DECODE_TYPE_BEST_FIT:I = 0x1

.field public static final DECODE_TYPE_CENTER_CROP:I = 0x2

.field public static final KEY_INTERNAL_RECTANGLE:Ljava/lang/String; = "INTERNALRECTANGLE"

.field public static final KEY_IS_PANORAMA_PLUS:Ljava/lang/String; = "ISPANORAMA"

.field public static final KEY_THUMBNAIL_MAX_SIZE:Ljava/lang/String; = "THUMBMAXSIZE"

.field public static final KEY_XMP_INFO:Ljava/lang/String; = "XMPINFO"


# instance fields
.field jniFoos:Lcom/htc/lib1/panoviewer/JNIFoos;

.field mDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 36
    new-instance v0, Lcom/htc/lib1/panoviewer/JNIFoos;

    invoke-direct {v0}, Lcom/htc/lib1/panoviewer/JNIFoos;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->jniFoos:Lcom/htc/lib1/panoviewer/JNIFoos;

    return-void
.end method


# virtual methods
.method public Release()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->mDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v0, 0x1

    .line 94
    :goto_0
    if-lez v0, :cond_0

    :goto_1
    return v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 92
    goto :goto_0

    .line 94
    :cond_0
    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public decodeThumbnail(IIIIZLandroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 111
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-object v8

    .line 114
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 120
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 123
    :sswitch_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 133
    :goto_1
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 135
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 136
    aput v7, v5, v6

    aput v7, v5, v7

    .line 137
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->jniFoos:Lcom/htc/lib1/panoviewer/JNIFoos;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    if-eqz p5, :cond_2

    move v3, v6

    :goto_2
    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/panoviewer/JNIFoos;->getThumb(Ljava/io/FileDescriptor;IILandroid/graphics/Bitmap;[I)I

    move-result v0

    .line 141
    if-lez v0, :cond_3

    aget v0, v5, v7

    if-lez v0, :cond_3

    aget v0, v5, v6

    if-lez v0, :cond_3

    .line 142
    aget v0, v5, v7

    aget v1, v5, v6

    invoke-static {v4, v7, v7, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_3
    move-object v8, v0

    .line 146
    goto :goto_0

    .line 126
    :sswitch_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_2
    move v3, v7

    .line 137
    goto :goto_2

    :cond_3
    move-object v0, v8

    goto :goto_3

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public extractMetaDataAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    iget-object v2, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_0

    .line 167
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 172
    :cond_0
    const-string v2, "ISPANORAMA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->jniFoos:Lcom/htc/lib1/panoviewer/JNIFoos;

    iget-object v3, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/lib1/panoviewer/JNIFoos;->checkPano(Ljava/io/FileDescriptor;)I

    move-result v2

    .line 176
    const-string v3, "PANO+DR"

    const-string v4, "KEY P+: %d"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_1
    if-lez v2, :cond_1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public extractMetaDataAsDouble(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 194
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public extractMetaDataAsFloat(Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public extractMetaDataAsInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public extractMetaDataAsIntArray(Ljava/lang/String;)[I
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    .line 225
    const/4 v0, 0x0

    .line 256
    :cond_0
    :goto_0
    return-object v0

    .line 229
    :cond_1
    const/4 v0, 0x0

    .line 231
    const-string v3, "INTERNALRECTANGLE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    new-array v0, v9, [I

    .line 234
    iget-object v3, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->jniFoos:Lcom/htc/lib1/panoviewer/JNIFoos;

    iget-object v4, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/htc/lib1/panoviewer/JNIFoos;->getRoiRect(Ljava/io/FileDescriptor;[I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 235
    aget v3, v0, v7

    if-gtz v3, :cond_2

    aget v3, v0, v8

    if-lez v3, :cond_4

    .line 237
    :cond_2
    const-string v3, "PANO+DR"

    const-string v4, "%d, %d, %d, %d"

    new-array v5, v9, [Ljava/lang/Object;

    aget v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    aget v6, v0, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aget v6, v0, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aget v6, v0, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_1
    if-nez v1, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 253
    const-string v1, "PANO+DR"

    const-string v3, "NULL result !"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_3
    const-string v3, "XMPINFO"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 244
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 245
    iget-object v3, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->jniFoos:Lcom/htc/lib1/panoviewer/JNIFoos;

    iget-object v4, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/htc/lib1/panoviewer/JNIFoos;->getXmpInfo(Ljava/io/FileDescriptor;[I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 247
    const-string v3, "PANO+DR"

    const-string v4, "%d, %d, %d, %d, %d, %d, %d"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    aget v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    aget v6, v0, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aget v6, v0, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aget v6, v0, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    aget v6, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x5

    const/4 v7, 0x5

    aget v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const/4 v7, 0x6

    aget v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public extractMetaDataAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, ""

    return-object v0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/lib1/panoviewer/DataRetriever;->setDataSource(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Landroid/os/ParcelFileDescriptor;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 65
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return v1

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 70
    iget-object v2, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->jniFoos:Lcom/htc/lib1/panoviewer/JNIFoos;

    iget-object v3, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/lib1/panoviewer/JNIFoos;->setFd(Ljava/io/FileDescriptor;)I

    move-result v2

    .line 72
    if-nez v2, :cond_1

    .line 73
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/lib1/panoviewer/DataRetriever;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 76
    :cond_1
    const-string v3, "PANO+DR"

    const-string v4, "SD:%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-lez v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setDataSource(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/lib1/panoviewer/DataRetriever;->setDataSource(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
