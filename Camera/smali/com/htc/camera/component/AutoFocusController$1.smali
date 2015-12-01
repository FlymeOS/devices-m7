.class Lcom/htc/camera/component/AutoFocusController$1;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Lcom/htc/camera/h;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFocusController;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLcom/htc/camera/CameraController;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v2, 0x2713

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 98
    if-eqz p1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$000(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAutoFocusMoving - true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$100(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/component/AutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/AutoFocusEventArgs;

    iget-object v3, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v3}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v4}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    iget-object v6, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v6}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v6

    invoke-direct {v1, v3, v4, v6, v5}, Lcom/htc/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/htc/camera/AutoFocusMode;Lcom/htc/camera/Handle;Z)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    new-instance v1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    sget-object v3, Lcom/htc/camera/AutoFocusMode;->FocusMoving:Lcom/htc/camera/AutoFocusMode;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_LastFocusAreas:Ljava/util/List;
    invoke-static {v4}, Lcom/htc/camera/component/AutoFocusController;->access$300(Lcom/htc/camera/component/AutoFocusController;)Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_LastFocusAreas:Ljava/util/List;
    invoke-static {v6}, Lcom/htc/camera/component/AutoFocusController;->access$300(Lcom/htc/camera/component/AutoFocusController;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v3, v4, v6}, Lcom/htc/camera/component/AutoFocusController$FocusHandle;-><init>(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)V

    # setter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFocusController;->access$202(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 106
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/component/AutoFocusController;->autoFocusStartingEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/AutoFocusEventArgs;

    iget-object v3, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v3}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v4}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    iget-object v6, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v6}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v6

    invoke-direct {v1, v3, v4, v6, v7}, Lcom/htc/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/htc/camera/AutoFocusMode;Lcom/htc/camera/Handle;Z)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 107
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/component/AutoFocusController;->autoFocusStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/AutoFocusEventArgs;

    iget-object v3, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v3}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v4}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    iget-object v6, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v6}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v6

    invoke-direct {v1, v3, v4, v6, v7}, Lcom/htc/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/htc/camera/AutoFocusMode;Lcom/htc/camera/Handle;Z)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 109
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    const-wide/16 v3, 0x1388

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/AutoFocusController;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 110
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v1}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v1

    # setter for: Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFocusController;->access$102(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$400(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAutoFocusMoving - false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/component/AutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/AutoFocusEventArgs;

    iget-object v3, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v3}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v4}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    iget-object v6, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v6}, Lcom/htc/camera/component/AutoFocusController;->access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    move-result-object v6

    invoke-direct {v1, v3, v4, v6, v5}, Lcom/htc/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/htc/camera/AutoFocusMode;Lcom/htc/camera/Handle;Z)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 118
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # setter for: Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v0, v8}, Lcom/htc/camera/component/AutoFocusController;->access$202(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 119
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # setter for: Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    invoke-static {v0, v8}, Lcom/htc/camera/component/AutoFocusController;->access$102(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 120
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/AutoFocusController;->removeMessages(I)V

    .line 121
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # invokes: Lcom/htc/camera/component/AutoFocusController;->scheduleAutoFocus()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$500(Lcom/htc/camera/component/AutoFocusController;)V

    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$1;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$600(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAutoFocusMoving - m_FocusMovinghandle null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
