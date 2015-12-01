.class Lcom/htc/camera/component/CaptureUIBlockManager$1;
.super Ljava/lang/Object;
.source "CaptureUIBlockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureUIBlockManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureUIBlockManager;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/htc/camera/component/CaptureUIBlockManager$1;->this$0:Lcom/htc/camera/component/CaptureUIBlockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager$1;->this$0:Lcom/htc/camera/component/CaptureUIBlockManager;

    # invokes: Lcom/htc/camera/component/CaptureUIBlockManager;->releaseSoftBlocks()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureUIBlockManager;->access$000(Lcom/htc/camera/component/CaptureUIBlockManager;)V

    .line 29
    return-void
.end method
