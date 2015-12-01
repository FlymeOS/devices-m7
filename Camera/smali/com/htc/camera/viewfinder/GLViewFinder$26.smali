.class Lcom/htc/camera/viewfinder/GLViewFinder$26;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$26;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1526
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$26;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$3300(Lcom/htc/camera/viewfinder/GLViewFinder;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$26;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$3300(Lcom/htc/camera/viewfinder/GLViewFinder;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$26;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5200(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hide GL surface view"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$26;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$3300(Lcom/htc/camera/viewfinder/GLViewFinder;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1530
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$26;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$3300(Lcom/htc/camera/viewfinder/GLViewFinder;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$26;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5300(Lcom/htc/camera/viewfinder/GLViewFinder;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$26;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5300(Lcom/htc/camera/viewfinder/GLViewFinder;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1536
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$26;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5400(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hide direct output surface view"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$26;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5300(Lcom/htc/camera/viewfinder/GLViewFinder;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1538
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$26;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5300(Lcom/htc/camera/viewfinder/GLViewFinder;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1540
    :cond_1
    return-void
.end method
