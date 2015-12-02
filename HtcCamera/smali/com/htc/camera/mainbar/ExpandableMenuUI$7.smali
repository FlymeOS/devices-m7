.class Lcom/htc/camera/mainbar/ExpandableMenuUI$7;
.super Lcom/htc/camera/trigger/Trigger;
.source "ExpandableMenuUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$7;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$7;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1200(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/lib1/cc/widget/HtcIconButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$7;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1200(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/lib1/cc/widget/HtcIconButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->clearAnimation()V

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$7;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButtonContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1300(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$7;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButtonContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1300(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$7;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/camera/widget/ExpandableMenu;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$7;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/camera/widget/ExpandableMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/widget/ExpandableMenu;->clearAllItemsAnimation()V

    .line 664
    :cond_2
    return-void
.end method

.method protected onExit()V
    .locals 0

    .prologue
    .line 671
    return-void
.end method
