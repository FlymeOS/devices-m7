.class Lcom/htc/camera/component/QuickTipsUI$7;
.super Ljava/lang/Object;
.source "QuickTipsUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/CameraType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/QuickTipsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/QuickTipsUI;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/camera/component/QuickTipsUI$7;->this$0:Lcom/htc/camera/component/QuickTipsUI;

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
            "Lcom/htc/camera/CameraType;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$7;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsSwipeCameraTipsEverShown:Z
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$600(Lcom/htc/camera/component/QuickTipsUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$7;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$700(Lcom/htc/camera/component/QuickTipsUI;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$7;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$700(Lcom/htc/camera/component/QuickTipsUI;)I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$7;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/QuickTipsUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_camera_mode_change_count"

    iget-object v2, p0, Lcom/htc/camera/component/QuickTipsUI$7;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # ++operator for: Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I
    invoke-static {v2}, Lcom/htc/camera/component/QuickTipsUI;->access$704(Lcom/htc/camera/component/QuickTipsUI;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$7;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$700(Lcom/htc/camera/component/QuickTipsUI;)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$7;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_ShowSwipeCameraSmartTips:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/QuickTipsUI;->access$802(Lcom/htc/camera/component/QuickTipsUI;Z)Z

    .line 344
    :cond_1
    return-void
.end method
