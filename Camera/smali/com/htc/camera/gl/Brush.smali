.class public abstract Lcom/htc/camera/gl/Brush;
.super Lcom/htc/camera/ThreadDependencyObject;
.source "Brush.java"


# static fields
.field public static final SHADER_SHARED_TEXCOORD_VAR_NAME:Ljava/lang/String; = "vSharedTexCoord"


# instance fields
.field private m_FragmentShader:I

.field private m_IsDrawingFragment:Z

.field private m_IsInvalidFragmentShader:Z

.field private m_IsReleased:Z

.field private m_ShaderChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/gl/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/ThreadDependencyObject;-><init>()V

    return-void
.end method


# virtual methods
.method public final addFragmentShaderChangedListener(Lcom/htc/camera/gl/a;)V
    .locals 2

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 49
    const-string v0, "listener"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/gl/Brush;->threadAccessCheck()V

    .line 55
    iget-boolean v0, p0, Lcom/htc/camera/gl/Brush;->m_IsReleased:Z

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/htc/camera/gl/Brush;->TAG:Ljava/lang/String;

    const-string v1, "addFragmentShaderChangedListener() - Brush is released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/gl/Brush;->m_ShaderChangedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/gl/Brush;->m_ShaderChangedListeners:Ljava/util/ArrayList;

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/gl/Brush;->m_ShaderChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final beginDrawFragment(I[F)V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/htc/camera/gl/Brush;->threadAccessCheck()V

    .line 74
    iget-boolean v0, p0, Lcom/htc/camera/gl/Brush;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/htc/camera/gl/Brush;->TAG:Ljava/lang/String;

    const-string v1, "beginDrawingFragment() - Brush is released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/gl/Brush;->m_IsDrawingFragment:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/htc/camera/gl/Brush;->TAG:Ljava/lang/String;

    const-string v1, "beginDrawingFragment() - Brush is using"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 86
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/gl/Brush;->onBeginDrawFragment(I[F)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/gl/Brush;->m_IsDrawingFragment:Z

    .line 88
    return-void
.end method

.method public final endDrawFragment(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/htc/camera/gl/Brush;->threadAccessCheck()V

    .line 97
    iget-boolean v0, p0, Lcom/htc/camera/gl/Brush;->m_IsDrawingFragment:Z

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/camera/gl/Brush;->onEndDrawFragment(I)V

    .line 102
    iput-boolean v1, p0, Lcom/htc/camera/gl/Brush;->m_IsDrawingFragment:Z

    .line 105
    iget-boolean v0, p0, Lcom/htc/camera/gl/Brush;->m_IsInvalidFragmentShader:Z

    if-eqz v0, :cond_0

    .line 107
    iput-boolean v1, p0, Lcom/htc/camera/gl/Brush;->m_IsInvalidFragmentShader:Z

    .line 108
    invoke-virtual {p0}, Lcom/htc/camera/gl/Brush;->invalidateFragmentShader()V

    goto :goto_0
.end method

.method public final getFragmentShader()I
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/htc/camera/gl/Brush;->threadAccessCheck()V

    .line 119
    iget-boolean v0, p0, Lcom/htc/camera/gl/Brush;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/htc/camera/gl/Brush;->TAG:Ljava/lang/String;

    const-string v1, "getFragmentShader() - Use released brush"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    .line 126
    :cond_0
    iget v0, p0, Lcom/htc/camera/gl/Brush;->m_FragmentShader:I

    if-nez v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/htc/camera/gl/Brush;->onCreateFragmentShader()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/gl/Brush;->m_FragmentShader:I

    .line 128
    :cond_1
    iget v0, p0, Lcom/htc/camera/gl/Brush;->m_FragmentShader:I

    goto :goto_0
.end method

.method public abstract hasAlphaBlending()Z
.end method

.method protected final invalidateFragmentShader()V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/htc/camera/gl/Brush;->threadAccessCheck()V

    .line 145
    iget v0, p0, Lcom/htc/camera/gl/Brush;->m_FragmentShader:I

    if-eqz v0, :cond_0

    .line 148
    iget-boolean v0, p0, Lcom/htc/camera/gl/Brush;->m_IsDrawingFragment:Z

    if-eqz v0, :cond_1

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/gl/Brush;->m_IsInvalidFragmentShader:Z

    .line 165
    :cond_0
    return-void

    .line 155
    :cond_1
    iget v0, p0, Lcom/htc/camera/gl/Brush;->m_FragmentShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/gl/Brush;->m_FragmentShader:I

    .line 159
    iget-object v0, p0, Lcom/htc/camera/gl/Brush;->m_ShaderChangedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/gl/Brush;->m_ShaderChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/camera/gl/Brush;->m_ShaderChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/htc/camera/gl/Brush;->m_ShaderChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/a;

    invoke-interface {v0, p0}, Lcom/htc/camera/gl/a;->onFragmentShaderChanged(Lcom/htc/camera/gl/Brush;)V

    .line 161
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public final isReleased()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/htc/camera/gl/Brush;->m_IsReleased:Z

    return v0
.end method

.method protected onBeginDrawFragment(I[F)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method protected onCreateFragmentShader()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 187
    const v1, 0x8b30

    invoke-static {v1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 188
    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/htc/camera/gl/Brush;->TAG:Ljava/lang/String;

    const-string v2, "onCreateShader() - Cannot create shader"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    return v0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/gl/Brush;->onCreateFragmentShaderScript()Ljava/lang/String;

    move-result-object v2

    .line 196
    if-nez v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/htc/camera/gl/Brush;->TAG:Ljava/lang/String;

    const-string v3, "onCreateShader() - No shader script"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 205
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    move v0, v1

    .line 208
    goto :goto_0
.end method

.method protected abstract onCreateFragmentShaderScript()Ljava/lang/String;
.end method

.method protected onEndDrawFragment(I)V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method protected onPrepareTextureCoordinatesBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method protected prepareTextureCoordinatesBuffer(I)Ljava/nio/FloatBuffer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/htc/camera/gl/Brush;->threadAccessCheck()V

    .line 237
    iget-boolean v1, p0, Lcom/htc/camera/gl/Brush;->m_IsReleased:Z

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/htc/camera/gl/Brush;->TAG:Ljava/lang/String;

    const-string v2, "prepareTextureCoordinatesBuffer() - Brush is released"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_0
    return-object v0

    .line 242
    :cond_0
    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/htc/camera/gl/Brush;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareTextureCoordinatesBuffer() - Vertex count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/camera/gl/Brush;->onPrepareTextureCoordinatesBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/htc/camera/gl/Brush;->threadAccessCheck()V

    .line 259
    iget-boolean v0, p0, Lcom/htc/camera/gl/Brush;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/gl/Brush;->invalidateFragmentShader()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/gl/Brush;->m_ShaderChangedListeners:Ljava/util/ArrayList;

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/gl/Brush;->m_IsReleased:Z

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/gl/Brush;->m_IsDrawingFragment:Z

    goto :goto_0
.end method

.method public final removeFragmentShaderChangedListener(Lcom/htc/camera/gl/a;)V
    .locals 1

    .prologue
    .line 279
    if-nez p1, :cond_1

    .line 281
    const-string v0, "listener"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/gl/Brush;->threadAccessCheck()V

    .line 289
    iget-object v0, p0, Lcom/htc/camera/gl/Brush;->m_ShaderChangedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/htc/camera/gl/Brush;->m_ShaderChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
