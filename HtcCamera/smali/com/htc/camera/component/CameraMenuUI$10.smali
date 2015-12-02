.class Lcom/htc/camera/component/CameraMenuUI$10;
.super Lcom/htc/camera/trigger/Trigger;
.source "CameraMenuUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$10;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$10;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$10;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->initMenuList()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$3400(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 785
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$10;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$10;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$3500(Lcom/htc/camera/component/CameraMenuUI;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->updateMenuList(Ljava/util/List;)V

    .line 786
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$10;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->notifyDataSetChanged()V

    .line 787
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$10;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->updateCaptureModes()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2500(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$10;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->closeCameraMenuUI()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$3200(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 790
    return-void
.end method
