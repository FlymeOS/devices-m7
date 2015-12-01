.class Lcom/htc/camera/component/AutoFaceCaptureUI$15;
.super Ljava/lang/Object;
.source "AutoFaceCaptureUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$15;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
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
    const/4 v1, 0x0

    .line 701
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$15;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->updateAutoFaceCaptureState()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2800(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    .line 702
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$15;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stVoiceCaptureToastShown:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2202(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 703
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$15;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stAutoCaptureToastShown:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2902(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 704
    return-void
.end method
