.class Lcom/htc/camera/viewfinder/GLViewFinder$14;
.super Lcom/htc/camera/CloseableHandle;
.source "GLViewFinder.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$14;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0, p2}, Lcom/htc/camera/CloseableHandle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$14;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$2000(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$14;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->enablePreviewRenderingInternal(Lcom/htc/camera/CloseableHandle;)V
    invoke-static {v0, p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$3200(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/CloseableHandle;)V

    .line 1087
    :goto_0
    return-void

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$14;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$3300(Lcom/htc/camera/viewfinder/GLViewFinder;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$14;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$3300(Lcom/htc/camera/viewfinder/GLViewFinder;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$14$1;

    invoke-direct {v1, p0, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$14$1;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder$14;Lcom/htc/camera/CloseableHandle;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$14;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$3400(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClose() - No GLSurfaceView"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
