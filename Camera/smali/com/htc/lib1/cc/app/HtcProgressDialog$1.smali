.class Lcom/htc/lib1/cc/app/HtcProgressDialog$1;
.super Landroid/os/Handler;
.source "HtcProgressDialog.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/app/HtcProgressDialog;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/app/HtcProgressDialog;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog$1;->this$0:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 197
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog$1;->this$0:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    # getter for: Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->access$000(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog$1;->this$0:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    # getter for: Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->access$100(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog$1;->this$0:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    # getter for: Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->access$100(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 199
    :goto_0
    iget-object v2, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog$1;->this$0:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    # getter for: Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->access$100(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog$1;->this$0:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    # getter for: Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->access$100(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    .line 200
    :goto_1
    iget-object v3, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog$1;->this$0:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    # getter for: Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->access$000(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Ljava/lang/String;

    move-result-object v3

    .line 201
    iget-object v4, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog$1;->this$0:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    # getter for: Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressNumber:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->access$200(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    int-to-double v3, v0

    int-to-double v5, v2

    div-double v2, v3, v5

    .line 204
    new-instance v0, Landroid/text/SpannableString;

    iget-object v4, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog$1;->this$0:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    # getter for: Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v4}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->access$300(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 205
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 207
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog$1;->this$0:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    # getter for: Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->access$400(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 198
    goto :goto_0

    .line 199
    :cond_1
    const/16 v2, 0x64

    goto :goto_1

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog$1;->this$0:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    # getter for: Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressNumber:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->access$200(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog$1;->this$0:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    # getter for: Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->access$400(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
