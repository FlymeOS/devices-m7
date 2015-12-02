.class Lcom/htc/camera/mainbar/ExpandableMenuUI$15;
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
        "Lcom/htc/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

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
            "Lcom/htc/camera/RecordingState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 755
    sget-object v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 786
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateButtonStates()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1500(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    .line 787
    return-void

    .line 759
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateFlashIcon()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1100(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    .line 760
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->canShowExpandableMenu()Z
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1600(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Z

    move-result v0

    .line 761
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;
    invoke-static {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/camera/widget/ExpandableMenu;

    move-result-object v2

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v1, v2, v0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$2500(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    .line 762
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButtonContainer:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1300(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Landroid/widget/RelativeLayout;

    move-result-object v2

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v1, v2, v0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$2600(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    .line 763
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->canShowMenuBar()Z
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1900(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Z

    move-result v0

    .line 764
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuBar:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$2000(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Landroid/widget/RelativeLayout;

    move-result-object v2

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v1, v2, v0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$2700(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    goto :goto_0

    .line 768
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateFlashIcon()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1100(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    .line 769
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButtonContainer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1300(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Landroid/widget/RelativeLayout;

    move-result-object v1

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$2800(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    .line 770
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/camera/widget/ExpandableMenu;

    move-result-object v1

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$2900(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    goto :goto_0

    .line 775
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuBar:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$2000(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Landroid/widget/RelativeLayout;

    move-result-object v1

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$3000(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    goto :goto_0

    .line 779
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateFlashIcon()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1100(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    .line 780
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->canShowExpandableMenu()Z
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1600(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Z

    move-result v0

    .line 781
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;
    invoke-static {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/camera/widget/ExpandableMenu;

    move-result-object v2

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v1, v2, v0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$3100(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    .line 782
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButtonContainer:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1300(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Landroid/widget/RelativeLayout;

    move-result-object v2

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v1, v2, v0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$3200(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    goto/16 :goto_0

    .line 755
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
