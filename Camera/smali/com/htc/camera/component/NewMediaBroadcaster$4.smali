.class Lcom/htc/camera/component/NewMediaBroadcaster$4;
.super Lcom/htc/camera/trigger/Trigger;
.source "NewMediaBroadcaster.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/NewMediaBroadcaster;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/NewMediaBroadcaster;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/camera/component/NewMediaBroadcaster$4;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster$4;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    invoke-virtual {v0}, Lcom/htc/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->actionScreenCloseReason:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->DeleteMedia:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    if-eq v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster$4;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    # invokes: Lcom/htc/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V
    invoke-static {v0}, Lcom/htc/camera/component/NewMediaBroadcaster;->access$200(Lcom/htc/camera/component/NewMediaBroadcaster;)V

    .line 108
    :cond_0
    return-void
.end method
