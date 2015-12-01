.class Lcom/htc/camera/component/RecordingLimitController$6;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/RecordingLimitController;

.field final synthetic val$cameraActivity:Lcom/htc/camera/HTCCamera;

.field final synthetic val$pausingHandler:Lcom/htc/camera/base/b;

.field final synthetic val$storageUnmountedHandler:Lcom/htc/camera/event/a;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RecordingLimitController;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/base/b;Lcom/htc/camera/event/a;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/htc/camera/component/RecordingLimitController$6;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    iput-object p2, p0, Lcom/htc/camera/component/RecordingLimitController$6;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iput-object p3, p0, Lcom/htc/camera/component/RecordingLimitController$6;->val$pausingHandler:Lcom/htc/camera/base/b;

    iput-object p4, p0, Lcom/htc/camera/component/RecordingLimitController$6;->val$storageUnmountedHandler:Lcom/htc/camera/event/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$6;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_PAUSING:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/component/RecordingLimitController$6;->val$pausingHandler:Lcom/htc/camera/base/b;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 274
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$6;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_RESUMING:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/component/RecordingLimitController$6;->val$pausingHandler:Lcom/htc/camera/base/b;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 275
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$6;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->storageUnmountedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/component/RecordingLimitController$6;->val$storageUnmountedHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 276
    return-void
.end method
