.class Lcom/htc/camera/component/ContinuousBurstUI$1;
.super Ljava/lang/Object;
.source "ContinuousBurstUI.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/ExternalCommandEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ContinuousBurstUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ContinuousBurstUI;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/ExternalCommandEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/ExternalCommandEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/ExternalCommandEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x1f4

    const/4 v4, 0x0

    .line 275
    iget-object v0, p3, Lcom/htc/camera/ExternalCommandEventArgs;->command:Ljava/lang/String;

    .line 276
    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$000(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_conti_burst_long_press_timeout TIMEOUT(Milliseconds)"

    invoke-virtual {p3, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$100(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_max_conti_burst_pictures PICTURE_COUNT"

    invoke-virtual {p3, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v1, "set_conti_burst_long_press_timeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    iget-object v0, p3, Lcom/htc/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # setter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v0, v2}, Lcom/htc/camera/component/ContinuousBurstUI;->access$202(Lcom/htc/camera/component/ContinuousBurstUI;I)I

    .line 301
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_continuous_burst_long_press_timeout"

    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v2}, Lcom/htc/camera/component/ContinuousBurstUI;->access$200(Lcom/htc/camera/component/ContinuousBurstUI;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$500(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Long-press timeout has been changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v2}, Lcom/htc/camera/component/ContinuousBurstUI;->access$200(Lcom/htc/camera/component/ContinuousBurstUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p3}, Lcom/htc/camera/ExternalCommandEventArgs;->setHandled()V

    goto :goto_0

    .line 289
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    iget-object v1, p3, Lcom/htc/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$202(Lcom/htc/camera/component/ContinuousBurstUI;I)I

    .line 290
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$200(Lcom/htc/camera/component/ContinuousBurstUI;)I

    move-result v0

    if-gez v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    const/16 v1, 0x1f4

    # setter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$202(Lcom/htc/camera/component/ContinuousBurstUI;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 293
    :catch_0
    move-exception v0

    .line 295
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$300(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEventReceived() - Invalid timeout argument from external command"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$400(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid timeout \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/htc/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p3}, Lcom/htc/camera/ExternalCommandEventArgs;->setHandled()V

    goto/16 :goto_0

    .line 305
    :cond_4
    const-string v1, "set_max_conti_burst_pictures"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$600(Lcom/htc/camera/component/ContinuousBurstUI;)I

    move-result v0

    if-nez v0, :cond_8

    .line 310
    iget-object v0, p3, Lcom/htc/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_5

    .line 312
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$700(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No picture count specified"

    invoke-virtual {p3, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p3}, Lcom/htc/camera/ExternalCommandEventArgs;->setHandled()V

    goto/16 :goto_0

    .line 318
    :cond_5
    :try_start_1
    iget-object v0, p3, Lcom/htc/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 319
    if-gtz v3, :cond_6

    .line 320
    const/16 v3, 0x14

    .line 329
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # invokes: Lcom/htc/camera/component/ContinuousBurstUI;->linkToController()Z
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1000(Lcom/htc/camera/component/ContinuousBurstUI;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 331
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;
    invoke-static {v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1100(Lcom/htc/camera/component/ContinuousBurstUI;)Lcom/htc/camera/component/ContinuousBurstController;

    move-result-object v1

    const/16 v2, 0x2715

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1200(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum picture count has been changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :goto_2
    invoke-virtual {p3}, Lcom/htc/camera/ExternalCommandEventArgs;->setHandled()V

    goto/16 :goto_0

    .line 322
    :catch_1
    move-exception v0

    .line 324
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$800(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEventReceived() - Invalid picture count from external command"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$900(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid picture count \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/htc/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p3}, Lcom/htc/camera/ExternalCommandEventArgs;->setHandled()V

    goto/16 :goto_0

    .line 335
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1300(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot change maximum picture count due to no controller"

    invoke-virtual {p3, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 338
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$1;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1400(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot change maximum picture count due to current state"

    invoke-virtual {p3, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 271
    check-cast p3, Lcom/htc/camera/ExternalCommandEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/ContinuousBurstUI$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/ExternalCommandEventArgs;)V

    return-void
.end method
