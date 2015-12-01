.class Lcom/htc/camera/actionscreen/ActionScreen$5;
.super Ljava/lang/Object;
.source "ActionScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/ActionScreen;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;

.field final synthetic val$captureFailedEventHandler:Lcom/htc/camera/event/a;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/ActionScreen;Lcom/htc/camera/CameraThread;Lcom/htc/camera/event/a;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/camera/actionscreen/ActionScreen$5;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    iput-object p2, p0, Lcom/htc/camera/actionscreen/ActionScreen$5;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iput-object p3, p0, Lcom/htc/camera/actionscreen/ActionScreen$5;->val$captureFailedEventHandler:Lcom/htc/camera/event/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$5;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/actionscreen/ActionScreen$5;->val$captureFailedEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 267
    return-void
.end method
