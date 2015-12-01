.class public final Lcom/htc/camera/gl/CameraPreviewBrush;
.super Lcom/htc/camera/gl/Brush;
.source "CameraPreviewBrush.java"


# instance fields
.field private m_IsPreviewAdapterEnabled:Z

.field private m_LastPreviewFrameTime:J

.field private m_PreparedCameraOrientation:I

.field private m_PreparedTexCoordCount:I

.field private m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

.field private m_SourceRect:Landroid/graphics/RectF;

.field private final m_TexCoordArray:[F

.field private m_TexCoordBuffer:Ljava/nio/FloatBuffer;

.field private final m_TransformMatrix:[F


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraPreviewAdapter;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/htc/camera/gl/Brush;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreparedCameraOrientation:I

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v2, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_SourceRect:Landroid/graphics/RectF;

    .line 75
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordArray:[F

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TransformMatrix:[F

    .line 84
    if-nez p1, :cond_0

    .line 86
    const-string v0, "adapter"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    .line 90
    invoke-virtual {p1}, Lcom/htc/camera/CameraPreviewAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_IsPreviewAdapterEnabled:Z

    .line 91
    return-void
.end method


# virtual methods
.method public hasAlphaBlending()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected onBeginDrawFragment(I[F)V
    .locals 6

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x0

    const v2, 0x8d65

    .line 109
    iget-object v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->getTexture()I

    move-result v0

    .line 110
    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->TAG:Ljava/lang/String;

    const-string v1, "onBeginDrawFragment() - No texture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 117
    :cond_0
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 118
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 119
    const/16 v0, 0x2802

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 120
    const/16 v0, 0x2803

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 121
    const/16 v0, 0x2801

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 122
    const/16 v0, 0x2800

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 125
    iget-object v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 128
    const-string v0, "sTexture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 129
    const-string v1, "uTransform"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 130
    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->TAG:Ljava/lang/String;

    const-string v1, "onBeginDrawFragment() - Cannot get handle for \'sTexture\'"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    if-nez v1, :cond_2

    .line 137
    iget-object v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->TAG:Ljava/lang/String;

    const-string v1, "onBeginDrawFragment() - Cannot get handle for \'transformHandle\'"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 143
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TransformMatrix:[F

    invoke-static {v1, v0, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_0
.end method

.method protected onCreateFragmentShaderScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_IsPreviewAdapterEnabled:Z

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "#extension GL_OES_EGL_image_external : require \nprecision highp float;uniform samplerExternalOES sTexture;uniform mat4 uTransform;varying vec2 vSharedTexCoord;void main(){  vec4 coord4 = uTransform * vec4 (vSharedTexCoord.xy, 0, 1);  gl_FragColor = texture2D(sTexture, coord4.xy);}"

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "precision mediump float;void main(){  gl_FragColor = vec4 (0, 0, 0, 1);}"

    goto :goto_0
.end method

.method protected onEndDrawFragment(I)V
    .locals 4

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/htc/camera/gl/Brush;->onEndDrawFragment(I)V

    .line 167
    iget-object v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->isEnabled()Z

    move-result v0

    .line 168
    iget-boolean v1, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_IsPreviewAdapterEnabled:Z

    if-eq v0, v1, :cond_0

    .line 170
    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->getLastPreviewFrameTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_LastPreviewFrameTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_IsPreviewAdapterEnabled:Z

    .line 175
    invoke-virtual {p0}, Lcom/htc/camera/gl/CameraPreviewBrush;->invalidateFragmentShader()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->getLastPreviewFrameTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_LastPreviewFrameTime:J

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_IsPreviewAdapterEnabled:Z

    .line 182
    invoke-virtual {p0}, Lcom/htc/camera/gl/CameraPreviewBrush;->invalidateFragmentShader()V

    goto :goto_0
.end method

.method protected onPrepareTextureCoordinatesBuffer(I)Ljava/nio/FloatBuffer;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 194
    iget-boolean v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_IsPreviewAdapterEnabled:Z

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 252
    :goto_0
    return-object v0

    .line 198
    :cond_0
    invoke-static {v8, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_2

    .line 201
    :cond_1
    mul-int/lit8 v1, v0, 0x4

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 202
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 203
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 207
    :cond_2
    iget v1, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreparedTexCoordCount:I

    if-lt v1, v0, :cond_3

    iget v1, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreparedCameraOrientation:I

    iget-object v2, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v2}, Lcom/htc/camera/CameraPreviewAdapter;->getCameraOrientation()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewAdapter;->getCameraOrientation()I

    move-result v1

    iput v1, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreparedCameraOrientation:I

    .line 232
    iget-object v1, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_SourceRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 233
    iget-object v2, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_SourceRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 234
    iget-object v3, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_SourceRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 235
    iget-object v4, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_SourceRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 236
    iget-object v5, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordArray:[F

    aput v3, v5, v7

    .line 237
    iget-object v5, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordArray:[F

    const/4 v6, 0x1

    aput v4, v5, v6

    .line 238
    iget-object v5, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordArray:[F

    const/4 v6, 0x2

    aput v3, v5, v6

    .line 239
    iget-object v3, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordArray:[F

    const/4 v5, 0x3

    aput v2, v3, v5

    .line 240
    iget-object v3, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordArray:[F

    aput v1, v3, v8

    .line 241
    iget-object v3, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordArray:[F

    const/4 v5, 0x5

    aput v4, v3, v5

    .line 242
    iget-object v3, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordArray:[F

    const/4 v4, 0x6

    aput v1, v3, v4

    .line 243
    iget-object v1, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordArray:[F

    const/4 v3, 0x7

    aput v2, v1, v3

    .line 246
    iget-object v1, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordArray:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 247
    iget-object v1, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 248
    iput v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreparedTexCoordCount:I

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_TexCoordBuffer:Ljava/nio/FloatBuffer;

    goto/16 :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lcom/htc/camera/gl/Brush;->release()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    .line 263
    return-void
.end method

.method public setSourceRect(FFFF)V
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/htc/camera/gl/CameraPreviewBrush;->threadAccessCheck()V

    .line 278
    iget-object v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_SourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/gl/CameraPreviewBrush;->m_PreparedTexCoordCount:I

    .line 280
    return-void
.end method
