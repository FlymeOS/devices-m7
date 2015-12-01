.class Lcom/htc/camera/CameraThread$25;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;

.field final synthetic val$slot:Lcom/htc/camera/io/StorageSlot;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/io/StorageSlot;)V
    .locals 0

    .prologue
    .line 4962
    iput-object p1, p0, Lcom/htc/camera/CameraThread$25;->this$0:Lcom/htc/camera/CameraThread;

    iput-object p2, p0, Lcom/htc/camera/CameraThread$25;->val$slot:Lcom/htc/camera/io/StorageSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4965
    iget-object v0, p0, Lcom/htc/camera/CameraThread$25;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/CameraThread$25;->val$slot:Lcom/htc/camera/io/StorageSlot;

    # invokes: Lcom/htc/camera/CameraThread;->changeStorageSlotInternal(Lcom/htc/camera/io/StorageSlot;)V
    invoke-static {v0, v1}, Lcom/htc/camera/CameraThread;->access$3200(Lcom/htc/camera/CameraThread;Lcom/htc/camera/io/StorageSlot;)V

    .line 4966
    return-void
.end method
