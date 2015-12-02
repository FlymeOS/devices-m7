.class Lcom/htc/camera/viewfinder/GLViewFinder$33;
.super Lcom/htc/camera/trigger/Trigger;
.source "GLViewFinder.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$33;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$33;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$6800(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1679
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$33;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$6800(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewCoverHandle;

    iget v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewCoverHandle;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$33;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$6800(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1677
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1682
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$33;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->hidePreviewCoverInternal(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$6900(Lcom/htc/camera/viewfinder/GLViewFinder;Z)V

    .line 1683
    return-void
.end method
