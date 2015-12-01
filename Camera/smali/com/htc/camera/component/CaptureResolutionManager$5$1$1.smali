.class Lcom/htc/camera/component/CaptureResolutionManager$5$1$1;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/htc/camera/component/CaptureResolutionManager$5$1;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureResolutionManager$5$1;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager$5$1$1;->this$2:Lcom/htc/camera/component/CaptureResolutionManager$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$5$1$1;->this$2:Lcom/htc/camera/component/CaptureResolutionManager$5$1;

    iget-object v0, v0, Lcom/htc/camera/component/CaptureResolutionManager$5$1;->this$1:Lcom/htc/camera/component/CaptureResolutionManager$5;

    iget-object v0, v0, Lcom/htc/camera/component/CaptureResolutionManager$5;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    # invokes: Lcom/htc/camera/component/CaptureResolutionManager;->onSettingsChanged()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureResolutionManager;->access$900(Lcom/htc/camera/component/CaptureResolutionManager;)V

    .line 202
    return-void
.end method
