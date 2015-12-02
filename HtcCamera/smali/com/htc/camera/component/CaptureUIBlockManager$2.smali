.class Lcom/htc/camera/component/CaptureUIBlockManager$2;
.super Lcom/htc/camera/trigger/Trigger;
.source "CaptureUIBlockManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureUIBlockManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureUIBlockManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/camera/component/CaptureUIBlockManager$2;->this$0:Lcom/htc/camera/component/CaptureUIBlockManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager$2;->this$0:Lcom/htc/camera/component/CaptureUIBlockManager;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager$2;->this$0:Lcom/htc/camera/component/CaptureUIBlockManager;

    # getter for: Lcom/htc/camera/component/CaptureUIBlockManager;->m_ReleaseBlocksRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/camera/component/CaptureUIBlockManager;->access$100(Lcom/htc/camera/component/CaptureUIBlockManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CaptureUIBlockManager;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method
