.class Lcom/htc/camera/viewfinder/GLViewFinder$24;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$24;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 1486
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 1482
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$24;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4700(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GL surface destroyed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$24;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->suspendGLRendering(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4800(Lcom/htc/camera/viewfinder/GLViewFinder;Z)V

    .line 1493
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$24;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4900(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$24;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewResourcesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5000(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1497
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$24;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    sget-object v2, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1498
    monitor-exit v1

    .line 1500
    :cond_0
    return-void

    .line 1498
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
