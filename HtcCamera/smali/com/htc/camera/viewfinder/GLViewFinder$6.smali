.class Lcom/htc/camera/viewfinder/GLViewFinder$6;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_RendererSyncRoot:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$700(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 310
    const/4 v0, 0x3

    :try_start_0
    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 311
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$800(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    :goto_0
    invoke-interface {p1, p2, p3, v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 312
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$800(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    if-nez v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$1900(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Create shared EGL context"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # setter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$802(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 316
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # setter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v2, p3}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$1602(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 317
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # setter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v2, p2}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$1202(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 318
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    # setter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$2002(Lcom/htc/camera/viewfinder/GLViewFinder;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 319
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    new-instance v3, Lcom/htc/camera/viewfinder/GLViewFinder$6$1;

    invoke-direct {v3, p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder$6$1;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder$6;Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/viewfinder/GLViewFinder;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 328
    :cond_0
    monitor-exit v1

    return-object v0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$800(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 310
    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 6

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_RendererSyncRoot:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$700(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$800(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    if-ne p3, v0, :cond_4

    .line 271
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_AttachedSurfaceHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$900(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$1000(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Destroy all attached EGL surfaces"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$1100(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_AttachedSurfaceHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$900(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 278
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_AttachedSurfaceHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$900(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    .line 279
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v3, v4, :cond_1

    .line 281
    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$1100(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$1200(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$1300(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to destroy attached EGL surface for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 276
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$1400(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No EGL10 instance for destroying EGL surfaces"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$1500(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Destroy shared EGL context"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$802(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 294
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$1602(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 295
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$1202(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 296
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$1702(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 297
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$1802(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 301
    :cond_4
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 302
    monitor-exit v2

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
