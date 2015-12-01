.class Lcom/htc/camera/component/WatchCompanionBroadcaster$6;
.super Ljava/lang/Object;
.source "WatchCompanionBroadcaster.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/WatchCompanionBroadcaster;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$6;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$6;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    const-string v1, "com.htc.camera.intent.action.TAKING_MEDIA"

    # invokes: Lcom/htc/camera/component/WatchCompanionBroadcaster;->sendBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->access$600(Lcom/htc/camera/component/WatchCompanionBroadcaster;Ljava/lang/String;)V

    .line 249
    :cond_0
    return-void
.end method
