.class Lcom/htc/camera/mainbar/ExpandableMenuUI$11;
.super Ljava/lang/Object;
.source "ExpandableMenuUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$11;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$11;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->canShowExpandableMenu()Z
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1600(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Z

    move-result v0

    .line 706
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$11;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$11;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;
    invoke-static {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/camera/widget/ExpandableMenu;

    move-result-object v2

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v1, v2, v0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1700(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    .line 707
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$11;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$11;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButtonContainer:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1300(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Landroid/widget/RelativeLayout;

    move-result-object v2

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v1, v2, v0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1800(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    .line 709
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$11;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->canShowMenuBar()Z
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1900(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Z

    move-result v0

    .line 710
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$11;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$11;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuBar:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$2000(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Landroid/widget/RelativeLayout;

    move-result-object v2

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v1, v2, v0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$2100(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    .line 712
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$11;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateUIOpenStatus(Z)Z
    invoke-static {v0, v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$2200(Lcom/htc/camera/mainbar/ExpandableMenuUI;Z)Z

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$11;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateButtonStates()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1500(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    .line 715
    return-void
.end method
