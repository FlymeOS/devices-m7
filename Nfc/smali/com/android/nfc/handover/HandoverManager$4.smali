.class Lcom/android/nfc/handover/HandoverManager$4;
.super Landroid/content/BroadcastReceiver;
.source "HandoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/HandoverManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverManager;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverManager$4;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 316
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getUserPromptUIOption()I

    move-result v1

    .line 317
    .local v1, "nUserPrompt":I
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1

    .line 318
    const-string v2, "HtcNfcPSE"

    const-string v3, "BootCompletedReceiver: ACC confirm on save is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-static {p1}, Lcom/android/nfc/HtcUtils;->isBeamPreviewSettingsEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    const-string v2, "NfcHandover"

    const-string v3, "BootCompletedReceiver: clear tmp folder..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager$4;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/nfc/handover/HandoverManager;->access$000(Lcom/android/nfc/handover/HandoverManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 326
    const/4 v2, 0x0

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v2, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 327
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager$4;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mMessenger:Landroid/os/Messenger;
    invoke-static {v2}, Lcom/android/nfc/handover/HandoverManager;->access$400(Lcom/android/nfc/handover/HandoverManager;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 328
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager$4;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v2, v0}, Lcom/android/nfc/handover/HandoverManager;->sendOrQueueMessageLocked(Landroid/os/Message;)Z

    .line 329
    monitor-exit v3

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
