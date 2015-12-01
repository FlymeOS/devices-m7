.class Lcom/htc/lib1/cc/widget/HtcNumberPicker$2;
.super Ljava/lang/Object;
.source "HtcNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$2;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$2;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mReadyToSet:Z

    .line 515
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$2;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$2;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPos:I
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$200(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 516
    return-void
.end method
