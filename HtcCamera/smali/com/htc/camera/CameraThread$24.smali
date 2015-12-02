.class Lcom/htc/camera/CameraThread$24;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;

.field final synthetic val$handle:Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;)V
    .locals 0

    .prologue
    .line 4894
    iput-object p1, p0, Lcom/htc/camera/CameraThread$24;->this$0:Lcom/htc/camera/CameraThread;

    iput-object p2, p0, Lcom/htc/camera/CameraThread$24;->val$handle:Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4898
    iget-object v0, p0, Lcom/htc/camera/CameraThread$24;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/CameraThread$24;->val$handle:Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;

    # invokes: Lcom/htc/camera/CameraThread;->registerOneShotPreviewCallback(Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/CameraThread;->access$3100(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;)V

    .line 4899
    return-void
.end method
