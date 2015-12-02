.class Lcom/htc/camera/CameraThread$20$1;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/CameraThread$20;

.field final synthetic val$eventArgs:Lcom/htc/camera/MediaEventArgs;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread$20;Lcom/htc/camera/MediaEventArgs;)V
    .locals 0

    .prologue
    .line 4629
    iput-object p1, p0, Lcom/htc/camera/CameraThread$20$1;->this$1:Lcom/htc/camera/CameraThread$20;

    iput-object p2, p0, Lcom/htc/camera/CameraThread$20$1;->val$eventArgs:Lcom/htc/camera/MediaEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4632
    iget-object v0, p0, Lcom/htc/camera/CameraThread$20$1;->this$1:Lcom/htc/camera/CameraThread$20;

    iget-object v0, v0, Lcom/htc/camera/CameraThread$20;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->mediaDeletedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/CameraThread$20$1;->this$1:Lcom/htc/camera/CameraThread$20;

    iget-object v1, v1, Lcom/htc/camera/CameraThread$20;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v2, p0, Lcom/htc/camera/CameraThread$20$1;->val$eventArgs:Lcom/htc/camera/MediaEventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 4633
    return-void
.end method
