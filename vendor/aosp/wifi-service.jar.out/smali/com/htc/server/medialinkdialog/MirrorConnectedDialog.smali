.class public Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;
.super Ljava/lang/Object;
.source "MirrorConnectedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final TAG:Ljava/lang/String;

.field private mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/htc/dialog/HtcAlertDialog;

.field private mSupportKDDI:Z

.field private mckbxDefault:Lcom/htc/widget/HtcCheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportKDDI"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "MirrorConnectedDialog"

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mSupportKDDI:Z

    .line 26
    iput-boolean p2, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mSupportKDDI:Z

    .line 27
    iput-object p1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 29
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 52
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.WIRELESS_DISPLAY_DISMISS_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    const-string v1, "MirrorConnectedDialog"

    const-string v2, "cancel connecting dialog"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->dismiss()V

    .line 34
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-boolean v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mSupportKDDI:Z

    if-eqz v1, :cond_0

    const v1, 0x30701a9

    :goto_0
    invoke-virtual {v2, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 38
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 39
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 41
    iget-object v2, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-boolean v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mSupportKDDI:Z

    if-eqz v1, :cond_1

    const v1, 0x30701ac

    :goto_1
    invoke-virtual {v2, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 42
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    .line 43
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 45
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 46
    return-void

    .line 37
    :cond_0
    const v1, 0x307019d

    goto :goto_0

    .line 41
    :cond_1
    const v1, 0x30701a1

    goto :goto_1
.end method
