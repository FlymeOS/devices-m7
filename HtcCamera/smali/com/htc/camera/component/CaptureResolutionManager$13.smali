.class Lcom/htc/camera/component/CaptureResolutionManager$13;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureResolutionManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureResolutionManager;)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager$13;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$13;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureResolutionManager;->updateResolutions()V

    .line 928
    return-void
.end method
