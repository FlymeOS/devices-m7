.class public Lcom/htc/lib1/cc/app/HtcAlertController;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mAutoLinkMask:I

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeDisabled:Z

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralDisabled:Z

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveDisabled:Z

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckBoxCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

.field private mCheckBoxDefault:Z

.field private mCheckBoxEnabled:Z

.field private mCheckBoxLabel:Ljava/lang/CharSequence;

.field private mCheckBoxListener:Lcom/htc/lib1/cc/widget/u;

.field private mCheckBoxPanel:Landroid/view/View;

.field private mCheckBoxTextView:Landroid/widget/TextView;

.field private mCheckPanelLayout:I

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIsAutoMotive:Z

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mPadding1:Landroid/view/View;

.field private mPadding3:Landroid/view/View;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v2, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mViewSpacingSpecified:Z

    .line 125
    iput v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconId:I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mForceInverseBackground:Z

    .line 143
    iput v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckedItem:I

    .line 164
    iput v2, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mAutoLinkMask:I

    .line 170
    iput-object v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    .line 171
    iput-object v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    .line 184
    new-instance v0, Lcom/htc/lib1/cc/app/HtcAlertController$1;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/app/HtcAlertController$1;-><init>(Lcom/htc/lib1/cc/app/HtcAlertController;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 246
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mContext:Landroid/content/Context;

    .line 247
    iput-object p2, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 248
    iput-object p3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    .line 249
    new-instance v0, Lcom/htc/lib1/cc/app/HtcAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/htc/lib1/cc/app/HtcAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mHandler:Landroid/os/Handler;

    .line 252
    sget v0, Lcom/htc/lib1/cc/i;->alert_dialog:I

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mAlertDialogLayout:I

    .line 253
    sget v0, Lcom/htc/lib1/cc/i;->select_dialog:I

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListLayout:I

    .line 254
    sget v0, Lcom/htc/lib1/cc/i;->dialog_listitem_check:I

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMultiChoiceItemLayout:I

    .line 255
    sget v0, Lcom/htc/lib1/cc/i;->dialog_listitem_radio:I

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mSingleChoiceItemLayout:I

    .line 256
    sget v0, Lcom/htc/lib1/cc/i;->dialog_listitem:I

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListItemLayout:I

    .line 257
    sget v0, Lcom/htc/lib1/cc/i;->dialog_checkpanel:I

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckPanelLayout:I

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lib1/cc/app/HtcAlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lib1/cc/app/HtcAlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/lib1/cc/app/HtcAlertController;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/lib1/cc/app/HtcAlertController;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/lib1/cc/app/HtcAlertController;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/lib1/cc/app/HtcAlertController;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/lib1/cc/app/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/htc/lib1/cc/app/HtcAlertController;I)I
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1602(Lcom/htc/lib1/cc/app/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/lib1/cc/app/HtcAlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/lib1/cc/app/HtcAlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lib1/cc/app/HtcAlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/lib1/cc/app/HtcAlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/lib1/cc/app/HtcAlertController;)Landroid/content/DialogInterface;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/lib1/cc/app/HtcAlertController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/lib1/cc/app/HtcAlertController;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/lib1/cc/app/HtcAlertController;)Lcom/htc/lib1/cc/widget/HtcCheckBox;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    return-object v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    :goto_0
    return v0

    .line 271
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    .line 272
    goto :goto_0

    .line 275
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 276
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 277
    :cond_2
    if-lez v2, :cond_3

    .line 278
    add-int/lit8 v2, v2, -0x1

    .line 279
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 280
    invoke-static {v3}, Lcom/htc/lib1/cc/app/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 285
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 994
    const/4 v1, 0x0

    .line 996
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/htc/lib1/cc/g;->leftSpacer:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 997
    if-eqz v2, :cond_0

    .line 998
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 999
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1000
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/htc/lib1/cc/g;->rightSpacer:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1005
    if-eqz v2, :cond_1

    .line 1006
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1007
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1008
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1009
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    :cond_1
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 20

    .prologue
    .line 1019
    const/4 v2, 0x0

    sget v3, Lcom/htc/lib1/cc/e;->common_dialogbox_full_dark:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 1020
    const/4 v2, 0x1

    sget v3, Lcom/htc/lib1/cc/e;->common_dialogbox_top_dark:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1021
    const/4 v2, 0x2

    sget v3, Lcom/htc/lib1/cc/e;->common_dialogbox_center_dark:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1022
    const/4 v2, 0x3

    sget v3, Lcom/htc/lib1/cc/e;->common_dialogbox_bottom_dark:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1023
    const/4 v2, 0x4

    sget v6, Lcom/htc/lib1/cc/e;->common_dialogbox_full_bright:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 1024
    const/4 v2, 0x5

    sget v6, Lcom/htc/lib1/cc/e;->common_dialogbox_top_bright:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 1025
    const/4 v2, 0x6

    sget v6, Lcom/htc/lib1/cc/e;->common_dialogbox_center_bright:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 1026
    const/4 v2, 0x7

    sget v6, Lcom/htc/lib1/cc/e;->common_dialogbox_bottom_bright:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 1027
    const/16 v2, 0x8

    sget v6, Lcom/htc/lib1/cc/e;->common_dialogbox_bottom_medium:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1029
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v6, :cond_0

    .line 1031
    sget v2, Lcom/htc/lib1/cc/e;->automotive_common_dialogbox_bottom_medium:I

    .line 1032
    sget v3, Lcom/htc/lib1/cc/e;->automotive_common_dialogbox_bottom_dark:I

    .line 1033
    sget v5, Lcom/htc/lib1/cc/e;->automotive_common_dialogbox_top_dark:I

    .line 1034
    sget v4, Lcom/htc/lib1/cc/e;->automotive_common_dialogbox_center_dark:I

    .line 1038
    :cond_0
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    sget v8, Lcom/htc/lib1/cc/b;->multiply_color:I

    aput v8, v6, v7

    .line 1039
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1040
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v16

    .line 1041
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1043
    sget-boolean v6, Lcom/htc/lib1/cc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_1

    .line 1044
    const-string v6, "HtcAlertController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBackground: fullDark="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " topDark="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " centerDark="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bottomDark="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " fullBright="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " topBright="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " centerBright="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bottomBright="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bottomMedium="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mForceInverseBackground="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mForceInverseBackground:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsAutoMotive="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIsAutoMotive:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hasTitle="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hasButtons="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " categoryColor="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_1
    const/4 v6, 0x4

    new-array v0, v6, [Landroid/view/View;

    move-object/from16 v17, v0

    .line 1072
    const/4 v6, 0x4

    new-array v0, v6, [Z

    move-object/from16 v18, v0

    .line 1073
    const/4 v9, 0x0

    .line 1074
    const/4 v8, 0x0

    .line 1076
    const/4 v6, 0x0

    .line 1077
    if-eqz p6, :cond_2

    .line 1078
    aput-object p1, v17, v6

    .line 1079
    const/4 v7, 0x0

    aput-boolean v7, v18, v6

    .line 1080
    const/4 v6, 0x1

    .line 1088
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    const/16 v10, 0x8

    if-ne v7, v10, :cond_3

    const/16 p2, 0x0

    :cond_3
    aput-object p2, v17, v6

    .line 1092
    const/4 v7, 0x1

    aput-boolean v7, v18, v6

    .line 1094
    add-int/lit8 v6, v6, 0x1

    .line 1095
    if-eqz p3, :cond_4

    .line 1096
    aput-object p3, v17, v6

    .line 1097
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mForceInverseBackground:Z

    aput-boolean v7, v18, v6

    .line 1098
    add-int/lit8 v6, v6, 0x1

    .line 1100
    :cond_4
    if-nez p4, :cond_5

    if-eqz p6, :cond_6

    .line 1101
    :cond_5
    aput-object p7, v17, v6

    .line 1102
    const/4 v7, 0x0

    aput-boolean v7, v18, v6

    .line 1105
    :cond_6
    const/4 v6, 0x0

    .line 1106
    const/4 v7, 0x0

    move v10, v7

    move v7, v8

    move-object v8, v9

    :goto_0
    move-object/from16 v0, v17

    array-length v9, v0

    if-ge v10, v9, :cond_d

    .line 1107
    aget-object v9, v17, v10

    .line 1108
    if-nez v9, :cond_7

    .line 1106
    :goto_1
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    .line 1111
    :cond_7
    if-eqz v8, :cond_9

    .line 1112
    if-nez v6, :cond_b

    .line 1113
    if-eqz v7, :cond_a

    move v6, v11

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1114
    if-eqz p6, :cond_8

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIsAutoMotive:Z

    if-nez v6, :cond_8

    .line 1115
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1116
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1117
    invoke-virtual {v8, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1122
    :cond_8
    :goto_3
    const/4 v6, 0x1

    .line 1125
    :cond_9
    aget-boolean v7, v18, v10

    move-object v8, v9

    goto :goto_1

    :cond_a
    move v6, v5

    .line 1113
    goto :goto_2

    .line 1120
    :cond_b
    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIsAutoMotive:Z

    if-nez v6, :cond_c

    move v6, v12

    :goto_4
    invoke-virtual {v8, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_c
    move v6, v4

    goto :goto_4

    .line 1128
    :cond_d
    if-eqz v8, :cond_e

    .line 1129
    if-eqz v6, :cond_13

    .line 1134
    if-eqz p4, :cond_11

    :goto_5
    invoke-virtual {v8, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1136
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v2, v8, v1}, Lcom/htc/lib1/cc/app/HtcAlertController;->setupButtonsHeight(Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V

    .line 1167
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_f

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1169
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckedItem:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_f

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckedItem:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckedItem:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 1175
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    if-eqz v2, :cond_10

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mForceInverseBackground:Z

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIsAutoMotive:Z

    if-nez v3, :cond_15

    :goto_7
    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1178
    :cond_10
    return-void

    .line 1134
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v2, :cond_12

    move v2, v3

    goto :goto_5

    :cond_12
    move v2, v13

    goto :goto_5

    .line 1138
    :cond_13
    if-eqz v7, :cond_14

    move v2, v14

    :goto_8
    invoke-virtual {v8, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    :cond_14
    move v2, v15

    goto :goto_8

    :cond_15
    move v12, v4

    .line 1176
    goto :goto_7
.end method

.method private setupButtonTextLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1196
    const/4 v0, 0x3

    new-array v4, v0, [Landroid/widget/Button;

    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    aput-object v0, v4, v9

    .line 1197
    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    .line 1198
    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 1199
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1205
    :goto_2
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 1206
    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_1

    move v0, v2

    .line 1214
    :goto_3
    if-eqz v0, :cond_2

    .line 1216
    invoke-virtual {v6, v1}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 1217
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setMaxLines(I)V

    .line 1218
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 1205
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1221
    :cond_2
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 1222
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setMaxLines(I)V

    .line 1223
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1224
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_1

    .line 1227
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 861
    .line 862
    const/4 v4, 0x2

    .line 863
    const/4 v5, 0x4

    .line 865
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/htc/lib1/cc/g;->button1:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 866
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 869
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    .line 876
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcom/htc/lib1/cc/g;->button2:I

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 877
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 880
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 888
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcom/htc/lib1/cc/g;->button3:I

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 889
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 892
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 901
    :goto_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositiveDisabled:Z

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 904
    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegativeDisabled:Z

    if-eqz v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 907
    :cond_1
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutralDisabled:Z

    if-eqz v0, :cond_2

    .line 908
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 916
    :cond_2
    if-ne v1, v3, :cond_9

    .line 917
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    .line 924
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mContext:Landroid/content/Context;

    .line 925
    if-eqz v4, :cond_5

    .line 926
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/htc/lib1/cc/g;->padding1:I

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    .line 927
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/htc/lib1/cc/g;->padding3:I

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    .line 930
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v0, :cond_4

    .line 933
    sget v0, Lcom/htc/lib1/cc/k;->fixed_automotive_darklist_primary_xs:I

    .line 934
    iget-object v5, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v4, v0}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 935
    iget-object v5, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v4, v0}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 936
    iget-object v5, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v4, v0}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 938
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    sget v5, Lcom/htc/lib1/cc/e;->common_b_div_land:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 939
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    sget v5, Lcom/htc/lib1/cc/e;->common_b_div_land:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 943
    :cond_4
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 944
    sget v5, Lcom/htc/lib1/cc/d;->htc_footer_height:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/htc/lib1/cc/d;->margin_m:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v5, v0

    .line 945
    iget-object v5, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 947
    const/4 v6, 0x3

    if-ne v1, v6, :cond_b

    .line 948
    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 949
    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 950
    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 951
    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 952
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcIconButton;->useSelectorWhenPressed(Z)V

    .line 981
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcIconButton;->useSelectorWhenPressed(Z)V

    .line 982
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcIconButton;->useSelectorWhenPressed(Z)V

    .line 984
    invoke-direct {p0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setupButtonTextLayout()V

    .line 985
    invoke-static {v4}, Lcom/htc/lib1/cc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v0

    .line 986
    iget-object v4, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 987
    iget-object v4, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 988
    iget-object v4, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 989
    if-eqz v1, :cond_e

    :goto_5
    return v3

    .line 871
    :cond_6
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    .line 873
    goto/16 :goto_0

    .line 882
    :cond_7
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 885
    or-int/2addr v1, v4

    goto/16 :goto_1

    .line 894
    :cond_8
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 897
    or-int/2addr v1, v5

    goto/16 :goto_2

    .line 918
    :cond_9
    if-ne v1, v4, :cond_a

    .line 919
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 920
    :cond_a
    if-ne v1, v5, :cond_3

    .line 921
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 953
    :cond_b
    const/4 v6, 0x5

    if-ne v1, v6, :cond_c

    .line 954
    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 955
    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 956
    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 957
    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 958
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 959
    :cond_c
    const/4 v6, 0x6

    if-ne v1, v6, :cond_d

    .line 960
    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 961
    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 962
    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 963
    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 964
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 965
    :cond_d
    const/4 v6, 0x7

    if-ne v1, v6, :cond_5

    .line 966
    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 967
    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 968
    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 969
    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 970
    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 971
    iget-object v7, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 973
    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 974
    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 975
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_e
    move v3, v2

    .line 989
    goto/16 :goto_5
.end method

.method private setupButtonsHeight(Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 1231
    if-nez p3, :cond_0

    .line 1232
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1233
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1234
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1236
    :cond_0
    return-void
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 9

    .prologue
    const/16 v2, 0x8

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 739
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/htc/lib1/cc/g;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 740
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 743
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/htc/lib1/cc/g;->message:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    .line 744
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIsAutoMotive:Z

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->getDefaultListItemHeight(Landroid/content/Context;Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 749
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 751
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mAutoLinkMask:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mAutoLinkMask:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 753
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v0, :cond_3

    .line 758
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/lib1/cc/k;->fixed_automotive_list_body_primary_m:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 760
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 761
    sget v1, Lcom/htc/lib1/cc/d;->margin_l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 762
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 764
    iget-object v2, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    .line 765
    iget-object v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v1, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 783
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/htc/lib1/cc/g;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 786
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 787
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 789
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 790
    iget v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckPanelLayout:I

    invoke-virtual {v1, v3, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    .line 793
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    const v3, 0x1020001

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/lib1/cc/widget/HtcCheckBox;

    iput-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    .line 794
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    iget-boolean v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxDefault:Z

    invoke-virtual {v1, v3}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->setChecked(Z)V

    .line 795
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    iget-object v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxListener:Lcom/htc/lib1/cc/widget/u;

    invoke-virtual {v1, v3}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->setOnCheckedChangeListener(Lcom/htc/lib1/cc/widget/u;)V

    .line 798
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxTextView:Landroid/widget/TextView;

    .line 799
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    new-instance v1, Lcom/htc/lib1/cc/app/HtcAlertController$2;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/app/HtcAlertController$2;-><init>(Lcom/htc/lib1/cc/app/HtcAlertController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 822
    iget-boolean v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxEnabled:Z

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/app/HtcAlertController;->setCheckBoxEnabled(Z)V

    .line 825
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mView:Landroid/view/View;

    if-nez v1, :cond_7

    .line 828
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    .line 829
    iget-object v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 830
    iget-object v4, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    .line 831
    iget-object v5, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v3, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 833
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 834
    sget v3, Lcom/htc/lib1/cc/d;->margin_s_2:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 835
    iget-object v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    invoke-virtual {v3}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->getPaddingLeft()I

    move-result v3

    .line 836
    iget-object v4, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    invoke-virtual {v4}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->getPaddingRight()I

    move-result v4

    .line 837
    iget-object v5, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->getPaddingBottom()I

    move-result v5

    .line 838
    iget-object v6, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    invoke-virtual {v6, v3, v1, v4, v5}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->setPadding(IIII)V

    .line 840
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 856
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 769
    :cond_5
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 772
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_6

    .line 773
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/htc/lib1/cc/g;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 774
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 778
    :cond_6
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 841
    :cond_7
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mView:Landroid/view/View;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_4

    .line 844
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    sget v3, Lcom/htc/lib1/cc/g;->checkBoxDivider:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 845
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 846
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 847
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x8

    .line 663
    .line 665
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 667
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 670
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 673
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/htc/lib1/cc/g;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 674
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 735
    :cond_0
    :goto_0
    return v2

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move v1, v2

    .line 678
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcom/htc/lib1/cc/g;->icon:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    .line 679
    if-eqz v1, :cond_7

    .line 681
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/htc/lib1/cc/g;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    .line 683
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconId:I

    if-lez v0, :cond_5

    .line 690
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 705
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mTitleCenter:Z

    if-eqz v0, :cond_3

    .line 706
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 710
    :cond_3
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mContext:Landroid/content/Context;

    sget v3, Lcom/htc/lib1/cc/k;->fixed_automotive_title_primary_s:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 676
    goto :goto_1

    .line 691
    :cond_5
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 692
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 693
    :cond_6
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconId:I

    if-nez v0, :cond_2

    .line 698
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 702
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 728
    :cond_7
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/htc/lib1/cc/g;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 729
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 731
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v2, v3

    .line 732
    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x8

    const/4 v10, -0x1

    .line 627
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/htc/lib1/cc/g;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 628
    invoke-direct {p0, v2}, Lcom/htc/lib1/cc/app/HtcAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 629
    invoke-direct {p0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setupButtons()Z

    move-result v4

    .line 631
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/htc/lib1/cc/g;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 632
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/htc/lib1/cc/R$styleable;->AlertDialog:[I

    sget v6, Lcom/htc/lib1/cc/b;->alertDialogStyle:I

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 634
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/app/HtcAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 636
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v7, Lcom/htc/lib1/cc/g;->buttonPanel:I

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 637
    if-nez v4, :cond_0

    if-nez v6, :cond_0

    .line 638
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 644
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcom/htc/lib1/cc/g;->customPanel:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 645
    iget-object v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcom/htc/lib1/cc/g;->custom:I

    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 646
    iget-object v8, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mView:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    iget-boolean v8, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mViewSpacingSpecified:Z

    if-eqz v8, :cond_1

    .line 648
    iget v8, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mViewSpacingLeft:I

    iget v9, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mViewSpacingTop:I

    iget v10, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mViewSpacingRight:I

    iget v11, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mViewSpacingBottom:I

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 651
    :cond_1
    iget-object v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 652
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_2
    move-object v3, v0

    :goto_0
    move-object v0, p0

    .line 658
    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/cc/app/HtcAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 659
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 660
    return-void

    .line 655
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcom/htc/lib1/cc/g;->customPanel:I

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 588
    packed-switch p1, :pswitch_data_0

    .line 596
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 590
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 592
    :pswitch_1
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 594
    :pswitch_2
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 588
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    .line 293
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 295
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 300
    invoke-direct {p0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setupView()V

    .line 301
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 382
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 383
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 386
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :pswitch_0
    iput-object p2, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 390
    iput-object p4, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 406
    :goto_0
    return-void

    .line 394
    :pswitch_1
    iput-object p2, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 395
    iput-object p4, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 399
    :pswitch_2
    iput-object p2, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 400
    iput-object p4, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonDisabled(IZ)V
    .locals 2

    .prologue
    .line 428
    packed-switch p1, :pswitch_data_0

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :pswitch_0
    iput-boolean p2, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonPositiveDisabled:Z

    .line 444
    :goto_0
    return-void

    .line 434
    :pswitch_1
    iput-boolean p2, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNeutralDisabled:Z

    goto :goto_0

    .line 438
    :pswitch_2
    iput-boolean p2, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mButtonNegativeDisabled:Z

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCheckBox(Ljava/lang/CharSequence;ZLcom/htc/lib1/cc/widget/u;Z)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxLabel:Ljava/lang/CharSequence;

    .line 471
    iput-boolean p2, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxDefault:Z

    .line 472
    iput-object p3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxListener:Lcom/htc/lib1/cc/widget/u;

    .line 473
    iput-boolean p4, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxEnabled:Z

    .line 474
    return-void
.end method

.method public setCheckBoxEnabled(Z)V
    .locals 1

    .prologue
    .line 484
    iput-boolean p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxEnabled:Z

    .line 485
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->setEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 487
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    .line 324
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 536
    iput p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconId:I

    .line 537
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 538
    if-lez p1, :cond_1

    .line 539
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    if-nez p1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 554
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 555
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 558
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 569
    iput-boolean p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mForceInverseBackground:Z

    .line 570
    return-void
.end method

.method public setIsAutoMotive(Z)V
    .locals 1

    .prologue
    .line 1247
    iput-boolean p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIsAutoMotive:Z

    .line 1249
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v0, :cond_0

    .line 1250
    sget v0, Lcom/htc/lib1/cc/i;->alert_dialog_automotive:I

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mAlertDialogLayout:I

    .line 1251
    sget v0, Lcom/htc/lib1/cc/i;->dialog_listitem_check_automotive:I

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMultiChoiceItemLayout:I

    .line 1252
    sget v0, Lcom/htc/lib1/cc/i;->dialog_listitem_radio_automotive:I

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mSingleChoiceItemLayout:I

    .line 1253
    sget v0, Lcom/htc/lib1/cc/i;->dialog_listitem_automotive:I

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListItemLayout:I

    .line 1254
    sget v0, Lcom/htc/lib1/cc/i;->select_dialog_automotive:I

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mListLayout:I

    .line 1255
    sget v0, Lcom/htc/lib1/cc/i;->dialog_checkpanel_automotive:I

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckPanelLayout:I

    .line 1258
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 332
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 333
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 413
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 414
    iput p2, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mAutoLinkMask:I

    .line 416
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 418
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 309
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 310
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_0
    return-void
.end method

.method public setTitleCenterEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mTitleCenter:Z

    .line 459
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 344
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mView:Landroid/view/View;

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mViewSpacingSpecified:Z

    .line 346
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 359
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mView:Landroid/view/View;

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mViewSpacingSpecified:Z

    .line 361
    iput p2, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mViewSpacingLeft:I

    .line 362
    iput p3, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mViewSpacingTop:I

    .line 363
    iput p4, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mViewSpacingRight:I

    .line 364
    iput p5, p0, Lcom/htc/lib1/cc/app/HtcAlertController;->mViewSpacingBottom:I

    .line 365
    return-void
.end method
