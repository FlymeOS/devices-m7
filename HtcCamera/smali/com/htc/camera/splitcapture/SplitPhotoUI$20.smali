.class Lcom/htc/camera/splitcapture/SplitPhotoUI$20;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

# interfaces
.implements Lcom/htc/camera/menu/e;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 2021
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$20;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/htc/camera/menu/MenuListView;Lcom/htc/camera/menu/MenuItem;II)V
    .locals 3

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$20;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Reviewing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    if-ne v0, v1, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$20;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$20;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitPhotoController;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$4600(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/splitcapture/SplitPhotoController;

    move-result-object v1

    const/16 v2, 0x271f

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$4700(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/component/Component;I)Z

    .line 2029
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$20;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Preparing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$4800(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2032
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$20;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$20;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$3700(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->prepareNextCapture(Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;)V
    invoke-static {v1, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$4900(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;)V

    .line 2033
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$20;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # operator++ for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeCounter:I
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$5008(Lcom/htc/camera/splitcapture/SplitPhotoUI;)I

    .line 2036
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$20;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$5100(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2037
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$20;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$5200(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/IRotateDialogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$20;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$5100(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/IRotateDialogManager;->hideDialog(Lcom/htc/camera/Handle;)V

    .line 2038
    :cond_1
    return-void
.end method
