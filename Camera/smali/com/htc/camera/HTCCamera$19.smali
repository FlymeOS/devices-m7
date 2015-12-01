.class Lcom/htc/camera/HTCCamera$19;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$19;->this$0:Lcom/htc/camera/HTCCamera;

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
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1643
    iget-object v1, p0, Lcom/htc/camera/HTCCamera$19;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    # invokes: Lcom/htc/camera/HTCCamera;->onRotationChanged(Lcom/htc/camera/rotate/UIRotation;)V
    invoke-static {v1, v0}, Lcom/htc/camera/HTCCamera;->access$3100(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1644
    return-void
.end method
