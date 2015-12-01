.class public abstract Lcom/htc/camera/gl/Shape;
.super Lcom/htc/camera/gl/Geometry;
.source "Shape.java"


# instance fields
.field private m_Fill:Lcom/htc/camera/gl/Brush;

.field private final m_FragmentShaderChangedListener:Lcom/htc/camera/gl/a;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/camera/gl/Geometry;-><init>()V

    .line 12
    new-instance v0, Lcom/htc/camera/gl/Shape$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/gl/Shape$1;-><init>(Lcom/htc/camera/gl/Shape;)V

    iput-object v0, p0, Lcom/htc/camera/gl/Shape;->m_FragmentShaderChangedListener:Lcom/htc/camera/gl/a;

    .line 26
    return-void
.end method


# virtual methods
.method protected getFragmentShader()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/camera/gl/Shape;->m_Fill:Lcom/htc/camera/gl/Brush;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/htc/camera/gl/Shape;->m_Fill:Lcom/htc/camera/gl/Brush;

    invoke-virtual {v0}, Lcom/htc/camera/gl/Brush;->getFragmentShader()I

    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/gl/Shape;->getDefaultFragmentShader()I

    move-result v0

    goto :goto_0
.end method

.method protected getVertexShader()I
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/htc/camera/gl/Shape;->getDefaultVertexShader()I

    move-result v0

    return v0
.end method

.method protected onDraw([F)V
    .locals 10

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/camera/gl/Shape;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 75
    invoke-virtual {p0}, Lcom/htc/camera/gl/Shape;->getVertexCount()I

    move-result v8

    .line 76
    if-eqz v5, :cond_0

    const/4 v0, 0x1

    if-gt v8, v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/gl/Shape;->getGLProgram()I

    move-result v9

    .line 81
    invoke-static {v9}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 84
    iget-object v0, p0, Lcom/htc/camera/gl/Shape;->m_Fill:Lcom/htc/camera/gl/Brush;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/gl/Shape;->m_Fill:Lcom/htc/camera/gl/Brush;

    invoke-virtual {v0, v8}, Lcom/htc/camera/gl/Brush;->prepareTextureCoordinatesBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 87
    :goto_1
    const-string v0, "vPosition"

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 90
    if-eqz v6, :cond_2

    .line 92
    const-string v1, "vTexCoord"

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 93
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    :cond_2
    move v7, v1

    .line 97
    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 98
    if-eqz v6, :cond_3

    .line 99
    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 102
    :cond_3
    const-string v1, "uMVPMatrix"

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 103
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, p1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 106
    iget-object v1, p0, Lcom/htc/camera/gl/Shape;->m_Fill:Lcom/htc/camera/gl/Brush;

    if-eqz v1, :cond_4

    .line 107
    iget-object v1, p0, Lcom/htc/camera/gl/Shape;->m_Fill:Lcom/htc/camera/gl/Brush;

    invoke-virtual {v1, v9, p1}, Lcom/htc/camera/gl/Brush;->beginDrawFragment(I[F)V

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/gl/Shape;->isDepthTestEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 116
    :goto_2
    const/16 v1, 0xb44

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 117
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v2, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 120
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 121
    if-eqz v6, :cond_5

    .line 122
    invoke-static {v7}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/gl/Shape;->m_Fill:Lcom/htc/camera/gl/Brush;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/camera/gl/Shape;->m_Fill:Lcom/htc/camera/gl/Brush;

    invoke-virtual {v0, v9}, Lcom/htc/camera/gl/Brush;->endDrawFragment(I)V

    goto :goto_0

    .line 84
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 113
    :cond_7
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_2
.end method

.method protected onGLProgramCreated(I)V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/htc/camera/gl/Shape;->getVertexShader()I

    move-result v0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/camera/gl/Shape;->getFragmentShader()I

    move-result v0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 137
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 138
    return-void
.end method

.method public final setFill(Lcom/htc/camera/gl/Brush;)V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/htc/camera/gl/Shape;->threadAccessCheck()V

    .line 146
    iget-object v0, p0, Lcom/htc/camera/gl/Shape;->m_Fill:Lcom/htc/camera/gl/Brush;

    if-eq v0, p1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/htc/camera/gl/Shape;->m_Fill:Lcom/htc/camera/gl/Brush;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/camera/gl/Shape;->m_Fill:Lcom/htc/camera/gl/Brush;

    iget-object v1, p0, Lcom/htc/camera/gl/Shape;->m_FragmentShaderChangedListener:Lcom/htc/camera/gl/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Brush;->removeFragmentShaderChangedListener(Lcom/htc/camera/gl/a;)V

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/gl/Shape;->m_Fill:Lcom/htc/camera/gl/Brush;

    .line 154
    invoke-virtual {p0}, Lcom/htc/camera/gl/Shape;->invalidateGLProgram()V

    .line 155
    if-eqz p1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/htc/camera/gl/Shape;->m_FragmentShaderChangedListener:Lcom/htc/camera/gl/a;

    invoke-virtual {p1, v0}, Lcom/htc/camera/gl/Brush;->addFragmentShaderChangedListener(Lcom/htc/camera/gl/a;)V

    .line 158
    :cond_1
    return-void
.end method
