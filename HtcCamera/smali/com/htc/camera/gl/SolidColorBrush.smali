.class public Lcom/htc/camera/gl/SolidColorBrush;
.super Lcom/htc/camera/gl/Brush;
.source "SolidColorBrush.java"


# instance fields
.field private m_Color:I

.field private final m_ColorVector:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/gl/Brush;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/gl/SolidColorBrush;->m_Color:I

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/camera/gl/SolidColorBrush;->m_ColorVector:[F

    .line 32
    return-void

    .line 26
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/camera/gl/Brush;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/gl/SolidColorBrush;->m_Color:I

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/camera/gl/SolidColorBrush;->m_ColorVector:[F

    .line 35
    invoke-virtual {p0, p1}, Lcom/htc/camera/gl/SolidColorBrush;->setColor(I)V

    .line 36
    return-void

    .line 26
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public hasAlphaBlending()Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/camera/gl/SolidColorBrush;->m_ColorVector:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBeginDrawFragment(I[F)V
    .locals 4

    .prologue
    .line 62
    const-string v0, "vColor"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/htc/camera/gl/SolidColorBrush;->TAG:Ljava/lang/String;

    const-string v1, "onBeginDrawFragment() - Cannot get handle for \'vColor\'"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/camera/gl/SolidColorBrush;->m_ColorVector:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    goto :goto_0
.end method

.method protected onCreateFragmentShaderScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "precision mediump float;uniform vec4 vColor;void main(){  gl_FragColor = vColor;}"

    return-object v0
.end method

.method public final setColor(I)V
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 87
    invoke-virtual {p0}, Lcom/htc/camera/gl/SolidColorBrush;->threadAccessCheck()V

    .line 88
    iput p1, p0, Lcom/htc/camera/gl/SolidColorBrush;->m_Color:I

    .line 89
    iget-object v0, p0, Lcom/htc/camera/gl/SolidColorBrush;->m_ColorVector:[F

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 90
    iget-object v0, p0, Lcom/htc/camera/gl/SolidColorBrush;->m_ColorVector:[F

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 91
    iget-object v0, p0, Lcom/htc/camera/gl/SolidColorBrush;->m_ColorVector:[F

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 92
    iget-object v0, p0, Lcom/htc/camera/gl/SolidColorBrush;->m_ColorVector:[F

    const/4 v1, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 93
    return-void
.end method
