.class public Lcom/android/nfc/ConfirmReceiveActivity;
.super Landroid/app/Activity;
.source "ConfirmReceiveActivity.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NfcConfirmReceiveActivity"


# instance fields
.field nUserPromptType:I

.field ndfmsg:Landroid/nfc/NdefMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/ConfirmReceiveActivity;->ndfmsg:Landroid/nfc/NdefMessage;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x2

    invoke-direct {v1, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 38
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmReceiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 39
    .local v3, "launchIntent":Landroid/content/Intent;
    const-string v5, "USER_PROMPT_TYPE"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/nfc/ConfirmReceiveActivity;->nUserPromptType:I

    .line 40
    iget v5, p0, Lcom/android/nfc/ConfirmReceiveActivity;->nUserPromptType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 41
    const-string v5, "RECEIVED_NFC_MESSAGE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/nfc/NdefMessage;

    iput-object v5, p0, Lcom/android/nfc/ConfirmReceiveActivity;->ndfmsg:Landroid/nfc/NdefMessage;

    .line 43
    :cond_0
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "NfcConfirmReceiveActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Prompt type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/nfc/ConfirmReceiveActivity;->nUserPromptType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmReceiveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 45
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x3070184

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "confirmString":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f07001a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/nfc/ConfirmReceiveActivity$2;

    invoke-direct {v7, p0}, Lcom/android/nfc/ConfirmReceiveActivity$2;-><init>(Lcom/android/nfc/ConfirmReceiveActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f07001b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/nfc/ConfirmReceiveActivity$1;

    invoke-direct {v7, p0}, Lcom/android/nfc/ConfirmReceiveActivity$1;-><init>(Lcom/android/nfc/ConfirmReceiveActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 72
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 73
    return-void
.end method
