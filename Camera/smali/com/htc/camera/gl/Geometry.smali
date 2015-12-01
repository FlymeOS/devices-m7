.class public abstract Lcom/htc/camera/gl/Geometry;
.super Lcom/htc/camera/gl/VisualObject;
.source "Geometry.java"


# instance fields
.field private m_AreValidVertices:Z

.field private m_DefaultFragmentShader:I

.field private m_DefaultVertexShader:I

.field private m_GLProgram:I

.field private m_IsDepthTestEnabled:Z

.field private m_RotationCenter:Lcom/htc/camera/gl/Point3D;

.field private m_RotationX:F

.field private m_RotationY:F

.field private m_RotationZ:F

.field private m_VertexBuffer:Ljava/nio/FloatBuffer;

.field private m_VertexCount:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/camera/gl/VisualObject;-><init>()V

    return-void
.end method

.method private updateVertices()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/htc/camera/gl/Geometry;->threadAccessCheck()V

    .line 344
    invoke-virtual {p0}, Lcom/htc/camera/gl/Geometry;->onUpdateVertices()[Lcom/htc/camera/gl/Point3D;

    move-result-object v8

    .line 345
    if-eqz v8, :cond_0

    array-length v0, v8

    if-nez v0, :cond_1

    .line 347
    :cond_0
    iput v2, p0, Lcom/htc/camera/gl/Geometry;->m_VertexCount:I

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/gl/Geometry;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    .line 399
    :goto_0
    return-void

    .line 353
    :cond_1
    iget v0, p0, Lcom/htc/camera/gl/Geometry;->m_VertexCount:I

    .line 354
    array-length v1, v8

    iput v1, p0, Lcom/htc/camera/gl/Geometry;->m_VertexCount:I

    .line 355
    iget-object v1, p0, Lcom/htc/camera/gl/Geometry;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/camera/gl/Geometry;->m_VertexCount:I

    if-ge v0, v1, :cond_3

    .line 357
    :cond_2
    array-length v0, v8

    mul-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 358
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 359
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/gl/Geometry;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/gl/Geometry;->m_RotationCenter:Lcom/htc/camera/gl/Point3D;

    .line 364
    iget v1, p0, Lcom/htc/camera/gl/Geometry;->m_RotationX:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_4

    iget v1, p0, Lcom/htc/camera/gl/Geometry;->m_RotationY:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_4

    iget v1, p0, Lcom/htc/camera/gl/Geometry;->m_RotationZ:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x1

    move v7, v1

    .line 365
    :goto_1
    if-eqz v7, :cond_7

    if-nez v0, :cond_7

    .line 367
    new-instance v0, Lcom/htc/camera/gl/Point3D;

    invoke-direct {v0}, Lcom/htc/camera/gl/Point3D;-><init>()V

    .line 369
    iget v1, p0, Lcom/htc/camera/gl/Geometry;->m_VertexCount:I

    add-int/lit8 v1, v1, -0x1

    move v3, v4

    move v5, v4

    move v6, v4

    :goto_2
    if-ltz v1, :cond_6

    .line 371
    aget-object v9, v8, v1

    .line 372
    iget v10, v9, Lcom/htc/camera/gl/Point3D;->x:F

    add-float/2addr v6, v10

    .line 373
    iget v10, v9, Lcom/htc/camera/gl/Point3D;->y:F

    add-float/2addr v5, v10

    .line 374
    iget v9, v9, Lcom/htc/camera/gl/Point3D;->z:F

    add-float/2addr v3, v9

    .line 369
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    move v7, v2

    .line 364
    goto :goto_1

    .line 376
    :cond_6
    iget v1, p0, Lcom/htc/camera/gl/Geometry;->m_VertexCount:I

    int-to-float v1, v1

    div-float v1, v6, v1

    iput v1, v0, Lcom/htc/camera/gl/Point3D;->x:F

    .line 377
    iget v1, p0, Lcom/htc/camera/gl/Geometry;->m_VertexCount:I

    int-to-float v1, v1

    div-float v1, v5, v1

    iput v1, v0, Lcom/htc/camera/gl/Point3D;->y:F

    .line 378
    iget v1, p0, Lcom/htc/camera/gl/Geometry;->m_VertexCount:I

    int-to-float v1, v1

    div-float v1, v3, v1

    iput v1, v0, Lcom/htc/camera/gl/Point3D;->z:F

    :cond_7
    move v1, v2

    .line 382
    :goto_3
    iget v3, p0, Lcom/htc/camera/gl/Geometry;->m_VertexCount:I

    if-ge v1, v3, :cond_b

    .line 384
    new-instance v3, Lcom/htc/camera/gl/Point3D;

    aget-object v5, v8, v1

    invoke-direct {v3, v5}, Lcom/htc/camera/gl/Point3D;-><init>(Lcom/htc/camera/gl/Point3D;)V

    .line 385
    if-eqz v7, :cond_a

    .line 387
    iget v5, p0, Lcom/htc/camera/gl/Geometry;->m_RotationX:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_8

    .line 388
    iget v5, p0, Lcom/htc/camera/gl/Geometry;->m_RotationX:F

    invoke-virtual {p0, v3, v0, v5}, Lcom/htc/camera/gl/Geometry;->rotateX(Lcom/htc/camera/gl/Point3D;Lcom/htc/camera/gl/Point3D;F)V

    .line 389
    :cond_8
    iget v5, p0, Lcom/htc/camera/gl/Geometry;->m_RotationY:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_9

    .line 390
    iget v5, p0, Lcom/htc/camera/gl/Geometry;->m_RotationY:F

    invoke-virtual {p0, v3, v0, v5}, Lcom/htc/camera/gl/Geometry;->rotateY(Lcom/htc/camera/gl/Point3D;Lcom/htc/camera/gl/Point3D;F)V

    .line 391
    :cond_9
    iget v5, p0, Lcom/htc/camera/gl/Geometry;->m_RotationZ:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_a

    .line 392
    iget v5, p0, Lcom/htc/camera/gl/Geometry;->m_RotationZ:F

    invoke-virtual {p0, v3, v0, v5}, Lcom/htc/camera/gl/Geometry;->rotateZ(Lcom/htc/camera/gl/Point3D;Lcom/htc/camera/gl/Point3D;F)V

    .line 394
    :cond_a
    iget-object v5, p0, Lcom/htc/camera/gl/Geometry;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    iget v6, v3, Lcom/htc/camera/gl/Point3D;->x:F

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 395
    iget-object v5, p0, Lcom/htc/camera/gl/Geometry;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    iget v6, v3, Lcom/htc/camera/gl/Point3D;->y:F

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 396
    iget-object v5, p0, Lcom/htc/camera/gl/Geometry;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    iget v3, v3, Lcom/htc/camera/gl/Point3D;->z:F

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 398
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/gl/Geometry;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0
.end method


# virtual methods
.method public draw([F)V
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/camera/gl/Geometry;->m_AreValidVertices:Z

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/htc/camera/gl/Geometry;->updateVertices()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/gl/Geometry;->m_AreValidVertices:Z

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/gl/VisualObject;->draw([F)V

    .line 74
    return-void
.end method

.method protected final getDefaultFragmentShader()I
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/htc/camera/gl/Geometry;->m_DefaultFragmentShader:I

    if-nez v0, :cond_0

    .line 92
    const v0, 0x8b30

    invoke-static {v0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 93
    const-string v1, "precision mediump float;void main(){  gl_FragColor = vec4 ( 0, 0, 0, 1);}"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 94
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 95
    iput v0, p0, Lcom/htc/camera/gl/Geometry;->m_DefaultFragmentShader:I

    .line 97
    :cond_0
    iget v0, p0, Lcom/htc/camera/gl/Geometry;->m_DefaultFragmentShader:I

    return v0
.end method

.method protected final getDefaultVertexShader()I
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/htc/camera/gl/Geometry;->m_DefaultVertexShader:I

    if-nez v0, :cond_0

    .line 107
    const v0, 0x8b31

    invoke-static {v0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 108
    const-string v1, "attribute vec4 vPosition;uniform mat4 uMVPMatrix;attribute vec2 vTexCoord;varying vec2 vSharedTexCoord;void main(){  vSharedTexCoord = vTexCoord;  gl_Position = uMVPMatrix * vPosition;}"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 109
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 110
    iput v0, p0, Lcom/htc/camera/gl/Geometry;->m_DefaultVertexShader:I

    .line 112
    :cond_0
    iget v0, p0, Lcom/htc/camera/gl/Geometry;->m_DefaultVertexShader:I

    return v0
.end method

.method protected final getGLProgram()I
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/htc/camera/gl/Geometry;->threadAccessCheck()V

    .line 121
    iget v0, p0, Lcom/htc/camera/gl/Geometry;->m_GLProgram:I

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/gl/Geometry;->m_GLProgram:I

    .line 124
    iget v0, p0, Lcom/htc/camera/gl/Geometry;->m_GLProgram:I

    if-eqz v0, :cond_1

    .line 125
    iget v0, p0, Lcom/htc/camera/gl/Geometry;->m_GLProgram:I

    invoke-virtual {p0, v0}, Lcom/htc/camera/gl/Geometry;->onGLProgramCreated(I)V

    .line 129
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/camera/gl/Geometry;->m_GLProgram:I

    return v0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/gl/Geometry;->TAG:Ljava/lang/String;

    const-string v1, "getGLProgram() - Fail to create OpenGL program"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/camera/gl/Geometry;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method protected final getVertexCount()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/htc/camera/gl/Geometry;->m_VertexCount:I

    return v0
.end method

.method protected final invalidateGLProgram()V
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/htc/camera/gl/Geometry;->threadAccessCheck()V

    .line 174
    iget v0, p0, Lcom/htc/camera/gl/Geometry;->m_GLProgram:I

    if-eqz v0, :cond_0

    .line 176
    iget v0, p0, Lcom/htc/camera/gl/Geometry;->m_GLProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/gl/Geometry;->m_GLProgram:I

    .line 179
    :cond_0
    return-void
.end method

.method protected final invalidateVertices()V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/htc/camera/gl/Geometry;->threadAccessCheck()V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/gl/Geometry;->m_AreValidVertices:Z

    .line 188
    return-void
.end method

.method public final isDepthTestEnabled()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/htc/camera/gl/Geometry;->m_IsDepthTestEnabled:Z

    return v0
.end method

.method protected onGLProgramCreated(I)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method protected abstract onUpdateVertices()[Lcom/htc/camera/gl/Point3D;
.end method

.method protected rotateX(Lcom/htc/camera/gl/Point3D;Lcom/htc/camera/gl/Point3D;F)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 215
    if-eqz p1, :cond_0

    cmpl-float v1, p3, v0

    if-nez v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    if-nez p2, :cond_2

    move v1, v0

    .line 220
    :goto_1
    if-nez p2, :cond_3

    .line 221
    :goto_2
    iget v2, p1, Lcom/htc/camera/gl/Point3D;->y:F

    sub-float/2addr v2, v1

    .line 222
    iget v3, p1, Lcom/htc/camera/gl/Point3D;->z:F

    sub-float/2addr v3, v0

    .line 225
    const/high16 v4, 0x43340000    # 180.0f

    div-float v4, p3, v4

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    .line 226
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 227
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 228
    mul-float v5, v2, v4

    mul-float v7, v3, v6

    sub-float/2addr v5, v7

    add-float/2addr v1, v5

    iput v1, p1, Lcom/htc/camera/gl/Point3D;->y:F

    .line 229
    mul-float v1, v2, v6

    mul-float v2, v3, v4

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/htc/camera/gl/Point3D;->z:F

    goto :goto_0

    .line 219
    :cond_2
    iget v1, p2, Lcom/htc/camera/gl/Point3D;->y:F

    goto :goto_1

    .line 220
    :cond_3
    iget v0, p2, Lcom/htc/camera/gl/Point3D;->z:F

    goto :goto_2
.end method

.method protected rotateY(Lcom/htc/camera/gl/Point3D;Lcom/htc/camera/gl/Point3D;F)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 238
    if-eqz p1, :cond_0

    cmpl-float v1, p3, v0

    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    if-nez p2, :cond_2

    move v1, v0

    .line 243
    :goto_1
    if-nez p2, :cond_3

    .line 244
    :goto_2
    iget v2, p1, Lcom/htc/camera/gl/Point3D;->x:F

    sub-float/2addr v2, v1

    .line 245
    iget v3, p1, Lcom/htc/camera/gl/Point3D;->z:F

    sub-float/2addr v3, v0

    .line 248
    const/high16 v4, 0x43340000    # 180.0f

    div-float v4, p3, v4

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    .line 249
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 250
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 251
    mul-float v5, v2, v4

    mul-float v7, v3, v6

    add-float/2addr v5, v7

    add-float/2addr v1, v5

    iput v1, p1, Lcom/htc/camera/gl/Point3D;->x:F

    .line 252
    neg-float v1, v2

    mul-float/2addr v1, v6

    mul-float v2, v3, v4

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/htc/camera/gl/Point3D;->z:F

    goto :goto_0

    .line 242
    :cond_2
    iget v1, p2, Lcom/htc/camera/gl/Point3D;->x:F

    goto :goto_1

    .line 243
    :cond_3
    iget v0, p2, Lcom/htc/camera/gl/Point3D;->z:F

    goto :goto_2
.end method

.method protected rotateZ(Lcom/htc/camera/gl/Point3D;Lcom/htc/camera/gl/Point3D;F)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 261
    if-eqz p1, :cond_0

    cmpl-float v1, p3, v0

    if-nez v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    if-nez p2, :cond_2

    move v1, v0

    .line 266
    :goto_1
    if-nez p2, :cond_3

    .line 267
    :goto_2
    iget v2, p1, Lcom/htc/camera/gl/Point3D;->x:F

    sub-float/2addr v2, v1

    .line 268
    iget v3, p1, Lcom/htc/camera/gl/Point3D;->y:F

    sub-float/2addr v3, v0

    .line 271
    const/high16 v4, 0x43340000    # 180.0f

    div-float v4, p3, v4

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    .line 272
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 273
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 274
    mul-float v5, v2, v4

    mul-float v7, v3, v6

    sub-float/2addr v5, v7

    add-float/2addr v1, v5

    iput v1, p1, Lcom/htc/camera/gl/Point3D;->x:F

    .line 275
    mul-float v1, v2, v6

    mul-float v2, v3, v4

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/htc/camera/gl/Point3D;->y:F

    goto :goto_0

    .line 265
    :cond_2
    iget v1, p2, Lcom/htc/camera/gl/Point3D;->x:F

    goto :goto_1

    .line 266
    :cond_3
    iget v0, p2, Lcom/htc/camera/gl/Point3D;->y:F

    goto :goto_2
.end method

.method public final setRotationZ(F)V
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/htc/camera/gl/Geometry;->threadAccessCheck()V

    .line 328
    iget v0, p0, Lcom/htc/camera/gl/Geometry;->m_RotationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 330
    iput p1, p0, Lcom/htc/camera/gl/Geometry;->m_RotationZ:F

    .line 331
    invoke-virtual {p0}, Lcom/htc/camera/gl/Geometry;->invalidateVertices()V

    .line 333
    :cond_0
    return-void
.end method
