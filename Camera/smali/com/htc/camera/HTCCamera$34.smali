.class Lcom/htc/camera/HTCCamera$34;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;

.field final synthetic val$captureHandle:Lcom/htc/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 5845
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$34;->this$0:Lcom/htc/camera/HTCCamera;

    iput-object p2, p0, Lcom/htc/camera/HTCCamera$34;->val$captureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5849
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$34;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$34;->val$captureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->prepareActionScreen(Lcom/htc/camera/CaptureHandle;)V

    .line 5850
    return-void
.end method
