.class Lcom/android/nfc/ConfirmReceiveActivity$2;
.super Ljava/lang/Object;
.source "ConfirmReceiveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/ConfirmReceiveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/ConfirmReceiveActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/ConfirmReceiveActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/nfc/ConfirmReceiveActivity$2;->this$0:Lcom/android/nfc/ConfirmReceiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, "allowIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/ConfirmReceiveActivity$2;->this$0:Lcom/android/nfc/ConfirmReceiveActivity;

    iget v1, v1, Lcom/android/nfc/ConfirmReceiveActivity;->nUserPromptType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 53
    const-string v1, "com.htc.nfc.p2mode.action.ALLOW_RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "RECEIVED_NFC_MESSAGE"

    iget-object v2, p0, Lcom/android/nfc/ConfirmReceiveActivity$2;->this$0:Lcom/android/nfc/ConfirmReceiveActivity;

    iget-object v2, v2, Lcom/android/nfc/ConfirmReceiveActivity;->ndfmsg:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    :cond_0
    :goto_0
    const-string v1, "USER_PROMPT_TYPE"

    iget-object v2, p0, Lcom/android/nfc/ConfirmReceiveActivity$2;->this$0:Lcom/android/nfc/ConfirmReceiveActivity;

    iget v2, v2, Lcom/android/nfc/ConfirmReceiveActivity;->nUserPromptType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/android/nfc/ConfirmReceiveActivity$2;->this$0:Lcom/android/nfc/ConfirmReceiveActivity;

    invoke-virtual {v1, v0}, Lcom/android/nfc/ConfirmReceiveActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    iget-object v1, p0, Lcom/android/nfc/ConfirmReceiveActivity$2;->this$0:Lcom/android/nfc/ConfirmReceiveActivity;

    invoke-virtual {v1}, Lcom/android/nfc/ConfirmReceiveActivity;->finish()V

    .line 62
    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/ConfirmReceiveActivity$2;->this$0:Lcom/android/nfc/ConfirmReceiveActivity;

    iget v1, v1, Lcom/android/nfc/ConfirmReceiveActivity;->nUserPromptType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 57
    const-string v1, "com.htc.nfc.readmode.action.ALLOW_RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
