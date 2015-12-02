.class Lcom/htc/camera/splitcapture/SplitVideoUI$38;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

.field final synthetic val$isNeedToHidePlayBackSurface:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Z)V
    .locals 0

    .prologue
    .line 3046
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$38;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iput-boolean p2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$38;->val$isNeedToHidePlayBackSurface:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3050
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$38;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-boolean v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$38;->val$isNeedToHidePlayBackSurface:Z

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsHidingPlaybackSurfaceWhilePreparingRetake:Z
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$7502(Lcom/htc/camera/splitcapture/SplitVideoUI;Z)Z

    .line 3052
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$38;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$38$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$38$1;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI$38;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 3065
    return-void
.end method
