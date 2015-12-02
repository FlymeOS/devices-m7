.class public Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;
.super Ljava/lang/Object;
.source "ComposeRecipientHelper.java"


# instance fields
.field protected mBeginNextLine:Z

.field protected mBtnType:I

.field protected mChildIndex:I

.field protected mGroupIndex:I

.field protected mHtcRecipientButton:Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

.field protected mParentLayout:Landroid/widget/LinearLayout;

.field protected mReceiver:Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;

.field protected mRightDivider:Landroid/widget/ImageView;

.field protected mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;Ljava/lang/ref/WeakReference;Landroid/widget/LinearLayout;Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;ILcom/htc/lib1/cc/widget/recipientblock/ReceiverList;Z)V
    .locals 2
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
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1032
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->this$0:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    .line 1015
    iput v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mBtnType:I

    .line 1017
    iput v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mGroupIndex:I

    .line 1019
    iput v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mChildIndex:I

    .line 1021
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mParentLayout:Landroid/widget/LinearLayout;

    .line 1023
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mHtcRecipientButton:Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    .line 1025
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mReceiver:Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;

    .line 1027
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mBeginNextLine:Z

    .line 1029
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mRightDivider:Landroid/widget/ImageView;

    .line 1033
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    .line 1034
    iput-object p3, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mParentLayout:Landroid/widget/LinearLayout;

    .line 1035
    iput-object p4, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mHtcRecipientButton:Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    .line 1036
    iput p5, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mBtnType:I

    .line 1037
    iput-object p6, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mReceiver:Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;

    .line 1038
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->setWidthToParentTag()V

    .line 1039
    iput-boolean p7, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mBeginNextLine:Z

    .line 1040
    return-void
.end method

.method static synthetic access$100(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)V
    .locals 0

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->setWidthToParentTag()V

    return-void
.end method

.method private setWidthToParentTag()V
    .locals 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->this$0:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    # invokes: Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getRecipientBtnWidth(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)I
    invoke-static {v0, p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->access$000(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)I

    move-result v0

    .line 1045
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1046
    return-void
.end method


# virtual methods
.method protected getChildIndex()I
    .locals 1

    .prologue
    .line 1073
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mChildIndex:I

    return v0
.end method

.method protected getGroupIndex()I
    .locals 1

    .prologue
    .line 1061
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mGroupIndex:I

    return v0
.end method

.method protected getHtcRecipientButton()Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mHtcRecipientButton:Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    return-object v0
.end method

.method protected getParentLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mParentLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected getReceiverList()Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mReceiver:Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;

    return-object v0
.end method

.method protected getRightDivider()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mRightDivider:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected isBeginNextLine()Z
    .locals 1

    .prologue
    .line 1088
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mBeginNextLine:Z

    return v0
.end method

.method protected setChildIndex(I)V
    .locals 0

    .prologue
    .line 1069
    iput p1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mChildIndex:I

    .line 1070
    return-void
.end method

.method protected setGroupIndex(I)V
    .locals 0

    .prologue
    .line 1057
    iput p1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->mGroupIndex:I

    .line 1058
    return-void
.end method
