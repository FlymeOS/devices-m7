.class Lcom/htc/camera/io/SDCardUI$10;
.super Ljava/lang/Object;
.source "SDCardUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/io/SDCardUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/SDCardUI;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/htc/camera/io/SDCardUI$10;->this$0:Lcom/htc/camera/io/SDCardUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$10;->this$0:Lcom/htc/camera/io/SDCardUI;

    # getter for: Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/io/SDCardUI;->access$1900(Lcom/htc/camera/io/SDCardUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "showImprovePerformanceDialog() -  Hide"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$10;->this$0:Lcom/htc/camera/io/SDCardUI;

    # invokes: Lcom/htc/camera/io/SDCardUI;->finishImprovementDialog()V
    invoke-static {v0}, Lcom/htc/camera/io/SDCardUI;->access$1600(Lcom/htc/camera/io/SDCardUI;)V

    .line 583
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$10;->this$0:Lcom/htc/camera/io/SDCardUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/io/SDCardUI;->m_HasDialog:Z
    invoke-static {v0, v1}, Lcom/htc/camera/io/SDCardUI;->access$2002(Lcom/htc/camera/io/SDCardUI;Z)Z

    .line 584
    return-void
.end method
