.class Lcom/htc/camera/mainbar/ExpandableMenuUI$21;
.super Ljava/lang/Object;
.source "ExpandableMenuUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$21;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3

    .prologue
    .line 859
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$21;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->canShowExpandableMenu()Z
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1600(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Z

    move-result v0

    .line 860
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$21;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$21;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;
    invoke-static {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/camera/widget/ExpandableMenu;

    move-result-object v2

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v1, v2, v0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$3700(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    .line 861
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$21;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$21;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButtonContainer:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1300(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Landroid/widget/RelativeLayout;

    move-result-object v2

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v1, v2, v0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$3800(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    .line 862
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$21;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->canShowMenuBar()Z
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1900(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Z

    move-result v0

    .line 863
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$21;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$21;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuBar:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$2000(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Landroid/widget/RelativeLayout;

    move-result-object v2

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v1, v2, v0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$3900(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    .line 864
    return-void
.end method
