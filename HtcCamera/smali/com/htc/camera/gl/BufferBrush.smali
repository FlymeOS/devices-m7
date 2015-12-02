.class public Lcom/htc/camera/gl/BufferBrush;
.super Lcom/htc/camera/gl/Brush;
.source "BufferBrush.java"


# instance fields
.field private m_IsWaitingForNextFrame:Z

.field private m_LastFrameTime:J

.field private m_PreparedTextureCoordCount:I

.field private m_SourceRect:Landroid/graphics/RectF;

.field private m_Surface:Landroid/view/Surface;

.field private m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private m_Texture:I

.field private m_TextureCoordBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/htc/camera/gl/Brush;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v2, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_SourceRect:Landroid/graphics/RectF;

    .line 56
    new-array v0, v4, [I

    .line 57
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 58
    aget v0, v0, v3

    iput v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_Texture:I

    .line 59
    iget v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_Texture:I

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->TAG:Ljava/lang/String;

    const-string v1, "Fail to create texture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to create texture"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/htc/camera/gl/BufferBrush;->m_Texture:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 67
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/htc/camera/gl/BufferBrush;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_Surface:Landroid/view/Surface;

    .line 68
    return-void
.end method


# virtual methods
.method public final getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_Surface:Landroid/view/Surface;

    return-object v0
.end method

.method public hasAlphaBlending()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method protected onBeginDrawFragment(I[F)V
    .locals 9

    .prologue
    const v8, 0x812f

    const/16 v7, 0x2601

    const/4 v1, 0x0

    const v6, 0x8d65

    .line 94
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 95
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    .line 96
    iget-wide v4, p0, Lcom/htc/camera/gl/BufferBrush;->m_LastFrameTime:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 97
    :goto_0
    iput-wide v2, p0, Lcom/htc/camera/gl/BufferBrush;->m_LastFrameTime:J

    .line 100
    iget-boolean v2, p0, Lcom/htc/camera/gl/BufferBrush;->m_IsWaitingForNextFrame:Z

    if-eqz v2, :cond_0

    .line 102
    if-eqz v0, :cond_1

    .line 104
    iput-boolean v1, p0, Lcom/htc/camera/gl/BufferBrush;->m_IsWaitingForNextFrame:Z

    .line 105
    invoke-virtual {p0}, Lcom/htc/camera/gl/BufferBrush;->invalidateFragmentShader()V

    .line 112
    :cond_0
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 113
    iget v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_Texture:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 114
    const/16 v0, 0x2802

    invoke-static {v6, v0, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 115
    const/16 v0, 0x2803

    invoke-static {v6, v0, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 116
    const/16 v0, 0x2801

    invoke-static {v6, v0, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 117
    const/16 v0, 0x2800

    invoke-static {v6, v0, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 120
    const-string v0, "sTexture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 121
    if-nez v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->TAG:Ljava/lang/String;

    const-string v1, "onBeginDrawFragment() - Cannot get handle for \'sTexture\'"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 96
    goto :goto_0

    .line 128
    :cond_3
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_1
.end method

.method protected onCreateFragmentShaderScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_IsWaitingForNextFrame:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "precision mediump float;void main(){  gl_FragColor = vec4(0, 0, 0, 1);}"

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "#extension GL_OES_EGL_image_external : require \nprecision highp float;uniform samplerExternalOES sTexture;varying vec2 vSharedTexCoord;void main(){  gl_FragColor = texture2D(sTexture, vSharedTexCoord);}"

    goto :goto_0
.end method

.method protected onPrepareTextureCoordinatesBuffer(I)Ljava/nio/FloatBuffer;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 149
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v2, p1, 0x2

    if-ge v0, v2, :cond_1

    .line 151
    :cond_0
    mul-int/lit8 v0, p1, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 152
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    .line 157
    :cond_1
    iget v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_PreparedTextureCoordCount:I

    if-ge v0, p1, :cond_3

    .line 159
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_SourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 160
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_SourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 161
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_SourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 162
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_SourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v0, v1

    .line 163
    :goto_0
    if-ge v0, p1, :cond_2

    .line 165
    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :pswitch_0
    iget-object v6, p0, Lcom/htc/camera/gl/BufferBrush;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 169
    iget-object v6, p0, Lcom/htc/camera/gl/BufferBrush;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 172
    :pswitch_1
    iget-object v6, p0, Lcom/htc/camera/gl/BufferBrush;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 173
    iget-object v6, p0, Lcom/htc/camera/gl/BufferBrush;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 176
    :pswitch_2
    iget-object v6, p0, Lcom/htc/camera/gl/BufferBrush;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 177
    iget-object v6, p0, Lcom/htc/camera/gl/BufferBrush;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 180
    :pswitch_3
    iget-object v6, p0, Lcom/htc/camera/gl/BufferBrush;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 181
    iget-object v6, p0, Lcom/htc/camera/gl/BufferBrush;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    iput p1, p0, Lcom/htc/camera/gl/BufferBrush;->m_PreparedTextureCoordCount:I

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_TextureCoordBuffer:Ljava/nio/FloatBuffer;

    return-object v0

    .line 165
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
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/htc/camera/gl/BufferBrush;->threadAccessCheck()V

    .line 203
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_Surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 206
    iput-object v1, p0, Lcom/htc/camera/gl/BufferBrush;->m_Surface:Landroid/view/Surface;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 213
    iput-object v1, p0, Lcom/htc/camera/gl/BufferBrush;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 217
    :cond_1
    iget v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_Texture:I

    if-eqz v0, :cond_2

    .line 219
    new-array v0, v3, [I

    iget v1, p0, Lcom/htc/camera/gl/BufferBrush;->m_Texture:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 220
    iput v2, p0, Lcom/htc/camera/gl/BufferBrush;->m_Texture:I

    .line 224
    :cond_2
    invoke-super {p0}, Lcom/htc/camera/gl/Brush;->release()V

    .line 225
    return-void
.end method

.method public setSourceRect(FFFF)V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/htc/camera/gl/BufferBrush;->threadAccessCheck()V

    .line 240
    iget-object v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_SourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/gl/BufferBrush;->m_PreparedTextureCoordCount:I

    .line 242
    return-void
.end method

.method public setSourceRect(Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 232
    if-eqz p1, :cond_0

    .line 233
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/gl/BufferBrush;->setSourceRect(FFFF)V

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0, v0, v1, v1, v0}, Lcom/htc/camera/gl/BufferBrush;->setSourceRect(FFFF)V

    goto :goto_0
.end method
