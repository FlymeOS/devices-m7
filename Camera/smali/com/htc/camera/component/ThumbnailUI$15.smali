.class Lcom/htc/camera/component/ThumbnailUI$15;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailUI;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailUI$15;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
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
    const/high16 v3, 0x3f800000    # 1.0f

    .line 748
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$15;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/htc/camera/component/ThumbnailController;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$1500(Lcom/htc/camera/component/ThumbnailUI;)Lcom/htc/camera/component/ThumbnailController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$15;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailUI$15;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/htc/camera/component/ThumbnailController;
    invoke-static {v1}, Lcom/htc/camera/component/ThumbnailUI;->access$1500(Lcom/htc/camera/component/ThumbnailUI;)Lcom/htc/camera/component/ThumbnailController;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/ThumbnailUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 768
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$15;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$200(Lcom/htc/camera/component/ThumbnailUI;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$15;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$200(Lcom/htc/camera/component/ThumbnailUI;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 771
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$15;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/htc/camera/component/ThumbnailUI;->access$202(Lcom/htc/camera/component/ThumbnailUI;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 772
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$15;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$000(Lcom/htc/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 773
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$15;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$000(Lcom/htc/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 775
    :cond_1
    return-void

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$15;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/ThumbnailUI;->access$1602(Lcom/htc/camera/component/ThumbnailUI;Z)Z

    .line 763
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$15;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/htc/camera/component/ThumbnailController;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$1500(Lcom/htc/camera/component/ThumbnailUI;)Lcom/htc/camera/component/ThumbnailController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$15;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailUI$15;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/htc/camera/component/ThumbnailController;
    invoke-static {v1}, Lcom/htc/camera/component/ThumbnailUI;->access$1500(Lcom/htc/camera/component/ThumbnailUI;)Lcom/htc/camera/component/ThumbnailController;

    move-result-object v1

    const/16 v2, 0x2712

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/ThumbnailUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_0
.end method
