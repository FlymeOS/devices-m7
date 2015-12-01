.class Lcom/htc/camera/burst/AutoBurstCameraBase$1;
.super Ljava/lang/Object;
.source "AutoBurstCameraBase.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/burst/AutoBurstCameraBase;


# direct methods
.method constructor <init>(Lcom/htc/camera/burst/AutoBurstCameraBase;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase$1;->this$0:Lcom/htc/camera/burst/AutoBurstCameraBase;

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
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase$1;->this$0:Lcom/htc/camera/burst/AutoBurstCameraBase;

    iget-object v0, v0, Lcom/htc/camera/burst/AutoBurstCameraBase;->numberOfTakenPictures:Lcom/htc/camera/property/b;

    iget-object v1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase$1;->this$0:Lcom/htc/camera/burst/AutoBurstCameraBase;

    # getter for: Lcom/htc/camera/burst/AutoBurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/burst/AutoBurstCameraBase;->access$000(Lcom/htc/camera/burst/AutoBurstCameraBase;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/b;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    return-void
.end method
