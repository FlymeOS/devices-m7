.class public Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;
.super Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;
.source "ComposeRecipientHelper.java"


# instance fields
.field private bNeedRightDivider:Z

.field private mStatus:Z

.field private mTitleForStatusFalse:Ljava/lang/String;

.field private mTitleForStatusTrue:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;Ljava/lang/ref/WeakReference;Landroid/widget/LinearLayout;Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;ILcom/htc/lib1/cc/widget/recipientblock/ReceiverList;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;",
            "I",
            "Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->this$0:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p10

    .line 1146
    invoke-direct/range {v1 .. v8}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;-><init>(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;Ljava/lang/ref/WeakReference;Landroid/widget/LinearLayout;Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;ILcom/htc/lib1/cc/widget/recipientblock/ReceiverList;Z)V

    .line 1135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mStatus:Z

    .line 1137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mTitleForStatusFalse:Ljava/lang/String;

    .line 1139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mTitleForStatusTrue:Ljava/lang/String;

    .line 1141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->bNeedRightDivider:Z

    .line 1147
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mStatus:Z

    .line 1148
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mTitleForStatusTrue:Ljava/lang/String;

    .line 1149
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mTitleForStatusFalse:Ljava/lang/String;

    .line 1150
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->bNeedRightDivider:Z

    .line 1152
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->setRecipientActionBarButtonStyle()V

    .line 1154
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->setBtnText()V

    .line 1156
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->setIndicator()V

    .line 1158
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->setBtnWidth()V

    .line 1160
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->addRightDivider()V

    .line 1162
    # invokes: Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->setWidthToParentTag()V
    invoke-static {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->access$100(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)V

    .line 1164
    return-void
.end method

.method private addRightDivider()V
    .locals 2

    .prologue
    .line 1241
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mBtnType:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mBtnType:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_1

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mBtnType:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 1243
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->bNeedRightDivider:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->this$0:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    # getter for: Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNeedAddShowAll:Z
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->access$300(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->this$0:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    # invokes: Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getRecipientLines()I
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->access$400(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->this$0:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    # getter for: Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->sShowAllPreviewLinesNum:I
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->access$500(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1246
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mRightDivider:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1247
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->createRightDivider()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mRightDivider:Landroid/widget/ImageView;

    .line 1248
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mParentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mRightDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private createRightDivider()Landroid/widget/ImageView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1271
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->this$0:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    # getter for: Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->access$600(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1272
    sget v1, Lcom/htc/lib1/cc/e;->common_list_divider:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1273
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1274
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->this$0:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    # getter for: Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->access$600(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM1(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->this$0:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    # getter for: Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->access$600(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM1(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1275
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1276
    return-object v0
.end method

.method private getRecipientBtnMaxWidth()I
    .locals 3

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;

    .line 1254
    if-nez v0, :cond_0

    .line 1255
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "get recipient button max width: composeRecipientArea is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const/high16 v0, -0x80000000

    .line 1267
    :goto_0
    return v0

    .line 1259
    :cond_0
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getRecipientContainerMaxWidth()I

    move-result v1

    .line 1261
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mRightDivider:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mRightDivider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mRightDivider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mRightDivider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mRightDivider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    .line 1265
    sub-int v0, v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private setBtnText()V
    .locals 2

    .prologue
    .line 1215
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mStatus:Z

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mHtcRecipientButton:Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mTitleForStatusTrue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    :goto_0
    return-void

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mHtcRecipientButton:Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mTitleForStatusFalse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setBtnWidth()V
    .locals 2

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mHtcRecipientButton:Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getButtonWidth()I

    move-result v1

    .line 1232
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->getRecipientBtnMaxWidth()I

    move-result v0

    .line 1234
    if-le v1, v0, :cond_0

    .line 1236
    :goto_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mHtcRecipientButton:Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->setWidth(I)V

    .line 1237
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setIndicator()V
    .locals 2

    .prologue
    .line 1224
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mBtnType:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mBtnType:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mHtcRecipientButton:Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mStatus:Z

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->setIndicatorExpanded(Z)V

    goto :goto_0
.end method

.method private setRecipientActionBarButtonStyle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1188
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1189
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->mHtcRecipientButton:Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->setStyle(I)V

    .line 1190
    return-void
.end method
