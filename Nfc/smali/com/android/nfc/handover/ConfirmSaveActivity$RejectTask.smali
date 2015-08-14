.class Lcom/android/nfc/handover/ConfirmSaveActivity$RejectTask;
.super Ljava/lang/Object;
.source "ConfirmSaveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/ConfirmSaveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RejectTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/ConfirmSaveActivity;


# direct methods
.method private constructor <init>(Lcom/android/nfc/handover/ConfirmSaveActivity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/nfc/handover/ConfirmSaveActivity$RejectTask;->this$0:Lcom/android/nfc/handover/ConfirmSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/handover/ConfirmSaveActivity;Lcom/android/nfc/handover/ConfirmSaveActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/handover/ConfirmSaveActivity;
    .param p2, "x1"    # Lcom/android/nfc/handover/ConfirmSaveActivity$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/ConfirmSaveActivity$RejectTask;-><init>(Lcom/android/nfc/handover/ConfirmSaveActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    # getter for: Lcom/android/nfc/handover/ConfirmSaveActivity;->DBG:Z
    invoke-static {}, Lcom/android/nfc/handover/ConfirmSaveActivity;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "NfcConfirmSaveActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RejectTask: mAnswered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/ConfirmSaveActivity$RejectTask;->this$0:Lcom/android/nfc/handover/ConfirmSaveActivity;

    # getter for: Lcom/android/nfc/handover/ConfirmSaveActivity;->mAnswered:Z
    invoke-static {v2}, Lcom/android/nfc/handover/ConfirmSaveActivity;->access$500(Lcom/android/nfc/handover/ConfirmSaveActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity$RejectTask;->this$0:Lcom/android/nfc/handover/ConfirmSaveActivity;

    # getter for: Lcom/android/nfc/handover/ConfirmSaveActivity;->mAnswered:Z
    invoke-static {v0}, Lcom/android/nfc/handover/ConfirmSaveActivity;->access$500(Lcom/android/nfc/handover/ConfirmSaveActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity$RejectTask;->this$0:Lcom/android/nfc/handover/ConfirmSaveActivity;

    const/4 v1, 0x0

    # invokes: Lcom/android/nfc/handover/ConfirmSaveActivity;->sendResult(Z)V
    invoke-static {v0, v1}, Lcom/android/nfc/handover/ConfirmSaveActivity;->access$600(Lcom/android/nfc/handover/ConfirmSaveActivity;Z)V

    .line 176
    :cond_1
    # getter for: Lcom/android/nfc/handover/ConfirmSaveActivity;->DBG:Z
    invoke-static {}, Lcom/android/nfc/handover/ConfirmSaveActivity;->access$300()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    const-string v0, "NfcConfirmSaveActivity"

    const-string v1, "RejectTask: done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity$RejectTask;->this$0:Lcom/android/nfc/handover/ConfirmSaveActivity;

    # getter for: Lcom/android/nfc/handover/ConfirmSaveActivity;->mThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/nfc/handover/ConfirmSaveActivity;->access$700(Lcom/android/nfc/handover/ConfirmSaveActivity;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 180
    return-void
.end method
