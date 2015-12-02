.class Lcom/htc/camera/component/FlashRestrictionController$3;
.super Ljava/lang/Object;
.source "FlashRestrictionController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/FlashRestrictionController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FlashRestrictionController;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/camera/component/FlashRestrictionController$3;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 3
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
    .line 267
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$3;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    invoke-virtual {v0}, Lcom/htc/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 268
    sget-object v2, Lcom/htc/camera/component/FlashRestrictionController$10;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 276
    :pswitch_0
    sget-object v2, Lcom/htc/camera/component/FlashRestrictionController$10;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$3;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$400(Lcom/htc/camera/component/FlashRestrictionController;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$3;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    const-class v1, Lcom/htc/camera/ak;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/FlashRestrictionController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 290
    iget-object v1, p0, Lcom/htc/camera/component/FlashRestrictionController$3;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # invokes: Lcom/htc/camera/component/FlashRestrictionController;->getRestrictionHint()I
    invoke-static {v1}, Lcom/htc/camera/component/FlashRestrictionController;->access$500(Lcom/htc/camera/component/FlashRestrictionController;)I

    move-result v1

    .line 291
    if-eqz v1, :cond_0

    .line 293
    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$3;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$600(Lcom/htc/camera/component/FlashRestrictionController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 276
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
