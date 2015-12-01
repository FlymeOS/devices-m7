.class Lcom/htc/lib1/cc/widget/AbsCrabWalkView$WindowRunnnable;
.super Ljava/lang/Object;
.source "AbsCrabWalkView.java"


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;


# direct methods
.method private constructor <init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;)V
    .locals 0

    .prologue
    .line 2139
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$WindowRunnnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Lcom/htc/lib1/cc/widget/AbsCrabWalkView$1;)V
    .locals 0

    .prologue
    .line 2139
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$WindowRunnnable;-><init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$WindowRunnnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    # invokes: Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->access$200(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$WindowRunnnable;->mOriginalAttachCount:I

    .line 2148
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$WindowRunnnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$WindowRunnnable;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    # invokes: Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->access$300(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;)I

    move-result v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
