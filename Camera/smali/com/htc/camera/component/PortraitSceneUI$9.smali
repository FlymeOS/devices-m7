.class Lcom/htc/camera/component/PortraitSceneUI$9;
.super Ljava/lang/Object;
.source "PortraitSceneUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PortraitSceneUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PortraitSceneUI;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/htc/camera/component/PortraitSceneUI$9;->this$0:Lcom/htc/camera/component/PortraitSceneUI;

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
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 260
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI$9;->this$0:Lcom/htc/camera/component/PortraitSceneUI;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/PortraitSceneUI;->setIsShortSeekBar(IZ)V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI$9;->this$0:Lcom/htc/camera/component/PortraitSceneUI;

    iput-boolean v2, v0, Lcom/htc/camera/component/PortraitSceneUI;->m_InitValues:Z

    .line 269
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI$9;->this$0:Lcom/htc/camera/component/PortraitSceneUI;

    invoke-virtual {v0, v1, v1}, Lcom/htc/camera/component/PortraitSceneUI;->setIsShortSeekBar(IZ)V

    goto :goto_0
.end method
