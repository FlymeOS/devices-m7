.class Lcom/htc/camera/HTCCamera$36$1;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/HTCCamera$36;

.field final synthetic val$e:Lcom/htc/camera/event/EventArgs;

.field final synthetic val$event:Lcom/htc/camera/event/Event;

.field final synthetic val$sender:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera$36;Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 6548
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$36$1;->this$1:Lcom/htc/camera/HTCCamera$36;

    iput-object p2, p0, Lcom/htc/camera/HTCCamera$36$1;->val$event:Lcom/htc/camera/event/Event;

    iput-object p3, p0, Lcom/htc/camera/HTCCamera$36$1;->val$sender:Ljava/lang/Object;

    iput-object p4, p0, Lcom/htc/camera/HTCCamera$36$1;->val$e:Lcom/htc/camera/event/EventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6551
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$36$1;->this$1:Lcom/htc/camera/HTCCamera$36;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera$36;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$36$1;->val$event:Lcom/htc/camera/event/Event;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera$36$1;->val$sender:Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/camera/HTCCamera$36$1;->val$e:Lcom/htc/camera/event/EventArgs;

    # invokes: Lcom/htc/camera/HTCCamera;->onCameraThreadEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/HTCCamera;->access$5000(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 6552
    return-void
.end method
