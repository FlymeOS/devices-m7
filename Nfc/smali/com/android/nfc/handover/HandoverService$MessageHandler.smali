.class Lcom/android/nfc/handover/HandoverService$MessageHandler;
.super Landroid/os/Handler;
.source "HandoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/HandoverService;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverService;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 153
    :sswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v3, v0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    .line 155
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    .line 156
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_1

    :goto_2
    iput-boolean v1, v0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetConnected:Z

    .line 158
    const-string v0, "HandoverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: mBTHeadsetConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    iget-boolean v2, v2, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v0, v2

    .line 155
    goto :goto_1

    :cond_1
    move v1, v2

    .line 156
    goto :goto_2

    .line 162
    :sswitch_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    goto :goto_0

    .line 165
    :sswitch_2
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/HandoverService;->doIncomingTransfer(Landroid/os/Message;)V

    goto :goto_0

    .line 168
    :sswitch_3
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/HandoverService;->doOutgoingTransfer(Landroid/os/Message;)V

    goto :goto_0

    .line 171
    :sswitch_4
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/HandoverService;->doPeripheralHandover(Landroid/os/Message;)V

    goto :goto_0

    .line 174
    :sswitch_5
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const v1, 0x88b8

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->pausePolling(I)V

    goto :goto_0

    .line 177
    :sswitch_6
    invoke-static {}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getInstance()Lcom/android/nfc/handover/HtcPendingSaveExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->processBeamPreviewResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 180
    :sswitch_7
    invoke-static {}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getInstance()Lcom/android/nfc/handover/HtcPendingSaveExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->processBootComplete4BeamPreview(Landroid/os/Message;)V

    goto :goto_0

    .line 151
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
    .end sparse-switch
.end method
