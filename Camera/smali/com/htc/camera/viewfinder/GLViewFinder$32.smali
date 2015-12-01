.class Lcom/htc/camera/viewfinder/GLViewFinder$32;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$32;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1652
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$32;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$32;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/16 v2, 0x2742

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move v4, v3

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z
    invoke-static/range {v0 .. v6}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$6500(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 1658
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$32;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # setter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsSwitchingPreviewSurface:Z
    invoke-static {v0, v3}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$6102(Lcom/htc/camera/viewfinder/GLViewFinder;Z)Z

    .line 1661
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$32;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$32;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_RecreateSurfacesRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$6600(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1668
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$32;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/16 v1, 0x272e

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$6700(Lcom/htc/camera/viewfinder/GLViewFinder;I)V

    .line 1669
    return-void

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$32;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->resumeGLRendering()V
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$5100(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    goto :goto_0
.end method
