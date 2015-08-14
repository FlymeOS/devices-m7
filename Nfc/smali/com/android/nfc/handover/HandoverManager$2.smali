.class Lcom/android/nfc/handover/HandoverManager$2;
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
    .line 253
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverManager$2;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 256
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$2;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/nfc/handover/HandoverManager;->unbindServiceIfNeededLocked(Z)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x80000000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 264
    .local v1, "state":I
    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 265
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$2;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-boolean v2, v4, Lcom/android/nfc/handover/HandoverManager;->mBluetoothEnabledByNfc:Z

    .line 266
    .local v2, "tempBTByNfc":Z
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$2;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-boolean v3, v4, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetConnected:Z

    .line 269
    .local v3, "tempBTHConnected":Z
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$2;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mBound:Z
    invoke-static {v4}, Lcom/android/nfc/handover/HandoverManager;->access$300(Lcom/android/nfc/handover/HandoverManager;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 270
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$2;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iput-boolean v6, v4, Lcom/android/nfc/handover/HandoverManager;->mBluetoothEnabledByNfc:Z

    .line 271
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$2;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iput-boolean v6, v4, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetConnected:Z

    .line 274
    :cond_2
    const-string v4, "NfcHandover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: mBound="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/handover/HandoverManager$2;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mBound:Z
    invoke-static {v6}, Lcom/android/nfc/handover/HandoverManager;->access$300(Lcom/android/nfc/handover/HandoverManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", BTByNfc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/handover/HandoverManager$2;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-boolean v6, v6, Lcom/android/nfc/handover/HandoverManager;->mBluetoothEnabledByNfc:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", BTHConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/handover/HandoverManager$2;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-boolean v6, v6, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
