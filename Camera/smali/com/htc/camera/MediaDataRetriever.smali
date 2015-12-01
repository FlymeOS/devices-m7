.class public Lcom/htc/camera/MediaDataRetriever;
.super Ljava/lang/Object;
.source "MediaDataRetriever.java"


# instance fields
.field private m_FilePath:Ljava/lang/String;

.field private m_IsReleased:Z

.field private m_PanoramaPlusDataRetriever:Lcom/htc/lib1/panoviewer/DataRetriever;

.field private m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_IsReleased:Z

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "MediaDataRetriever"

    const-string v1, "MediaDataRetriever() - path is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/MediaDataRetriever;->m_FilePath:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/htc/camera/MediaDataRetriever;->release()V

    .line 57
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 58
    return-void
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "MediaDataRetriever"

    const-string v1, "getFilePath() - Already released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPanoramaPlusThumbnailImage(II)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 142
    iget-boolean v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "MediaDataRetriever"

    const-string v1, "getPanoramaPlusThumbnailImage() - Already released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/MediaDataRetriever;->initializePanoramaPlusRetriever()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    :goto_0
    return-object v7

    .line 156
    :cond_1
    const/16 v3, 0x20

    .line 157
    const/4 v4, 0x2

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_PanoramaPlusDataRetriever:Lcom/htc/lib1/panoviewer/DataRetriever;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/lib1/panoviewer/DataRetriever;->decodeThumbnail(IIIIZLandroid/os/Bundle;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v7, v0

    .line 165
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 162
    const-string v1, "MediaDataRetriever"

    const-string v2, "getPanoramaPlusThumbnailImage() - Fail to decode thumbnail"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_1
.end method

.method public getZoeCoverJpeg()[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-boolean v1, p0, Lcom/htc/camera/MediaDataRetriever;->m_IsReleased:Z

    if-eqz v1, :cond_0

    .line 114
    const-string v0, "MediaDataRetriever"

    const-string v1, "getZoeCoverJpeg() - Already released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/MediaDataRetriever;->initializeZoeRetriever()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    :goto_0
    return-object v0

    .line 126
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/MediaDataRetriever;->m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;

    const-string v2, "ZJPG"

    iget-object v3, p0, Lcom/htc/camera/MediaDataRetriever;->m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;

    const-string v4, "ZCVR"

    invoke-virtual {v3, v4}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->extractHtcMetadataAsInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->extractHtcDataByIndexAsByteArray(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 131
    const-string v2, "MediaDataRetriever"

    const-string v3, "getZoeCoverJpeg() - Extract failed"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getZoePhotoSize()Lcom/htc/camera/imaging/Size;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-boolean v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "MediaDataRetriever"

    const-string v1, "getZoePhotoSize() - Already released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/MediaDataRetriever;->initializeZoeRetriever()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :goto_0
    return-object v1

    .line 95
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;

    const-string v2, "ZPTW"

    invoke-virtual {v0, v2}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->extractHtcMetadataAsInt(Ljava/lang/String;)I

    move-result v2

    .line 96
    iget-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;

    const-string v3, "ZPTH"

    invoke-virtual {v0, v3}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->extractHtcMetadataAsInt(Ljava/lang/String;)I

    move-result v3

    .line 97
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0, v2, v3}, Lcom/htc/camera/imaging/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 103
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    const-string v2, "MediaDataRetriever"

    const-string v3, "getZoePhotoSize() - Extract failed"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public initializePanoramaPlusRetriever()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    iget-boolean v2, p0, Lcom/htc/camera/MediaDataRetriever;->m_IsReleased:Z

    if-eqz v2, :cond_0

    .line 176
    const-string v0, "MediaDataRetriever"

    const-string v1, "initializePanoramaPlusRetriever() - Already released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/MediaDataRetriever;->m_PanoramaPlusDataRetriever:Lcom/htc/lib1/panoviewer/DataRetriever;

    if-eqz v2, :cond_2

    .line 205
    :cond_1
    :goto_0
    return v0

    .line 187
    :cond_2
    :try_start_0
    new-instance v2, Lcom/htc/lib1/panoviewer/DataRetriever;

    invoke-direct {v2}, Lcom/htc/lib1/panoviewer/DataRetriever;-><init>()V

    iput-object v2, p0, Lcom/htc/camera/MediaDataRetriever;->m_PanoramaPlusDataRetriever:Lcom/htc/lib1/panoviewer/DataRetriever;

    .line 188
    iget-object v2, p0, Lcom/htc/camera/MediaDataRetriever;->m_PanoramaPlusDataRetriever:Lcom/htc/lib1/panoviewer/DataRetriever;

    iget-object v3, p0, Lcom/htc/camera/MediaDataRetriever;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/lib1/panoviewer/DataRetriever;->setDataSource(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    iget-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_PanoramaPlusDataRetriever:Lcom/htc/lib1/panoviewer/DataRetriever;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/DataRetriever;->Release()I

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_PanoramaPlusDataRetriever:Lcom/htc/lib1/panoviewer/DataRetriever;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 194
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 199
    const-string v2, "MediaDataRetriever"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializePanoramaPlusRetriever() - Panorama+ Retriever parse error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/MediaDataRetriever;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maybe not an Panorama+ file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 200
    goto :goto_0

    .line 202
    :catch_1
    move-exception v0

    .line 204
    const-string v2, "MediaDataRetriever"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializePanoramaPlusRetriever() - Panorama+ Retriever parse error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/MediaDataRetriever;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maybe not an Panorama+ file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 205
    goto :goto_0
.end method

.method public initializeZoeRetriever()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 215
    iget-boolean v1, p0, Lcom/htc/camera/MediaDataRetriever;->m_IsReleased:Z

    if-eqz v1, :cond_0

    .line 217
    const-string v0, "MediaDataRetriever"

    const-string v1, "initializeZoeRetriever() - Already released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/MediaDataRetriever;->m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;

    if-eqz v1, :cond_1

    .line 247
    :goto_0
    return v0

    .line 228
    :cond_1
    :try_start_0
    new-instance v1, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;

    invoke-direct {v1}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/MediaDataRetriever;->m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;

    .line 229
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 230
    const-string v2, "htc-user"

    const-string v3, "htc-zoe"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v1, p0, Lcom/htc/camera/MediaDataRetriever;->m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;

    iget-object v2, p0, Lcom/htc/camera/MediaDataRetriever;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 236
    const-string v1, "MediaDataRetriever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeZoeRetriever() - Zoe Retriever parse error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/MediaDataRetriever;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maybe not an Zoe video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    iget-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;

    invoke-virtual {v0}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->release()V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;

    .line 244
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanoramaPlusImage()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 256
    iget-boolean v1, p0, Lcom/htc/camera/MediaDataRetriever;->m_IsReleased:Z

    if-eqz v1, :cond_0

    .line 258
    const-string v0, "MediaDataRetriever"

    const-string v1, "isPanoramaPlusImage() - Already released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/MediaDataRetriever;->initializePanoramaPlusRetriever()Z

    move-result v1

    if-nez v1, :cond_2

    .line 277
    :cond_1
    :goto_0
    return v0

    .line 269
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/MediaDataRetriever;->m_PanoramaPlusDataRetriever:Lcom/htc/lib1/panoviewer/DataRetriever;

    const-string v2, "ISPANORAMA"

    invoke-virtual {v1, v2}, Lcom/htc/lib1/panoviewer/DataRetriever;->extractMetaDataAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    const/4 v0, 0x1

    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 274
    const-string v2, "MediaDataRetriever"

    const-string v3, "isPanoramaPlusImage() - Check failed"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_IsReleased:Z

    return v0
.end method

.method public isZoeVideo()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 294
    iget-boolean v1, p0, Lcom/htc/camera/MediaDataRetriever;->m_IsReleased:Z

    if-eqz v1, :cond_0

    .line 296
    const-string v0, "MediaDataRetriever"

    const-string v1, "isZoeVideo() - Already released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/MediaDataRetriever;->initializeZoeRetriever()Z

    move-result v1

    if-nez v1, :cond_2

    .line 315
    :cond_1
    :goto_0
    return v0

    .line 307
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/MediaDataRetriever;->m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;

    invoke-virtual {v1}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->isZoe()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 312
    const-string v2, "MediaDataRetriever"

    const-string v3, "isZoeVideo() - Check failed"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_PanoramaPlusDataRetriever:Lcom/htc/lib1/panoviewer/DataRetriever;

    if-eqz v0, :cond_0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_PanoramaPlusDataRetriever:Lcom/htc/lib1/panoviewer/DataRetriever;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/DataRetriever;->Release()I

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_PanoramaPlusDataRetriever:Lcom/htc/lib1/panoviewer/DataRetriever;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;

    if-eqz v0, :cond_1

    .line 337
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;

    invoke-virtual {v0}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->release()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_ZoeDataRetriever:Lcom/htc/lib1/media/zoe/HtcZoeExtractor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 345
    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/MediaDataRetriever;->m_IsReleased:Z

    .line 346
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 330
    const-string v1, "MediaDataRetriever"

    const-string v2, "release() - Cannot release panorama+ data retriever"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 339
    :catch_1
    move-exception v0

    .line 341
    const-string v1, "MediaDataRetriever"

    const-string v2, "release() - Cannot release zoe data retriever"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
