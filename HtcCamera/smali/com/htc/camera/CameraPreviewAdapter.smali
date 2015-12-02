.class public final Lcom/htc/camera/CameraPreviewAdapter;
.super Lcom/htc/camera/ThreadDependencyObject;
.source "CameraPreviewAdapter.java"


# instance fields
.field private m_CameraOrientation:I

.field private m_IsEnabled:Z

.field private volatile m_IsReleased:Z

.field private m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private m_Texture:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/camera/ThreadDependencyObject;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_IsEnabled:Z

    .line 27
    invoke-direct {p0}, Lcom/htc/camera/CameraPreviewAdapter;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_Texture:I

    .line 30
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_Texture:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 41
    return-void
.end method

.method private createTexture()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 72
    new-array v0, v1, [I

    .line 73
    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 74
    aget v1, v0, v4

    if-nez v1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to create texture"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/CameraPreviewAdapter;->TAG:Ljava/lang/String;

    const-string v2, "createTexture() - Texture = "

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    aget v0, v0, v4

    return v0
.end method


# virtual methods
.method public bindToTexture()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/camera/CameraPreviewAdapter;->threadAccessCheck()V

    .line 50
    iget-boolean v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->TAG:Ljava/lang/String;

    const-string v1, "bindToTexture()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_Texture:I

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->TAG:Ljava/lang/String;

    const-string v1, "bindToTexture() - Release current texture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/htc/camera/CameraPreviewAdapter;->releaseTexture()V

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/CameraPreviewAdapter;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_Texture:I

    .line 64
    iget-object v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_Texture:I

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    goto :goto_0
.end method

.method public getCameraOrientation()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_CameraOrientation:I

    return v0
.end method

.method public getLastPreviewFrameTime()J
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 99
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTexture()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_Texture:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_IsEnabled:Z

    return v0
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_IsReleased:Z

    return v0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/htc/camera/CameraPreviewAdapter;->threadAccessCheck()V

    .line 151
    iget-boolean v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 167
    :cond_1
    iget v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_Texture:I

    if-eqz v0, :cond_2

    .line 169
    new-array v0, v4, [I

    iget v1, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_Texture:I

    aput v1, v0, v3

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 170
    iput v3, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_Texture:I

    .line 174
    :cond_2
    iput-boolean v4, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_IsReleased:Z

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 163
    iget-object v1, p0, Lcom/htc/camera/CameraPreviewAdapter;->TAG:Ljava/lang/String;

    const-string v2, "release() - Fail to release surface texture"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public releaseTexture()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/htc/camera/CameraPreviewAdapter;->threadAccessCheck()V

    .line 186
    iget-object v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->TAG:Ljava/lang/String;

    const-string v1, "releaseTexture()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_Texture:I

    if-eqz v0, :cond_0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    new-array v0, v4, [I

    iget v1, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_Texture:I

    aput v1, v0, v3

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 200
    iput v3, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_Texture:I

    .line 202
    :cond_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 197
    iget-object v1, p0, Lcom/htc/camera/CameraPreviewAdapter;->TAG:Ljava/lang/String;

    const-string v2, "releaseTexture() - Fail to detach from EGL context"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updatePreviewFrame()V
    .locals 5

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/htc/camera/CameraPreviewAdapter;->threadAccessCheck()V

    .line 232
    iget-boolean v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_IsEnabled:Z

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_Texture:I

    if-eqz v0, :cond_0

    .line 236
    sget-boolean v0, Lcom/htc/camera/ui/IOpenGLViewfinder;->PROFILE_GL_OPERATION:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 237
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 238
    sget-boolean v2, Lcom/htc/camera/ui/IOpenGLViewfinder;->PROFILE_GL_OPERATION:Z

    if-eqz v2, :cond_0

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 241
    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/htc/camera/CameraPreviewAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePreviewFrame() - Take "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms to call updateTexImage(), SurfaceTexture : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraPreviewAdapter;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method
