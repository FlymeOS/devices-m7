.class Lcom/htc/camera/splitcapture/SplitVideoUI$34$1;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$34;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI$34;)V
    .locals 0

    .prologue
    .line 2616
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$34$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$34$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$34;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI$34;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$34$1$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$34$1$1;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI$34$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 2637
    return-void
.end method
