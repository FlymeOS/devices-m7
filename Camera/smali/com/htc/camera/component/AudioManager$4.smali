.class Lcom/htc/camera/component/AudioManager$4;
.super Lcom/htc/camera/trigger/Trigger;
.source "AudioManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AudioManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AudioManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/htc/camera/component/AudioManager$4;->this$0:Lcom/htc/camera/component/AudioManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager$4;->this$0:Lcom/htc/camera/component/AudioManager;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    # invokes: Lcom/htc/camera/component/AudioManager;->setVolumePanelOrientation(Lcom/htc/camera/rotate/UIRotation;IZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/htc/camera/component/AudioManager;->access$500(Lcom/htc/camera/component/AudioManager;Lcom/htc/camera/rotate/UIRotation;IZ)V

    .line 383
    return-void
.end method

.method protected onExit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager$4;->this$0:Lcom/htc/camera/component/AudioManager;

    iget-object v1, p0, Lcom/htc/camera/component/AudioManager$4;->this$0:Lcom/htc/camera/component/AudioManager;

    invoke-virtual {v1}, Lcom/htc/camera/component/AudioManager;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    # invokes: Lcom/htc/camera/component/AudioManager;->setVolumePanelOrientation(Lcom/htc/camera/rotate/UIRotation;IZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/htc/camera/component/AudioManager;->access$500(Lcom/htc/camera/component/AudioManager;Lcom/htc/camera/rotate/UIRotation;IZ)V

    .line 389
    return-void
.end method
