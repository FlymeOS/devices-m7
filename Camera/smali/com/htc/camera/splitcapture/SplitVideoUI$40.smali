.class Lcom/htc/camera/splitcapture/SplitVideoUI$40;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Lcom/htc/camera/menu/e;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

.field final synthetic val$retake1st:Lcom/htc/camera/menu/MenuItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/menu/MenuItem;)V
    .locals 0

    .prologue
    .line 3120
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$40;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$40;->val$retake1st:Lcom/htc/camera/menu/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/htc/camera/menu/MenuListView;Lcom/htc/camera/menu/MenuItem;II)V
    .locals 1

    .prologue
    .line 3124
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$40;->val$retake1st:Lcom/htc/camera/menu/MenuItem;

    if-ne p2, v0, :cond_0

    .line 3125
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$40;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->onRetake1stVideoClicked()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$7900(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    .line 3126
    :cond_0
    return-void
.end method
