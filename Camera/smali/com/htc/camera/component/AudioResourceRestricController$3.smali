.class Lcom/htc/camera/component/AudioResourceRestricController$3;
.super Lcom/htc/camera/trigger/Trigger;
.source "AudioResourceRestricController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AudioResourceRestricController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AudioResourceRestricController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/camera/component/AudioResourceRestricController$3;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController$3;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    # invokes: Lcom/htc/camera/component/AudioResourceRestricController;->onCameraThreadRunning()V
    invoke-static {v0}, Lcom/htc/camera/component/AudioResourceRestricController;->access$100(Lcom/htc/camera/component/AudioResourceRestricController;)V

    .line 110
    return-void
.end method
