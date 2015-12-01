.class Lcom/htc/camera/component/AudioResourceRestricController$5;
.super Ljava/lang/Object;
.source "AudioResourceRestricController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AudioResourceRestricController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AudioResourceRestricController;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/camera/component/AudioResourceRestricController$5;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v5, 0x0

    const/16 v2, 0x2710

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 177
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController$5;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    const-class v1, Lcom/htc/camera/IAudioManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AudioResourceRestricController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAudioManager;

    .line 178
    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->checkOwnAudioResourceProcess()Lcom/htc/camera/IAudioManager$ProcessType;

    move-result-object v0

    .line 181
    sget-object v1, Lcom/htc/camera/IAudioManager$ProcessType;->Kineto_SmartWifi:Lcom/htc/camera/IAudioManager$ProcessType;

    if-ne v0, v1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController$5;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    iget-object v1, p0, Lcom/htc/camera/component/AudioResourceRestricController$5;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    const/4 v3, 0x2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/AudioResourceRestricController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    sget-object v1, Lcom/htc/camera/IAudioManager$ProcessType;->Other_HightPriority_Process:Lcom/htc/camera/IAudioManager$ProcessType;

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController$5;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    iget-object v1, p0, Lcom/htc/camera/component/AudioResourceRestricController$5;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    move v3, v8

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/AudioResourceRestricController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_0
.end method
