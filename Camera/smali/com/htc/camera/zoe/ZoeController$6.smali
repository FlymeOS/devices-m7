.class Lcom/htc/camera/zoe/ZoeController$6;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/HtcCallbackEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/HtcCallbackEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/HtcCallbackEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/HtcCallbackEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1142
    iget v0, p3, Lcom/htc/camera/HtcCallbackEventArgs;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$600(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEventReceived() - Got T0 index : "

    iget v2, p3, Lcom/htc/camera/HtcCallbackEventArgs;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1145
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$700(Lcom/htc/camera/zoe/ZoeController;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$800(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventReceived() - Already have T0 index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I
    invoke-static {v2}, Lcom/htc/camera/zoe/ZoeController;->access$700(Lcom/htc/camera/zoe/ZoeController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureState:[I

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;
    invoke-static {v1}, Lcom/htc/camera/zoe/ZoeController;->access$900(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/zoe/ZoeController$CaptureState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/zoe/ZoeController$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1157
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$1000(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventReceived() - Invalid capture state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;
    invoke-static {v2}, Lcom/htc/camera/zoe/ZoeController;->access$900(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/zoe/ZoeController$CaptureState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1160
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$1100(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ShortZoe:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/htc/camera/zoe/ZoeController;->SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    move-object v1, v0

    .line 1161
    :goto_1
    iget v2, p3, Lcom/htc/camera/HtcCallbackEventArgs;->arg1:I

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$1200(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/burst/IBurstCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->numberOfReceivedJpegs:Lcom/htc/camera/property/b;

    invoke-virtual {v0}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v2, v0, :cond_3

    .line 1162
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget v2, p3, Lcom/htc/camera/HtcCallbackEventArgs;->arg1:I

    # setter for: Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I
    invoke-static {v0, v2}, Lcom/htc/camera/zoe/ZoeController;->access$702(Lcom/htc/camera/zoe/ZoeController;I)I

    .line 1168
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-virtual {v1}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v1

    const-wide/16 v3, 0x5

    mul-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I
    invoke-static {v2}, Lcom/htc/camera/zoe/ZoeController;->access$700(Lcom/htc/camera/zoe/ZoeController;)I

    move-result v2

    add-int/2addr v1, v2

    # invokes: Lcom/htc/camera/zoe/ZoeController;->changeExpectedPictureCount(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeController;->access$1400(Lcom/htc/camera/zoe/ZoeController;I)V

    goto :goto_0

    .line 1160
    :cond_2
    sget-object v0, Lcom/htc/camera/zoe/ZoeController;->LONG_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    move-object v1, v0

    goto :goto_1

    .line 1165
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$1300(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEventReceived() - Cover index is smaller than JPEG count ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;
    invoke-static {v3}, Lcom/htc/camera/zoe/ZoeController;->access$1200(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/burst/IBurstCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/burst/IBurstCamera;->numberOfReceivedJpegs:Lcom/htc/camera/property/b;

    invoke-virtual {v3}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$6;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$1200(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/burst/IBurstCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->numberOfReceivedJpegs:Lcom/htc/camera/property/b;

    invoke-virtual {v0}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I
    invoke-static {v2, v0}, Lcom/htc/camera/zoe/ZoeController;->access$702(Lcom/htc/camera/zoe/ZoeController;I)I

    goto :goto_2

    .line 1150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1138
    check-cast p3, Lcom/htc/camera/HtcCallbackEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/zoe/ZoeController$6;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/HtcCallbackEventArgs;)V

    return-void
.end method
