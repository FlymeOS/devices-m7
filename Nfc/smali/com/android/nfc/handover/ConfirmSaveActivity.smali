.class public final Lcom/android/nfc/handover/ConfirmSaveActivity;
.super Landroid/app/Activity;
.source "ConfirmSaveActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/ConfirmSaveActivity$RejectTask;,
        Lcom/android/nfc/handover/ConfirmSaveActivity$AcceptTask;,
        Lcom/android/nfc/handover/ConfirmSaveActivity$DeleteReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NfcConfirmSaveActivity"


# instance fields
.field private mAcceptButton:Landroid/content/DialogInterface$OnClickListener;

.field private final mAcceptTask:Lcom/android/nfc/handover/ConfirmSaveActivity$AcceptTask;

.field private mAnswered:Z

.field private mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLaunchIntent:Landroid/content/Intent;

.field private mMimeType:Ljava/lang/String;

.field private mRejectButton:Landroid/content/DialogInterface$OnClickListener;

.field private final mRejectTask:Lcom/android/nfc/handover/ConfirmSaveActivity$RejectTask;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/nfc/handover/ConfirmSaveActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Lcom/android/nfc/handover/ConfirmSaveActivity$AcceptTask;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/ConfirmSaveActivity$AcceptTask;-><init>(Lcom/android/nfc/handover/ConfirmSaveActivity;Lcom/android/nfc/handover/ConfirmSaveActivity$1;)V

    iput-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mAcceptTask:Lcom/android/nfc/handover/ConfirmSaveActivity$AcceptTask;

    .line 44
    new-instance v0, Lcom/android/nfc/handover/ConfirmSaveActivity$RejectTask;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/ConfirmSaveActivity$RejectTask;-><init>(Lcom/android/nfc/handover/ConfirmSaveActivity;Lcom/android/nfc/handover/ConfirmSaveActivity$1;)V

    iput-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mRejectTask:Lcom/android/nfc/handover/ConfirmSaveActivity$RejectTask;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mAnswered:Z

    .line 118
    new-instance v0, Lcom/android/nfc/handover/ConfirmSaveActivity$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/ConfirmSaveActivity$1;-><init>(Lcom/android/nfc/handover/ConfirmSaveActivity;)V

    iput-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mAcceptButton:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    new-instance v0, Lcom/android/nfc/handover/ConfirmSaveActivity$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/ConfirmSaveActivity$2;-><init>(Lcom/android/nfc/handover/ConfirmSaveActivity;)V

    iput-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mRejectButton:Landroid/content/DialogInterface$OnClickListener;

    .line 167
    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/nfc/handover/ConfirmSaveActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/nfc/handover/ConfirmSaveActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/ConfirmSaveActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/ConfirmSaveActivity;->onUserClick(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/nfc/handover/ConfirmSaveActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/ConfirmSaveActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mAnswered:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/nfc/handover/ConfirmSaveActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/ConfirmSaveActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/ConfirmSaveActivity;->sendResult(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/nfc/handover/ConfirmSaveActivity;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/ConfirmSaveActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private onUserClick(Z)V
    .locals 3
    .param p1, "accept"    # Z

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/nfc/handover/ConfirmSaveActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "NfcConfirmSaveActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserClick: accept="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnswered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mAnswered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mAnswered:Z

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mAcceptTask:Lcom/android/nfc/handover/ConfirmSaveActivity$AcceptTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mRejectTask:Lcom/android/nfc/handover/ConfirmSaveActivity$RejectTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    if-eqz p1, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mAcceptTask:Lcom/android/nfc/handover/ConfirmSaveActivity$AcceptTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mRejectTask:Lcom/android/nfc/handover/ConfirmSaveActivity$RejectTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private sendResult(Z)V
    .locals 3
    .param p1, "accept"    # Z

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.tag.action.BeamPreview.Result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "resultIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    if-eqz p1, :cond_0

    .line 187
    const-string v1, "AcceptList"

    iget-object v2, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 191
    :goto_0
    const-string v1, "com.htc.permission.BEAM_PREVIEW"

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/handover/ConfirmSaveActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 192
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mAnswered:Z

    .line 193
    return-void

    .line 189
    :cond_0
    const-string v1, "RejectList"

    iget-object v2, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showUserPrompt(I)V
    .locals 8
    .param p1, "fileCount"    # I

    .prologue
    const/4 v7, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmSaveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 106
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x307018c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "confirmString":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 109
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 111
    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mAcceptButton:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    const v4, 0x7f07001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mRejectButton:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 115
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 116
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "ConfirmSaveActivity"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mThread:Landroid/os/HandlerThread;

    .line 60
    iget-object v3, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mHandler:Landroid/os/Handler;

    .line 63
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmSaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 65
    iget-object v3, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mMimeType:Ljava/lang/String;

    .line 66
    iget-object v3, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mLaunchIntent:Landroid/content/Intent;

    const-string v4, "FileList"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mFileList:Ljava/util/ArrayList;

    .line 68
    iget-object v3, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mFileList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 70
    .local v1, "fileCount":I
    :goto_0
    sget-boolean v3, Lcom/android/nfc/handover/ConfirmSaveActivity;->DBG:Z

    if-eqz v3, :cond_0

    .line 71
    const-string v3, "NfcConfirmSaveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: mMimeType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFileList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fileCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.htc.HtcNfcPSE.ClearNotification"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_1
    :goto_1
    new-instance v3, Lcom/android/nfc/handover/ConfirmSaveActivity$DeleteReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/nfc/handover/ConfirmSaveActivity$DeleteReceiver;-><init>(Lcom/android/nfc/handover/ConfirmSaveActivity;Lcom/android/nfc/handover/ConfirmSaveActivity$1;)V

    const-string v4, "com.htc.permission.BEAM_PREVIEW"

    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/android/nfc/handover/ConfirmSaveActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 83
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/ConfirmSaveActivity;->showUserPrompt(I)V

    .line 84
    return-void

    .line 68
    .end local v1    # "fileCount":I
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 78
    .restart local v1    # "fileCount":I
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/nfc/handover/ConfirmSaveActivity;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "NfcConfirmSaveActivity"

    const-string v4, "onCreate: Exception caught."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/nfc/handover/ConfirmSaveActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcConfirmSaveActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy: mAnswered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mAnswered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmSaveActivity;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 91
    return-void
.end method
