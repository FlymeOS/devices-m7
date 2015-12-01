.class public Lcom/htc/camera/ap;
.super Ljava/lang/Object;
.source "MessageHandler.java"


# direct methods
.method public static a(Landroid/os/Handler;IIILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 81
    if-nez p0, :cond_0

    .line 82
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static a(Landroid/os/Handler;IIILjava/lang/Object;J)V
    .locals 2

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 97
    invoke-virtual {p0, v0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static a(Landroid/os/Handler;IJ)V
    .locals 2

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 31
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 34
    :cond_0
    if-nez p1, :cond_1

    .line 36
    const-string v0, "MessageHandler"

    const-string v1, "callback = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Handler;I)Z
    .locals 2

    .prologue
    .line 10
    if-nez p0, :cond_0

    .line 11
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/os/Handler;I)V
    .locals 2

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static b(Landroid/os/Handler;IIILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 107
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static b(Landroid/os/Handler;IIILjava/lang/Object;J)V
    .locals 2

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 118
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    invoke-virtual {p0, v0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static b(Landroid/os/Handler;IJ)V
    .locals 2

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static c(Landroid/os/Handler;I)V
    .locals 2

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static d(Landroid/os/Handler;I)V
    .locals 2

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
