.class Lcom/htc/camera/component/NewMediaBroadcaster$3;
.super Ljava/lang/Object;
.source "NewMediaBroadcaster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;

.field final synthetic val$m_DeletedFinishedEventHandler:Lcom/htc/camera/event/a;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/NewMediaBroadcaster;Lcom/htc/camera/CameraThread;Lcom/htc/camera/event/a;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/camera/component/NewMediaBroadcaster$3;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    iput-object p2, p0, Lcom/htc/camera/component/NewMediaBroadcaster$3;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iput-object p3, p0, Lcom/htc/camera/component/NewMediaBroadcaster$3;->val$m_DeletedFinishedEventHandler:Lcom/htc/camera/event/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster$3;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->mediaDeletedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/component/NewMediaBroadcaster$3;->val$m_DeletedFinishedEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 96
    return-void
.end method
