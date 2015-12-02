.class Lcom/htc/camera/splitcapture/SplitVideoUI$41;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Lcom/htc/camera/menu/e;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

.field final synthetic val$retake1st:Lcom/htc/camera/menu/MenuItem;

.field final synthetic val$retake2nd:Lcom/htc/camera/menu/MenuItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/menu/MenuItem;Lcom/htc/camera/menu/MenuItem;)V
    .locals 0

    .prologue
    .line 3134
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$41;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$41;->val$retake1st:Lcom/htc/camera/menu/MenuItem;

    iput-object p3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$41;->val$retake2nd:Lcom/htc/camera/menu/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/htc/camera/menu/MenuListView;Lcom/htc/camera/menu/MenuItem;II)V
    .locals 1

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$41;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # operator++ for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RetakeCounter:I
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8008(Lcom/htc/camera/splitcapture/SplitVideoUI;)I

    .line 3139
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$41;->val$retake1st:Lcom/htc/camera/menu/MenuItem;

    if-ne p2, v0, :cond_1

    .line 3140
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$41;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->onRetake1stVideoClicked()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$7900(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    .line 3143
    :cond_0
    :goto_0
    return-void

    .line 3141
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$41;->val$retake2nd:Lcom/htc/camera/menu/MenuItem;

    if-ne p2, v0, :cond_0

    .line 3142
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$41;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->onRetake2ndVideoClicked()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8100(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    goto :goto_0
.end method
