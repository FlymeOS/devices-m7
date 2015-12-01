.class public Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;
.super Ljava/lang/Object;
.source "HtcAlertDialog.java"


# instance fields
.field protected final P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    new-instance v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    .line 521
    return-void
.end method


# virtual methods
.method public create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    .locals 3

    .prologue
    .line 1297
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 1298
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->mAlert:Lcom/htc/lib1/cc/app/HtcAlertController;

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->apply(Lcom/htc/lib1/cc/app/HtcAlertController;)V

    .line 1299
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 1300
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 1301
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1303
    :cond_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1304
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1305
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1306
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1308
    :cond_1
    return-object v0
.end method

.method public setMessage(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 581
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 592
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 873
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 874
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 886
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 887
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 899
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 900
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 943
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 639
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 640
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 860
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 861
    return-object p0
.end method

.method public setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 543
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 554
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;
    .locals 2

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 1239
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1240
    return-object p0
.end method

.method public show()Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    .locals 1

    .prologue
    .line 1317
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1318
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->show()V

    .line 1319
    return-object v0
.end method
