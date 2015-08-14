.class Lcom/android/nfc/handover/HandoverManager$3;
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
    .line 284
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverManager$3;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 287
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getUserPromptUIOption()I

    move-result v3

    .line 288
    .local v3, "nUserPrompt":I
    and-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_1

    .line 289
    const-string v5, "HtcNfcPSE"

    const-string v6, "ResponseReceiver: ACC confirm on save is disabled."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-static {p1}, Lcom/android/nfc/HtcUtils;->isBeamPreviewSettingsEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "mimeType":Ljava/lang/String;
    const-string v5, "HtcNfcPSE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ResponseReceiver: intent received. mimeType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager$3;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/nfc/handover/HandoverManager;->access$000(Lcom/android/nfc/handover/HandoverManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 303
    const/4 v5, 0x0

    const/16 v7, 0x15

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-static {v5, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 304
    .local v2, "msg":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 305
    .local v4, "responseData":Landroid/os/Bundle;
    const-string v5, "BEAM_PREVIEW_RESPONSE_DATA"

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 306
    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 307
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager$3;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mMessenger:Landroid/os/Messenger;
    invoke-static {v5}, Lcom/android/nfc/handover/HandoverManager;->access$400(Lcom/android/nfc/handover/HandoverManager;)Landroid/os/Messenger;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 308
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager$3;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v5, v2}, Lcom/android/nfc/handover/HandoverManager;->sendOrQueueMessageLocked(Landroid/os/Message;)Z

    .line 309
    monitor-exit v6

    goto :goto_0

    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "responseData":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
