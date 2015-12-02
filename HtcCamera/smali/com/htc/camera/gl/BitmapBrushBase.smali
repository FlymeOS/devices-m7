.class public abstract Lcom/htc/camera/gl/BitmapBrushBase;
.super Lcom/htc/camera/gl/Brush;
.source "BitmapBrushBase.java"


# static fields
.field private static final FRAGMENT_SHADER_SCRIPT:Ljava/lang/String; = "precision mediump float;uniform sampler2D sTexture;varying vec2 vSharedTexCoord;void main(){  gl_FragColor = texture2D(sTexture, vSharedTexCoord);}"

.field private static final NATIVE_PIXEL_FORMAT_ARGB8888:I = 0x2

.field private static final NATIVE_PIXEL_FORMAT_RGB565:I = 0x1


# instance fields
.field private m_BitmapConfig:Landroid/graphics/Bitmap$Config;

.field private m_BitmapHeight:I

.field private m_BitmapWidth:I

.field private m_PreparedTextureCoordCount:I

.field private m_SourceRect:Landroid/graphics/RectF;

.field private m_Texture:I

.field private m_TextureCoordBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/htc/camera/gl/Brush;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v2, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_SourceRect:Landroid/graphics/RectF;

    .line 48
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/htc/camera/gl/Brush;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v2, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_SourceRect:Landroid/graphics/RectF;

    .line 51
    invoke-virtual {p0, p1}, Lcom/htc/camera/gl/BitmapBrushBase;->updateBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    return-void
.end method

.method private native updateBitmap(IIIIJ)V
.end method


# virtual methods
.method public final getBitmapHeight()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapHeight:I

    return v0
.end method

.method public final getBitmapWidth()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapWidth:I

    return v0
.end method

.method public hasAlphaBlending()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_1

    :goto_1
    or-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected onBeginDrawFragment(I[F)V
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_Texture:I

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 89
    :cond_0
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 90
    const/16 v0, 0xde1

    iget v1, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_Texture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 93
    const-string v0, "sTexture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 94
    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->TAG:Ljava/lang/String;

    const-string v1, "onBeginDrawFragment() - Cannot get handle for \'sTexture\'"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0
.end method

.method protected onCreateFragmentShaderScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "precision mediump float;uniform sampler2D sTexture;varying vec2 vSharedTexCoord;void main(){  gl_FragColor = texture2D(sTexture, vSharedTexCoord);}"

    return-object v0
.end method

.method protected onPrepareTextureCoordinatesBuffer(I)Ljava/nio/FloatBuffer;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 120
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v2, p1, 0x2

    if-ge v0, v2, :cond_1

    .line 122
    :cond_0
    mul-int/lit8 v0, p1, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 123
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    .line 128
    :cond_1
    iget v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_PreparedTextureCoordCount:I

    if-ge v0, p1, :cond_3

    .line 130
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_SourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 131
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_SourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 132
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_SourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 133
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_SourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v0, v1

    .line 134
    :goto_0
    if-ge v0, p1, :cond_2

    .line 136
    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :pswitch_0
    iget-object v6, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 140
    iget-object v6, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 143
    :pswitch_1
    iget-object v6, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 144
    iget-object v6, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 147
    :pswitch_2
    iget-object v6, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 148
    iget-object v6, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 151
    :pswitch_3
    iget-object v6, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 152
    iget-object v6, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    iput p1, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_PreparedTextureCoordCount:I

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    return-object v0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/htc/camera/gl/BitmapBrushBase;->threadAccessCheck()V

    .line 327
    iget v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_Texture:I

    if-eqz v0, :cond_0

    .line 329
    new-array v0, v3, [I

    iget v1, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_Texture:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 330
    iput v2, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_Texture:I

    .line 334
    :cond_0
    invoke-super {p0}, Lcom/htc/camera/gl/Brush;->release()V

    .line 335
    return-void
.end method

.method public setSourceRect(FFFF)V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/htc/camera/gl/BitmapBrushBase;->threadAccessCheck()V

    .line 177
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_SourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_PreparedTextureCoordCount:I

    .line 179
    return-void
.end method

.method public setSourceRect(Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/gl/BitmapBrushBase;->setSourceRect(FFFF)V

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0, v0, v1, v1, v0}, Lcom/htc/camera/gl/BitmapBrushBase;->setSourceRect(FFFF)V

    goto :goto_0
.end method

.method protected final updateBitmap(IILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/htc/camera/gl/BitmapBrushBase;->threadAccessCheck()V

    .line 233
    invoke-virtual {p0}, Lcom/htc/camera/gl/BitmapBrushBase;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->TAG:Ljava/lang/String;

    const-string v1, "updateBitmap() - Brush is released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 240
    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-nez p3, :cond_2

    .line 241
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 244
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 245
    iput v1, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapWidth:I

    .line 246
    iput v1, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapHeight:I

    .line 249
    if-eqz p4, :cond_4

    .line 252
    iget v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_Texture:I

    if-nez v0, :cond_3

    .line 254
    new-array v0, v4, [I

    .line 255
    invoke-static {v4, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 256
    aget v0, v0, v1

    iput v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_Texture:I

    .line 257
    iget v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_Texture:I

    if-nez v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->TAG:Ljava/lang/String;

    const-string v1, "updateBitmap() - Fail to create texture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_3
    new-instance v7, Lcom/htc/camera/PinnedObject;

    invoke-direct {v7, p4}, Lcom/htc/camera/PinnedObject;-><init>(Ljava/lang/Object;)V

    .line 269
    :try_start_0
    sget-object v0, Lcom/htc/camera/gl/BitmapBrushBase$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p3}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lcom/htc/camera/PinnedObject;->release()V

    throw v0

    .line 275
    :pswitch_0
    const/4 v4, 0x2

    .line 280
    :pswitch_1
    :try_start_1
    iget v1, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_Texture:I

    invoke-virtual {v7}, Lcom/htc/camera/PinnedObject;->getObjectAddress()J

    move-result-wide v5

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/gl/BitmapBrushBase;->updateBitmap(IIIIJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    invoke-virtual {v7}, Lcom/htc/camera/PinnedObject;->release()V

    .line 311
    :goto_1
    iput p1, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapWidth:I

    .line 312
    iput p2, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapHeight:I

    .line 313
    iput-object p3, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->TAG:Ljava/lang/String;

    const-string v1, "updateBitmap() - No pixel data"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final updateBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const v3, 0x46180400    # 9729.0f

    const/16 v2, 0xde1

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/htc/camera/gl/BitmapBrushBase;->threadAccessCheck()V

    .line 188
    invoke-virtual {p0}, Lcom/htc/camera/gl/BitmapBrushBase;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->TAG:Ljava/lang/String;

    const-string v1, "updateBitmap() - Brush is released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 196
    iput v1, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapWidth:I

    .line 197
    iput v1, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapHeight:I

    .line 200
    if-eqz p1, :cond_2

    .line 203
    iget v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_Texture:I

    if-nez v0, :cond_1

    .line 205
    new-array v0, v4, [I

    .line 206
    invoke-static {v4, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 207
    aget v0, v0, v1

    iput v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_Texture:I

    .line 208
    iget v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_Texture:I

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->TAG:Ljava/lang/String;

    const-string v1, "updateBitmap() - Fail to create texture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    iget v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_Texture:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 217
    const/16 v0, 0x2801

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 218
    const/16 v0, 0x2800

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 219
    invoke-static {v2, v1, p1, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapWidth:I

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapHeight:I

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/gl/BitmapBrushBase;->TAG:Ljava/lang/String;

    const-string v1, "updateBitmap() - No bitmap"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
