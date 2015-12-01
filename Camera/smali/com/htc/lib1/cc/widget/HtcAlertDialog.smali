.class public Lcom/htc/lib1/cc/widget/HtcAlertDialog;
.super Landroid/app/Dialog;
.source "HtcAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected mAlert:Lcom/htc/lib1/cc/app/HtcAlertController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/htc/lib1/cc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 102
    new-instance v0, Lcom/htc/lib1/cc/app/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/htc/lib1/cc/app/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->mAlert:Lcom/htc/lib1/cc/app/HtcAlertController;

    .line 105
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->mAlert:Lcom/htc/lib1/cc/app/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/app/HtcAlertController;->setTitleCenterEnabled(Z)V

    .line 106
    return-void
.end method

.method public static getDefaultListItemHeight(Landroid/content/Context;Z)I
    .locals 1

    .prologue
    .line 191
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 192
    :goto_0
    invoke-static {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 193
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->mAlert:Lcom/htc/lib1/cc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 459
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->mAlert:Lcom/htc/lib1/cc/app/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->installContent()V

    .line 462
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 464
    const/4 v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 465
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 466
    sget-boolean v0, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAlertDialog"

    const-string v1, "[onCreate] auto launch SIP."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->mAlert:Lcom/htc/lib1/cc/app/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/app/HtcAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 478
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->mAlert:Lcom/htc/lib1/cc/app/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/app/HtcAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 489
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->mAlert:Lcom/htc/lib1/cc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/app/HtcAlertController;->setInverseBackgroundForced(Z)V

    .line 452
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->mAlert:Lcom/htc/lib1/cc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/app/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 271
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->mAlert:Lcom/htc/lib1/cc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->mAlert:Lcom/htc/lib1/cc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/app/HtcAlertController;->setView(Landroid/view/View;)V

    .line 279
    return-void
.end method
