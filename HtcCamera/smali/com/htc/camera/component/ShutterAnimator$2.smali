.class Lcom/htc/camera/component/ShutterAnimator$2;
.super Ljava/lang/Object;
.source "ShutterAnimator.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ShutterAnimator;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ShutterAnimator;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/htc/camera/component/ShutterAnimator$2;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 187
    sget-object v1, Lcom/htc/camera/component/ShutterAnimator$6;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$2;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    invoke-virtual {v0}, Lcom/htc/camera/component/ShutterAnimator;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$2;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$400(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$2;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$400(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$2;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$400(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$2;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$400(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$2;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    invoke-virtual {v0}, Lcom/htc/camera/component/ShutterAnimator;->playShutterAnimation()V

    .line 205
    :cond_1
    :goto_1
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$2;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    invoke-virtual {v0}, Lcom/htc/camera/component/ShutterAnimator;->playShutterAnimation()V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$2;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$500(Lcom/htc/camera/component/ShutterAnimator;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot find Zoe Controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
