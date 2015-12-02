.class Lcom/htc/camera/viewfinder/GLViewFinder$28;
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
    .line 1555
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$28;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

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
    const/4 v2, 0x1

    .line 1559
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$viewfinder$GLViewFinder$PreviewRenderingMode:[I

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$28;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;
    invoke-static {v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4900(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1579
    :cond_0
    :goto_0
    return-void

    .line 1562
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$28;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsDirectOutputSurfaceAvailable:Z
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5600(Lcom/htc/camera/viewfinder/GLViewFinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$28;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1564
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$28;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5700(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEventReceived() - Surface created before resuming activity, make preview resource available"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$28;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1569
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$28;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsGLRenderingEnabled:Z
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5800(Lcom/htc/camera/viewfinder/GLViewFinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$28;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapterInUIThread:Lcom/htc/camera/CameraPreviewAdapter;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5900(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/CameraPreviewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$28;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1571
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$28;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$6000(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEventReceived() - GL rendering is still enabled, make preview resource available"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$28;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewResourcesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5000(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1574
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$28;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    sget-object v2, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1575
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1559
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
