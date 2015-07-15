.class public Lcom/htc/dialog/HtcAlertDialog$Builder;
.super Ljava/lang/Object;
.source "HtcAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dialog/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final FONTSIZESELECTOR_NO_HUGE:I = 0x4

.field public static final FONTSIZESELECTOR_SHOW_HUGE:I = 0x2


# instance fields
.field protected final P:Lcom/htc/dialog/HtcAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    new-instance v0, Lcom/htc/dialog/HtcAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    .line 535
    return-void
.end method


# virtual methods
.method public create()Lcom/htc/dialog/HtcAlertDialog;
    .locals 3

    .prologue
    .line 1222
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 1223
    .local v0, "dialog":Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v2, v0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertController$AlertParams;->apply(Lcom/htc/dialog/HtcAlertController;)V

    .line 1224
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setCancelable(Z)V

    .line 1225
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 1226
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1228
    :cond_0
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1229
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1230
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1231
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1233
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 933
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 934
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 935
    return-object p0
.end method

.method public setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 848
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    .line 849
    return-object p0
.end method

.method public setCheckBox(Ljava/lang/CharSequence;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "checkBoxLabel"    # Ljava/lang/CharSequence;
    .param p2, "checkBoxDefault"    # Z
    .param p3, "checkBoxListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p4, "checkBoxEnabled"    # Z

    .prologue
    .line 674
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckBoxLabel:Ljava/lang/CharSequence;

    .line 675
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckBoxDefault:Z

    .line 676
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 677
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckBoxEnabled:Z

    .line 678
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 954
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 955
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 956
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 957
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 584
    return-object p0
.end method

.method public setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    .line 617
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 628
    return-object p0
.end method

.method public setIconAttribute(I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 638
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 639
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 640
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    .line 641
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 1211
    return-object p0
.end method

.method public setIsAutoMotive(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 772
    # getter for: Lcom/htc/dialog/HtcAlertDialog;->DEBUG:Z
    invoke-static {}, Lcom/htc/dialog/HtcAlertDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcAlertDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call setIsAutoMotive: b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    .line 774
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 903
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 904
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 905
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 917
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 918
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 919
    return-object p0
.end method

.method public setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 594
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 595
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 606
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "nAutoLinkMask"    # I

    .prologue
    .line 689
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 690
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    .line 691
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 980
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 981
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 982
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 983
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 984
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 1037
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 1038
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 1039
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 1040
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 1041
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 1007
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 1008
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 1009
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 1010
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 797
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 798
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 799
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 811
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 812
    return-object p0
.end method

.method public setNegativeButtonDisabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "disabled"    # Z

    .prologue
    .line 731
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    .line 732
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 824
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 825
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 837
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 838
    return-object p0
.end method

.method public setNeutralButtonDisabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "disabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 719
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    .line 720
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 867
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 868
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 880
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1151
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 891
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 652
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 653
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 654
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 785
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 786
    return-object p0
.end method

.method public setPositiveButtonDisabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "disabled"    # Z

    .prologue
    .line 705
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    .line 706
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 1062
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1063
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 1064
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 1065
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 1089
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1090
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 1091
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 1092
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 1093
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1134
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1135
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 1136
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 1137
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 1112
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1113
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 1114
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 1115
    return-object p0
.end method

.method public setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 556
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 557
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 568
    return-object p0
.end method

.method public setTitleCenterEnabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 759
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleCenter:Z

    .line 760
    return-object p0
.end method

.method public setTitleDividerVisible(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 748
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 1164
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1165
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 1193
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1194
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    .line 1195
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingTop:I

    .line 1196
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingRight:I

    .line 1197
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p5, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    .line 1198
    return-object p0
.end method

.method public show()Lcom/htc/dialog/HtcAlertDialog;
    .locals 1

    .prologue
    .line 1242
    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 1243
    .local v0, "dialog":Lcom/htc/dialog/HtcAlertDialog;
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 1244
    return-object v0
.end method
