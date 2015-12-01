.class Lcom/htc/camera/viewfinder/GLViewFinder$31;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/CameraType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$31;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$31;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsSwitchingPreviewSurface:Z
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$6100(Lcom/htc/camera/viewfinder/GLViewFinder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1626
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$31;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4900(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->DirectOutput:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$31;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onFirstPreviewFrameReceived()V
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$6200(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    .line 1645
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$31;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4900(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$31;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$3300(Lcom/htc/camera/viewfinder/GLViewFinder;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1633
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$31;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$3300(Lcom/htc/camera/viewfinder/GLViewFinder;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$31$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$31$1;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder$31;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1643
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$31;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$6400(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - No GLSurfaceView"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
