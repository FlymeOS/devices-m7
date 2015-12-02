.class Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$CustomizedActionButton;
.super Ljava/lang/Object;
.source "ComposeRecipientHelper.java"


# instance fields
.field private bNeedShowInNextLine:Z

.field private mBtnOnClickListener:Landroid/view/View$OnClickListener;

.field private mButtonText:Ljava/lang/String;


# virtual methods
.method public getButtonOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$CustomizedActionButton;->mBtnOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$CustomizedActionButton;->mButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedShowInNextLine()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$CustomizedActionButton;->bNeedShowInNextLine:Z

    return v0
.end method
