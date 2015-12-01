.class Lcom/htc/camera/component/AutoFaceCaptureUI$4;
.super Ljava/lang/Object;
.source "AutoFaceCaptureUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<[F>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$4;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

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
            "<[F>;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<[F>;)V"
        }
    .end annotation

    .prologue
    .line 548
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$4;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->onAccelerometerValuesChanged([F)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2300(Lcom/htc/camera/component/AutoFaceCaptureUI;[F)V

    .line 549
    return-void
.end method
