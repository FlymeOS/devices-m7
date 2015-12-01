.class public abstract Lcom/htc/camera/gl/Line;
.super Lcom/htc/camera/gl/Geometry;
.source "Line.java"


# instance fields
.field private m_Stroke:Lcom/htc/camera/gl/Brush;

.field private m_Thickness:F


# virtual methods
.method protected final getFragmentShader()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/camera/gl/Line;->m_Stroke:Lcom/htc/camera/gl/Brush;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/htc/camera/gl/Line;->m_Stroke:Lcom/htc/camera/gl/Brush;

    invoke-virtual {v0}, Lcom/htc/camera/gl/Brush;->getFragmentShader()I

    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/gl/Line;->getDefaultFragmentShader()I

    move-result v0

    goto :goto_0
.end method

.method protected final getVertexShader()I
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/gl/Line;->getDefaultVertexShader()I

    move-result v0

    return v0
.end method

.method protected onDraw([F)V
    .locals 10

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/htc/camera/gl/Line;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 81
    invoke-virtual {p0}, Lcom/htc/camera/gl/Line;->getVertexCount()I

    move-result v8

    .line 82
    if-eqz v5, :cond_0

    const/4 v0, 0x1

    if-le v8, v0, :cond_0

    iget v0, p0, Lcom/htc/camera/gl/Line;->m_Thickness:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/gl/Line;->getGLProgram()I

    move-result v9

    .line 87
    invoke-static {v9}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 90
    iget-object v0, p0, Lcom/htc/camera/gl/Line;->m_Stroke:Lcom/htc/camera/gl/Brush;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/gl/Line;->m_Stroke:Lcom/htc/camera/gl/Brush;

    invoke-virtual {v0, v8}, Lcom/htc/camera/gl/Brush;->prepareTextureCoordinatesBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 93
    :goto_1
    const-string v0, "vPosition"

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 96
    if-eqz v6, :cond_2

    .line 98
    const-string v1, "vTexCoord"

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 99
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    :cond_2
    move v7, v1

    .line 103
    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 104
    if-eqz v6, :cond_3

    .line 105
    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 108
    :cond_3
    const-string v1, "uMVPMatrix"

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 109
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, p1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 112
    iget-object v1, p0, Lcom/htc/camera/gl/Line;->m_Stroke:Lcom/htc/camera/gl/Brush;

    if-eqz v1, :cond_4

    .line 113
    iget-object v1, p0, Lcom/htc/camera/gl/Line;->m_Stroke:Lcom/htc/camera/gl/Brush;

    invoke-virtual {v1, v9, p1}, Lcom/htc/camera/gl/Brush;->beginDrawFragment(I[F)V

    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/gl/Line;->isDepthTestEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 117
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 122
    :goto_2
    iget v1, p0, Lcom/htc/camera/gl/Line;->m_Thickness:F

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 123
    const/16 v1, 0xb44

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 124
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 127
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 128
    if-eqz v6, :cond_5

    .line 129
    invoke-static {v7}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/gl/Line;->m_Stroke:Lcom/htc/camera/gl/Brush;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/camera/gl/Line;->m_Stroke:Lcom/htc/camera/gl/Brush;

    invoke-virtual {v0, v9}, Lcom/htc/camera/gl/Brush;->endDrawFragment(I)V

    goto :goto_0

    .line 90
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 119
    :cond_7
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_2
.end method

.method protected onGLProgramCreated(I)V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/htc/camera/gl/Line;->getVertexShader()I

    move-result v0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 143
    invoke-virtual {p0}, Lcom/htc/camera/gl/Line;->getFragmentShader()I

    move-result v0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 144
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 145
    return-void
.end method
