.class Lcom/htc/camera/mainbar/ExpandableMenuUI$5;
.super Ljava/lang/Object;
.source "ExpandableMenuUI.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$5;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$5;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateFlashIcon()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1100(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    .line 633
    return-void
.end method
