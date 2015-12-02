.class Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread$1;
.super Ljava/lang/Object;
.source "ServiceCameraComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

.field final synthetic val$owner:Lcom/htc/camera/component/ServiceCameraComponent;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;Lcom/htc/camera/component/ServiceCameraComponent;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread$1;->this$0:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    iput-object p2, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread$1;->val$owner:Lcom/htc/camera/component/ServiceCameraComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread$1;->val$owner:Lcom/htc/camera/component/ServiceCameraComponent;

    # invokes: Lcom/htc/camera/component/ServiceCameraComponent;->notifyWorkerThreadRunning()V
    invoke-static {v0}, Lcom/htc/camera/component/ServiceCameraComponent;->access$100(Lcom/htc/camera/component/ServiceCameraComponent;)V

    .line 89
    return-void
.end method
