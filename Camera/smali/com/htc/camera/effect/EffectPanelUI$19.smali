.class Lcom/htc/camera/effect/EffectPanelUI$19;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$19;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$19;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getLastMediaInfo()Lcom/htc/camera/media/MediaInfo;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-nez v1, :cond_2

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$19;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$2700(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No media information to perform action"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$19;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1100(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/actionscreen/CommonActionScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$19;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1100(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/actionscreen/CommonActionScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->clearAction()V

    .line 590
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$19;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1100(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/actionscreen/CommonActionScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    .line 600
    :cond_1
    :goto_0
    return-void

    .line 596
    :cond_2
    invoke-virtual {v0}, Lcom/htc/camera/media/MediaInfo;->isVideo()Z

    move-result v1

    if-nez v1, :cond_3

    .line 597
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI$19;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->startPhotoEnhancer(Lcom/htc/camera/media/MediaInfo;)V
    invoke-static {v1, v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$2800(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/media/MediaInfo;)V

    goto :goto_0

    .line 599
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI$19;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->startVideoTrimmer(Lcom/htc/camera/media/MediaInfo;)V
    invoke-static {v1, v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$2900(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/media/MediaInfo;)V

    goto :goto_0
.end method
