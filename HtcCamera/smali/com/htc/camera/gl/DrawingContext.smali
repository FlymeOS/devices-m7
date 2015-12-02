.class public final Lcom/htc/camera/gl/DrawingContext;
.super Lcom/htc/camera/ThreadDependencyObject;
.source "DrawingContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawingContext"


# instance fields
.field private m_EGL:Ljavax/microedition/khronos/egl/EGL10;

.field private m_EGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private m_EGLReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private m_GL:Ljavax/microedition/khronos/opengles/GL10;

.field private m_IntermediateNativeBuffer:J

.field private m_IntermediateNativeBufferSize:I

.field private final m_OwnsEGLContext:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Lcom/htc/camera/ThreadDependencyObject;-><init>()V

    .line 44
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 45
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to get EGL interface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 50
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_1

    .line 52
    iput-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to get EGL display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 58
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_2

    .line 60
    iput-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to get EGL context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v1, 0x3059

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 66
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v1, 0x305a

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 67
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_4

    .line 69
    :cond_3
    iput-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 70
    iput-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to get EGL surface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_OwnsEGLContext:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/gl/DrawingContext;-><init>(Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/Surface;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/gl/DrawingContext;-><init>(Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/SurfaceHolder;)V

    .line 91
    return-void
.end method

.method private constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;IILjava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 97
    invoke-direct {p0}, Lcom/htc/camera/ThreadDependencyObject;-><init>()V

    .line 99
    if-nez p4, :cond_1

    .line 101
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 106
    :cond_1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 107
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_2

    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to get EGL interface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 112
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_3

    .line 114
    iput-object v7, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to get EGL display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_3
    new-array v0, v8, [I

    .line 120
    iget-object v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to initialize EGL"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_4
    const-string v1, "DrawingContext"

    const-string v2, "Version = "

    aget v3, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "."

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v5, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    const/16 v0, 0xf

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 135
    new-array v5, v4, [I

    .line 136
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 137
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    aget v0, v5, v6

    if-gtz v0, :cond_6

    .line 138
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to setup EGL configuration"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_6
    aget-object v0, v3, v6

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 142
    new-array v0, v9, [I

    fill-array-data v0, :array_1

    .line 146
    iget-object v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez p1, :cond_7

    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_7
    invoke-interface {v1, v2, v3, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 147
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_8

    .line 149
    iput-object v7, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 150
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to create EGL context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_8
    if-eqz p4, :cond_9

    .line 155
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, p4, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_a

    .line 167
    iput-object v7, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to create EGL surface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_9
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    aput v1, v0, v6

    aput p2, v0, v4

    const/16 v1, 0x3056

    aput v1, v0, v8

    aput p3, v0, v9

    const/4 v1, 0x4

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 163
    iget-object v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 170
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 171
    const-string v0, "DrawingContext"

    const-string v1, "Surface = "

    iget-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    new-array v0, v4, [I

    .line 175
    iget-object v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v5, 0x3057

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 176
    const-string v1, "DrawingContext"

    const-string v2, "Surface width = "

    aget v3, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v5, 0x3056

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 180
    const-string v1, "DrawingContext"

    const-string v2, "Surface height = "

    aget v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to use EGL context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_b
    const-string v1, "DrawingContext"

    const-string v2, "Fail to get surface width"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_c
    const-string v0, "DrawingContext"

    const-string v1, "Fail to get surface height"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 189
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    .line 192
    iput-boolean v4, p0, Lcom/htc/camera/gl/DrawingContext;->m_OwnsEGLContext:Z

    .line 193
    return-void

    .line 125
    :array_0
    .array-data 4
        0x3025
        0x10
        0x3026
        0x0
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
    .end array-data

    .line 142
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/Surface;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/htc/camera/gl/DrawingContext;-><init>(Ljavax/microedition/khronos/egl/EGLContext;IILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/htc/camera/gl/DrawingContext;-><init>(Ljavax/microedition/khronos/egl/EGLContext;IILjava/lang/Object;)V

    .line 95
    return-void
.end method

.method private checkEglError()Z
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 201
    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    .line 203
    :cond_0
    const-string v1, "DrawingContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEglError() - Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkEglState()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Drawing buffer is released"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    return-void
.end method

.method private native copyToBitmapBuffer(JLjava/nio/Buffer;IIII)V
.end method


# virtual methods
.method public copyToBitmapBuffer(Ljava/nio/Buffer;IIII)V
    .locals 8

    .prologue
    const-wide/16 v3, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/htc/camera/gl/DrawingContext;->threadAccessCheck()V

    .line 223
    invoke-direct {p0}, Lcom/htc/camera/gl/DrawingContext;->checkEglState()V

    .line 224
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_1

    .line 226
    const-string v0, "DrawingContext"

    const-string v1, "copyToBitmapBuffer() - No EGL surface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    mul-int v0, p4, p5

    mul-int/lit8 v0, v0, 0x4

    .line 232
    iget-wide v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_IntermediateNativeBuffer:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_IntermediateNativeBufferSize:I

    if-ge v1, v0, :cond_4

    .line 234
    :cond_2
    iget-wide v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_IntermediateNativeBuffer:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 236
    iget-wide v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_IntermediateNativeBuffer:J

    invoke-static {v1, v2}, Lcom/htc/camera/Memory;->free(J)V

    .line 237
    iput-wide v3, p0, Lcom/htc/camera/gl/DrawingContext;->m_IntermediateNativeBuffer:J

    .line 238
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_IntermediateNativeBufferSize:I

    .line 240
    :cond_3
    invoke-static {v0}, Lcom/htc/camera/Memory;->allocate(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_IntermediateNativeBuffer:J

    .line 241
    iput v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_IntermediateNativeBufferSize:I

    .line 246
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/gl/DrawingContext;->checkEglError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-wide v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_IntermediateNativeBuffer:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/camera/gl/DrawingContext;->copyToBitmapBuffer(JLjava/nio/Buffer;IIII)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/htc/camera/gl/DrawingContext;->threadAccessCheck()V

    .line 263
    invoke-direct {p0}, Lcom/htc/camera/gl/DrawingContext;->checkEglState()V

    .line 264
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 265
    iget-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v5, 0x3056

    invoke-interface {v2, v3, v4, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    aget v0, v1, v0

    .line 269
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/gl/DrawingContext;->checkEglError()Z

    .line 268
    const-string v1, "DrawingContext"

    const-string v2, "getHeight() - Fail to get surface height"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getWidth()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/htc/camera/gl/DrawingContext;->threadAccessCheck()V

    .line 278
    invoke-direct {p0}, Lcom/htc/camera/gl/DrawingContext;->checkEglState()V

    .line 279
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 280
    iget-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v5, 0x3057

    invoke-interface {v2, v3, v4, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    aget v0, v1, v0

    .line 284
    :goto_0
    return v0

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/gl/DrawingContext;->checkEglError()Z

    .line 283
    const-string v1, "DrawingContext"

    const-string v2, "getWidth() - Fail to get surface width"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    .line 293
    invoke-virtual {p0}, Lcom/htc/camera/gl/DrawingContext;->threadAccessCheck()V

    .line 296
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-wide v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_IntermediateNativeBuffer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 302
    iget-wide v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_IntermediateNativeBuffer:J

    invoke-static {v0, v1}, Lcom/htc/camera/Memory;->free(J)V

    .line 303
    iput-wide v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_IntermediateNativeBuffer:J

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_IntermediateNativeBufferSize:I

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 311
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_4

    .line 313
    iget-boolean v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_OwnsEGLContext:Z

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 315
    :cond_3
    iput-object v5, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_6

    .line 321
    iget-boolean v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_OwnsEGLContext:Z

    if-eqz v0, :cond_5

    .line 322
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 323
    :cond_5
    iput-object v5, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 324
    iput-object v5, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 328
    :cond_6
    iget-boolean v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_OwnsEGLContext:Z

    if-eqz v0, :cond_7

    .line 329
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 330
    :cond_7
    iput-object v5, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 331
    iput-object v5, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    goto :goto_0
.end method

.method public swapBuffers()V
    .locals 3

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/htc/camera/gl/DrawingContext;->threadAccessCheck()V

    .line 340
    invoke-direct {p0}, Lcom/htc/camera/gl/DrawingContext;->checkEglState()V

    .line 341
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/htc/camera/gl/DrawingContext;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/htc/camera/gl/DrawingContext;->checkEglError()Z

    .line 346
    const-string v0, "DrawingContext"

    const-string v1, "swapBuffers() - Fail to swap buffers"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    const-string v0, "DrawingContext"

    const-string v1, "swapBuffers() - No buffers to swap"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
