.class Lcom/htc/camera/effect/VideoSceneController$4;
.super Ljava/lang/Object;
.source "VideoSceneController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/VideoSceneController;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/VideoSceneController;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/camera/effect/VideoSceneController$4;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x780

    const/16 v3, 0x438

    const/16 v2, 0x3c

    .line 150
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController$4;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    # getter for: Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/VideoSceneController;->access$100(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "normal-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController$4;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    # getter for: Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/VideoSceneController;->access$100(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hd_60fps_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController$4;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    # getter for: Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/VideoSceneController;->access$600(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HD 60fps vide, setVideoFrameRate 60"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;

    invoke-virtual {v0, v2}, Lcom/htc/camera/MediaRecorderParameters;->setVideoFrameRate(I)V

    .line 156
    iget-object v0, p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;

    new-instance v1, Lcom/htc/camera/imaging/Size;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-direct {v1, v2, v3}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/MediaRecorderParameters;->setVideoSize(Lcom/htc/camera/imaging/Size;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController$4;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    # getter for: Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/VideoSceneController;->access$100(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fullhd_60fps_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController$4;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    # getter for: Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/VideoSceneController;->access$700(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullHD 60fps vide, setVideoFrameRate 60"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;

    invoke-virtual {v0, v2}, Lcom/htc/camera/MediaRecorderParameters;->setVideoFrameRate(I)V

    .line 161
    iget-object v0, p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;

    new-instance v1, Lcom/htc/camera/imaging/Size;

    invoke-direct {v1, v4, v3}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/MediaRecorderParameters;->setVideoSize(Lcom/htc/camera/imaging/Size;)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController$4;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    # getter for: Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/VideoSceneController;->access$100(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hdr_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController$4;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    # getter for: Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/VideoSceneController;->access$800(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HDR video"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;

    new-instance v1, Lcom/htc/camera/imaging/Size;

    invoke-direct {v1, v4, v3}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/MediaRecorderParameters;->setVideoSize(Lcom/htc/camera/imaging/Size;)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController$4;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    # getter for: Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/VideoSceneController;->access$900(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preparingParamsBeforeMediaRecordPrepare, m_Scene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/effect/VideoSceneController$4;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    # getter for: Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/effect/VideoSceneController;->access$100(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 144
    check-cast p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/effect/VideoSceneController$4;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;)V

    return-void
.end method
