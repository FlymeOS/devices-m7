.class public Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;
.super Ljava/lang/Object;
.source "NotifySwitchHDMIDialog.java"

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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "WirelessDisplayService_NotifySwitchHDMIDialog"

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mSupportKDDI:Z

    .line 27
    iput-boolean p2, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mSupportKDDI:Z

    .line 29
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x2030069

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 31
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 52
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->dismiss()V

    .line 56
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->dismiss()V

    .line 35
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 38
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v2, 0x307019d

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 40
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 42
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v2, 0x30701a7

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 43
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    .line 44
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 45
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 46
    return-void
.end method
