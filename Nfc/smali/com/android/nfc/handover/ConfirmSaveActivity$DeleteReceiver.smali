.class final Lcom/android/nfc/handover/ConfirmSaveActivity$DeleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfirmSaveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/ConfirmSaveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeleteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/ConfirmSaveActivity;


# direct methods
.method private constructor <init>(Lcom/android/nfc/handover/ConfirmSaveActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/nfc/handover/ConfirmSaveActivity$DeleteReceiver;->this$0:Lcom/android/nfc/handover/ConfirmSaveActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/handover/ConfirmSaveActivity;Lcom/android/nfc/handover/ConfirmSaveActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/handover/ConfirmSaveActivity;
    .param p2, "x1"    # Lcom/android/nfc/handover/ConfirmSaveActivity$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/ConfirmSaveActivity$DeleteReceiver;-><init>(Lcom/android/nfc/handover/ConfirmSaveActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "mimeType":Ljava/lang/String;
    # getter for: Lcom/android/nfc/handover/ConfirmSaveActivity;->DBG:Z
    invoke-static {}, Lcom/android/nfc/handover/ConfirmSaveActivity;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NfcConfirmSaveActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: delete intent received. close. mimeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmSaveActivity$DeleteReceiver;->this$0:Lcom/android/nfc/handover/ConfirmSaveActivity;

    invoke-virtual {v1}, Lcom/android/nfc/handover/ConfirmSaveActivity;->finish()V

    .line 101
    return-void
.end method
