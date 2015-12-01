.class Lcom/htc/camera/viewfinder/GLViewFinder$27;
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
    .line 1543
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$27;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

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
    .line 1547
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$27;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewResourcesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5000(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1549
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$27;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5500(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onEventReceived() - Activity is pausing, make preview resource unavailable"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$27;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    sget-object v2, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1551
    monitor-exit v1

    .line 1552
    return-void

    .line 1551
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
