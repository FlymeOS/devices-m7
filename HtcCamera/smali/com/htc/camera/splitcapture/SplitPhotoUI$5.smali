.class Lcom/htc/camera/splitcapture/SplitPhotoUI$5;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

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
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 908
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_1

    .line 910
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1100(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/actionscreen/CommonActionScreen;

    move-result-object v0

    if-nez v0, :cond_0

    .line 911
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    const-class v2, Lcom/htc/camera/actionscreen/CommonActionScreen;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1200(Lcom/htc/camera/splitcapture/SplitPhotoUI;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    # setter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;
    invoke-static {v1, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1102(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/actionscreen/CommonActionScreen;)Lcom/htc/camera/actionscreen/CommonActionScreen;

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1100(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/actionscreen/CommonActionScreen;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 915
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1100(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/actionscreen/CommonActionScreen;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$5$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$5$1;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI$5;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setRetakeAction(Ljava/lang/Runnable;)V

    .line 927
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_2

    .line 929
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Reviewing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    if-ne v0, v1, :cond_2

    .line 931
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->showPreviewCover()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1500(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 932
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->NotDraw:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->setGLAnimationState(Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1600(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V

    .line 933
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->endNextImageProcessing()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1700(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 934
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->endTakingSplitPhoto()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1800(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 935
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->onPanelInfosChanged()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1900(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 938
    :cond_2
    return-void

    .line 924
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1400(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot find CommonActionScreen"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
