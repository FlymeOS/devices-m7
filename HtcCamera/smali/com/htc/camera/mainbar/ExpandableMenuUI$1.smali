.class Lcom/htc/camera/mainbar/ExpandableMenuUI$1;
.super Ljava/lang/Object;
.source "ExpandableMenuUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$1;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$1;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$500(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick() - menu clicked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$1;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->onMenuButtonClicked()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$600(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    .line 559
    return-void
.end method
