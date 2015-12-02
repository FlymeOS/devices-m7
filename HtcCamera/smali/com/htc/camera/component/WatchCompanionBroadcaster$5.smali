.class Lcom/htc/camera/component/WatchCompanionBroadcaster$5;
.super Lcom/htc/camera/trigger/Trigger;
.source "WatchCompanionBroadcaster.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/WatchCompanionBroadcaster;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$5;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$5;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    const-string v1, "com.htc.camera.intent.action.TAKING_MEDIA"

    # invokes: Lcom/htc/camera/component/WatchCompanionBroadcaster;->sendBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->access$600(Lcom/htc/camera/component/WatchCompanionBroadcaster;Ljava/lang/String;)V

    .line 240
    return-void
.end method
