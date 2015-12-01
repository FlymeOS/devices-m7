.class Lcom/htc/camera/DefaultPhotoFlashProvider$1;
.super Ljava/lang/Object;
.source "DefaultPhotoFlashProvider.java"

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
.field final synthetic this$0:Lcom/htc/camera/DefaultPhotoFlashProvider;


# direct methods
.method constructor <init>(Lcom/htc/camera/DefaultPhotoFlashProvider;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/htc/camera/DefaultPhotoFlashProvider$1;->this$0:Lcom/htc/camera/DefaultPhotoFlashProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
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
    .line 19
    iget-object v0, p0, Lcom/htc/camera/DefaultPhotoFlashProvider$1;->this$0:Lcom/htc/camera/DefaultPhotoFlashProvider;

    invoke-virtual {v0}, Lcom/htc/camera/DefaultPhotoFlashProvider;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/htc/camera/DefaultPhotoFlashProvider$1;->this$0:Lcom/htc/camera/DefaultPhotoFlashProvider;

    invoke-virtual {v0, p2}, Lcom/htc/camera/DefaultPhotoFlashProvider;->a(Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    .line 21
    :cond_0
    return-void
.end method
