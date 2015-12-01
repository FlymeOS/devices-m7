.class Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcNumberPicker.java"


# instance fields
.field private mCandidates:[Ljava/lang/String;

.field protected mCount:I

.field public mData:[I

.field protected mEnd:I

.field protected mStart:I

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/widget/HtcNumberPicker;II)V
    .locals 3

    .prologue
    .line 786
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 780
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    .line 787
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mStart:I

    .line 788
    iput p3, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mEnd:I

    .line 789
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    .line 790
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    .line 791
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    if-ge v0, v1, :cond_0

    .line 792
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, p2

    aput v2, v1, v0

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 794
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/lib1/cc/widget/HtcNumberPicker;II[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 801
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;-><init>(Lcom/htc/lib1/cc/widget/HtcNumberPicker;II)V

    .line 802
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    .line 803
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    if-ge v0, v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    aget-object v2, p4, v0

    aput-object v2, v1, v0

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 806
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 813
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 837
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 845
    int-to-long v0, p1

    return-wide v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mStart:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 853
    if-nez p2, :cond_5

    new-instance v0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$300(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;-><init>(Landroid/content/Context;)V

    .line 855
    :goto_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$400(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/MyTableView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getKeyOfPicker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setTableView(Lcom/htc/lib1/cc/widget/MyTableView;Ljava/lang/String;)V

    .line 858
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCustomShadow:Z
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$500(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 860
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$600(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$600(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v2

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->radius:F
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->access$700(Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$600(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v3

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->dx:F
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->access$800(Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v4}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$600(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v4

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->dy:F
    invoke-static {v4}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->access$900(Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v4

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v5}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$600(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v5

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->shadowColor:I
    invoke-static {v5}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->access$1000(Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setCustomShadow(IFFFI)V

    .line 861
    :cond_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$1100(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$1100(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v2

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->radius:F
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->access$700(Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$1100(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v3

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->dx:F
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->access$800(Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v4}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$1100(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v4

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->dy:F
    invoke-static {v4}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->access$900(Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v4

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v5}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$1100(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v5

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->shadowColor:I
    invoke-static {v5}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->access$1000(Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setCustomShadow(IFFFI)V

    .line 862
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow3rd:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$1200(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow3rd:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$1200(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v2

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->radius:F
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->access$700(Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow3rd:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$1200(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v3

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->dx:F
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->access$800(Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow3rd:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v4}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$1200(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v4

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->dy:F
    invoke-static {v4}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->access$900(Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v4

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow3rd:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v5}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$1200(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v5

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->shadowColor:I
    invoke-static {v5}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;->access$1000(Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setCustomShadow(IFFFI)V

    .line 865
    :cond_2
    const/4 v1, 0x0

    .line 867
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 868
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 878
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mChangeTextStyle:Z
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$1400(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTextStyle:I
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$1500(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setTextStyle(I)V

    .line 880
    :cond_4
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTextColor:I
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$000(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setTextColor(I)V

    .line 883
    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setText(Ljava/lang/String;)V

    .line 885
    return-object v0

    .line 853
    :cond_5
    check-cast p2, Lcom/htc/lib1/cc/widget/HtcDateTimeText;

    move-object v0, p2

    goto/16 :goto_0

    .line 869
    :cond_6
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    if-eqz v2, :cond_3

    .line 870
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 871
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    aget v2, v2, p1

    const/16 v3, 0xa

    if-ge v2, v3, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 872
    :cond_7
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mDigits:I
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$1300(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)I

    move-result v2

    if-lez v2, :cond_3

    .line 873
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 874
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mDigits:I
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$1300(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
