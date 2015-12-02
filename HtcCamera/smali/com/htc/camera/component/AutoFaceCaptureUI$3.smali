.class Lcom/htc/camera/component/AutoFaceCaptureUI$3;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$3;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$3;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2100(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mPhotoVideoSupportedModeLisentner new value:"

    iget-object v2, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$3;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stVoiceCaptureToastShown:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2202(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 318
    return-void
.end method
