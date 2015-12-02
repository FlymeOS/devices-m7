.class final Lcom/htc/lib1/cc/widget/ab;
.super Ljava/lang/Object;
.source "HtcListItemUtil.java"

# interfaces
.implements Ljava/util/Observer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 91
    move v0, v1

    :goto_0
    # getter for: Lcom/htc/lib1/cc/widget/HtcListItemUtil;->sPrimaryTextSize:[I
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->access$000()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 92
    # getter for: Lcom/htc/lib1/cc/widget/HtcListItemUtil;->sPrimaryTextSize:[I
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->access$000()[I

    move-result-object v2

    aput v1, v2, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method
